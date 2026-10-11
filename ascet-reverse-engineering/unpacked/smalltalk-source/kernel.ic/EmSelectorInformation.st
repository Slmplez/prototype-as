"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"kernel.ic method 0x20003034; bytecode file offset 0x4dff8"
!EmSelectorInformation methodsFor: 'recovered'!
categoryAtIndex: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) categoriesArray.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) at: (recoveredValue1).
    ^recoveredValue2
! !

"kernel.ic method 0x20003cd0; bytecode file offset 0x4ec04"
!EmSelectorInformation methodsFor: 'recovered'!
categoriesArray
    | recoveredValue0 |
    recoveredValue0 := categoriesArray.
    ^recoveredValue0
! !

"kernel.ic method 0x20003e5c; bytecode file offset 0x4ed88"
!EmSelectorInformation methodsFor: 'recovered'!
selectorsArray
    | recoveredValue0 |
    recoveredValue0 := selectorsArray.
    ^recoveredValue0
! !

"kernel.ic method 0x20005998; bytecode file offset 0x508cc"
!EmSelectorInformation methodsFor: 'recovered'!
addCategory: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) addCategory: (recoveredValue0) withIndexes: (#()).
    ^recoveredValue1
! !

"kernel.ic method 0x200063c4; bytecode file offset 0x512dc"
!EmSelectorInformation methodsFor: 'recovered'!
indexesAtCategoryIndex: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) categoriesArray.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) + (1).
    recoveredValue3 := (recoveredValue0) at: (recoveredValue2).
    recoveredValue4 := (self) decompressedArray: (recoveredValue3).
    ^recoveredValue4
! !

"kernel.ic method 0x20007ce4; bytecode file offset 0x52bf8"
!EmSelectorInformation methodsFor: 'recovered'!
removeSelectors: recoveredArg1 fromCategories: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) addSelectors: (recoveredValue0) to: (#()) removeFrom: (recoveredValue1).
    ^recoveredValue2
! !

"kernel.ic method 0x20007da0; bytecode file offset 0x52cc4"
!EmSelectorInformation methodsFor: 'recovered'!
addSelectors: recoveredArg1 to: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) addSelectors: (recoveredValue0) to: (recoveredValue1) removeFrom: (#()).
    ^recoveredValue2
! !

"kernel.ic method 0x20009764; bytecode file offset 0x5467c"
!EmSelectorInformation methodsFor: 'recovered'!
indexesAtCategoryIndex: recoveredArg1 are: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) categoriesArray.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) + (1).
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (self) compressedArray: (recoveredValue3).
    (recoveredValue0) at: (recoveredValue2) put: (recoveredValue4).
    ^self
! !

"kernel.ic method 0x200098c0; bytecode file offset 0x547d8"
!EmSelectorInformation methodsFor: 'recovered'!
initialize
    (self) selectorsArray: (#()).
    (self) categoriesArray: (#()).
    ^self
! !

"kernel.ic method 0x2000a84c; bytecode file offset 0x55764"
!EmSelectorInformation methodsFor: 'recovered'!
categoryIndexesDo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) categoriesArray.
    recoveredValue1 := (recoveredValue0) size.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (1) to: (recoveredValue1) by: (2) do: (recoveredValue2).
    ^recoveredValue3
! !

"kernel.ic method 0x2000b500; bytecode file offset 0x56414"
!EmSelectorInformation methodsFor: 'recovered'!
decompressedArray: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isInteger.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"kernel.ic method 0x2000b550; bytecode file offset 0x56470"
!EmSelectorInformation methodsFor: 'recovered'!
copyCategorizationFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) selectorsArray.
    recoveredValue2 := (recoveredValue1) copy.
    (self) selectorsArray: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) categoriesArray.
    recoveredValue5 := (recoveredValue4) copy.
    (self) categoriesArray: (recoveredValue5).
    ^self
! !

"kernel.ic method 0x2000db5c; bytecode file offset 0x58a74"
!EmSelectorInformation methodsFor: 'recovered'!
categoriesArray: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) asArray.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            categoriesArray := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x2000db88; bytecode file offset 0x58aa0"
!EmSelectorInformation methodsFor: 'recovered'!
selectorsArray: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) asArray.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            selectorsArray := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x200126f4; bytecode file offset 0x5d618"
!EmSelectorInformation methodsFor: 'recovered'!
hasCategory: recoveredArg1
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
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) defaultCategoryName.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexesForCategorizedSelectors.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) selectorsArray.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexForCategory: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"kernel.ic method 0x20012b6c; bytecode file offset 0x5da8c"
!EmSelectorInformation methodsFor: 'recovered'!
indexesForCategorizedSelectors
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Set.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 |
    recoveredBlock10Value0 := recoveredLocal1.
    recoveredBlock10Value1 := recoveredBlock10Arg1.
    recoveredBlock10Value2 := (self) indexesAtCategoryIndex: (recoveredBlock10Value1).
    recoveredBlock10Value3 := (recoveredBlock10Value0) addAll: (recoveredBlock10Value2).
    recoveredBlock10Value3
].
    (self) categoryIndexesDo: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"kernel.ic method 0x20013bc4; bytecode file offset 0x5eae4"
!EmSelectorInformation methodsFor: 'recovered'!
categoriesAsDictionary
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := [:recoveredBlock10Arg1 :recoveredBlock10Arg2 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 recoveredBlock10Value4 |
    recoveredBlock10Value0 := recoveredLocal1.
    recoveredBlock10Value1 := recoveredBlock10Arg1.
    recoveredBlock10Value2 := recoveredBlock10Arg2.
    recoveredBlock10Value3 := (self) selectorsForIndexes: (recoveredBlock10Value2).
    recoveredBlock10Value4 := (recoveredBlock10Value0) at: (recoveredBlock10Value1) put: (recoveredBlock10Value3).
    recoveredBlock10Value4
].
    (self) categoryPairsDo: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"kernel.ic method 0x20014160; bytecode file offset 0x5f088"
!EmSelectorInformation methodsFor: 'recovered'!
setCategorization: recoveredArg1 for: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg2.
    (self) selectorsArray: (recoveredValue0).
    (self) categoriesArray: (#()).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [:recoveredBlock13Arg1 :recoveredBlock13Arg2 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 recoveredBlock13Value3 recoveredBlock13Value4 |
    recoveredBlock13Value0 := recoveredBlock13Arg2.
    recoveredBlock13Value1 := Array.
    recoveredBlock13Value2 := recoveredBlock13Arg1.
    recoveredBlock13Value3 := (recoveredBlock13Value1) with: (recoveredBlock13Value2).
    recoveredBlock13Value4 := (self) addSelectors: (recoveredBlock13Value0) to: (recoveredBlock13Value3).
    recoveredBlock13Value4
].
    (recoveredValue1) keysAndValuesDo: (recoveredValue2).
    ^self
! !

"kernel.ic method 0x20016e6c; bytecode file offset 0x61d88"
!EmSelectorInformation methodsFor: 'recovered'!
indexForCategory: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) categoriesArray.
    recoveredValue1 := (recoveredValue0) size.
    recoveredValue2 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Stack0 recoveredBlock11Stack1 recoveredBlock11Stack2 recoveredBlock11Stack3 recoveredBlock11Stack4 recoveredBlock11PC recoveredBlock11Step recoveredBlock11Done recoveredBlock11Result |
    recoveredBlock11Stack0 := self.
    recoveredBlock11PC := 18.
    recoveredBlock11Done := false.
    [recoveredBlock11Done not] whileTrue: [
        recoveredBlock11Step := recoveredBlock11PC.
        recoveredBlock11Step = 18 ifTrue: [
            recoveredBlock11Stack1 := nil.
            recoveredBlock11PC := 19.
        ].
        recoveredBlock11Step = 19 ifTrue: [
            recoveredBlock11Stack2 := self.
            recoveredBlock11PC := 20.
        ].
        recoveredBlock11Step = 20 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) categoriesArray.
            recoveredBlock11PC := 21.
        ].
        recoveredBlock11Step = 21 ifTrue: [
            recoveredBlock11Stack3 := recoveredBlock11Arg1.
            recoveredBlock11PC := 22.
        ].
        recoveredBlock11Step = 22 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) at: (recoveredBlock11Stack3).
            recoveredBlock11PC := 23.
        ].
        recoveredBlock11Step = 23 ifTrue: [
            recoveredBlock11Stack3 := recoveredArg1.
            recoveredBlock11PC := 26.
        ].
        recoveredBlock11Step = 26 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) = (recoveredBlock11Stack3).
            recoveredBlock11PC := 27.
        ].
        recoveredBlock11Step = 27 ifTrue: [
            (recoveredBlock11Stack2) ifTrue: [recoveredBlock11PC := 30] ifFalse: [recoveredBlock11PC := 33].
        ].
        recoveredBlock11Step = 30 ifTrue: [
            recoveredBlock11PC := 31.
        ].
        recoveredBlock11Step = 31 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Arg1.
            recoveredBlock11PC := 32.
        ].
        recoveredBlock11Step = 32 ifTrue: [
            ^recoveredBlock11Stack1
        ].
        recoveredBlock11Step = 33 ifTrue: [
            recoveredBlock11Result := recoveredBlock11Stack1.
            recoveredBlock11Done := true.
        ].
    ].
    recoveredBlock11Result
].
    (1) to: (recoveredValue1) by: (2) do: (recoveredValue2).
    ^0
! !

"kernel.ic method 0x20016f5c; bytecode file offset 0x61e8c"
!EmSelectorInformation methodsFor: 'recovered'!
addCategory: recoveredArg1 withIndexes: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) defaultCategoryName.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasCategory: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) categoriesArray.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack5 := recoveredArg2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack4 := (recoveredStack4) compressedArray: (recoveredStack5).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) categoriesArray: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x2001770c; bytecode file offset 0x62630"
!EmSelectorInformation methodsFor: 'recovered'!
selectorsForIndexes: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) selectorsArray.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := Set.
    recoveredValue2 := (recoveredValue1) new.
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Value0 recoveredBlock17Value1 recoveredBlock17Value2 recoveredBlock17Value3 recoveredBlock17Value4 |
    recoveredBlock17Value0 := recoveredLocal2.
    recoveredBlock17Value1 := recoveredLocal1.
    recoveredBlock17Value2 := recoveredBlock17Arg1.
    recoveredBlock17Value3 := (recoveredBlock17Value1) at: (recoveredBlock17Value2).
    recoveredBlock17Value4 := (recoveredBlock17Value0) add: (recoveredBlock17Value3).
    recoveredBlock17Value4
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := recoveredLocal2.
    ^recoveredValue5
! !

