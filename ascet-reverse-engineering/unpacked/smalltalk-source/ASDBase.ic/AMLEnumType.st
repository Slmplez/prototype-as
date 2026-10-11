"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000c28; bytecode file offset 0x8ffcfc"
!AMLEnumType methodsFor: 'recovered'!
reduceToPartsWithValue
    ^self
! !

"ASDBase.ic method 0x20001fb0; bytecode file offset 0x8ffcfc"
!AMLEnumType methodsFor: 'recovered'!
emMutate
    ^self
! !

"ASDBase.ic method 0x20002228; bytecode file offset 0x8ffcfc"
!AMLEnumType methodsFor: 'recovered'!
checkParent
    ^self
! !

"ASDBase.ic method 0x200025d0; bytecode file offset 0x8ffcfc"
!AMLEnumType methodsFor: 'recovered'!
collectKeyWords
    ^self
! !

"ASDBase.ic method 0x200028a8; bytecode file offset 0x8ffcfc"
!AMLEnumType methodsFor: 'recovered'!
restoreParents
    ^self
! !

"ASDBase.ic method 0x200030e0; bytecode file offset 0x8ffcfc"
!AMLEnumType methodsFor: 'recovered'!
checkPartsAndKeywordsRecursive
    ^self
! !

"ASDBase.ic method 0x2000ce94; bytecode file offset 0x909ab8"
!AMLEnumType methodsFor: 'recovered'!
getTaggedStructFor: recoveredArg1
    ^nil
! !

"ASDBase.ic method 0x2000d084; bytecode file offset 0x909ab8"
!AMLEnumType methodsFor: 'recovered'!
getPartNamed: recoveredArg1
    ^nil
! !

"ASDBase.ic method 0x2000f5c4; bytecode file offset 0x90bef8"
!AMLEnumType methodsFor: 'recovered'!
enumerateParts: recoveredArg1 in: recoveredArg2
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20019aa8; bytecode file offset 0x92209c"
!AMLEnumType methodsFor: 'recovered'!
getDefaultGetMethod
    ^'endOfStatement:'
! !

"ASDBase.ic method 0x2001e3ec; bytecode file offset 0x92209c"
!AMLEnumType methodsFor: 'recovered'!
selectorPrefix
    ^'e'
! !

"ASDBase.ic method 0x20025664; bytecode file offset 0x92209c"
!AMLEnumType methodsFor: 'recovered'!
enumerationBaseName
    ^'AMLEnum.'
! !

"ASDBase.ic method 0x200414ac; bytecode file offset 0x93dd78"
!AMLEnumType methodsFor: 'recovered'!
hasAMLValue
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := value.
    recoveredValue1 := (recoveredValue0) notNil.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20048f8c; bytecode file offset 0x945848"
!AMLEnumType methodsFor: 'recovered'!
clearValue
    value := nil.
    ^self
! !

"ASDBase.ic method 0x2005d690; bytecode file offset 0x959f4c"
!AMLEnumType methodsFor: 'recovered'!
reduceToPartsWithValueAndCopyTree
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := parts.
    recoveredValue1 := (recoveredValue0) copy.
    recoveredValue2 := (self) copyForReduceParts: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2007a664; bytecode file offset 0x97c330"
!AMLEnumType methodsFor: 'recovered'!
hasParts
    ^false
! !

