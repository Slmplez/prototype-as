"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000458; bytecode file offset 0x8ffcfc"
!AMLPredefinedTypeName methodsFor: 'recovered'!
checkParent
    ^self
! !

"ASDBase.ic method 0x20000788; bytecode file offset 0x8ffcfc"
!AMLPredefinedTypeName methodsFor: 'recovered'!
reduceToPartsWithValue
    ^self
! !

"ASDBase.ic method 0x200009c0; bytecode file offset 0x8ffcfc"
!AMLPredefinedTypeName methodsFor: 'recovered'!
collectKeyWords
    ^self
! !

"ASDBase.ic method 0x20000ef0; bytecode file offset 0x8ffcfc"
!AMLPredefinedTypeName methodsFor: 'recovered'!
checkPartsAndKeywordsRecursive
    ^self
! !

"ASDBase.ic method 0x200016a8; bytecode file offset 0x8ffcfc"
!AMLPredefinedTypeName methodsFor: 'recovered'!
emMutate
    ^self
! !

"ASDBase.ic method 0x20002f68; bytecode file offset 0x8ffcfc"
!AMLPredefinedTypeName methodsFor: 'recovered'!
restoreParents
    ^self
! !

"ASDBase.ic method 0x20003c80; bytecode file offset 0x90206c"
!AMLPredefinedTypeName methodsFor: 'recovered'!
endOfIndex: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20004d40; bytecode file offset 0x90206c"
!AMLPredefinedTypeName methodsFor: 'recovered'!
printCOn: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x2000cec4; bytecode file offset 0x909ab8"
!AMLPredefinedTypeName methodsFor: 'recovered'!
getPartNamed: recoveredArg1
    ^nil
! !

"ASDBase.ic method 0x2000f5e4; bytecode file offset 0x90bef8"
!AMLPredefinedTypeName methodsFor: 'recovered'!
enumerateParts: recoveredArg1 in: recoveredArg2
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001baac; bytecode file offset 0x92209c"
!AMLPredefinedTypeName methodsFor: 'recovered'!
selectorPrefix
    ^'p'
! !

"ASDBase.ic method 0x20040f98; bytecode file offset 0x93d850"
!AMLPredefinedTypeName methodsFor: 'recovered'!
reduceToPartsWithValueAndCopyTree
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := parts.
    recoveredValue1 := (self) copyForReduceParts: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200414bc; bytecode file offset 0x93dd78"
!AMLPredefinedTypeName methodsFor: 'recovered'!
hasAMLValue
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := value.
    recoveredValue1 := (recoveredValue0) notNil.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20048f5c; bytecode file offset 0x945848"
!AMLPredefinedTypeName methodsFor: 'recovered'!
clearValue
    value := nil.
    ^self
! !

"ASDBase.ic method 0x2005295c; bytecode file offset 0x94f214"
!AMLPredefinedTypeName methodsFor: 'recovered'!
copyPartsFor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := parts.
    recoveredValue1 := (recoveredValue0) copy.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2007b4c4; bytecode file offset 0x97c330"
!AMLPredefinedTypeName methodsFor: 'recovered'!
hasParts
    ^false
! !

"ASDBase.ic method 0x20086ddc; bytecode file offset 0x98376c"
!AMLPredefinedTypeName methodsFor: 'recovered'!
generateCode: recoveredArg1 pathName: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) generateCodePredefinedAndEnum: (recoveredValue0) pathName: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009987c; bytecode file offset 0x9961d0"
!AMLPredefinedTypeName methodsFor: 'recovered'!
collectNamedOrIndexIn: recoveredArg1 path: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    (self) collectNamedOrIndexInBase: (recoveredValue0) path: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200af114; bytecode file offset 0x9aba2c"
!AMLPredefinedTypeName methodsFor: 'recovered'!
generateCollectionCode: recoveredArg1 pathName: recoveredArg2 for: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (self) generateCollectionCodePredefinedAndEnum: (recoveredValue0) pathName: (recoveredValue1) for: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200b8908; bytecode file offset 0x9b51c4"
!AMLPredefinedTypeName methodsFor: 'recovered'!
getArrayIndex: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := parts.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) getInteger: (recoveredValue1).
    (recoveredValue0) add: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200c20e4; bytecode file offset 0x9beac8"
!AMLPredefinedTypeName methodsFor: 'recovered'!
setStartingDepth: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    startingDepth := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200f0b00; bytecode file offset 0x9ed3b4"
!AMLPredefinedTypeName methodsFor: 'recovered'!
findTreeWithValues
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := value.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := parent.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2011fc50; bytecode file offset 0xa1c524"
!AMLPredefinedTypeName methodsFor: 'recovered'!
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

