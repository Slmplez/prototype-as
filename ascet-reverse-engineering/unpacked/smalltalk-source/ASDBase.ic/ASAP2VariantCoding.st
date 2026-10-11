"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200056c0; bytecode file offset 0x90206c"
!ASAP2VariantCoding methodsFor: 'recovered'!
putParameterIn: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20006ea8; bytecode file offset 0x908be4"
!ASAP2VariantCoding methodsFor: 'recovered'!
combinationOrder
    | recoveredValue0 |
    recoveredValue0 := (self) criterion.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001e674; bytecode file offset 0x92209c"
!ASAP2VariantCoding methodsFor: 'recovered'!
getModuleSetMethod
    ^'variantCoding:'
! !

"ASDBase.ic method 0x20036804; bytecode file offset 0x934580"
!ASAP2VariantCoding methodsFor: 'recovered'!
defaultVariant
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) validCombinations.
    recoveredValue1 := (recoveredValue0) firstOrNil.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004a13c; bytecode file offset 0x947128"
!ASAP2VariantCoding methodsFor: 'recovered'!
allForbiddenCombinations
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) combinationOrder.
    recoveredValue1 := (self) allForbiddenCombinations: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004baf8; bytecode file offset 0x94877c"
!ASAP2VariantCoding methodsFor: 'recovered'!
characteristic
    | recoveredValue0 |
    recoveredValue0 := (self) at: (5).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004c0e8; bytecode file offset 0x948b80"
!ASAP2VariantCoding methodsFor: 'recovered'!
criterion
    | recoveredValue0 |
    recoveredValue0 := (self) at: (6).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004c438; bytecode file offset 0x948e28"
!ASAP2VariantCoding methodsFor: 'recovered'!
forbiddenCombination
    | recoveredValue0 |
    recoveredValue0 := (self) at: (7).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004c584; bytecode file offset 0x949118"
!ASAP2VariantCoding methodsFor: 'recovered'!
naming
    | recoveredValue0 |
    recoveredValue0 := (self) at: (8).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004c994; bytecode file offset 0x9492dc"
!ASAP2VariantCoding methodsFor: 'recovered'!
separator
    | recoveredValue0 |
    recoveredValue0 := (self) at: (9).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200565f8; bytecode file offset 0x9531e4"
!ASAP2VariantCoding methodsFor: 'recovered'!
getSetMethodFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) getObject.
    recoveredValue2 := (recoveredValue1) getVariantCodingSetMethod.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20097eb4; bytecode file offset 0x995850"
!ASAP2VariantCoding methodsFor: 'recovered'!
addForbiddenComb: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) forbiddenCombination.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20098474; bytecode file offset 0x995850"
!ASAP2VariantCoding methodsFor: 'recovered'!
addCharacteristic: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) characteristic.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20098c34; bytecode file offset 0x995850"
!ASAP2VariantCoding methodsFor: 'recovered'!
addCriterion: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) criterion.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a4798; bytecode file offset 0x9a1ad4"
!ASAP2VariantCoding methodsFor: 'recovered'!
getVarNaming: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getIdent: (recoveredValue0).
    (self) naming: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a5198; bytecode file offset 0x9a1ad4"
!ASAP2VariantCoding methodsFor: 'recovered'!
getVarSeparator: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getString: (recoveredValue0).
    (self) separator: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a6788; bytecode file offset 0x9a32e0"