"kernel.ic method 0x20017f58; bytecode file offset 0x62e80"
!EmSelectorInformation methodsFor: 'recovered'!
selectorsIn: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) defaultCategoryName.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexesForUncategorizedSelectors.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexForCategory: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexesAtCategoryIndex: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectorsForIndexes: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x200189a8; bytecode file offset 0x638cc"
!EmSelectorInformation methodsFor: 'recovered'!
categoryPairsDo: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) categoriesArray.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := (recoveredValue1) size.
    recoveredValue3 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Value0 recoveredBlock16Value1 recoveredBlock16Value2 recoveredBlock16Value3 recoveredBlock16Value4 recoveredBlock16Value5 recoveredBlock16Value6 recoveredBlock16Value7 recoveredBlock16Value8 recoveredBlock16Value9 |
    recoveredBlock16Value0 := recoveredArg1.
    recoveredBlock16Value1 := recoveredLocal1.
    recoveredBlock16Value2 := recoveredBlock16Arg1.
    recoveredBlock16Value3 := (recoveredBlock16Value1) at: (recoveredBlock16Value2).
    recoveredBlock16Value4 := recoveredLocal1.
    recoveredBlock16Value5 := recoveredBlock16Arg1.
    recoveredBlock16Value6 := (recoveredBlock16Value5) + (1).
    recoveredBlock16Value7 := (recoveredBlock16Value4) at: (recoveredBlock16Value6).
    recoveredBlock16Value8 := (self) decompressedArray: (recoveredBlock16Value7).
    recoveredBlock16Value9 := (recoveredBlock16Value0) value: (recoveredBlock16Value3) value: (recoveredBlock16Value8).
    recoveredBlock16Value9
].
    recoveredValue4 := (1) to: (recoveredValue2) by: (2) do: (recoveredValue3).
    ^recoveredValue4
! !

"kernel.ic method 0x200197a8; bytecode file offset 0x646c8"
!EmSelectorInformation methodsFor: 'recovered'!
removeCategory: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := [:recoveredBlock10Arg1 :recoveredBlock10Arg2 | 
    | recoveredBlock10Stack0 recoveredBlock10Stack1 recoveredBlock10Stack2 recoveredBlock10Stack3 recoveredBlock10Stack4 recoveredBlock10PC recoveredBlock10Step recoveredBlock10Done recoveredBlock10Result |
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
            recoveredBlock10Stack3 := recoveredArg1.
            recoveredBlock10PC := 21.
        ].
        recoveredBlock10Step = 21 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) = (recoveredBlock10Stack3).
            recoveredBlock10PC := 22.
        ].
        recoveredBlock10Step = 22 ifTrue: [
            (recoveredBlock10Stack2) ifTrue: [recoveredBlock10PC := 36] ifFalse: [recoveredBlock10PC := 26].
        ].
        recoveredBlock10Step = 26 ifTrue: [
            recoveredBlock10PC := 27.
        ].
        recoveredBlock10Step = 27 ifTrue: [
            recoveredBlock10Stack1 := recoveredLocal1.
            recoveredBlock10PC := 30.
        ].
        recoveredBlock10Step = 30 ifTrue: [
            recoveredBlock10Stack2 := recoveredBlock10Stack1.
            recoveredBlock10PC := 31.
        ].
        recoveredBlock10Step = 31 ifTrue: [
            recoveredBlock10Stack3 := recoveredBlock10Arg1.
            recoveredBlock10PC := 32.
        ].
        recoveredBlock10Step = 32 ifTrue: [
            (recoveredBlock10Stack2) add: (recoveredBlock10Stack3).
            recoveredBlock10PC := 34.
        ].
        recoveredBlock10Step = 34 ifTrue: [
            recoveredBlock10Stack2 := recoveredBlock10Arg2.
            recoveredBlock10PC := 35.
        ].
        recoveredBlock10Step = 35 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) add: (recoveredBlock10Stack2).
            recoveredBlock10PC := 36.
        ].
        recoveredBlock10Step = 36 ifTrue: [
            recoveredBlock10Result := recoveredBlock10Stack1.
            recoveredBlock10Done := true.
        ].
    ].
    recoveredBlock10Result
].
    (self) categoryPairsDo: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    (self) categoriesArray: (recoveredValue3).
    ^self
! !

"kernel.ic method 0x2001a9d0; bytecode file offset 0x658f0"
!EmSelectorInformation methodsFor: 'recovered'!
isSelectorCategorized: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectorsArray.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexOf: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := [:recoveredBlock23Arg1 | 
    | recoveredBlock23Stack0 recoveredBlock23Stack1 recoveredBlock23Stack2 recoveredBlock23Stack3 recoveredBlock23Stack4 recoveredBlock23PC recoveredBlock23Step recoveredBlock23Done recoveredBlock23Result |
    recoveredBlock23Stack0 := self.
    recoveredBlock23PC := 30.
    recoveredBlock23Done := false.
    [recoveredBlock23Done not] whileTrue: [
        recoveredBlock23Step := recoveredBlock23PC.
        recoveredBlock23Step = 30 ifTrue: [
            recoveredBlock23Stack1 := nil.
            recoveredBlock23PC := 31.
        ].
        recoveredBlock23Step = 31 ifTrue: [
            recoveredBlock23Stack2 := self.
            recoveredBlock23PC := 32.
        ].
        recoveredBlock23Step = 32 ifTrue: [
            recoveredBlock23Stack3 := recoveredBlock23Arg1.
            recoveredBlock23PC := 33.
        ].
        recoveredBlock23Step = 33 ifTrue: [
            recoveredBlock23Stack2 := (recoveredBlock23Stack2) indexesAtCategoryIndex: (recoveredBlock23Stack3).
            recoveredBlock23PC := 34.
        ].
        recoveredBlock23Step = 34 ifTrue: [
            recoveredBlock23Stack3 := recoveredLocal1.
            recoveredBlock23PC := 37.
        ].
        recoveredBlock23Step = 37 ifTrue: [
            recoveredBlock23Stack2 := (recoveredBlock23Stack2) includes: (recoveredBlock23Stack3).
            recoveredBlock23PC := 38.
        ].
        recoveredBlock23Step = 38 ifTrue: [
            (recoveredBlock23Stack2) ifTrue: [recoveredBlock23PC := 42] ifFalse: [recoveredBlock23PC := 45].
        ].
        recoveredBlock23Step = 42 ifTrue: [
            recoveredBlock23PC := 43.
        ].
        recoveredBlock23Step = 43 ifTrue: [
            recoveredBlock23Stack1 := true.
            recoveredBlock23PC := 44.
        ].
        recoveredBlock23Step = 44 ifTrue: [
            ^recoveredBlock23Stack1
        ].
        recoveredBlock23Step = 45 ifTrue: [
            recoveredBlock23Result := recoveredBlock23Stack1.
            recoveredBlock23Done := true.
        ].
    ].
    recoveredBlock23Result
].
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) categoryIndexesDo: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x2001ab48; bytecode file offset 0x65a70"
!EmSelectorInformation methodsFor: 'recovered'!
isCategoryEmpty: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) defaultCategoryName.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexesForCategorizedSelectors.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) selectorsArray.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := [:recoveredBlock24Arg1 :recoveredBlock24Arg2 | 
    | recoveredBlock24Stack0 recoveredBlock24Stack1 recoveredBlock24Stack2 recoveredBlock24Stack3 recoveredBlock24Stack4 recoveredBlock24PC recoveredBlock24Step recoveredBlock24Done recoveredBlock24Result |
    recoveredBlock24Stack0 := self.
    recoveredBlock24PC := 30.
    recoveredBlock24Done := false.
    [recoveredBlock24Done not] whileTrue: [
        recoveredBlock24Step := recoveredBlock24PC.
        recoveredBlock24Step = 30 ifTrue: [
            recoveredBlock24Stack1 := nil.
            recoveredBlock24PC := 31.
        ].
        recoveredBlock24Step = 31 ifTrue: [
            recoveredBlock24Stack2 := recoveredArg1.
            recoveredBlock24PC := 34.
        ].
        recoveredBlock24Step = 34 ifTrue: [
            recoveredBlock24Stack3 := recoveredBlock24Arg1.
            recoveredBlock24PC := 35.
        ].
        recoveredBlock24Step = 35 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) = (recoveredBlock24Stack3).
            recoveredBlock24PC := 36.
        ].
        recoveredBlock24Step = 36 ifTrue: [
            (recoveredBlock24Stack2) ifTrue: [recoveredBlock24PC := 40] ifFalse: [recoveredBlock24PC := 45].
        ].
        recoveredBlock24Step = 40 ifTrue: [
            recoveredBlock24PC := 41.
        ].
        recoveredBlock24Step = 41 ifTrue: [
            recoveredBlock24Stack1 := recoveredBlock24Arg2.
            recoveredBlock24PC := 42.
        ].
        recoveredBlock24Step = 42 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) isEmpty.
            recoveredBlock24PC := 44.
        ].
        recoveredBlock24Step = 44 ifTrue: [
            ^recoveredBlock24Stack1
        ].
        recoveredBlock24Step = 45 ifTrue: [
            recoveredBlock24Result := recoveredBlock24Stack1.
            recoveredBlock24Done := true.
        ].
    ].
    recoveredBlock24Result
].
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) categoryPairsDo: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"kernel.ic method 0x2001bc1c; bytecode file offset 0x66b44"
!EmSelectorInformation methodsFor: 'recovered'!
categorizeSelectors: recoveredArg1 in: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := Set.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Local1 recoveredBlock10Stack0 recoveredBlock10Stack1 recoveredBlock10Stack2 recoveredBlock10Stack3 recoveredBlock10Stack4 recoveredBlock10Stack5 recoveredBlock10PC recoveredBlock10Step recoveredBlock10Done recoveredBlock10Result |
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
            recoveredBlock10Stack2 := recoveredArg2.
            recoveredBlock10PC := 20.
        ].
        recoveredBlock10Step = 20 ifTrue: [
            recoveredBlock10Stack3 := self.
            recoveredBlock10PC := 21.
        ].
        recoveredBlock10Step = 21 ifTrue: [
            recoveredBlock10Stack4 := recoveredBlock10Arg1.
            recoveredBlock10PC := 22.
        ].
        recoveredBlock10Step = 22 ifTrue: [
            recoveredBlock10Stack3 := (recoveredBlock10Stack3) categoryAtIndex: (recoveredBlock10Stack4).
            recoveredBlock10PC := 23.
        ].
        recoveredBlock10Step = 23 ifTrue: [
            recoveredBlock10Stack4 := recoveredBlock10Stack3.
            recoveredBlock10PC := 24.
        ].
        recoveredBlock10Step = 24 ifTrue: [
            recoveredBlock10Local1 := recoveredBlock10Stack4.
            recoveredBlock10PC := 25.
        ].
        recoveredBlock10Step = 25 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) includes: (recoveredBlock10Stack3).
            recoveredBlock10PC := 26.
        ].
        recoveredBlock10Step = 26 ifTrue: [
            (recoveredBlock10Stack2) ifTrue: [recoveredBlock10PC := 37] ifFalse: [recoveredBlock10PC := 30].
        ].
        recoveredBlock10Step = 30 ifTrue: [
            recoveredBlock10PC := 31.
        ].
        recoveredBlock10Step = 31 ifTrue: [
            recoveredBlock10Stack1 := recoveredLocal1.
            recoveredBlock10PC := 34.
        ].
        recoveredBlock10Step = 34 ifTrue: [
            recoveredBlock10Stack2 := recoveredBlock10Local1.
            recoveredBlock10PC := 35.
        ].
        recoveredBlock10Step = 35 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) add: (recoveredBlock10Stack2).
            recoveredBlock10PC := 37.
        ].
        recoveredBlock10Step = 37 ifTrue: [
            recoveredBlock10Result := recoveredBlock10Stack1.
            recoveredBlock10Done := true.
        ].
    ].
    recoveredBlock10Result
].
    (self) categoryIndexesDo: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (self) addSelectors: (recoveredValue3) to: (recoveredValue4) removeFrom: (recoveredValue5).
    ^recoveredValue6