"ASDBase.ic method 0x20086b48; bytecode file offset 0x98376c"
!AMLEnumType methodsFor: 'recovered'!
generateCode: recoveredArg1 pathName: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) generateCodePredefinedAndEnum: (recoveredValue0) pathName: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20099870; bytecode file offset 0x9961d0"
!AMLEnumType methodsFor: 'recovered'!
collectNamedOrIndexIn: recoveredArg1 path: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    (self) collectNamedOrIndexInBase: (recoveredValue0) path: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200af0fc; bytecode file offset 0x9aba2c"
!AMLEnumType methodsFor: 'recovered'!
generateCollectionCode: recoveredArg1 pathName: recoveredArg2 for: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (self) generateCollectionCodePredefinedAndEnum: (recoveredValue0) pathName: (recoveredValue1) for: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200b19b8; bytecode file offset 0x9ae274"
!AMLEnumType methodsFor: 'recovered'!
lastOffset
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := accessor.
    recoveredValue1 := (recoveredValue0) offset.
    recoveredValue2 := accessor.
    recoveredValue3 := (recoveredValue2) byteSize.
    recoveredValue4 := (recoveredValue1) + (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200c20dc; bytecode file offset 0x9beac8"
!AMLEnumType methodsFor: 'recovered'!
setStartingDepth: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    startingDepth := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20100834; bytecode file offset 0x9fd100"
!AMLEnumType methodsFor: 'recovered'!
select: recoveredArg1 in: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2010dac4; bytecode file offset 0xa0a398"
!AMLEnumType methodsFor: 'recovered'!
putValueIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := value.
    recoveredValue2 := (recoveredValue1) key.
    (self) putIn: (recoveredValue0) string: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (self) putNewLineIn: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2011df74; bytecode file offset 0xa1a834"
!AMLEnumType methodsFor: 'recovered'!
copyPartsFor: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := parts.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280c8a9cArg1 | 
    | block280c8a9cValue0 block280c8a9cValue1 |
    block280c8a9cValue0 := block280c8a9cArg1.
    block280c8a9cValue1 := (block280c8a9cValue0) copy.
    block280c8a9cValue1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2011fc28; bytecode file offset 0xa1c524"
!AMLEnumType methodsFor: 'recovered'!
putIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) putKeyWordAndNameIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) putPartsIn: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (self) putEndIn: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2018a49c; bytecode file offset 0xa86d60"
!AMLEnumType methodsFor: 'recovered'!
getAssociation: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := Association.
    recoveredValue1 := typeName.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) getInteger: (recoveredValue2).
    recoveredValue4 := (recoveredValue0) key: (recoveredValue1) value: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := parts.
    recoveredValue6 := recoveredLocal1.
    (recoveredValue5) add: (recoveredValue6).
    typeName := nil.
    ^self
! !

"ASDBase.ic method 0x20194f68; bytecode file offset 0xa91828"
!AMLEnumType methodsFor: 'recovered'!
endOfBlock: recoveredArg1
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
            super endOfBlock: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) getEnumeration: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := name.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := name.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            typeName := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201bd098; bytecode file offset 0xab9954"
!AMLEnumType methodsFor: 'recovered'!
getEnumerationId: recoveredArg1
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
            recoveredStack2 := 0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := id.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201e5e6c; bytecode file offset 0xae272c"
!AMLEnumType methodsFor: 'recovered'!
beginOfBlock: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := name.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) etasDevHalt.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := typeName.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := typeName.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            name := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            super beginOfBlock: (recoveredStack1).
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

"ASDBase.ic method 0x202278d8; bytecode file offset 0xb2419c"
!AMLEnumType methodsFor: 'recovered'!
putValue: recoveredArg1
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
            (recoveredStack0) putIdValue: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := accessor.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := value.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := value.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := value.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) putItem: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202e692c; bytecode file offset 0xbe31f8"
!AMLEnumType methodsFor: 'recovered'!
getValueFrom: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) nextWordBySeparators.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := parts.
    recoveredValue3 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 recoveredBlock13Value3 |
    recoveredBlock13Value0 := recoveredBlock13Arg1.
    recoveredBlock13Value1 := (recoveredBlock13Value0) key.
    recoveredBlock13Value2 := recoveredLocal1.
    recoveredBlock13Value3 := (recoveredBlock13Value1) = (recoveredBlock13Value2).
    recoveredBlock13Value3
].
    recoveredValue4 := [
    | recoveredBlock27Value0 recoveredBlock27Value1 recoveredBlock27Value2 |
    recoveredBlock27Value0 := recoveredLocal1.
    recoveredBlock27Value1 := ('missing enum value:') , (recoveredBlock27Value0).
    (self) logError: (recoveredBlock27Value1).
    recoveredBlock27Value2 := recoveredLocal1.
    recoveredBlock27Value2
].
    recoveredValue5 := (recoveredValue2) detect: (recoveredValue3) ifNone: (recoveredValue4).
    value := recoveredValue5.
    ^self
! !

"ASDBase.ic method 0x20305ecc; bytecode file offset 0xc027a0"
!AMLEnumType methodsFor: 'recovered'!
putKeyWordAndNameIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    (self) putLevelIn: (recoveredValue0).
    recoveredValue1 := name.
    recoveredValue2 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 |
    recoveredBlock11Value0 := recoveredArg1.
    recoveredBlock11Value1 := recoveredBlock11Arg1.
    recoveredBlock11Value2 := (self) putIn: (recoveredBlock11Value0) quotedString: (recoveredBlock11Value1).
    recoveredBlock11Value2
].
    (recoveredValue1) ifNotNil: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (Character value: 9).
    (recoveredValue3) nextPut: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (self) class.
    recoveredValue7 := (recoveredValue6) keyWord.
    (self) putIn: (recoveredValue5) ident: (recoveredValue7).
    recoveredValue8 := recoveredArg1.
    (self) putBlockBeginIn: (recoveredValue8).
    ^self