!ASAP2VariantCoding methodsFor: 'recovered'!
characteristic: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (5) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a6bcc; bytecode file offset 0x9a3694"
!ASAP2VariantCoding methodsFor: 'recovered'!
criterion: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (6) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a6f14; bytecode file offset 0x9a391c"
!ASAP2VariantCoding methodsFor: 'recovered'!
forbiddenCombination: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (7) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a71a8; bytecode file offset 0x9a3b44"
!ASAP2VariantCoding methodsFor: 'recovered'!
naming: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (8) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a72e0; bytecode file offset 0x9a3d0c"
!ASAP2VariantCoding methodsFor: 'recovered'!
separator: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (9) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200d6c94; bytecode file offset 0x9d3600"
!ASAP2VariantCoding methodsFor: 'recovered'!
getFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) getShortBegin: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) parse: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20112c48; bytecode file offset 0xa0f510"
!ASAP2VariantCoding methodsFor: 'recovered'!
validCombinations
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) allCombinations.
    recoveredValue1 := (recoveredValue0) asSameOrderedCollection.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (self) allForbiddenCombinations.
    recoveredValue4 := [].
    (recoveredValue2) removeAll: (recoveredValue3) ifAbsent: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x20117374; bytecode file offset 0xa13c40"
!ASAP2VariantCoding methodsFor: 'recovered'!
searchBlock
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:block280c74f4Arg1 :block280c74f4Arg2 | 
    | block280c74f4Value0 block280c74f4Value1 block280c74f4Value2 block280c74f4Value3 block280c74f4Value4 |
    block280c74f4Value0 := block280c74f4Arg1.
    block280c74f4Value1 := (block280c74f4Value0) name.
    block280c74f4Value2 := block280c74f4Arg2.
    block280c74f4Value3 := (block280c74f4Value2) name.
    block280c74f4Value4 := (block280c74f4Value1) >= (block280c74f4Value3).
    block280c74f4Value4
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201260bc; bytecode file offset 0xa22bf0"
!ASAP2VariantCoding methodsFor: 'recovered'!
getVarForbiddenComb: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ASAP2VarForbiddenComb.
    recoveredValue1 := (recoveredValue0) create.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) getFrom: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    (self) addForbiddenComb: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20126134; bytecode file offset 0xa22bf0"
!ASAP2VariantCoding methodsFor: 'recovered'!
getVarCharacteristic: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ASAP2VarCharacteristic.
    recoveredValue1 := (recoveredValue0) create.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) getFrom: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    (self) addCharacteristic: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20126224; bytecode file offset 0xa22bf0"
!ASAP2VariantCoding methodsFor: 'recovered'!
getVarCriterion: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ASAP2VarCriterion.
    recoveredValue1 := (recoveredValue0) create.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) getFrom: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    (self) addCriterion: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x2013c4f0; bytecode file offset 0xa38dac"
!ASAP2VariantCoding methodsFor: 'recovered'!
defaultSortBlock
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:block280cb898Arg1 :block280cb898Arg2 | 
    | block280cb898Value0 block280cb898Value1 block280cb898Value2 block280cb898Value3 block280cb898Value4 block280cb898Value5 block280cb898Value6 |
    block280cb898Value0 := block280cb898Arg1.
    block280cb898Value1 := (block280cb898Value0) name.
    block280cb898Value2 := (block280cb898Value1) name.
    block280cb898Value3 := block280cb898Arg2.
    block280cb898Value4 := (block280cb898Value3) name.
    block280cb898Value5 := (block280cb898Value4) name.
    block280cb898Value6 := (block280cb898Value2) < (block280cb898Value5).
    block280cb898Value6
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2017cb5c; bytecode file offset 0xa79428"
!ASAP2VariantCoding methodsFor: 'recovered'!
criterionNamed: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := (self) criterion.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) searchBlock.
    recoveredValue3 := (recoveredValue0) indexOf: (recoveredValue1) using: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := (self) criterion.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := [].
    recoveredValue7 := (recoveredValue4) at: (recoveredValue5) ifAbsent: (recoveredValue6).
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (recoveredValue7) defaultReturn: (recoveredValue8).
    ^recoveredValue9
! !

"ASDBase.ic method 0x2019a08c; bytecode file offset 0xa96958"
!ASAP2VariantCoding methodsFor: 'recovered'!
minimizeCollections
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    super minimizeCollections.
    recoveredValue0 := (self) characteristic.
    (recoveredValue0) minimizeSize.
    recoveredValue1 := (self) criterion.
    (recoveredValue1) minimizeSize.
    recoveredValue2 := (self) forbiddenCombination.
    (recoveredValue2) minimizeSize.
    ^self