"ASDBase.ic method 0x201561dc; bytecode file offset 0xa52aa4"
!AMLPredefinedTypeName methodsFor: 'recovered'!
createAccessor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) accessorClass.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) idAccessorClassByteSize.
    recoveredValue4 := (recoveredValue2) + (recoveredValue3).
    recoveredValue5 := name.
    recoveredValue6 := (recoveredValue1) create: (recoveredValue4) name: (recoveredValue5).
    recoveredValue7 := (recoveredValue6) createRangeAccessor.
    recoveredValue8 := recoveredValue7.
    accessor := recoveredValue8.
    ^recoveredValue7
! !

"ASDBase.ic method 0x201bd0a0; bytecode file offset 0xab9954"
!AMLPredefinedTypeName methodsFor: 'recovered'!
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

"ASDBase.ic method 0x201d8968; bytecode file offset 0xad5230"
!AMLPredefinedTypeName methodsFor: 'recovered'!
putEndIn: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := parent.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := AMLCollection.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := ' '.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := ' ; '.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201f5724; bytecode file offset 0xaf1fe8"
!AMLPredefinedTypeName methodsFor: 'recovered'!
printInPartsListOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    super printInPartsListOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) nextPut: ($().
    recoveredValue2 := value.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) printOn: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    (recoveredValue4) nextPut: ($)).
    ^self
! !

"ASDBase.ic method 0x20201af0; bytecode file offset 0xafe3b0"
!AMLPredefinedTypeName methodsFor: 'recovered'!
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
            recoveredStack0 := value.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := accessor.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultValue.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) putItem: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := accessor.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := value.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) putItem: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20234714; bytecode file offset 0xb30fdc"
!AMLPredefinedTypeName methodsFor: 'recovered'!
readFromBytes: recoveredArg1 startingAt: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) etasDevHalt.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := accessor.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) offset: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := accessor.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) getItemFrom: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            value := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := accessor.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) byteSize.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20237f1c; bytecode file offset 0xb347e0"
!AMLPredefinedTypeName methodsFor: 'recovered'!
getValueFrom: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := name.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) position.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := name.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) nextWordBySeparators.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) etasDevHalt.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) position: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20284f38; bytecode file offset 0xb81804"
!AMLPredefinedTypeName methodsFor: 'recovered'!
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
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 41].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := '	[ '.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := parts.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Value0 recoveredBlock19Value1 recoveredBlock19Value2 |
    recoveredBlock19Value0 := recoveredBlock19Arg1.
    recoveredBlock19Value1 := recoveredArg1.
    recoveredBlock19Value2 := (recoveredBlock19Value0) putIn: (recoveredBlock19Value1).
    recoveredBlock19Value2
].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := '	] '.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2031d1ec; bytecode file offset 0xc19abc"
!AMLPredefinedTypeName methodsFor: 'recovered'!
putKeyWordAndNameIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
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
    recoveredValue9 := (Character value: 9).
    (recoveredValue8) nextPut: (recoveredValue9).
    ^self
! !

"ASDBase.ic method 0x2039f38c; bytecode file offset 0xc9bc88"
!AMLPredefinedTypeName methodsFor: 'recovered'!
generateCode: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 |
    (self) mustnotdothat.
    recoveredValue0 := Smalltalk.
    recoveredValue1 := parent.
    recoveredValue2 := (recoveredValue1) generateClassName.
    recoveredValue3 := [
    | recoveredBlock11Value0 |
    recoveredBlock11Value0 := (self) etasDevHalt.
    recoveredBlock11Value0
].
    recoveredValue4 := (recoveredValue0) at: (recoveredValue2) ifAbsent: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := WriteStream.
    recoveredValue6 := (recoveredValue5) on: ('').
    recoveredLocal2 := recoveredValue6.
    recoveredValue7 := recoveredLocal2.
    recoveredValue8 := recoveredValue7.
    recoveredValue9 := (self) selectorName.
    (recoveredValue8) nextPutAll: (recoveredValue9).
    recoveredValue10 := recoveredValue7.
    (recoveredValue10) cr.
    (recoveredValue7) nextPutAll: ('^(aml parts at: ').
    recoveredValue11 := parent.
    recoveredValue12 := (recoveredValue11) getPartIndex: (self).
    recoveredValue13 := recoveredLocal2.
    (recoveredValue12) printOn: (recoveredValue13).
    recoveredValue14 := recoveredLocal2.
    recoveredValue15 := recoveredValue14.
    (recoveredValue15) nextPutAll: (' ifAbsent: [ nil ] ) ').
    (recoveredValue14) cr.
    recoveredValue16 := (self) selectorName.
    recoveredValue17 := recoveredLocal2.
    recoveredValue18 := (recoveredValue17) contents.
    recoveredValue19 := recoveredLocal1.
    recoveredValue20 := recoveredLocal1.
    recoveredValue21 := (recoveredValue20) getDefinedApplication.
    (self) generateMethod: (recoveredValue16) source: (recoveredValue18) for: (recoveredValue19) in: (recoveredValue21).
    ^self