! !

"ASDBase.ic method 0x20336d68; bytecode file offset 0xc33634"
!AMLEnumType methodsFor: 'recovered'!
getEnumeration: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := typeName.
    recoveredValue1 := [
    ^self
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := parts.
    recoveredValue3 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Stack0 recoveredBlock17Stack1 recoveredBlock17Stack2 recoveredBlock17Stack3 recoveredBlock17Stack4 recoveredBlock17PC recoveredBlock17Step recoveredBlock17Done recoveredBlock17Result |
    recoveredBlock17Stack0 := self.
    recoveredBlock17PC := 24.
    recoveredBlock17Done := false.
    [recoveredBlock17Done not] whileTrue: [
        recoveredBlock17Step := recoveredBlock17PC.
        recoveredBlock17Step = 24 ifTrue: [
            recoveredBlock17Stack1 := nil.
            recoveredBlock17PC := 25.
        ].
        recoveredBlock17Step = 25 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Arg1.
            recoveredBlock17PC := 26.
        ].
        recoveredBlock17Step = 26 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) key.
            recoveredBlock17PC := 27.
        ].
        recoveredBlock17Step = 27 ifTrue: [
            recoveredBlock17Stack3 := typeName.
            recoveredBlock17PC := 29.
        ].
        recoveredBlock17Step = 29 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) = (recoveredBlock17Stack3).
            recoveredBlock17PC := 30.
        ].
        recoveredBlock17Step = 30 ifTrue: [
            (recoveredBlock17Stack2) ifTrue: [recoveredBlock17PC := 34] ifFalse: [recoveredBlock17PC := 37].
        ].
        recoveredBlock17Step = 34 ifTrue: [
            recoveredBlock17PC := 35.
        ].
        recoveredBlock17Step = 35 ifTrue: [
            recoveredBlock17Stack1 := self.
            recoveredBlock17PC := 36.
        ].
        recoveredBlock17Step = 36 ifTrue: [
            ^recoveredBlock17Stack1
        ].
        recoveredBlock17Step = 37 ifTrue: [
            recoveredBlock17Result := recoveredBlock17Stack1.
            recoveredBlock17Done := true.
        ].
    ].
    recoveredBlock17Result
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := Association.
    recoveredValue5 := typeName.
    recoveredValue6 := (recoveredValue4) key: (recoveredValue5) value: (nil).
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := parts.
    recoveredValue8 := recoveredLocal1.
    (recoveredValue7) add: (recoveredValue8).
    typeName := nil.
    ^self
! !