! !

"ASDBase.ic method 0x201dc56c; bytecode file offset 0xad8ff8"
!ASAP2VariantCoding methodsFor: 'recovered'!
putIn: recoveredArg1 varForbiddenComb: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) forbiddenCombination.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) forbiddenCombination.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) sorted: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 |
    recoveredBlock12Value0 := recoveredBlock12Arg1.
    recoveredBlock12Value1 := recoveredArg1.
    recoveredBlock12Value2 := (recoveredBlock12Value0) putIn: (recoveredBlock12Value1).
    recoveredBlock12Value2
].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201dc62c; bytecode file offset 0xad8ff8"
!ASAP2VariantCoding methodsFor: 'recovered'!
putIn: recoveredArg1 varCriterion: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) criterion.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) criterion.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) sorted: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 |
    recoveredBlock12Value0 := recoveredBlock12Arg1.
    recoveredBlock12Value1 := recoveredArg1.
    recoveredBlock12Value2 := (recoveredBlock12Value0) putIn: (recoveredBlock12Value1).
    recoveredBlock12Value2
].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201dc6ec; bytecode file offset 0xad8ff8"
!ASAP2VariantCoding methodsFor: 'recovered'!
putIn: recoveredArg1 varCharacteristic: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) characteristic.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) characteristic.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) sorted: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 |
    recoveredBlock12Value0 := recoveredBlock12Arg1.
    recoveredBlock12Value1 := recoveredArg1.
    recoveredBlock12Value2 := (recoveredBlock12Value0) putIn: (recoveredBlock12Value1).
    recoveredBlock12Value2
].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201de804; bytecode file offset 0xadb0d4"
!ASAP2VariantCoding methodsFor: 'recovered'!
initializeCollections
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    super initializeCollections.
    recoveredValue0 := OrderedCollection.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := (recoveredValue1) new.
    (self) characteristic: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (recoveredValue3) new.
    (self) criterion: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (recoveredValue5) new.
    (self) forbiddenCombination: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x201e7e74; bytecode file offset 0xae4740"
!ASAP2VariantCoding methodsFor: 'recovered'!
createVariantReferences: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) characteristic.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280d7508Arg1 | 
    | block280d7508Stack0 block280d7508Stack1 block280d7508Stack2 block280d7508Stack3 block280d7508PC block280d7508Step block280d7508Done block280d7508Result |
    block280d7508Stack0 := self.
    block280d7508PC := 4.
    block280d7508Done := false.
    [block280d7508Done not] whileTrue: [
        block280d7508Step := block280d7508PC.
        block280d7508Step = 4 ifTrue: [
            block280d7508Stack1 := nil.
            block280d7508PC := 5.
        ].
        block280d7508Step = 5 ifTrue: [
            block280d7508Stack2 := block280d7508Arg1.
            block280d7508PC := 6.
        ].
        block280d7508Step = 6 ifTrue: [
            block280d7508Stack2 := (block280d7508Stack2) name.
            block280d7508PC := 7.
        ].
        block280d7508Step = 7 ifTrue: [
            block280d7508Stack2 := (block280d7508Stack2) isString.
            block280d7508PC := 8.
        ].
        block280d7508Step = 8 ifTrue: [
            (block280d7508Stack2) ifTrue: [block280d7508PC := 18] ifFalse: [block280d7508PC := 12].
        ].
        block280d7508Step = 12 ifTrue: [
            block280d7508PC := 13.
        ].
        block280d7508Step = 13 ifTrue: [
            block280d7508Stack1 := block280d7508Arg1.
            block280d7508PC := 14.
        ].
        block280d7508Step = 14 ifTrue: [
            block280d7508Stack1 := (block280d7508Stack1) name.
            block280d7508PC := 15.
        ].
        block280d7508Step = 15 ifTrue: [
            block280d7508Stack2 := block280d7508Arg1.
            block280d7508PC := 16.
        ].
        block280d7508Step = 16 ifTrue: [
            block280d7508Stack1 := (block280d7508Stack1) variants: (block280d7508Stack2).
            block280d7508PC := 18.
        ].
        block280d7508Step = 18 ifTrue: [
            block280d7508Result := block280d7508Stack1.
            block280d7508Done := true.
        ].
    ].
    block280d7508Result
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20212460; bytecode file offset 0xb0ed2c"
!ASAP2VariantCoding methodsFor: 'recovered'!
getAllowedVariantCombinatons
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) criterion.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 recoveredBlock11Value4 |
    recoveredBlock11Value0 := recoveredLocal1.
    recoveredBlock11Value1 := recoveredBlock11Arg1.
    recoveredBlock11Value2 := (self) criterion.
    recoveredBlock11Value3 := (recoveredBlock11Value1) getAllCombinations: (recoveredBlock11Value2).
    recoveredBlock11Value4 := (recoveredBlock11Value0) addAll: (recoveredBlock11Value3).
    recoveredBlock11Value4
].
    (recoveredValue2) do: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2021dbb0; bytecode file offset 0xb1a6c4"