! !

"kernel.ic method 0x2001e864; bytecode file offset 0x69790"
!EmSelectorInformation methodsFor: 'recovered'!
renameCategory: recoveredArg1 to: recoveredArg2
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
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) defaultCategoryName.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := (recoveredStack3) indexesForUncategorizedSelectors.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) addCategory: (recoveredStack2) withIndexes: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) defaultCategoryName.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasCategory: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexForCategory: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) categoriesArray.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"kernel.ic method 0x20021354; bytecode file offset 0x6c288"
!EmSelectorInformation methodsFor: 'recovered'!
indexesForUncategorizedSelectors
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexesForCategorizedSelectors.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectorsArray.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) to: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectorsArray.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 33].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := #().
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectorsArray.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredPC := 60.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack0) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 48] ifFalse: [recoveredLocal1 := nil. recoveredPC := 74]] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x20021734; bytecode file offset 0x6c66c"
!EmSelectorInformation methodsFor: 'recovered'!
addSelectors: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectorsArray.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectorsArray: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectorsArray.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSet.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := [:recoveredBlock32Arg1 | 
    | recoveredBlock32Stack0 recoveredBlock32Stack1 recoveredBlock32Stack2 recoveredBlock32Stack3 recoveredBlock32Stack4 recoveredBlock32PC recoveredBlock32Step recoveredBlock32Done recoveredBlock32Result |
    recoveredBlock32Stack0 := self.
    recoveredBlock32PC := 38.
    recoveredBlock32Done := false.
    [recoveredBlock32Done not] whileTrue: [
        recoveredBlock32Step := recoveredBlock32PC.
        recoveredBlock32Step = 38 ifTrue: [
            recoveredBlock32Stack1 := nil.
            recoveredBlock32PC := 39.
        ].
        recoveredBlock32Step = 39 ifTrue: [
            recoveredBlock32Stack2 := recoveredLocal2.
            recoveredBlock32PC := 42.
        ].
        recoveredBlock32Step = 42 ifTrue: [
            recoveredBlock32Stack3 := recoveredBlock32Arg1.
            recoveredBlock32PC := 43.
        ].
        recoveredBlock32Step = 43 ifTrue: [
            recoveredBlock32Stack2 := (recoveredBlock32Stack2) includes: (recoveredBlock32Stack3).
            recoveredBlock32PC := 45.
        ].
        recoveredBlock32Step = 45 ifTrue: [
            (recoveredBlock32Stack2) ifTrue: [recoveredBlock32PC := 55] ifFalse: [recoveredBlock32PC := 48].
        ].
        recoveredBlock32Step = 48 ifTrue: [
            recoveredBlock32PC := 49.
        ].
        recoveredBlock32Step = 49 ifTrue: [
            recoveredBlock32Stack1 := recoveredLocal1.
            recoveredBlock32PC := 52.
        ].
        recoveredBlock32Step = 52 ifTrue: [
            recoveredBlock32Stack2 := recoveredBlock32Arg1.
            recoveredBlock32PC := 53.
        ].
        recoveredBlock32Step = 53 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) add: (recoveredBlock32Stack2).
            recoveredBlock32PC := 55.
        ].
        recoveredBlock32Step = 55 ifTrue: [
            recoveredBlock32Result := recoveredBlock32Stack1.
            recoveredBlock32Done := true.
        ].
    ].
    recoveredBlock32Result
].
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectorsArray.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0) selectorsArray: (recoveredStack1).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x20021f60; bytecode file offset 0x6ce94"
!EmSelectorInformation methodsFor: 'recovered'!
categoriesForSelectors: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) categoriesArray.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexesForSelectors: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := [:recoveredBlock34Arg1 :recoveredBlock34Arg2 | 
    | recoveredBlock34Local1 recoveredBlock34Stack0 recoveredBlock34Stack1 recoveredBlock34Stack2 recoveredBlock34Stack3 recoveredBlock34Stack4 recoveredBlock34Stack5 recoveredBlock34PC recoveredBlock34Step recoveredBlock34Done recoveredBlock34Result |
    recoveredBlock34Stack0 := self.
    recoveredBlock34PC := 40.
    recoveredBlock34Done := false.
    [recoveredBlock34Done not] whileTrue: [
        recoveredBlock34Step := recoveredBlock34PC.
        recoveredBlock34Step = 40 ifTrue: [
            recoveredBlock34Stack1 := recoveredBlock34Arg2.
            recoveredBlock34PC := 41.
        ].
        recoveredBlock34Step = 41 ifTrue: [
            recoveredBlock34Stack2 := [:recoveredBlock34Block41Arg1 | 
    | recoveredBlock34Block41Value0 recoveredBlock34Block41Value1 recoveredBlock34Block41Value2 |
    recoveredBlock34Block41Value0 := recoveredLocal1.
    recoveredBlock34Block41Value1 := recoveredBlock34Block41Arg1.
    recoveredBlock34Block41Value2 := (recoveredBlock34Block41Value0) includes: (recoveredBlock34Block41Value1).
    recoveredBlock34Block41Value2
].
            recoveredBlock34PC := 55.
        ].
        recoveredBlock34Step = 55 ifTrue: [
            recoveredBlock34Stack1 := (recoveredBlock34Stack1) select: (recoveredBlock34Stack2).
            recoveredBlock34PC := 57.
        ].
        recoveredBlock34Step = 57 ifTrue: [
            recoveredBlock34Local1 := recoveredBlock34Stack1.
            recoveredBlock34PC := 58.
        ].
        recoveredBlock34Step = 58 ifTrue: [
            recoveredBlock34Stack1 := nil.
            recoveredBlock34PC := 59.
        ].
        recoveredBlock34Step = 59 ifTrue: [
            recoveredBlock34Stack2 := recoveredBlock34Local1.
            recoveredBlock34PC := 60.
        ].
        recoveredBlock34Step = 60 ifTrue: [
            recoveredBlock34Stack2 := (recoveredBlock34Stack2) notEmpty.
            recoveredBlock34PC := 61.
        ].
        recoveredBlock34Step = 61 ifTrue: [
            (recoveredBlock34Stack2) ifTrue: [recoveredBlock34PC := 64] ifFalse: [recoveredBlock34PC := 75].
        ].
        recoveredBlock34Step = 64 ifTrue: [
            recoveredBlock34PC := 65.
        ].
        recoveredBlock34Step = 65 ifTrue: [
            recoveredBlock34Stack1 := recoveredLocal2.
            recoveredBlock34PC := 68.
        ].
        recoveredBlock34Step = 68 ifTrue: [
            recoveredBlock34Stack2 := recoveredBlock34Arg1.
            recoveredBlock34PC := 69.
        ].
        recoveredBlock34Step = 69 ifTrue: [
            recoveredBlock34Stack3 := self.
            recoveredBlock34PC := 70.
        ].
        recoveredBlock34Step = 70 ifTrue: [
            recoveredBlock34Stack4 := recoveredBlock34Local1.
            recoveredBlock34PC := 71.
        ].
        recoveredBlock34Step = 71 ifTrue: [
            recoveredBlock34Stack3 := (recoveredBlock34Stack3) selectorsForIndexes: (recoveredBlock34Stack4).
            recoveredBlock34PC := 73.
        ].
        recoveredBlock34Step = 73 ifTrue: [
            recoveredBlock34Stack1 := (recoveredBlock34Stack1) at: (recoveredBlock34Stack2) put: (recoveredBlock34Stack3).
            recoveredBlock34PC := 75.
        ].
        recoveredBlock34Step = 75 ifTrue: [
            recoveredBlock34Result := recoveredBlock34Stack1.
            recoveredBlock34Done := true.
        ].
    ].
    recoveredBlock34Result
].
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack1) categoryPairsDo: (recoveredStack2).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"kernel.ic method 0x20021fe4; bytecode file offset 0x6cf24"
!EmSelectorInformation methodsFor: 'recovered'!
categoriesForSelector: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectorsArray.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexOf: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := #().
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := [:recoveredBlock31Arg1 :recoveredBlock31Arg2 | 
    | recoveredBlock31Stack0 recoveredBlock31Stack1 recoveredBlock31Stack2 recoveredBlock31Stack3 recoveredBlock31Stack4 recoveredBlock31PC recoveredBlock31Step recoveredBlock31Done recoveredBlock31Result |
    recoveredBlock31Stack0 := self.
    recoveredBlock31PC := 38.
    recoveredBlock31Done := false.
    [recoveredBlock31Done not] whileTrue: [
        recoveredBlock31Step := recoveredBlock31PC.
        recoveredBlock31Step = 38 ifTrue: [
            recoveredBlock31Stack1 := nil.
            recoveredBlock31PC := 39.
        ].
        recoveredBlock31Step = 39 ifTrue: [
            recoveredBlock31Stack2 := recoveredBlock31Arg2.
            recoveredBlock31PC := 40.
        ].
        recoveredBlock31Step = 40 ifTrue: [
            recoveredBlock31Stack3 := recoveredLocal2.
            recoveredBlock31PC := 43.
        ].
        recoveredBlock31Step = 43 ifTrue: [
            recoveredBlock31Stack2 := (recoveredBlock31Stack2) includes: (recoveredBlock31Stack3).
            recoveredBlock31PC := 45.
        ].
        recoveredBlock31Step = 45 ifTrue: [
            (recoveredBlock31Stack2) ifTrue: [recoveredBlock31PC := 48] ifFalse: [recoveredBlock31PC := 55].
        ].
        recoveredBlock31Step = 48 ifTrue: [
            recoveredBlock31PC := 49.
        ].
        recoveredBlock31Step = 49 ifTrue: [
            recoveredBlock31Stack1 := recoveredLocal1.
            recoveredBlock31PC := 52.
        ].
        recoveredBlock31Step = 52 ifTrue: [
            recoveredBlock31Stack2 := recoveredBlock31Arg1.
            recoveredBlock31PC := 53.
        ].
        recoveredBlock31Step = 53 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) add: (recoveredBlock31Stack2).
            recoveredBlock31PC := 55.
        ].
        recoveredBlock31Step = 55 ifTrue: [
            recoveredBlock31Result := recoveredBlock31Stack1.
            recoveredBlock31Done := true.
        ].
    ].
    recoveredBlock31Result
].
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) categoryPairsDo: (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultCategoryName.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) with: (recoveredStack1).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredPC := 81.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x200233bc; bytecode file offset 0x6e300"
!EmSelectorInformation methodsFor: 'recovered'!
categories
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := SortedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := (self) selectorsArray.
    recoveredValue3 := (recoveredValue2) copy.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := [:recoveredBlock16Arg1 :recoveredBlock16Arg2 | 
    | recoveredBlock16Value0 recoveredBlock16Value1 recoveredBlock16Value2 recoveredBlock16Value3 recoveredBlock16Value4 |
    recoveredBlock16Value0 := recoveredLocal2.
    recoveredBlock16Value1 := recoveredBlock16Arg1.
    (recoveredBlock16Value0) add: (recoveredBlock16Value1).
    recoveredBlock16Value2 := recoveredBlock16Arg2.
    recoveredBlock16Value3 := [:recoveredBlock16Block29Arg1 | 
    | recoveredBlock16Block29Value0 recoveredBlock16Block29Value1 recoveredBlock16Block29Value2 |
    recoveredBlock16Block29Value0 := recoveredLocal1.
    recoveredBlock16Block29Value1 := recoveredBlock16Block29Arg1.
    recoveredBlock16Block29Value2 := (recoveredBlock16Block29Value0) at: (recoveredBlock16Block29Value1) put: (nil).
    recoveredBlock16Block29Value2
].
    recoveredBlock16Value4 := (recoveredBlock16Value2) do: (recoveredBlock16Value3).
    recoveredBlock16Value4
].
    (self) categoryPairsDo: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := [:recoveredBlock52Arg1 | 
    | recoveredBlock52Stack0 recoveredBlock52Stack1 recoveredBlock52Stack2 recoveredBlock52Stack3 recoveredBlock52Stack4 recoveredBlock52PC recoveredBlock52Step recoveredBlock52Done recoveredBlock52Result |
    recoveredBlock52Stack0 := self.
    recoveredBlock52PC := 58.
    recoveredBlock52Done := false.
    [recoveredBlock52Done not] whileTrue: [
        recoveredBlock52Step := recoveredBlock52PC.
        recoveredBlock52Step = 58 ifTrue: [
            recoveredBlock52Stack1 := nil.
            recoveredBlock52PC := 59.
        ].
        recoveredBlock52Step = 59 ifTrue: [
            recoveredBlock52Stack2 := recoveredBlock52Arg1.
            recoveredBlock52PC := 60.
        ].
        recoveredBlock52Step = 60 ifTrue: [
            (recoveredBlock52Stack2 == nil) ifTrue: [recoveredBlock52PC := 82] ifFalse: [recoveredBlock52PC := 64].
        ].
        recoveredBlock52Step = 64 ifTrue: [
            recoveredBlock52PC := 65.
        ].
        recoveredBlock52Step = 65 ifTrue: [
            recoveredBlock52Stack1 := recoveredLocal2.
            recoveredBlock52PC := 68.
        ].
        recoveredBlock52Step = 68 ifTrue: [
            recoveredBlock52Stack1 := (recoveredBlock52Stack1) asArray.
            recoveredBlock52PC := 70.
        ].
        recoveredBlock52Step = 70 ifTrue: [
            recoveredBlock52Stack2 := Array.
            recoveredBlock52PC := 72.
        ].
        recoveredBlock52Step = 72 ifTrue: [
            recoveredBlock52Stack3 := self.
            recoveredBlock52PC := 73.
        ].
        recoveredBlock52Step = 73 ifTrue: [
            recoveredBlock52Stack3 := (recoveredBlock52Stack3) class.
            recoveredBlock52PC := 75.
        ].
        recoveredBlock52Step = 75 ifTrue: [
            recoveredBlock52Stack3 := (recoveredBlock52Stack3) defaultCategoryName.
            recoveredBlock52PC := 77.
        ].
        recoveredBlock52Step = 77 ifTrue: [
            recoveredBlock52Stack2 := (recoveredBlock52Stack2) with: (recoveredBlock52Stack3).
            recoveredBlock52PC := 79.
        ].
        recoveredBlock52Step = 79 ifTrue: [
            recoveredBlock52Stack1 := (recoveredBlock52Stack1) , (recoveredBlock52Stack2).
            recoveredBlock52PC := 81.
        ].
        recoveredBlock52Step = 81 ifTrue: [
            ^recoveredBlock52Stack1
        ].
        recoveredBlock52Step = 82 ifTrue: [
            recoveredBlock52Result := recoveredBlock52Stack1.
            recoveredBlock52Done := true.
        ].
    ].
    recoveredBlock52Result
].
    (recoveredValue5) do: (recoveredValue6).
    recoveredValue7 := recoveredLocal2.
    recoveredValue8 := (recoveredValue7) asArray.
    ^recoveredValue8