"ASDBase.ic method 0x20372eb8; bytecode file offset 0xc6f798"
!AMLEnumType methodsFor: 'recovered'!
createAccessor: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) accessorClass.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) idAccessorClassByteSize.
    recoveredValue4 := (recoveredValue2) + (recoveredValue3).
    recoveredValue5 := (self) enumerationName.
    recoveredValue6 := (recoveredValue1) create: (recoveredValue4) name: (recoveredValue5).
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := parts.
    recoveredValue8 := [:recoveredBlock21Arg1 :recoveredBlock21Arg2 | 
    | recoveredBlock21Local1 recoveredBlock21Stack0 recoveredBlock21Stack1 recoveredBlock21Stack2 recoveredBlock21Stack3 recoveredBlock21PC recoveredBlock21Step recoveredBlock21Done recoveredBlock21Result |
    recoveredBlock21Stack0 := self.
    recoveredBlock21PC := 28.
    recoveredBlock21Done := false.
    [recoveredBlock21Done not] whileTrue: [
        recoveredBlock21Step := recoveredBlock21PC.
        recoveredBlock21Step = 28 ifTrue: [
            recoveredBlock21Stack0 := (recoveredBlock21Stack0) class.
            recoveredBlock21PC := 29.
        ].
        recoveredBlock21Step = 29 ifTrue: [
            recoveredBlock21Stack0 := (recoveredBlock21Stack0) memberClass.
            recoveredBlock21PC := 31.
        ].
        recoveredBlock21Step = 31 ifTrue: [
            recoveredBlock21Stack1 := recoveredBlock21Arg1.
            recoveredBlock21PC := 32.
        ].
        recoveredBlock21Step = 32 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) value.
            recoveredBlock21PC := 34.
        ].
        recoveredBlock21Step = 34 ifTrue: [
            recoveredBlock21Stack2 := recoveredBlock21Arg1.
            recoveredBlock21PC := 35.
        ].
        recoveredBlock21Step = 35 ifTrue: [
            recoveredBlock21Stack2 := (recoveredBlock21Stack2) key.
            recoveredBlock21PC := 37.
        ].
        recoveredBlock21Step = 37 ifTrue: [
            recoveredBlock21Stack0 := (recoveredBlock21Stack0) create: (recoveredBlock21Stack1) name: (recoveredBlock21Stack2).
            recoveredBlock21PC := 39.
        ].
        recoveredBlock21Step = 39 ifTrue: [
            recoveredBlock21Local1 := recoveredBlock21Stack0.
            recoveredBlock21PC := 40.
        ].
        recoveredBlock21Step = 40 ifTrue: [
            recoveredBlock21Stack0 := recoveredLocal1.
            recoveredBlock21PC := 43.
        ].
        recoveredBlock21Step = 43 ifTrue: [
            recoveredBlock21Stack1 := recoveredBlock21Local1.
            recoveredBlock21PC := 44.
        ].
        recoveredBlock21Step = 44 ifTrue: [
            (recoveredBlock21Stack0) addMember: (recoveredBlock21Stack1).
            recoveredBlock21PC := 46.
        ].
        recoveredBlock21Step = 46 ifTrue: [
            recoveredBlock21Stack0 := nil.
            recoveredBlock21PC := 47.
        ].
        recoveredBlock21Step = 47 ifTrue: [
            recoveredBlock21Stack1 := recoveredBlock21Arg1.
            recoveredBlock21PC := 48.
        ].
        recoveredBlock21Step = 48 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) value.
            recoveredBlock21PC := 50.
        ].
        recoveredBlock21Step = 50 ifTrue: [
            (recoveredBlock21Stack1 ~~ nil) ifTrue: [recoveredBlock21PC := 59] ifFalse: [recoveredBlock21PC := 54].
        ].
        recoveredBlock21Step = 54 ifTrue: [
            recoveredBlock21PC := 55.
        ].
        recoveredBlock21Step = 55 ifTrue: [
            recoveredBlock21Stack0 := recoveredBlock21Local1.
            recoveredBlock21PC := 56.
        ].
        recoveredBlock21Step = 56 ifTrue: [
            recoveredBlock21Stack1 := recoveredBlock21Arg2.
            recoveredBlock21PC := 57.
        ].
        recoveredBlock21Step = 57 ifTrue: [
            recoveredBlock21Stack0 := (recoveredBlock21Stack0) offset: (recoveredBlock21Stack1).
            recoveredBlock21PC := 59.
        ].
        recoveredBlock21Step = 59 ifTrue: [
            recoveredBlock21Result := recoveredBlock21Stack0.
            recoveredBlock21Done := true.
        ].
    ].
    recoveredBlock21Result
].
    (recoveredValue7) doWithIndex: (recoveredValue8).
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := recoveredValue9.
    accessor := recoveredValue10.
    ^recoveredValue9
! !