!ASAP2VariantCoding methodsFor: 'recovered'!
putIn: recoveredArg1 varSeparator: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) separator.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 31] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) putNewLineIn: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) putIn: (recoveredStack2) string: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) putSeparatorIn: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := (recoveredStack3) separator.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) putIn: (recoveredStack2) quotedString: (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) putSeparatorIn: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2021dc3c; bytecode file offset 0xb1a6c4"
!ASAP2VariantCoding methodsFor: 'recovered'!
putIn: recoveredArg1 varNaming: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) naming.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 31] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) putNewLineIn: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) putIn: (recoveredStack2) string: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) putSeparatorIn: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := (recoveredStack3) naming.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) putIn: (recoveredStack2) ident: (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) putSeparatorIn: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202e5d08; bytecode file offset 0xbe25fc"
!ASAP2VariantCoding methodsFor: 'recovered'!
asap2Children
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := super asap2Children.
    recoveredValue1 := (recoveredValue0) asSameOrderedCollection.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) characteristic.
    recoveredValue3 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 |
    recoveredBlock14Value0 := recoveredLocal1.
    recoveredBlock14Value1 := recoveredBlock14Arg1.
    recoveredBlock14Value2 := (recoveredBlock14Value0) addAll: (recoveredBlock14Value1).
    recoveredBlock14Value2
].
    (recoveredValue2) ifNotNil: (recoveredValue3).
    recoveredValue4 := (self) criterion.
    recoveredValue5 := [:recoveredBlock32Arg1 | 
    | recoveredBlock32Value0 recoveredBlock32Value1 recoveredBlock32Value2 |
    recoveredBlock32Value0 := recoveredLocal1.
    recoveredBlock32Value1 := recoveredBlock32Arg1.
    recoveredBlock32Value2 := (recoveredBlock32Value0) addAll: (recoveredBlock32Value1).
    recoveredBlock32Value2
].
    (recoveredValue4) ifNotNil: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x202e7508; bytecode file offset 0xbe3de4"