! !

"kernel.ic method 0x2002663c; bytecode file offset 0x71560"
!EmSelectorInformation methodsFor: 'recovered'!
compressedArray: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := [:recoveredBlock40Arg1 | 
    | recoveredBlock40Stack0 recoveredBlock40Stack1 recoveredBlock40Stack2 recoveredBlock40Stack3 recoveredBlock40PC recoveredBlock40Step recoveredBlock40Done recoveredBlock40Result |
    recoveredBlock40Stack0 := self.
    recoveredBlock40PC := 46.
    recoveredBlock40Done := false.
    [recoveredBlock40Done not] whileTrue: [
        recoveredBlock40Step := recoveredBlock40PC.
        recoveredBlock40Step = 46 ifTrue: [
            recoveredBlock40Stack1 := recoveredLocal3.
            recoveredBlock40PC := 49.
        ].
        recoveredBlock40Step = 49 ifTrue: [
            recoveredBlock40Stack2 := recoveredBlock40Arg1.
            recoveredBlock40PC := 50.
        ].
        recoveredBlock40Step = 50 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) max: (recoveredBlock40Stack2).
            recoveredBlock40PC := 51.
        ].
        recoveredBlock40Step = 51 ifTrue: [
            recoveredLocal3 := recoveredBlock40Stack1.
            recoveredBlock40PC := 54.
        ].
        recoveredBlock40Step = 54 ifTrue: [
            recoveredBlock40Stack1 := recoveredBlock40Arg1.
            recoveredBlock40PC := 55.
        ].
        recoveredBlock40Step = 55 ifTrue: [
            recoveredBlock40Stack2 := recoveredLocal1.
            recoveredBlock40PC := 58.
        ].
        recoveredBlock40Step = 58 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) = (recoveredBlock40Stack2).
            recoveredBlock40PC := 59.
        ].
        recoveredBlock40Step = 59 ifTrue: [
            (recoveredBlock40Stack1) ifTrue: [recoveredBlock40PC := 66] ifFalse: [recoveredBlock40PC := 62].
        ].
        recoveredBlock40Step = 62 ifTrue: [
            recoveredBlock40Stack1 := false.
            recoveredBlock40PC := 63.
        ].
        recoveredBlock40Step = 63 ifTrue: [
            recoveredLocal2 := recoveredBlock40Stack1.
            recoveredBlock40PC := 66.
        ].
        recoveredBlock40Step = 66 ifTrue: [
            recoveredBlock40Stack1 := recoveredLocal1.
            recoveredBlock40PC := 69.
        ].
        recoveredBlock40Step = 69 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) + (1).
            recoveredBlock40PC := 70.
        ].
        recoveredBlock40Step = 70 ifTrue: [
            recoveredBlock40Stack2 := recoveredBlock40Stack1.
            recoveredBlock40PC := 71.
        ].
        recoveredBlock40Step = 71 ifTrue: [
            recoveredLocal1 := recoveredBlock40Stack2.
            recoveredBlock40PC := 74.
        ].
        recoveredBlock40Step = 74 ifTrue: [
            recoveredBlock40Result := recoveredBlock40Stack1.
            recoveredBlock40Done := true.
        ].
    ].
    recoveredBlock40Result
].
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredPC := 113.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := 255.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 108].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := (recoveredStack1) asByteArray.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredPC := 113.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := (recoveredStack1) asArray.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"kernel.ic method 0x2002c940; bytecode file offset 0x77894"
!EmSelectorInformation methodsFor: 'recovered'!
addSelectors: recoveredArg1 to: recoveredArg2 removeFrom: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexesForSelectors: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 115].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Local1 recoveredBlock19Local2 recoveredBlock19Stack0 recoveredBlock19Stack1 recoveredBlock19Stack2 recoveredBlock19Stack3 recoveredBlock19Stack4 recoveredBlock19Stack5 recoveredBlock19PC recoveredBlock19Step recoveredBlock19Done recoveredBlock19Result |
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
            recoveredBlock19Stack2 := recoveredArg3.
            recoveredBlock19PC := 30.
        ].
        recoveredBlock19Step = 30 ifTrue: [
            recoveredBlock19Stack3 := self.
            recoveredBlock19PC := 31.
        ].
        recoveredBlock19Step = 31 ifTrue: [
            recoveredBlock19Stack4 := recoveredBlock19Arg1.
            recoveredBlock19PC := 34.
        ].
        recoveredBlock19Step = 34 ifTrue: [
            recoveredBlock19Stack3 := (recoveredBlock19Stack3) categoryAtIndex: (recoveredBlock19Stack4).
            recoveredBlock19PC := 35.
        ].
        recoveredBlock19Step = 35 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) includes: (recoveredBlock19Stack3).
            recoveredBlock19PC := 36.
        ].
        recoveredBlock19Step = 36 ifTrue: [
            (recoveredBlock19Stack2) ifTrue: [recoveredBlock19PC := 40] ifFalse: [recoveredBlock19PC := 112].
        ].
        recoveredBlock19Step = 40 ifTrue: [
            recoveredBlock19PC := 41.
        ].
        recoveredBlock19Step = 41 ifTrue: [
            recoveredBlock19Stack1 := self.
            recoveredBlock19PC := 42.
        ].
        recoveredBlock19Step = 42 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Arg1.
            recoveredBlock19PC := 45.
        ].
        recoveredBlock19Step = 45 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) indexesAtCategoryIndex: (recoveredBlock19Stack2).
            recoveredBlock19PC := 47.
        ].
        recoveredBlock19Step = 47 ifTrue: [
            recoveredBlock19Local2 := recoveredBlock19Stack1.
            recoveredBlock19PC := 50.
        ].
        recoveredBlock19Step = 50 ifTrue: [
            recoveredBlock19Stack1 := OrderedCollection.
            recoveredBlock19PC := 52.
        ].
        recoveredBlock19Step = 52 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) new.
            recoveredBlock19PC := 54.
        ].
        recoveredBlock19Step = 54 ifTrue: [
            recoveredBlock19Local1 := recoveredBlock19Stack1.
            recoveredBlock19PC := 57.
        ].
        recoveredBlock19Step = 57 ifTrue: [
            recoveredBlock19Stack1 := recoveredBlock19Local2.
            recoveredBlock19PC := 60.
        ].
        recoveredBlock19Step = 60 ifTrue: [
            recoveredBlock19Stack2 := [:recoveredBlock19Block60Arg1 | 
    | recoveredBlock19Block60Stack0 recoveredBlock19Block60Stack1 recoveredBlock19Block60Stack2 recoveredBlock19Block60Stack3 recoveredBlock19Block60Stack4 recoveredBlock19Block60PC recoveredBlock19Block60Step recoveredBlock19Block60Done recoveredBlock19Block60Result |
    recoveredBlock19Block60Stack0 := nil.
    recoveredBlock19Block60PC := 66.
    recoveredBlock19Block60Done := false.
    [recoveredBlock19Block60Done not] whileTrue: [
        recoveredBlock19Block60Step := recoveredBlock19Block60PC.
        recoveredBlock19Block60Step = 66 ifTrue: [
            recoveredBlock19Block60Stack1 := nil.
            recoveredBlock19Block60PC := 67.
        ].
        recoveredBlock19Block60Step = 67 ifTrue: [
            recoveredBlock19Block60Stack2 := recoveredLocal1.
            recoveredBlock19Block60PC := 70.
        ].
        recoveredBlock19Block60Step = 70 ifTrue: [
            recoveredBlock19Block60Stack3 := recoveredBlock19Block60Arg1.
            recoveredBlock19Block60PC := 71.
        ].
        recoveredBlock19Block60Step = 71 ifTrue: [
            recoveredBlock19Block60Stack2 := (recoveredBlock19Block60Stack2) includes: (recoveredBlock19Block60Stack3).
            recoveredBlock19Block60PC := 72.
        ].
        recoveredBlock19Block60Step = 72 ifTrue: [
            (recoveredBlock19Block60Stack2) ifTrue: [recoveredBlock19Block60PC := 83] ifFalse: [recoveredBlock19Block60PC := 76].
        ].
        recoveredBlock19Block60Step = 76 ifTrue: [
            recoveredBlock19Block60PC := 77.
        ].
        recoveredBlock19Block60Step = 77 ifTrue: [
            recoveredBlock19Block60Stack1 := recoveredBlock19Local1.
            recoveredBlock19Block60PC := 80.
        ].
        recoveredBlock19Block60Step = 80 ifTrue: [
            recoveredBlock19Block60Stack2 := recoveredBlock19Block60Arg1.
            recoveredBlock19Block60PC := 81.
        ].
        recoveredBlock19Block60Step = 81 ifTrue: [
            recoveredBlock19Block60Stack1 := (recoveredBlock19Block60Stack1) add: (recoveredBlock19Block60Stack2).
            recoveredBlock19Block60PC := 83.
        ].
        recoveredBlock19Block60Step = 83 ifTrue: [
            recoveredBlock19Block60Result := recoveredBlock19Block60Stack1.
            recoveredBlock19Block60Done := true.
        ].
    ].
    recoveredBlock19Block60Result
].
            recoveredBlock19PC := 84.
        ].
        recoveredBlock19Step = 84 ifTrue: [
            (recoveredBlock19Stack1) do: (recoveredBlock19Stack2).
            recoveredBlock19PC := 86.
        ].
        recoveredBlock19Step = 86 ifTrue: [
            recoveredBlock19Stack1 := nil.
            recoveredBlock19PC := 87.
        ].
        recoveredBlock19Step = 87 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Local2.
            recoveredBlock19PC := 90.
        ].
        recoveredBlock19Step = 90 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) size.
            recoveredBlock19PC := 92.
        ].
        recoveredBlock19Step = 92 ifTrue: [
            recoveredBlock19Stack3 := recoveredBlock19Local1.
            recoveredBlock19PC := 95.
        ].
        recoveredBlock19Step = 95 ifTrue: [
            recoveredBlock19Stack3 := (recoveredBlock19Stack3) size.
            recoveredBlock19PC := 97.
        ].
        recoveredBlock19Step = 97 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) = (recoveredBlock19Stack3).
            recoveredBlock19PC := 98.
        ].
        recoveredBlock19Step = 98 ifTrue: [
            (recoveredBlock19Stack2) ifTrue: [recoveredBlock19PC := 112] ifFalse: [recoveredBlock19PC := 102].
        ].
        recoveredBlock19Step = 102 ifTrue: [
            recoveredBlock19PC := 103.
        ].
        recoveredBlock19Step = 103 ifTrue: [
            recoveredBlock19Stack1 := self.
            recoveredBlock19PC := 104.
        ].
        recoveredBlock19Step = 104 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Arg1.
            recoveredBlock19PC := 107.
        ].
        recoveredBlock19Step = 107 ifTrue: [
            recoveredBlock19Stack3 := recoveredBlock19Local1.
            recoveredBlock19PC := 110.
        ].
        recoveredBlock19Step = 110 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) indexesAtCategoryIndex: (recoveredBlock19Stack2) are: (recoveredBlock19Stack3).
            recoveredBlock19PC := 112.
        ].
        recoveredBlock19Step = 112 ifTrue: [
            recoveredBlock19Result := recoveredBlock19Stack1.
            recoveredBlock19Done := true.
        ].
    ].
    recoveredBlock19Result
].
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack0) categoryIndexesDo: (recoveredStack1).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := [:recoveredBlock118Arg1 | 
    | recoveredBlock118Local1 recoveredBlock118Local2 recoveredBlock118Local3 recoveredBlock118Stack0 recoveredBlock118Stack1 recoveredBlock118Stack2 recoveredBlock118Stack3 recoveredBlock118Stack4 recoveredBlock118PC recoveredBlock118Step recoveredBlock118Done recoveredBlock118Result |
    recoveredBlock118Stack0 := self.
    recoveredBlock118PC := 124.
    recoveredBlock118Done := false.
    [recoveredBlock118Done not] whileTrue: [
        recoveredBlock118Step := recoveredBlock118PC.
        recoveredBlock118Step = 124 ifTrue: [
            recoveredBlock118Stack1 := nil.
            recoveredBlock118PC := 125.
        ].
        recoveredBlock118Step = 125 ifTrue: [
            recoveredBlock118Stack2 := recoveredBlock118Arg1.
            recoveredBlock118PC := 126.
        ].
        recoveredBlock118Step = 126 ifTrue: [
            recoveredBlock118Stack3 := self.
            recoveredBlock118PC := 127.
        ].
        recoveredBlock118Step = 127 ifTrue: [
            recoveredBlock118Stack3 := (recoveredBlock118Stack3) class.
            recoveredBlock118PC := 129.
        ].
        recoveredBlock118Step = 129 ifTrue: [
            recoveredBlock118Stack3 := (recoveredBlock118Stack3) defaultCategoryName.
            recoveredBlock118PC := 131.
        ].
        recoveredBlock118Step = 131 ifTrue: [
            recoveredBlock118Stack2 := (recoveredBlock118Stack2) = (recoveredBlock118Stack3).
            recoveredBlock118PC := 132.
        ].
        recoveredBlock118Step = 132 ifTrue: [
            (recoveredBlock118Stack2) ifTrue: [recoveredBlock118PC := 192] ifFalse: [recoveredBlock118PC := 136].
        ].
        recoveredBlock118Step = 136 ifTrue: [
            recoveredBlock118PC := 137.
        ].
        recoveredBlock118Step = 137 ifTrue: [
            recoveredBlock118Stack1 := self.
            recoveredBlock118PC := 138.
        ].
        recoveredBlock118Step = 138 ifTrue: [
            recoveredBlock118Stack2 := recoveredBlock118Arg1.
            recoveredBlock118PC := 139.
        ].
        recoveredBlock118Step = 139 ifTrue: [
            recoveredBlock118Stack1 := (recoveredBlock118Stack1) indexForCategory: (recoveredBlock118Stack2).
            recoveredBlock118PC := 141.
        ].
        recoveredBlock118Step = 141 ifTrue: [
            recoveredBlock118Stack2 := recoveredBlock118Stack1.
            recoveredBlock118PC := 142.
        ].
        recoveredBlock118Step = 142 ifTrue: [
            recoveredBlock118Local3 := recoveredBlock118Stack2.
            recoveredBlock118PC := 143.
        ].
        recoveredBlock118Step = 143 ifTrue: [
            recoveredBlock118Stack2 := 0.
            recoveredBlock118PC := 145.
        ].
        recoveredBlock118Step = 145 ifTrue: [
            recoveredBlock118Stack1 := (recoveredBlock118Stack1) = (recoveredBlock118Stack2).
            recoveredBlock118PC := 146.
        ].
        recoveredBlock118Step = 146 ifTrue: [
            (recoveredBlock118Stack1) ifTrue: [recoveredBlock118PC := 150] ifFalse: [recoveredBlock118PC := 160].
        ].
        recoveredBlock118Step = 150 ifTrue: [
            recoveredBlock118Stack1 := self.
            recoveredBlock118PC := 151.
        ].
        recoveredBlock118Step = 151 ifTrue: [
            recoveredBlock118Stack2 := recoveredBlock118Arg1.
            recoveredBlock118PC := 152.
        ].
        recoveredBlock118Step = 152 ifTrue: [
            recoveredBlock118Stack3 := recoveredLocal1.
            recoveredBlock118PC := 155.
        ].
        recoveredBlock118Step = 155 ifTrue: [
            recoveredBlock118Stack1 := (recoveredBlock118Stack1) addCategory: (recoveredBlock118Stack2) withIndexes: (recoveredBlock118Stack3).
            recoveredBlock118PC := 157.
        ].
        recoveredBlock118Step = 157 ifTrue: [
            recoveredBlock118PC := 192.
        ].
        recoveredBlock118Step = 160 ifTrue: [
            recoveredBlock118Stack1 := self.
            recoveredBlock118PC := 161.
        ].
        recoveredBlock118Step = 161 ifTrue: [
            recoveredBlock118Stack2 := recoveredBlock118Local3.
            recoveredBlock118PC := 162.
        ].
        recoveredBlock118Step = 162 ifTrue: [
            recoveredBlock118Stack1 := (recoveredBlock118Stack1) indexesAtCategoryIndex: (recoveredBlock118Stack2).
            recoveredBlock118PC := 164.
        ].
        recoveredBlock118Step = 164 ifTrue: [
            recoveredBlock118Local2 := recoveredBlock118Stack1.
            recoveredBlock118PC := 165.
        ].
        recoveredBlock118Step = 165 ifTrue: [
            recoveredBlock118Stack1 := recoveredBlock118Local2.
            recoveredBlock118PC := 166.
        ].
        recoveredBlock118Step = 166 ifTrue: [
            recoveredBlock118Stack1 := (recoveredBlock118Stack1) asSet.
            recoveredBlock118PC := 168.
        ].
        recoveredBlock118Step = 168 ifTrue: [
            recoveredBlock118Stack2 := recoveredBlock118Stack1.
            recoveredBlock118PC := 169.
        ].
        recoveredBlock118Step = 169 ifTrue: [
            recoveredBlock118Stack3 := recoveredLocal1.
            recoveredBlock118PC := 172.
        ].
        recoveredBlock118Step = 172 ifTrue: [
            (recoveredBlock118Stack2) addAll: (recoveredBlock118Stack3).
            recoveredBlock118PC := 174.
        ].
        recoveredBlock118Step = 174 ifTrue: [
            recoveredBlock118Local1 := recoveredBlock118Stack1.
            recoveredBlock118PC := 175.
        ].
        recoveredBlock118Step = 175 ifTrue: [
            recoveredBlock118Stack1 := nil.
            recoveredBlock118PC := 176.
        ].
        recoveredBlock118Step = 176 ifTrue: [
            recoveredBlock118Stack2 := recoveredBlock118Local2.
            recoveredBlock118PC := 177.
        ].
        recoveredBlock118Step = 177 ifTrue: [
            recoveredBlock118Stack2 := (recoveredBlock118Stack2) size.
            recoveredBlock118PC := 179.
        ].
        recoveredBlock118Step = 179 ifTrue: [
            recoveredBlock118Stack3 := recoveredBlock118Local1.
            recoveredBlock118PC := 180.
        ].
        recoveredBlock118Step = 180 ifTrue: [
            recoveredBlock118Stack3 := (recoveredBlock118Stack3) size.
            recoveredBlock118PC := 182.
        ].
        recoveredBlock118Step = 182 ifTrue: [
            recoveredBlock118Stack2 := (recoveredBlock118Stack2) = (recoveredBlock118Stack3).
            recoveredBlock118PC := 183.
        ].
        recoveredBlock118Step = 183 ifTrue: [
            (recoveredBlock118Stack2) ifTrue: [recoveredBlock118PC := 192] ifFalse: [recoveredBlock118PC := 186].
        ].
        recoveredBlock118Step = 186 ifTrue: [
            recoveredBlock118PC := 187.
        ].
        recoveredBlock118Step = 187 ifTrue: [
            recoveredBlock118Stack1 := self.
            recoveredBlock118PC := 188.
        ].
        recoveredBlock118Step = 188 ifTrue: [
            recoveredBlock118Stack2 := recoveredBlock118Local3.
            recoveredBlock118PC := 189.
        ].
        recoveredBlock118Step = 189 ifTrue: [
            recoveredBlock118Stack3 := recoveredBlock118Local1.
            recoveredBlock118PC := 190.
        ].
        recoveredBlock118Step = 190 ifTrue: [
            recoveredBlock118Stack1 := (recoveredBlock118Stack1) indexesAtCategoryIndex: (recoveredBlock118Stack2) are: (recoveredBlock118Stack3).
            recoveredBlock118PC := 192.
        ].
        recoveredBlock118Step = 192 ifTrue: [
            recoveredBlock118Result := recoveredBlock118Stack1.
            recoveredBlock118Done := true.
        ].
    ].
    recoveredBlock118Result
].
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x2002d918; bytecode file offset 0x78860"
!EmSelectorInformation methodsFor: 'recovered'!
indexesForSelectors: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := Set.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSet.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := Set.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectorsArray.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredPC := 74.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := (recoveredStack2) includes: (recoveredStack3).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredStack1 isInteger]) ifTrue: [(recoveredStack1 + 1 <= recoveredStack0) ifTrue: [recoveredStack1 := recoveredStack1 + 1. recoveredStack2 := recoveredStack1. recoveredPC := 46] ifFalse: [recoveredPC := 103]] ifFalse: [recoveredPC := 77].
        ].
        recoveredStep = 77 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 99] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredPC := 49.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 209] ifFalse: [recoveredPC := 118].
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := Set.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := (recoveredStack0) new: (recoveredStack1).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := [:recoveredBlock136Arg1 | 
    | recoveredBlock136Value0 recoveredBlock136Value1 recoveredBlock136Value2 recoveredBlock136Value3 recoveredBlock136Value4 |
    recoveredBlock136Value0 := recoveredLocal2.
    recoveredBlock136Value1 := recoveredLocal3.
    recoveredBlock136Value2 := recoveredBlock136Arg1.
    recoveredBlock136Value3 := (recoveredBlock136Value1) at: (recoveredBlock136Value2).
    recoveredBlock136Value4 := (recoveredBlock136Value0) add: (recoveredBlock136Value3).
    recoveredBlock136Value4
].
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := [:recoveredBlock159Arg1 | 
    | recoveredBlock159Stack0 recoveredBlock159Stack1 recoveredBlock159Stack2 recoveredBlock159Stack3 recoveredBlock159Stack4 recoveredBlock159Stack5 recoveredBlock159PC recoveredBlock159Step recoveredBlock159Done recoveredBlock159Result |
    recoveredBlock159Stack0 := self.
    recoveredBlock159PC := 166.
    recoveredBlock159Done := false.
    [recoveredBlock159Done not] whileTrue: [
        recoveredBlock159Step := recoveredBlock159PC.
        recoveredBlock159Step = 166 ifTrue: [
            recoveredBlock159Stack1 := nil.
            recoveredBlock159PC := 167.
        ].
        recoveredBlock159Step = 167 ifTrue: [
            recoveredBlock159Stack2 := recoveredLocal2.
            recoveredBlock159PC := 170.
        ].
        recoveredBlock159Step = 170 ifTrue: [
            recoveredBlock159Stack3 := recoveredBlock159Arg1.
            recoveredBlock159PC := 171.
        ].
        recoveredBlock159Step = 171 ifTrue: [
            recoveredBlock159Stack2 := (recoveredBlock159Stack2) includes: (recoveredBlock159Stack3).
            recoveredBlock159PC := 173.
        ].
        recoveredBlock159Step = 173 ifTrue: [
            (recoveredBlock159Stack2) ifTrue: [recoveredBlock159PC := 206] ifFalse: [recoveredBlock159PC := 176].
        ].
        recoveredBlock159Step = 176 ifTrue: [
            recoveredBlock159PC := 177.
        ].
        recoveredBlock159Step = 177 ifTrue: [
            recoveredBlock159Stack1 := self.
            recoveredBlock159PC := 178.
        ].
        recoveredBlock159Step = 178 ifTrue: [
            recoveredBlock159Stack2 := self.
            recoveredBlock159PC := 179.
        ].
        recoveredBlock159Step = 179 ifTrue: [
            recoveredBlock159Stack2 := (recoveredBlock159Stack2) selectorsArray.
            recoveredBlock159PC := 181.
        ].
        recoveredBlock159Step = 181 ifTrue: [
            recoveredBlock159Stack3 := Array.
            recoveredBlock159PC := 183.
        ].
        recoveredBlock159Step = 183 ifTrue: [
            recoveredBlock159Stack4 := recoveredBlock159Arg1.
            recoveredBlock159PC := 184.
        ].
        recoveredBlock159Step = 184 ifTrue: [
            recoveredBlock159Stack3 := (recoveredBlock159Stack3) with: (recoveredBlock159Stack4).
            recoveredBlock159PC := 186.
        ].
        recoveredBlock159Step = 186 ifTrue: [
            recoveredBlock159Stack2 := (recoveredBlock159Stack2) , (recoveredBlock159Stack3).
            recoveredBlock159PC := 188.
        ].
        recoveredBlock159Step = 188 ifTrue: [
            (recoveredBlock159Stack1) selectorsArray: (recoveredBlock159Stack2).
            recoveredBlock159PC := 190.
        ].
        recoveredBlock159Step = 190 ifTrue: [
            recoveredBlock159Stack1 := recoveredLocal2.
            recoveredBlock159PC := 193.
        ].
        recoveredBlock159Step = 193 ifTrue: [
            recoveredBlock159Stack2 := recoveredBlock159Arg1.
            recoveredBlock159PC := 194.
        ].
        recoveredBlock159Step = 194 ifTrue: [
            (recoveredBlock159Stack1) add: (recoveredBlock159Stack2).
            recoveredBlock159PC := 196.
        ].
        recoveredBlock159Step = 196 ifTrue: [
            recoveredBlock159Stack1 := recoveredLocal4.
            recoveredBlock159PC := 199.
        ].
        recoveredBlock159Step = 199 ifTrue: [
            recoveredBlock159Stack2 := self.
            recoveredBlock159PC := 200.
        ].
        recoveredBlock159Step = 200 ifTrue: [
            recoveredBlock159Stack2 := (recoveredBlock159Stack2) selectorsArray.
            recoveredBlock159PC := 202.
        ].
        recoveredBlock159Step = 202 ifTrue: [
            recoveredBlock159Stack2 := (recoveredBlock159Stack2) size.
            recoveredBlock159PC := 204.
        ].
        recoveredBlock159Step = 204 ifTrue: [
            recoveredBlock159Stack1 := (recoveredBlock159Stack1) add: (recoveredBlock159Stack2).
            recoveredBlock159PC := 206.
        ].
        recoveredBlock159Step = 206 ifTrue: [
            recoveredBlock159Result := recoveredBlock159Stack1.
            recoveredBlock159Done := true.
        ].
    ].
    recoveredBlock159Result
].
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x2002da34; bytecode file offset 0x7897c"
!EmSelectorInformation methodsFor: 'recovered'!
selectorsCategorizedIn: recoveredArg1 all: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) first.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectorsIn: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSet.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 152].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := (recoveredStack2) defaultCategoryName.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 53].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := Set.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := [:recoveredBlock58Arg1 :recoveredBlock58Arg2 | 
    | recoveredBlock58Stack0 recoveredBlock58Stack1 recoveredBlock58Stack2 recoveredBlock58Stack3 recoveredBlock58Stack4 recoveredBlock58PC recoveredBlock58Step recoveredBlock58Done recoveredBlock58Result |
    recoveredBlock58Stack0 := self.
    recoveredBlock58PC := 64.
    recoveredBlock58Done := false.
    [recoveredBlock58Done not] whileTrue: [
        recoveredBlock58Step := recoveredBlock58PC.
        recoveredBlock58Step = 64 ifTrue: [
            recoveredBlock58Stack1 := nil.
            recoveredBlock58PC := 65.
        ].
        recoveredBlock58Step = 65 ifTrue: [
            recoveredBlock58Stack2 := recoveredLocal1.
            recoveredBlock58PC := 68.
        ].
        recoveredBlock58Step = 68 ifTrue: [
            recoveredBlock58Stack3 := recoveredBlock58Arg1.
            recoveredBlock58PC := 69.
        ].
        recoveredBlock58Step = 69 ifTrue: [
            recoveredBlock58Stack2 := (recoveredBlock58Stack2) includes: (recoveredBlock58Stack3).
            recoveredBlock58PC := 71.
        ].
        recoveredBlock58Step = 71 ifTrue: [
            (recoveredBlock58Stack2) ifTrue: [recoveredBlock58PC := 74] ifFalse: [recoveredBlock58PC := 133].
        ].
        recoveredBlock58Step = 74 ifTrue: [
            recoveredBlock58PC := 75.
        ].
        recoveredBlock58Step = 75 ifTrue: [
            recoveredBlock58Stack1 := recoveredLocal2.
            recoveredBlock58PC := 78.
        ].
        recoveredBlock58Step = 78 ifTrue: [
            (recoveredBlock58Stack1 ~~ nil) ifTrue: [recoveredBlock58PC := 92] ifFalse: [recoveredBlock58PC := 82].
        ].
        recoveredBlock58Step = 82 ifTrue: [
            recoveredBlock58Stack1 := recoveredBlock58Arg2.
            recoveredBlock58PC := 83.
        ].
        recoveredBlock58Step = 83 ifTrue: [
            recoveredBlock58Stack1 := (recoveredBlock58Stack1) asSet.
            recoveredBlock58PC := 84.
        ].
        recoveredBlock58Step = 84 ifTrue: [
            recoveredBlock58Stack2 := recoveredBlock58Stack1.
            recoveredBlock58PC := 85.
        ].
        recoveredBlock58Step = 85 ifTrue: [
            recoveredLocal2 := recoveredBlock58Stack2.
            recoveredBlock58PC := 88.
        ].
        recoveredBlock58Step = 88 ifTrue: [
            recoveredBlock58PC := 133.
        ].
        recoveredBlock58Step = 92 ifTrue: [
            recoveredBlock58Stack1 := recoveredBlock58Arg2.
            recoveredBlock58PC := 93.
        ].
        recoveredBlock58Step = 93 ifTrue: [
            recoveredBlock58Stack2 := [:recoveredBlock58Block93Arg1 | 
    | recoveredBlock58Block93Value0 recoveredBlock58Block93Value1 recoveredBlock58Block93Value2 |
    recoveredBlock58Block93Value0 := recoveredLocal2.
    recoveredBlock58Block93Value1 := recoveredBlock58Block93Arg1.
    recoveredBlock58Block93Value2 := (recoveredBlock58Block93Value0) includes: (recoveredBlock58Block93Value1).
    recoveredBlock58Block93Value2
].
            recoveredBlock58PC := 107.
        ].
        recoveredBlock58Step = 107 ifTrue: [
            recoveredBlock58Stack1 := (recoveredBlock58Stack1) select: (recoveredBlock58Stack2).
            recoveredBlock58PC := 109.
        ].
        recoveredBlock58Step = 109 ifTrue: [
            recoveredLocal2 := recoveredBlock58Stack1.
            recoveredBlock58PC := 112.
        ].
        recoveredBlock58Step = 112 ifTrue: [
            recoveredBlock58Stack1 := recoveredLocal2.
            recoveredBlock58PC := 115.
        ].
        recoveredBlock58Step = 115 ifTrue: [
            recoveredBlock58Stack1 := (recoveredBlock58Stack1) isEmpty.
            recoveredBlock58PC := 117.
        ].
        recoveredBlock58Step = 117 ifTrue: [
            (recoveredBlock58Stack1) ifTrue: [recoveredBlock58PC := 120] ifFalse: [recoveredBlock58PC := 125].
        ].
        recoveredBlock58Step = 120 ifTrue: [
            recoveredBlock58Stack1 := Set.
            recoveredBlock58PC := 122.
        ].
        recoveredBlock58Step = 122 ifTrue: [
            recoveredBlock58Stack1 := (recoveredBlock58Stack1) new.
            recoveredBlock58PC := 124.
        ].
        recoveredBlock58Step = 124 ifTrue: [
            ^recoveredBlock58Stack1
        ].
        recoveredBlock58Step = 125 ifTrue: [
            recoveredBlock58Stack1 := recoveredLocal2.
            recoveredBlock58PC := 128.
        ].
        recoveredBlock58Step = 128 ifTrue: [
            recoveredBlock58Stack1 := (recoveredBlock58Stack1) asSet.
            recoveredBlock58PC := 129.
        ].
        recoveredBlock58Step = 129 ifTrue: [
            recoveredBlock58Stack2 := recoveredBlock58Stack1.
            recoveredBlock58PC := 130.
        ].
        recoveredBlock58Step = 130 ifTrue: [
            recoveredLocal2 := recoveredBlock58Stack2.
            recoveredBlock58PC := 133.
        ].
        recoveredBlock58Step = 133 ifTrue: [
            recoveredBlock58Result := recoveredBlock58Stack1.
            recoveredBlock58Done := true.
        ].
    ].
    recoveredBlock58Result
].
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            (recoveredStack1) categoryPairsDo: (recoveredStack2).
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 149] ifFalse: [recoveredPC := 142].
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := Set.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredPC := 208.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := Set.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack2 := (recoveredStack2) defaultCategoryName.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 172] ifFalse: [recoveredPC := 180].
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack2 := (recoveredStack2) indexesForUncategorizedSelectors.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            (recoveredStack1) addAll: (recoveredStack2).
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack2 := [:recoveredBlock181Arg1 :recoveredBlock181Arg2 | 
    | recoveredBlock181Stack0 recoveredBlock181Stack1 recoveredBlock181Stack2 recoveredBlock181Stack3 recoveredBlock181Stack4 recoveredBlock181PC recoveredBlock181Step recoveredBlock181Done recoveredBlock181Result |
    recoveredBlock181Stack0 := self.
    recoveredBlock181PC := 188.
    recoveredBlock181Done := false.
    [recoveredBlock181Done not] whileTrue: [
        recoveredBlock181Step := recoveredBlock181PC.
        recoveredBlock181Step = 188 ifTrue: [
            recoveredBlock181Stack1 := nil.
            recoveredBlock181PC := 189.
        ].
        recoveredBlock181Step = 189 ifTrue: [
            recoveredBlock181Stack2 := recoveredLocal1.
            recoveredBlock181PC := 192.
        ].
        recoveredBlock181Step = 192 ifTrue: [
            recoveredBlock181Stack3 := recoveredBlock181Arg1.
            recoveredBlock181PC := 193.
        ].
        recoveredBlock181Step = 193 ifTrue: [
            recoveredBlock181Stack2 := (recoveredBlock181Stack2) includes: (recoveredBlock181Stack3).
            recoveredBlock181PC := 195.
        ].
        recoveredBlock181Step = 195 ifTrue: [
            (recoveredBlock181Stack2) ifTrue: [recoveredBlock181PC := 198] ifFalse: [recoveredBlock181PC := 205].
        ].
        recoveredBlock181Step = 198 ifTrue: [
            recoveredBlock181PC := 199.
        ].
        recoveredBlock181Step = 199 ifTrue: [
            recoveredBlock181Stack1 := recoveredLocal2.
            recoveredBlock181PC := 202.
        ].
        recoveredBlock181Step = 202 ifTrue: [
            recoveredBlock181Stack2 := recoveredBlock181Arg2.
            recoveredBlock181PC := 203.
        ].
        recoveredBlock181Step = 203 ifTrue: [
            recoveredBlock181Stack1 := (recoveredBlock181Stack1) addAll: (recoveredBlock181Stack2).
            recoveredBlock181PC := 205.
        ].
        recoveredBlock181Step = 205 ifTrue: [
            recoveredBlock181Result := recoveredBlock181Stack1.
            recoveredBlock181Done := true.
        ].
    ].
    recoveredBlock181Result
].
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            (recoveredStack1) categoryPairsDo: (recoveredStack2).
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectorsForIndexes: (recoveredStack1).
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x2002e6f0; bytecode file offset 0x79644"
!EmSelectorInformation methodsFor: 'recovered'!
deleteSelectors: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) selectorsArray.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) selectorsArray.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSet.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectorsArray.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := [:recoveredBlock31Arg1 | 
    | recoveredBlock31Stack0 recoveredBlock31Stack1 recoveredBlock31Stack2 recoveredBlock31Stack3 recoveredBlock31PC recoveredBlock31Step recoveredBlock31Done recoveredBlock31Result |
    recoveredBlock31Stack0 := self.
    recoveredBlock31PC := 38.
    recoveredBlock31Done := false.
    [recoveredBlock31Done not] whileTrue: [
        recoveredBlock31Step := recoveredBlock31PC.
        recoveredBlock31Step = 38 ifTrue: [
            recoveredBlock31Stack1 := recoveredLocal2.
            recoveredBlock31PC := 41.
        ].
        recoveredBlock31Step = 41 ifTrue: [
            recoveredBlock31Stack2 := recoveredBlock31Arg1.
            recoveredBlock31PC := 42.
        ].
        recoveredBlock31Step = 42 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) includes: (recoveredBlock31Stack2).
            recoveredBlock31PC := 44.
        ].
        recoveredBlock31Step = 44 ifTrue: [
            (recoveredBlock31Stack1) ifTrue: [recoveredBlock31PC := 48] ifFalse: [recoveredBlock31PC := 58].
        ].
        recoveredBlock31Step = 48 ifTrue: [
            recoveredBlock31Stack1 := recoveredLocal3.
            recoveredBlock31PC := 51.
        ].
        recoveredBlock31Step = 51 ifTrue: [
            recoveredBlock31Stack2 := 0.
            recoveredBlock31PC := 53.
        ].
        recoveredBlock31Step = 53 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) add: (recoveredBlock31Stack2).
            recoveredBlock31PC := 55.
        ].
        recoveredBlock31Step = 55 ifTrue: [
            recoveredBlock31PC := 73.
        ].
        recoveredBlock31Step = 58 ifTrue: [
            recoveredBlock31Stack1 := recoveredLocal4.
            recoveredBlock31PC := 61.
        ].
        recoveredBlock31Step = 61 ifTrue: [
            recoveredBlock31Stack2 := recoveredBlock31Arg1.
            recoveredBlock31PC := 62.
        ].
        recoveredBlock31Step = 62 ifTrue: [
            (recoveredBlock31Stack1) add: (recoveredBlock31Stack2).
            recoveredBlock31PC := 64.
        ].
        recoveredBlock31Step = 64 ifTrue: [
            recoveredBlock31Stack1 := recoveredLocal3.
            recoveredBlock31PC := 67.
        ].
        recoveredBlock31Step = 67 ifTrue: [
            recoveredBlock31Stack2 := recoveredLocal4.
            recoveredBlock31PC := 70.
        ].
        recoveredBlock31Step = 70 ifTrue: [
            recoveredBlock31Stack2 := (recoveredBlock31Stack2) size.
            recoveredBlock31PC := 71.
        ].
        recoveredBlock31Step = 71 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) add: (recoveredBlock31Stack2).
            recoveredBlock31PC := 73.
        ].
        recoveredBlock31Step = 73 ifTrue: [
            recoveredBlock31Result := recoveredBlock31Stack1.
            recoveredBlock31Done := true.
        ].
    ].
    recoveredBlock31Result
].
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0) selectorsArray: (recoveredStack1).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 98] ifFalse: [recoveredPC := 138].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := [:recoveredBlock99Arg1 | 
    | recoveredBlock99Stack0 recoveredBlock99Stack1 recoveredBlock99Stack2 recoveredBlock99Stack3 recoveredBlock99Stack4 recoveredBlock99PC recoveredBlock99Step recoveredBlock99Done recoveredBlock99Result |
    recoveredBlock99Stack0 := self.
    recoveredBlock99PC := 106.
    recoveredBlock99Done := false.
    [recoveredBlock99Done not] whileTrue: [
        recoveredBlock99Step := recoveredBlock99PC.
        recoveredBlock99Step = 106 ifTrue: [
            recoveredBlock99Stack1 := nil.
            recoveredBlock99PC := 107.
        ].
        recoveredBlock99Step = 107 ifTrue: [
            recoveredBlock99Stack2 := self.
            recoveredBlock99PC := 108.
        ].
        recoveredBlock99Step = 108 ifTrue: [
            recoveredBlock99Stack3 := recoveredBlock99Arg1.
            recoveredBlock99PC := 109.
        ].
        recoveredBlock99Step = 109 ifTrue: [
            recoveredBlock99Stack2 := (recoveredBlock99Stack2) indexesAtCategoryIndex: (recoveredBlock99Stack3).
            recoveredBlock99PC := 111.
        ].
        recoveredBlock99Step = 111 ifTrue: [
            recoveredBlock99Stack2 := (recoveredBlock99Stack2) notEmpty.
            recoveredBlock99PC := 113.
        ].
        recoveredBlock99Step = 113 ifTrue: [
            (recoveredBlock99Stack2) ifTrue: [recoveredBlock99PC := 116] ifFalse: [recoveredBlock99PC := 132].
        ].
        recoveredBlock99Step = 116 ifTrue: [
            recoveredBlock99PC := 117.
        ].
        recoveredBlock99Step = 117 ifTrue: [
            recoveredBlock99Stack1 := recoveredLocal1.
            recoveredBlock99PC := 120.
        ].
        recoveredBlock99Step = 120 ifTrue: [
            recoveredBlock99Stack2 := self.
            recoveredBlock99PC := 121.
        ].
        recoveredBlock99Step = 121 ifTrue: [
            recoveredBlock99Stack3 := recoveredBlock99Arg1.
            recoveredBlock99PC := 122.
        ].
        recoveredBlock99Step = 122 ifTrue: [
            recoveredBlock99Stack2 := (recoveredBlock99Stack2) categoryAtIndex: (recoveredBlock99Stack3).
            recoveredBlock99PC := 124.
        ].
        recoveredBlock99Step = 124 ifTrue: [
            (recoveredBlock99Stack1) add: (recoveredBlock99Stack2).
            recoveredBlock99PC := 126.
        ].
        recoveredBlock99Step = 126 ifTrue: [
            recoveredBlock99Stack1 := self.
            recoveredBlock99PC := 127.
        ].
        recoveredBlock99Step = 127 ifTrue: [
            recoveredBlock99Stack2 := recoveredBlock99Arg1.
            recoveredBlock99PC := 128.
        ].
        recoveredBlock99Step = 128 ifTrue: [
            recoveredBlock99Stack3 := #().
            recoveredBlock99PC := 130.
        ].
        recoveredBlock99Step = 130 ifTrue: [
            recoveredBlock99Stack1 := (recoveredBlock99Stack1) indexesAtCategoryIndex: (recoveredBlock99Stack2) are: (recoveredBlock99Stack3).
            recoveredBlock99PC := 132.
        ].
        recoveredBlock99Step = 132 ifTrue: [
            recoveredBlock99Result := recoveredBlock99Stack1.
            recoveredBlock99Done := true.
        ].
    ].
    recoveredBlock99Result
].
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            (recoveredStack0) categoryIndexesDo: (recoveredStack1).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredPC := 229.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := [:recoveredBlock139Arg1 | 
    | recoveredBlock139Local1 recoveredBlock139Local2 recoveredBlock139Stack0 recoveredBlock139Stack1 recoveredBlock139Stack2 recoveredBlock139Stack3 recoveredBlock139Stack4 recoveredBlock139PC recoveredBlock139Step recoveredBlock139Done recoveredBlock139Result |
    recoveredBlock139Stack0 := self.
    recoveredBlock139PC := 146.
    recoveredBlock139Done := false.
    [recoveredBlock139Done not] whileTrue: [
        recoveredBlock139Step := recoveredBlock139PC.
        recoveredBlock139Step = 146 ifTrue: [
            recoveredBlock139Stack1 := nil.
            recoveredBlock139PC := 147.
        ].
        recoveredBlock139Step = 147 ifTrue: [
            recoveredBlock139Stack2 := self.
            recoveredBlock139PC := 148.
        ].
        recoveredBlock139Step = 148 ifTrue: [
            recoveredBlock139Stack3 := recoveredBlock139Arg1.
            recoveredBlock139PC := 151.
        ].
        recoveredBlock139Step = 151 ifTrue: [
            recoveredBlock139Stack2 := (recoveredBlock139Stack2) indexesAtCategoryIndex: (recoveredBlock139Stack3).
            recoveredBlock139PC := 153.
        ].
        recoveredBlock139Step = 153 ifTrue: [
            recoveredBlock139Stack3 := recoveredBlock139Stack2.
            recoveredBlock139PC := 154.
        ].
        recoveredBlock139Step = 154 ifTrue: [
            recoveredBlock139Local2 := recoveredBlock139Stack3.
            recoveredBlock139PC := 157.
        ].
        recoveredBlock139Step = 157 ifTrue: [
            recoveredBlock139Stack2 := (recoveredBlock139Stack2) notEmpty.
            recoveredBlock139PC := 159.
        ].
        recoveredBlock139Step = 159 ifTrue: [
            (recoveredBlock139Stack2) ifTrue: [recoveredBlock139PC := 162] ifFalse: [recoveredBlock139PC := 226].
        ].
        recoveredBlock139Step = 162 ifTrue: [
            recoveredBlock139PC := 163.
        ].
        recoveredBlock139Step = 163 ifTrue: [
            recoveredBlock139Stack1 := OrderedCollection.
            recoveredBlock139PC := 165.
        ].
        recoveredBlock139Step = 165 ifTrue: [
            recoveredBlock139Stack1 := (recoveredBlock139Stack1) new.
            recoveredBlock139PC := 167.
        ].
        recoveredBlock139Step = 167 ifTrue: [
            recoveredBlock139Local1 := recoveredBlock139Stack1.
            recoveredBlock139PC := 170.
        ].
        recoveredBlock139Step = 170 ifTrue: [
            recoveredBlock139Stack1 := recoveredBlock139Local2.
            recoveredBlock139PC := 173.
        ].
        recoveredBlock139Step = 173 ifTrue: [
            recoveredBlock139Stack2 := [:recoveredBlock139Block173Arg1 | 
    | recoveredBlock139Block173Local1 recoveredBlock139Block173Stack0 recoveredBlock139Block173Stack1 recoveredBlock139Block173Stack2 recoveredBlock139Block173Stack3 recoveredBlock139Block173Stack4 recoveredBlock139Block173PC recoveredBlock139Block173Step recoveredBlock139Block173Done recoveredBlock139Block173Result |
    recoveredBlock139Block173Stack0 := nil.
    recoveredBlock139Block173PC := 180.
    recoveredBlock139Block173Done := false.
    [recoveredBlock139Block173Done not] whileTrue: [
        recoveredBlock139Block173Step := recoveredBlock139Block173PC.
        recoveredBlock139Block173Step = 180 ifTrue: [
            recoveredBlock139Block173Stack1 := nil.
            recoveredBlock139Block173PC := 181.
        ].
        recoveredBlock139Block173Step = 181 ifTrue: [
            recoveredBlock139Block173Stack2 := recoveredLocal3.
            recoveredBlock139Block173PC := 184.
        ].
        recoveredBlock139Block173Step = 184 ifTrue: [
            recoveredBlock139Block173Stack3 := recoveredBlock139Block173Arg1.
            recoveredBlock139Block173PC := 185.
        ].
        recoveredBlock139Block173Step = 185 ifTrue: [
            recoveredBlock139Block173Stack2 := (recoveredBlock139Block173Stack2) at: (recoveredBlock139Block173Stack3).
            recoveredBlock139Block173PC := 187.
        ].
        recoveredBlock139Block173Step = 187 ifTrue: [
            recoveredBlock139Block173Stack3 := recoveredBlock139Block173Stack2.
            recoveredBlock139Block173PC := 188.
        ].
        recoveredBlock139Block173Step = 188 ifTrue: [
            recoveredBlock139Block173Local1 := recoveredBlock139Block173Stack3.
            recoveredBlock139Block173PC := 189.
        ].
        recoveredBlock139Block173Step = 189 ifTrue: [
            recoveredBlock139Block173Stack3 := 0.
            recoveredBlock139Block173PC := 191.
        ].
        recoveredBlock139Block173Step = 191 ifTrue: [
            recoveredBlock139Block173Stack2 := (recoveredBlock139Block173Stack2) = (recoveredBlock139Block173Stack3).
            recoveredBlock139Block173PC := 192.
        ].
        recoveredBlock139Block173Step = 192 ifTrue: [
            (recoveredBlock139Block173Stack2) ifTrue: [recoveredBlock139Block173PC := 203] ifFalse: [recoveredBlock139Block173PC := 196].
        ].
        recoveredBlock139Block173Step = 196 ifTrue: [
            recoveredBlock139Block173PC := 197.
        ].
        recoveredBlock139Block173Step = 197 ifTrue: [
            recoveredBlock139Block173Stack1 := recoveredBlock139Local1.
            recoveredBlock139Block173PC := 200.
        ].
        recoveredBlock139Block173Step = 200 ifTrue: [
            recoveredBlock139Block173Stack2 := recoveredBlock139Block173Local1.
            recoveredBlock139Block173PC := 201.
        ].
        recoveredBlock139Block173Step = 201 ifTrue: [
            recoveredBlock139Block173Stack1 := (recoveredBlock139Block173Stack1) add: (recoveredBlock139Block173Stack2).
            recoveredBlock139Block173PC := 203.
        ].
        recoveredBlock139Block173Step = 203 ifTrue: [
            recoveredBlock139Block173Result := recoveredBlock139Block173Stack1.
            recoveredBlock139Block173Done := true.
        ].
    ].
    recoveredBlock139Block173Result
].
            recoveredBlock139PC := 204.
        ].
        recoveredBlock139Step = 204 ifTrue: [
            (recoveredBlock139Stack1) do: (recoveredBlock139Stack2).
            recoveredBlock139PC := 206.
        ].
        recoveredBlock139Step = 206 ifTrue: [
            recoveredBlock139Stack1 := recoveredLocal1.
            recoveredBlock139PC := 209.
        ].
        recoveredBlock139Step = 209 ifTrue: [
            recoveredBlock139Stack2 := self.
            recoveredBlock139PC := 210.
        ].
        recoveredBlock139Step = 210 ifTrue: [
            recoveredBlock139Stack3 := recoveredBlock139Arg1.
            recoveredBlock139PC := 213.
        ].
        recoveredBlock139Step = 213 ifTrue: [
            recoveredBlock139Stack2 := (recoveredBlock139Stack2) categoryAtIndex: (recoveredBlock139Stack3).
            recoveredBlock139PC := 215.
        ].
        recoveredBlock139Step = 215 ifTrue: [
            (recoveredBlock139Stack1) add: (recoveredBlock139Stack2).
            recoveredBlock139PC := 217.
        ].
        recoveredBlock139Step = 217 ifTrue: [
            recoveredBlock139Stack1 := self.
            recoveredBlock139PC := 218.
        ].
        recoveredBlock139Step = 218 ifTrue: [
            recoveredBlock139Stack2 := recoveredBlock139Arg1.
            recoveredBlock139PC := 221.
        ].
        recoveredBlock139Step = 221 ifTrue: [
            recoveredBlock139Stack3 := recoveredBlock139Local1.
            recoveredBlock139PC := 224.
        ].
        recoveredBlock139Step = 224 ifTrue: [
            recoveredBlock139Stack1 := (recoveredBlock139Stack1) indexesAtCategoryIndex: (recoveredBlock139Stack2) are: (recoveredBlock139Stack3).
            recoveredBlock139PC := 226.
        ].
        recoveredBlock139Step = 226 ifTrue: [
            recoveredBlock139Result := recoveredBlock139Stack1.
            recoveredBlock139Done := true.
        ].
    ].
    recoveredBlock139Result
].
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            (recoveredStack0) categoryIndexesDo: (recoveredStack1).
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