"ASDBase.ic method 0x2037f798; bytecode file offset 0xc7c06c"
!AMLEnumType methodsFor: 'recovered'!
readFromBytes: recoveredArg1 startingAt: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) etasDevHalt.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := accessor.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) offset: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := accessor.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) getItemFrom: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := parts.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := [:recoveredBlock41Arg1 | 
    | recoveredBlock41Value0 recoveredBlock41Value1 recoveredBlock41Value2 recoveredBlock41Value3 |
    recoveredBlock41Value0 := recoveredBlock41Arg1.
    recoveredBlock41Value1 := (recoveredBlock41Value0) value.
    recoveredBlock41Value2 := recoveredLocal1.
    recoveredBlock41Value3 := (recoveredBlock41Value1) = (recoveredBlock41Value2).
    recoveredBlock41Value3
].
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            value := recoveredStack1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := accessor.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := (recoveredStack2) byteSize.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20389644; bytecode file offset 0xc85f28"
!AMLEnumType methodsFor: 'recovered'!
printCOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) nextPutAll: ('enum { ').
    recoveredValue1 := parts.
    recoveredValue2 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 recoveredBlock13Value3 recoveredBlock13Value4 recoveredBlock13Value5 recoveredBlock13Value6 recoveredBlock13Value7 recoveredBlock13Value8 |
    recoveredBlock13Value0 := recoveredBlock13Arg1.
    recoveredBlock13Value1 := (recoveredBlock13Value0) key.
    recoveredBlock13Value2 := recoveredArg1.
    (recoveredBlock13Value1) printOn: (recoveredBlock13Value2).
    recoveredBlock13Value3 := recoveredArg1.
    (recoveredBlock13Value3) nextPutAll: ('=0x').
    recoveredBlock13Value4 := recoveredBlock13Arg1.
    recoveredBlock13Value5 := (recoveredBlock13Value4) value.
    recoveredBlock13Value6 := recoveredArg1.
    (recoveredBlock13Value5) printOn: (recoveredBlock13Value6) base: (16) showRadix: (false).
    recoveredBlock13Value7 := recoveredArg1.
    recoveredBlock13Value8 := (recoveredBlock13Value7) nextPutAll: (' , ').
    recoveredBlock13Value8
].
    (recoveredValue1) do: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredValue3.
    (recoveredValue4) backup: (2).
    (recoveredValue3) nextPutAll: ('} ;').
    recoveredValue5 := recoveredArg1.
    (recoveredValue5) cr.
    ^self
! !