!ASAP2VariantCoding methodsFor: 'recovered'!
collectObjectsFlat: recoveredArg1 in: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) comments.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := super collectObjectsFlat: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) characteristic.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := [:block280e78c4Arg1 | 
    | block280e78c4Value0 block280e78c4Value1 |
    block280e78c4Value0 := block280e78c4Arg1.
    block280e78c4Value1 := (block280e78c4Value0) comments.
    block280e78c4Value1
].
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) characteristic: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) criterion.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := [:block280e78e8Arg1 | 
    | block280e78e8Value0 block280e78e8Value1 |
    block280e78e8Value0 := block280e78e8Arg1.
    block280e78e8Value1 := (block280e78e8Value0) comments.
    block280e78e8Value1
].
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) criterion: (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2030a46c; bytecode file offset 0xc06d50"
!ASAP2VariantCoding methodsFor: 'recovered'!
createASAP2ObjectReferences: recoveredArg1 parent: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) comments.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) comments: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) basicSize.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 38.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) createASAP2ObjectReferences: (recoveredStack2) parent: (recoveredStack3).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack0) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 30] ifFalse: [recoveredLocal1 := nil. recoveredPC := 52]] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20330b2c; bytecode file offset 0xc2d440"
!ASAP2VariantCoding methodsFor: 'recovered'!
allCombinations
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) criterion.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280ecd24Arg1 | 
    | block280ecd24Value0 block280ecd24Value1 |
    block280ecd24Value0 := block280ecd24Arg1.
    block280ecd24Value1 := (block280ecd24Value0) value.
    block280ecd24Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 42].
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
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) copyFrom: (recoveredStack3) to: (recoveredStack4).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) allCombinations: (recoveredStack1) and: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredPC := 58.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := [:block280ecd48Arg1 | 
    | block280ecd48Value0 block280ecd48Value1 block280ecd48Value2 |
    block280ecd48Value0 := ASAP2VarCombination.
    block280ecd48Value1 := block280ecd48Arg1.
    block280ecd48Value2 := (block280ecd48Value0) with: (block280ecd48Value1).
    block280ecd48Value2
].
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203afb48; bytecode file offset 0xcac424"
!ASAP2VariantCoding methodsFor: 'recovered'!
selectObjectsFrom: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) comments.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) comments: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) characteristic.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Value0 recoveredBlock17Value1 recoveredBlock17Value2 |
    recoveredBlock17Value0 := recoveredArg1.
    recoveredBlock17Value1 := recoveredBlock17Arg1.
    recoveredBlock17Value2 := (recoveredBlock17Value0) at: (recoveredBlock17Value1).
    recoveredBlock17Value2
].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) inject: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) characteristic: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) criterion.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := [:recoveredBlock38Arg1 | 
    | recoveredBlock38Value0 recoveredBlock38Value1 recoveredBlock38Value2 |
    recoveredBlock38Value0 := recoveredArg1.
    recoveredBlock38Value1 := recoveredBlock38Arg1.
    recoveredBlock38Value2 := (recoveredBlock38Value0) at: (recoveredBlock38Value1).
    recoveredBlock38Value2
].
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) inject: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) criterion: (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) characteristic.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) selectObjectsFrom: (recoveredStack1).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) criterion.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) selectObjectsFrom: (recoveredStack1).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) forbiddenCombination.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack0) selectObjectsFrom: (recoveredStack1).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204195d4; bytecode file offset 0xd15eb8"
!ASAP2VariantCoding methodsFor: 'recovered'!
allForbiddenCombinations: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) forbiddenCombination.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Local1 recoveredBlock11Stack0 recoveredBlock11Stack1 recoveredBlock11Stack2 recoveredBlock11Stack3 recoveredBlock11Stack4 recoveredBlock11PC recoveredBlock11Step recoveredBlock11Done recoveredBlock11Result |
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
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 22.
        ].
        recoveredBlock11Step = 22 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) combinations.
            recoveredBlock11PC := 23.
        ].
        recoveredBlock11Step = 23 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) size.
            recoveredBlock11PC := 25.
        ].
        recoveredBlock11Step = 25 ifTrue: [
            recoveredBlock11Stack3 := recoveredArg1.
            recoveredBlock11PC := 28.
        ].
        recoveredBlock11Step = 28 ifTrue: [
            recoveredBlock11Stack3 := (recoveredBlock11Stack3) size.
            recoveredBlock11PC := 30.
        ].
        recoveredBlock11Step = 30 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) = (recoveredBlock11Stack3).
            recoveredBlock11PC := 31.
        ].
        recoveredBlock11Step = 31 ifTrue: [
            (recoveredBlock11Stack2) ifTrue: [recoveredBlock11PC := 34] ifFalse: [recoveredBlock11PC := 93].
        ].
        recoveredBlock11Step = 34 ifTrue: [
            recoveredBlock11PC := 35.
        ].
        recoveredBlock11Step = 35 ifTrue: [
            recoveredBlock11Stack1 := ASAP2VarCombination.
            recoveredBlock11PC := 37.
        ].
        recoveredBlock11Step = 37 ifTrue: [
            recoveredBlock11Stack2 := recoveredArg1.
            recoveredBlock11PC := 40.
        ].
        recoveredBlock11Step = 40 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) size.
            recoveredBlock11PC := 42.
        ].
        recoveredBlock11Step = 42 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) new: (recoveredBlock11Stack2).
            recoveredBlock11PC := 44.
        ].
        recoveredBlock11Step = 44 ifTrue: [
            recoveredBlock11Local1 := recoveredBlock11Stack1.
            recoveredBlock11PC := 47.
        ].
        recoveredBlock11Step = 47 ifTrue: [
            recoveredBlock11Stack1 := recoveredArg1.
            recoveredBlock11PC := 50.
        ].
        recoveredBlock11Step = 50 ifTrue: [
            recoveredBlock11Stack2 := [:recoveredBlock11Block50Arg1 :recoveredBlock11Block50Arg2 | 
    | recoveredBlock11Block50Value0 recoveredBlock11Block50Value1 recoveredBlock11Block50Value2 recoveredBlock11Block50Value3 recoveredBlock11Block50Value4 |
    recoveredBlock11Block50Value0 := recoveredBlock11Arg1.
    recoveredBlock11Block50Value1 := (recoveredBlock11Block50Value0) combinations.
    recoveredBlock11Block50Value2 := recoveredBlock11Block50Arg1.
    recoveredBlock11Block50Value3 := [:recoveredBlock11Block50Block63Arg1 | 
    | recoveredBlock11Block50Block63Value0 recoveredBlock11Block50Block63Value1 recoveredBlock11Block50Block63Value2 recoveredBlock11Block50Block63Value3 |
    recoveredBlock11Block50Block63Value0 := recoveredBlock11Local1.
    recoveredBlock11Block50Block63Value1 := recoveredBlock11Block50Arg2.
    recoveredBlock11Block50Block63Value2 := recoveredBlock11Block50Block63Arg1.
    recoveredBlock11Block50Block63Value3 := (recoveredBlock11Block50Block63Value0) at: (recoveredBlock11Block50Block63Value1) put: (recoveredBlock11Block50Block63Value2).
    recoveredBlock11Block50Block63Value3
].
    recoveredBlock11Block50Value4 := (recoveredBlock11Block50Value1) at: (recoveredBlock11Block50Value2) ifPresent: (recoveredBlock11Block50Value3).
    recoveredBlock11Block50Value4
].
            recoveredBlock11PC := 83.
        ].
        recoveredBlock11Step = 83 ifTrue: [
            (recoveredBlock11Stack1) doWithIndex: (recoveredBlock11Stack2).
            recoveredBlock11PC := 85.
        ].
        recoveredBlock11Step = 85 ifTrue: [
            recoveredBlock11Stack1 := recoveredLocal1.
            recoveredBlock11PC := 88.
        ].
        recoveredBlock11Step = 88 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Local1.
            recoveredBlock11PC := 91.
        ].
        recoveredBlock11Step = 91 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) add: (recoveredBlock11Stack2).
            recoveredBlock11PC := 93.
        ].
        recoveredBlock11Step = 93 ifTrue: [
            recoveredBlock11Result := recoveredBlock11Stack1.
            recoveredBlock11Done := true.
        ].
    ].
    recoveredBlock11Result
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