! !

"ASDBase.ic method 0x20451d74; bytecode file offset 0xd4e670"
!AMLPredefinedTypeName methodsFor: 'recovered'!
getFrom: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) position.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := name.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            name := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) keyWords.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := name.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) includesKey: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 41].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) position: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            name := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) parse: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := AMLBaseObject.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) keyWords.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := name.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) includesKey: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 61].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack1) position: (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            name := recoveredStack1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 61 ifTrue: [
            recoveredPC := 113.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString: (recoveredStack2).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            typeName := recoveredStack1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) keyWords.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := typeName.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) includesKey: (recoveredStack2).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 93].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack1) position: (recoveredStack2).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            typeName := recoveredStack1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack1) parse: (recoveredStack2).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := AMLBaseObject.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := (recoveredStack1) keyWords.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := typeName.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := (recoveredStack1) includesKey: (recoveredStack2).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 104] ifFalse: [recoveredPC := 113].
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack1) position: (recoveredStack2).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            typeName := recoveredStack1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 113 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2058b878; bytecode file offset 0xe881ac"
!AMLPredefinedTypeName methodsFor: 'recovered'!
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
            recoveredStack1 := [:block281143c4Arg1 | 
    | block281143c4Stack0 block281143c4Stack1 block281143c4Stack2 block281143c4Stack3 block281143c4PC block281143c4Step block281143c4Done block281143c4Result |
    block281143c4Stack0 := self.
    block281143c4PC := 4.
    block281143c4Done := false.
    [block281143c4Done not] whileTrue: [
        block281143c4Step := block281143c4PC.
        block281143c4Step = 4 ifTrue: [
            block281143c4Stack1 := block281143c4Arg1.
            block281143c4PC := 5.
        ].
        block281143c4Step = 5 ifTrue: [
            block281143c4Stack1 := (block281143c4Stack1) isCollection.
            block281143c4PC := 7.
        ].
        block281143c4Step = 7 ifTrue: [
            (block281143c4Stack1) ifTrue: [block281143c4PC := 10] ifFalse: [block281143c4PC := 14].
        ].
        block281143c4Step = 10 ifTrue: [
            block281143c4Stack1 := false.
            block281143c4PC := 11.
        ].
        block281143c4Step = 11 ifTrue: [
            block281143c4PC := 29.
        ].
        block281143c4Step = 14 ifTrue: [
            block281143c4Stack1 := true.
            block281143c4PC := 15.
        ].
        block281143c4Step = 15 ifTrue: [
            block281143c4Stack2 := block281143c4Arg1.
            block281143c4PC := 16.
        ].
        block281143c4Step = 16 ifTrue: [
            block281143c4Stack2 := (block281143c4Stack2) hasParts.
            block281143c4PC := 18.
        ].
        block281143c4Step = 18 ifTrue: [
            (block281143c4Stack2) ifTrue: [block281143c4PC := 22] ifFalse: [block281143c4PC := 29].
        ].
        block281143c4Step = 22 ifTrue: [
            block281143c4PC := 23.
        ].
        block281143c4Step = 23 ifTrue: [
            block281143c4Stack1 := block281143c4Arg1.
            block281143c4PC := 24.
        ].
        block281143c4Step = 24 ifTrue: [
            block281143c4Stack1 := (block281143c4Stack1) class.
            block281143c4PC := 26.
        ].
        block281143c4Step = 26 ifTrue: [
            block281143c4Stack2 := AMLCollection.
            block281143c4PC := 28.
        ].
        block281143c4Step = 28 ifTrue: [
            block281143c4Stack1 := (block281143c4Stack1) = (block281143c4Stack2).
            block281143c4PC := 29.
        ].
        block281143c4Step = 29 ifTrue: [
            block281143c4Result := block281143c4Stack1.
            block281143c4Done := true.
        ].
    ].
    block281143c4Result
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
            recoveredStack1 := [:block281143e8Arg1 | 
    | block281143e8Value0 block281143e8Value1 |
    block281143e8Value0 := block281143e8Arg1.
    block281143e8Value1 := (block281143e8Value0) subStrings: ($.).
    block281143e8Value1
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