"ASDBase.ic method 0x2038f5c0; bytecode file offset 0xc8bea4"
!AMLEnumType methodsFor: 'recovered'!
putPartsIn: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := parts.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 73].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := parts.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 recoveredBlock12Value4 recoveredBlock12Value5 recoveredBlock12Value6 recoveredBlock12Value7 recoveredBlock12Value8 |
    recoveredBlock12Value0 := recoveredArg1.
    (self) putLevelIn: (recoveredBlock12Value0).
    recoveredBlock12Value1 := recoveredArg1.
    recoveredBlock12Value2 := recoveredBlock12Arg1.
    recoveredBlock12Value3 := (recoveredBlock12Value2) key.
    (self) putIn: (recoveredBlock12Value1) quotedString: (recoveredBlock12Value3).
    recoveredBlock12Value4 := recoveredBlock12Arg1.
    recoveredBlock12Value5 := (recoveredBlock12Value4) value.
    recoveredBlock12Value6 := [:recoveredBlock12Block34Arg1 | 
    | recoveredBlock12Block34Value0 recoveredBlock12Block34Value1 recoveredBlock12Block34Value2 recoveredBlock12Block34Value3 |
    recoveredBlock12Block34Value0 := recoveredArg1.
    (recoveredBlock12Block34Value0) nextPutAll: (' = ').
    recoveredBlock12Block34Value1 := recoveredArg1.
    recoveredBlock12Block34Value2 := recoveredBlock12Block34Arg1.
    recoveredBlock12Block34Value3 := (self) putIn: (recoveredBlock12Block34Value1) integer: (recoveredBlock12Block34Value2).
    recoveredBlock12Block34Value3
].
    (recoveredBlock12Value5) ifNotNil: (recoveredBlock12Value6).
    recoveredBlock12Value7 := recoveredArg1.
    recoveredBlock12Value8 := (recoveredBlock12Value7) nextPutAll: (' , ').
    recoveredBlock12Value8
].
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack1) backup: (recoveredStack2).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204597f0; bytecode file offset 0xd560f8"
!AMLEnumType methodsFor: 'recovered'!
parse: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) position.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := super parse: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := parts.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Stack0 recoveredBlock15Stack1 recoveredBlock15Stack2 recoveredBlock15PC recoveredBlock15Step recoveredBlock15Done recoveredBlock15Result |
    recoveredBlock15Stack0 := self.
    recoveredBlock15PC := 22.
    recoveredBlock15Done := false.
    [recoveredBlock15Done not] whileTrue: [
        recoveredBlock15Step := recoveredBlock15PC.
        recoveredBlock15Step = 22 ifTrue: [
            recoveredBlock15Stack1 := recoveredBlock15Arg1.
            recoveredBlock15PC := 23.
        ].
        recoveredBlock15Step = 23 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) isAssociation.
            recoveredBlock15PC := 24.
        ].
        recoveredBlock15Step = 24 ifTrue: [
            (recoveredBlock15Stack1) ifTrue: [recoveredBlock15PC := 28] ifFalse: [recoveredBlock15PC := 34].
        ].
        recoveredBlock15Step = 28 ifTrue: [
            recoveredBlock15Stack1 := value.
            recoveredBlock15PC := 30.
        ].
        recoveredBlock15Step = 30 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) isNil.
            recoveredBlock15PC := 31.
        ].
        recoveredBlock15Step = 31 ifTrue: [
            recoveredBlock15PC := 35.
        ].
        recoveredBlock15Step = 34 ifTrue: [
            recoveredBlock15Stack1 := false.
            recoveredBlock15PC := 35.
        ].
        recoveredBlock15Step = 35 ifTrue: [
            recoveredBlock15Result := recoveredBlock15Stack1.
            recoveredBlock15Done := true.
        ].
    ].
    recoveredBlock15Result
].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) conform: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := parts.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := [:recoveredBlock44Arg1 :recoveredBlock44Arg2 | 
    | recoveredBlock44Stack0 recoveredBlock44Stack1 recoveredBlock44Stack2 recoveredBlock44Stack3 recoveredBlock44PC recoveredBlock44Step recoveredBlock44Done recoveredBlock44Result |
    recoveredBlock44Stack0 := self.
    recoveredBlock44PC := 50.
    recoveredBlock44Done := false.
    [recoveredBlock44Done not] whileTrue: [
        recoveredBlock44Step := recoveredBlock44PC.
        recoveredBlock44Step = 50 ifTrue: [
            recoveredBlock44Stack1 := recoveredBlock44Arg1.
            recoveredBlock44PC := 51.
        ].
        recoveredBlock44Step = 51 ifTrue: [
            recoveredBlock44Stack1 := (recoveredBlock44Stack1) isAssociation.
            recoveredBlock44PC := 52.
        ].
        recoveredBlock44Step = 52 ifTrue: [
            (recoveredBlock44Stack1) ifTrue: [recoveredBlock44PC := 56] ifFalse: [recoveredBlock44PC := 72].
        ].
        recoveredBlock44Step = 56 ifTrue: [
            recoveredBlock44Stack1 := nil.
            recoveredBlock44PC := 57.
        ].
        recoveredBlock44Step = 57 ifTrue: [
            recoveredBlock44Stack2 := recoveredBlock44Arg1.
            recoveredBlock44PC := 58.
        ].
        recoveredBlock44Step = 58 ifTrue: [
            recoveredBlock44Stack2 := (recoveredBlock44Stack2) value.
            recoveredBlock44PC := 60.
        ].
        recoveredBlock44Step = 60 ifTrue: [
            (recoveredBlock44Stack2 ~~ nil) ifTrue: [recoveredBlock44PC := 69] ifFalse: [recoveredBlock44PC := 64].
        ].
        recoveredBlock44Step = 64 ifTrue: [
            recoveredBlock44PC := 65.
        ].
        recoveredBlock44Step = 65 ifTrue: [
            recoveredBlock44Stack1 := recoveredBlock44Arg1.
            recoveredBlock44PC := 66.
        ].
        recoveredBlock44Step = 66 ifTrue: [
            recoveredBlock44Stack2 := recoveredBlock44Arg2.
            recoveredBlock44PC := 67.
        ].
        recoveredBlock44Step = 67 ifTrue: [
            recoveredBlock44Stack1 := (recoveredBlock44Stack1) value: (recoveredBlock44Stack2).
            recoveredBlock44PC := 69.
        ].
        recoveredBlock44Step = 69 ifTrue: [
            recoveredBlock44PC := 75.
        ].
        recoveredBlock44Step = 72 ifTrue: [
            recoveredBlock44Stack1 := self.
            recoveredBlock44PC := 73.
        ].
        recoveredBlock44Step = 73 ifTrue: [
            recoveredBlock44Stack1 := (recoveredBlock44Stack1) etasDevHalt.
            recoveredBlock44PC := 75.
        ].
        recoveredBlock44Step = 75 ifTrue: [
            recoveredBlock44Result := recoveredBlock44Stack1.
            recoveredBlock44Done := true.
        ].
    ].
    recoveredBlock44Result
].
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) doWithIndex: (recoveredStack1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) typeName.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 114] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := parent.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack0) addDefinition: (recoveredStack1).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRuntime.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 114] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := SGMonitorStreamDummy.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := 'add definition  %1 %2'.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack3 := (recoveredStack3) name.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack0) addText: (recoveredStack1).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2058b7f0; bytecode file offset 0xe881ac"
!AMLEnumType methodsFor: 'recovered'!
collectNamedOrIndexLeafes
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) clearValue.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := '
^aml '.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            value := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := LookupTable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) localName.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := [
    self
].
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := [:recoveredBlock35Arg1 | 
    | recoveredBlock35Value0 |
    recoveredBlock35Value0 := (self) etasDevHalt.
    recoveredBlock35Value0
].
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2) ifPresent: (recoveredStack3).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := [:block2811437cArg1 | 
    | block2811437cStack0 block2811437cStack1 block2811437cStack2 block2811437cStack3 block2811437cPC block2811437cStep block2811437cDone block2811437cResult |
    block2811437cStack0 := self.
    block2811437cPC := 4.
    block2811437cDone := false.
    [block2811437cDone not] whileTrue: [
        block2811437cStep := block2811437cPC.
        block2811437cStep = 4 ifTrue: [
            block2811437cStack1 := block2811437cArg1.
            block2811437cPC := 5.
        ].
        block2811437cStep = 5 ifTrue: [
            block2811437cStack1 := (block2811437cStack1) isCollection.
            block2811437cPC := 7.
        ].
        block2811437cStep = 7 ifTrue: [
            (block2811437cStack1) ifTrue: [block2811437cPC := 10] ifFalse: [block2811437cPC := 14].
        ].
        block2811437cStep = 10 ifTrue: [
            block2811437cStack1 := false.
            block2811437cPC := 11.
        ].
        block2811437cStep = 11 ifTrue: [
            block2811437cPC := 29.
        ].
        block2811437cStep = 14 ifTrue: [
            block2811437cStack1 := true.
            block2811437cPC := 15.
        ].
        block2811437cStep = 15 ifTrue: [
            block2811437cStack2 := block2811437cArg1.
            block2811437cPC := 16.
        ].
        block2811437cStep = 16 ifTrue: [
            block2811437cStack2 := (block2811437cStack2) hasParts.
            block2811437cPC := 18.
        ].
        block2811437cStep = 18 ifTrue: [
            (block2811437cStack2) ifTrue: [block2811437cPC := 22] ifFalse: [block2811437cPC := 29].
        ].
        block2811437cStep = 22 ifTrue: [
            block2811437cPC := 23.
        ].
        block2811437cStep = 23 ifTrue: [
            block2811437cStack1 := block2811437cArg1.
            block2811437cPC := 24.
        ].
        block2811437cStep = 24 ifTrue: [
            block2811437cStack1 := (block2811437cStack1) class.
            block2811437cPC := 26.
        ].
        block2811437cStep = 26 ifTrue: [
            block2811437cStack2 := AMLCollection.
            block2811437cPC := 28.
        ].
        block2811437cStep = 28 ifTrue: [
            block2811437cStack1 := (block2811437cStack1) = (block2811437cStack2).
            block2811437cPC := 29.
        ].
        block2811437cStep = 29 ifTrue: [
            block2811437cResult := block2811437cStack1.
            block2811437cDone := true.
        ].
    ].
    block2811437cResult
].
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) keys.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := (recoveredStack0) asArray.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := [:block281143a0Arg1 | 
    | block281143a0Value0 block281143a0Value1 |
    block281143a0Value0 := block281143a0Arg1.
    block281143a0Value1 := (block281143a0Value0) subStrings: ($.).
    block281143a0Value1
].
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := (recoveredStack0) reduceNames: (recoveredStack1).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := LookupTable.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := [:recoveredBlock130Arg1 :recoveredBlock130Arg2 | 
    | recoveredBlock130Local1 recoveredBlock130Local2 recoveredBlock130Value0 recoveredBlock130Value1 recoveredBlock130Value2 recoveredBlock130Value3 recoveredBlock130Value4 recoveredBlock130Value5 recoveredBlock130Value6 recoveredBlock130Value7 recoveredBlock130Value8 recoveredBlock130Value9 recoveredBlock130Value10 recoveredBlock130Value11 recoveredBlock130Value12 recoveredBlock130Value13 recoveredBlock130Value14 |
    recoveredBlock130Local2 := ''.
    recoveredBlock130Value0 := recoveredBlock130Arg1.
    recoveredBlock130Value1 := [:recoveredBlock130Block144Arg1 | 
    | recoveredBlock130Block144Value0 recoveredBlock130Block144Value1 recoveredBlock130Block144Value2 recoveredBlock130Block144Value3 recoveredBlock130Block144Value4 |
    recoveredBlock130Block144Value0 := recoveredBlock130Local2.
    recoveredBlock130Block144Value1 := (recoveredBlock130Block144Value0) , ('.').
    recoveredBlock130Block144Value2 := recoveredBlock130Block144Arg1.
    recoveredBlock130Block144Value3 := (recoveredBlock130Block144Value1) , (recoveredBlock130Block144Value2).
    recoveredBlock130Block144Value4 := recoveredBlock130Block144Value3.
    recoveredBlock130Local2 := recoveredBlock130Block144Value4.
    recoveredBlock130Block144Value3
].
    (recoveredBlock130Value0) do: (recoveredBlock130Value1).
    recoveredBlock130Value2 := recoveredBlock130Local2.
    recoveredBlock130Value3 := recoveredBlock130Local2.
    recoveredBlock130Value4 := (recoveredBlock130Value3) size.
    recoveredBlock130Value5 := (recoveredBlock130Value2) copyFrom: (2) to: (recoveredBlock130Value4).
    recoveredBlock130Local2 := recoveredBlock130Value5.
    recoveredBlock130Local1 := ''.
    recoveredBlock130Value6 := recoveredLocal2.
    recoveredBlock130Value7 := recoveredBlock130Arg2.
    recoveredBlock130Value8 := (recoveredBlock130Value6) at: (recoveredBlock130Value7).
    recoveredBlock130Value9 := [:recoveredBlock130Block195Arg1 | 
    | recoveredBlock130Block195Value0 recoveredBlock130Block195Value1 recoveredBlock130Block195Value2 recoveredBlock130Block195Value3 recoveredBlock130Block195Value4 |
    recoveredBlock130Block195Value0 := recoveredBlock130Local1.
    recoveredBlock130Block195Value1 := recoveredBlock130Block195Arg1.
    recoveredBlock130Block195Value2 := (recoveredBlock130Block195Value1) firstAsUppercase.
    recoveredBlock130Block195Value3 := (recoveredBlock130Block195Value0) , (recoveredBlock130Block195Value2).
    recoveredBlock130Block195Value4 := recoveredBlock130Block195Value3.
    recoveredBlock130Local1 := recoveredBlock130Block195Value4.
    recoveredBlock130Block195Value3
].
    (recoveredBlock130Value8) do: (recoveredBlock130Value9).
    recoveredBlock130Value10 := recoveredLocal4.
    recoveredBlock130Value11 := recoveredBlock130Local2.
    recoveredBlock130Value12 := [
    | recoveredBlock130Block223Value0 |
    recoveredBlock130Block223Value0 := (self) etasDevHalt.
    recoveredBlock130Block223Value0
].
    recoveredBlock130Value13 := [:recoveredBlock130Block233Arg1 | 
    | recoveredBlock130Block233Value0 recoveredBlock130Block233Value1 recoveredBlock130Block233Value2 recoveredBlock130Block233Value3 recoveredBlock130Block233Value4 recoveredBlock130Block233Value5 recoveredBlock130Block233Value6 recoveredBlock130Block233Value7 recoveredBlock130Block233Value8 |
    recoveredBlock130Block233Value0 := recoveredLocal5.
    recoveredBlock130Block233Value1 := recoveredBlock130Local1.
    recoveredBlock130Block233Value2 := recoveredBlock130Block233Arg1.
    (recoveredBlock130Block233Value0) at: (recoveredBlock130Block233Value1) put: (recoveredBlock130Block233Value2).
    recoveredBlock130Block233Value3 := recoveredBlock130Block233Arg1.
    recoveredBlock130Block233Value4 := recoveredBlock130Local1.
    recoveredBlock130Block233Value5 := recoveredBlock130Block233Arg1.
    recoveredBlock130Block233Value6 := (recoveredBlock130Block233Value5) value.
    recoveredBlock130Block233Value7 := (recoveredBlock130Block233Value4) , (recoveredBlock130Block233Value6).
    recoveredBlock130Block233Value8 := (recoveredBlock130Block233Value3) value: (recoveredBlock130Block233Value7).
    recoveredBlock130Block233Value8
].
    recoveredBlock130Value14 := (recoveredBlock130Value10) at: (recoveredBlock130Value11) ifAbsent: (recoveredBlock130Value12) ifPresent: (recoveredBlock130Value13).
    recoveredBlock130Value14
].
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            (recoveredStack0) doWithIndex: (recoveredStack1).
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

