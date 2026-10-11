"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20002450; bytecode file offset 0x8ffcfc"
!AMLStructedTypes methodsFor: 'recovered'!
checkPartsAndKeywords
    ^self
! !

"ASDBase.ic method 0x200176cc; bytecode file offset 0x92209c"
!AMLStructedTypes methodsFor: 'recovered'!
selectorPrefix
    ^'s'
! !

"ASDBase.ic method 0x20059ed0; bytecode file offset 0x956800"
!AMLStructedTypes methodsFor: 'recovered'!
generateClassAccessMethodStruct: recoveredArg1 for: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) generateClassAccessMethodStruct: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2006dbf8; bytecode file offset 0x96a9dc"
!AMLStructedTypes methodsFor: 'recovered'!
keyWords
    | recoveredValue0 |
    recoveredValue0 := keyWords.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20086de8; bytecode file offset 0x98376c"
!AMLStructedTypes methodsFor: 'recovered'!
generateCode: recoveredArg1 pathName: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) generateCodeStructAndBlock: (recoveredValue0) pathName: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009d304; bytecode file offset 0x999bbc"
!AMLStructedTypes methodsFor: 'recovered'!
hasKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := keyWords.
    recoveredValue1 := (recoveredValue0) size.
    recoveredValue2 := (recoveredValue1) > (4).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200aa6c8; bytecode file offset 0x9a6f84"
!AMLStructedTypes methodsFor: 'recovered'!
generateClassAccessMethod: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) parent.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) generateClassAccessMethodStruct: (recoveredValue2) for: (self).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200af12c; bytecode file offset 0x9aba2c"
!AMLStructedTypes methodsFor: 'recovered'!
generateCollectionCode: recoveredArg1 pathName: recoveredArg2 for: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (self) generateCollectionCodeStructsAndBlock: (recoveredValue0) pathName: (recoveredValue1) for: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200c43a8; bytecode file offset 0x9c11bc"
!AMLStructedTypes methodsFor: 'recovered'!
keyWords: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    keyWords := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d8b94; bytecode file offset 0x9d5450"
!AMLStructedTypes methodsFor: 'recovered'!
createAccessor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) idAccessorClassByteSize.
    recoveredValue2 := (recoveredValue0) + (recoveredValue1).
    recoveredValue3 := (self) createPartsAccessor: (recoveredValue2).
    recoveredValue4 := recoveredValue3.
    accessor := recoveredValue4.
    ^recoveredValue3
! !

"ASDBase.ic method 0x20126de4; bytecode file offset 0xa236a4"
!AMLStructedTypes methodsFor: 'recovered'!
copyForReduceParts: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super copyForReduceParts: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := keyWords.
    (recoveredValue2) keyWords: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x20159fe8; bytecode file offset 0xa568b4"
!AMLStructedTypes methodsFor: 'recovered'!
countObjectsIn: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := keyWords.
    recoveredLocal1 := recoveredValue0.
    keyWords := nil.
    recoveredValue1 := recoveredArg1.
    super countObjectsIn: (recoveredValue1).
    recoveredValue2 := recoveredLocal1.
    keyWords := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x20159ff8; bytecode file offset 0xa568b4"
!AMLStructedTypes methodsFor: 'recovered'!
emWriteObjectOn: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := keyWords.
    recoveredLocal1 := recoveredValue0.
    keyWords := nil.
    recoveredValue1 := recoveredArg1.
    super emWriteObjectOn: (recoveredValue1).
    recoveredValue2 := recoveredLocal1.
    keyWords := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x2015b924; bytecode file offset 0xa581e0"
!AMLStructedTypes methodsFor: 'recovered'!
dumpSize
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := keyWords.
    recoveredLocal2 := recoveredValue0.
    keyWords := nil.
    recoveredValue1 := super dumpSize.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal2.
    keyWords := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x2017a8dc; bytecode file offset 0xa7719c"
!AMLStructedTypes methodsFor: 'recovered'!
createAccessor
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := parts.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 19].
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
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) createAccessor: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2018aa3c; bytecode file offset 0xa87304"
!AMLStructedTypes methodsFor: 'recovered'!
printCDefineOn: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) enumerate: (1).
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) nextPutAll: ('##IDS').
    (recoveredValue1) cr.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredArg1.
    (self) printCDefine: (recoveredValue3) on: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x201d1430; bytecode file offset 0xacdd14"
!AMLStructedTypes methodsFor: 'recovered'!
copyForReduceParts
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := super copyForReduceParts.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasKeyWords.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) collectKeyWords.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := keyWords.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) keyWords: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201d144c; bytecode file offset 0xacdd14"
!AMLStructedTypes methodsFor: 'recovered'!
copyTree
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := super copyTree.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasKeyWords.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) collectKeyWords.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := keyWords.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) keyWords: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201ecc98; bytecode file offset 0xae9564"
!AMLStructedTypes methodsFor: 'recovered'!
getTaggedUnionType: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := AMLTagUnion.
    recoveredValue1 := (recoveredValue0) create.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    (recoveredValue2) parent: (self).
    recoveredValue3 := recoveredLocal1.
    (self) addTaggedUnionType: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) getFrom: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := typeName.
    (recoveredValue6) name: (recoveredValue7).
    typeName := nil.
    ^self
! !

"ASDBase.ic method 0x2020cf24; bytecode file offset 0xb097f4"
!AMLStructedTypes methodsFor: 'recovered'!
putTypeDefIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    (self) putSeparatorIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) keyWord.
    (self) putIn: (recoveredValue1) string: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    (self) putSeparatorIn: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (self) definition.
    (self) putIn: (recoveredValue5) string: (recoveredValue6).
    recoveredValue7 := recoveredArg1.
    (recoveredValue7) nextPutAll: (' ;').
    ^self
! !

"ASDBase.ic method 0x20216544; bytecode file offset 0xb12e1c"
!AMLStructedTypes methodsFor: 'recovered'!
printCDefinition
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := WriteStream.
    recoveredValue1 := (recoveredValue0) on: ('').
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := recoveredLocal2.
    (self) printCDefineOn: (recoveredValue2).
    recoveredValue3 := recoveredLocal2.
    (recoveredValue3) nextPutAll: ('##STRUCTS').
    recoveredValue4 := (self) createAccessor.
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := recoveredLocal2.
    (recoveredValue5) printCOn: (recoveredValue6) level: (1).
    recoveredValue7 := recoveredLocal2.
    recoveredValue8 := (recoveredValue7) contents.
    ^recoveredValue8
! !

"ASDBase.ic method 0x2025a2c8; bytecode file offset 0xb56b8c"
!AMLStructedTypes methodsFor: 'recovered'!
maxPartSize
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := parts.
    recoveredValue1 := (recoveredValue0) size.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := parts.
    recoveredValue3 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 recoveredBlock12Value4 recoveredBlock12Value5 recoveredBlock12Value6 recoveredBlock12Value7 |
    recoveredBlock12Value0 := recoveredLocal1.
    recoveredBlock12Value1 := recoveredBlock12Arg1.
    recoveredBlock12Value2 := (recoveredBlock12Value1) extraSize.
    recoveredBlock12Value3 := (recoveredBlock12Value0) + (recoveredBlock12Value2).
    recoveredBlock12Value4 := recoveredBlock12Arg1.
    recoveredBlock12Value5 := (recoveredBlock12Value4) taggedStructSize.
    recoveredBlock12Value6 := (recoveredBlock12Value3) + (recoveredBlock12Value5).
    recoveredBlock12Value7 := recoveredBlock12Value6.
    recoveredLocal1 := recoveredBlock12Value7.
    recoveredBlock12Value6
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x20271774; bytecode file offset 0xb6e034"
!AMLStructedTypes methodsFor: 'recovered'!
getTaggedStructFor: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := name.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := parts.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Value0 recoveredBlock18Value1 recoveredBlock18Value2 recoveredBlock18Value3 |
    recoveredBlock18Value0 := recoveredBlock18Arg1.
    recoveredBlock18Value1 := (recoveredBlock18Value0) name.
    recoveredBlock18Value2 := recoveredArg1.
    recoveredBlock18Value3 := (recoveredBlock18Value1) = (recoveredBlock18Value2).
    recoveredBlock18Value3
].
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20375918; bytecode file offset 0xc7220c"
!AMLStructedTypes methodsFor: 'recovered'!
collectKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    keyWords := recoveredValue1.
    recoveredValue2 := parts.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Stack0 recoveredBlock11Stack1 recoveredBlock11Stack2 recoveredBlock11Stack3 recoveredBlock11Stack4 recoveredBlock11PC recoveredBlock11Step recoveredBlock11Done recoveredBlock11Result |
    recoveredBlock11Stack0 := self.
    recoveredBlock11PC := 18.
    recoveredBlock11Done := false.
    [recoveredBlock11Done not] whileTrue: [
        recoveredBlock11Step := recoveredBlock11PC.
        recoveredBlock11Step = 18 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Arg1.
            recoveredBlock11PC := 19.
        ].
        recoveredBlock11Step = 19 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) valueKeyWord.
            recoveredBlock11PC := 20.
        ].
        recoveredBlock11Step = 20 ifTrue: [
            (recoveredBlock11Stack1 == nil) ifTrue: [recoveredBlock11PC := 31] ifFalse: [recoveredBlock11PC := 24].
        ].
        recoveredBlock11Step = 24 ifTrue: [
            recoveredBlock11Stack1 := keyWords.
            recoveredBlock11PC := 26.
        ].
        recoveredBlock11Step = 26 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 27.
        ].
        recoveredBlock11Step = 27 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) valueKeyWord.
            recoveredBlock11PC := 28.
        ].
        recoveredBlock11Step = 28 ifTrue: [
            recoveredBlock11Stack3 := recoveredBlock11Arg1.
            recoveredBlock11PC := 29.
        ].
        recoveredBlock11Step = 29 ifTrue: [
            (recoveredBlock11Stack1) at: (recoveredBlock11Stack2) put: (recoveredBlock11Stack3).
            recoveredBlock11PC := 31.
        ].
        recoveredBlock11Step = 31 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Arg1.
            recoveredBlock11PC := 32.
        ].
        recoveredBlock11Step = 32 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) collectKeyWords.
            recoveredBlock11PC := 34.
        ].
        recoveredBlock11Step = 34 ifTrue: [
            recoveredBlock11Result := recoveredBlock11Stack1.
            recoveredBlock11Done := true.
        ].
    ].
    recoveredBlock11Result
].
    (recoveredValue2) do: (recoveredValue3).
    (self) checkPartsAndKeywords.
    recoveredValue4 := keyWords.
    recoveredValue5 := recoveredValue4.
    (recoveredValue5) at: ('{') ifAbsentPut: ('shortBegin:').
    recoveredValue6 := recoveredValue4.
    (recoveredValue6) at: ('}') ifAbsentPut: ('shortEnd:').
    recoveredValue7 := recoveredValue4.
    (recoveredValue7) at: ('/end') ifAbsentPut: ('end:').
    (recoveredValue4) at: ('/begin') ifAbsentPut: ('begin:').
    ^self
! !

"ASDBase.ic method 0x203853b0; bytecode file offset 0xc81c7c"
!AMLStructedTypes methodsFor: 'recovered'!
generateCode: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := definition.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := definition.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) getDefinition: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := (recoveredStack3) generateRootClass.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) generateStructClassFor: (recoveredStack2) root: (recoveredStack3).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) generateClassAccessMethod.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredPC := 50.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := (recoveredStack3) generateRootClass.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) generateStructClassFor: (recoveredStack2) root: (recoveredStack3).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := parts.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := [:recoveredBlock56Arg1 | 
    | recoveredBlock56Value0 recoveredBlock56Value1 recoveredBlock56Value2 |
    recoveredBlock56Value0 := recoveredBlock56Arg1.
    recoveredBlock56Value1 := recoveredArg1.
    recoveredBlock56Value2 := (recoveredBlock56Value0) generateCode: (recoveredBlock56Value1).
    recoveredBlock56Value2
].
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203c1a1c; bytecode file offset 0xcbe2f8"
!AMLStructedTypes methodsFor: 'recovered'!
printCOn: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getDefineName.
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
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := '#DEFINE '.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := name.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack2 ~~ nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := parent.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := name.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := '   '.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := id.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) printOn: (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := parts.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := [:recoveredBlock54Arg1 | 
    | recoveredBlock54Stack0 recoveredBlock54Stack1 recoveredBlock54Stack2 recoveredBlock54Stack3 recoveredBlock54Stack4 recoveredBlock54PC recoveredBlock54Step recoveredBlock54Done recoveredBlock54Result |
    recoveredBlock54Stack0 := self.
    recoveredBlock54PC := 60.
    recoveredBlock54Done := false.
    [recoveredBlock54Done not] whileTrue: [
        recoveredBlock54Step := recoveredBlock54PC.
        recoveredBlock54Step = 60 ifTrue: [
            recoveredBlock54Stack1 := nil.
            recoveredBlock54PC := 61.
        ].
        recoveredBlock54Step = 61 ifTrue: [
            recoveredBlock54Stack2 := recoveredBlock54Arg1.
            recoveredBlock54PC := 62.
        ].
        recoveredBlock54Step = 62 ifTrue: [
            recoveredBlock54Stack2 := (recoveredBlock54Stack2) id.
            recoveredBlock54PC := 64.
        ].
        recoveredBlock54Step = 64 ifTrue: [
            recoveredBlock54Stack3 := 0.
            recoveredBlock54PC := 66.
        ].
        recoveredBlock54Step = 66 ifTrue: [
            recoveredBlock54Stack2 := (recoveredBlock54Stack2) = (recoveredBlock54Stack3).
            recoveredBlock54PC := 67.
        ].
        recoveredBlock54Step = 67 ifTrue: [
            (recoveredBlock54Stack2) ifTrue: [recoveredBlock54PC := 77] ifFalse: [recoveredBlock54PC := 70].
        ].
        recoveredBlock54Step = 70 ifTrue: [
            recoveredBlock54PC := 71.
        ].
        recoveredBlock54Step = 71 ifTrue: [
            recoveredBlock54Stack1 := recoveredBlock54Arg1.
            recoveredBlock54PC := 72.
        ].
        recoveredBlock54Step = 72 ifTrue: [
            recoveredBlock54Stack2 := recoveredArg1.
            recoveredBlock54PC := 75.
        ].
        recoveredBlock54Step = 75 ifTrue: [
            recoveredBlock54Stack1 := (recoveredBlock54Stack1) printCOn: (recoveredBlock54Stack2).
            recoveredBlock54PC := 77.
        ].
        recoveredBlock54Step = 77 ifTrue: [
            recoveredBlock54Result := recoveredBlock54Stack1.
            recoveredBlock54Done := true.
        ].
    ].
    recoveredBlock54Result
].
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203cd7bc; bytecode file offset 0xcca0bc"
!AMLStructedTypes methodsFor: 'recovered'!
generateClassAccessMethod
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 |
    (self) mustnotdothat.
    recoveredValue0 := Smalltalk.
    recoveredValue1 := (self) generateClassName.
    recoveredValue2 := [
    | recoveredBlock10Value0 |
    recoveredBlock10Value0 := (self) etasDevHalt.
    recoveredBlock10Value0
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := WriteStream.
    recoveredValue5 := (recoveredValue4) on: ('').
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := recoveredValue6.
    recoveredValue8 := (self) selectorName.
    (recoveredValue7) nextPutAll: (recoveredValue8).
    recoveredValue9 := recoveredValue6.
    (recoveredValue9) cr.
    recoveredValue10 := recoveredValue6.
    (recoveredValue10) nextPutAll: ('^( ').
    recoveredValue11 := recoveredValue6.
    recoveredValue12 := (self) generateClassName.
    (recoveredValue11) nextPutAll: (recoveredValue12).
    (recoveredValue6) nextPutAll: (' createFor: (aml parts at: ').
    recoveredValue13 := parent.
    recoveredValue14 := (recoveredValue13) getPartIndex: (self).
    recoveredValue15 := recoveredLocal1.
    (recoveredValue14) printOn: (recoveredValue15).
    recoveredValue16 := recoveredLocal1.
    recoveredValue17 := recoveredValue16.
    (recoveredValue17) nextPutAll: (' ifAbsent: [ ^nil ] ) ) ').
    (recoveredValue16) cr.
    recoveredValue18 := (self) selectorName.
    recoveredValue19 := recoveredLocal1.
    recoveredValue20 := (recoveredValue19) contents.
    recoveredValue21 := recoveredLocal2.
    recoveredValue22 := recoveredLocal2.
    recoveredValue23 := (recoveredValue22) getDefinedApplication.
    (self) generateMethod: (recoveredValue18) source: (recoveredValue20) for: (recoveredValue21) in: (recoveredValue23).
    ^self
! !

"ASDBase.ic method 0x203defac; bytecode file offset 0xcdb8b0"
!AMLStructedTypes methodsFor: 'recovered'!
generateClassAccessMethod: recoveredArg1 definition: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 |
    recoveredValue0 := Smalltalk.
    recoveredValue1 := (self) generateClassName.
    recoveredValue2 := [
    | recoveredBlock8Value0 |
    recoveredBlock8Value0 := (self) etasDevHalt.
    recoveredBlock8Value0
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    recoveredLocal3 := recoveredValue3.
    recoveredValue4 := WriteStream.
    recoveredValue5 := (recoveredValue4) on: ('').
    recoveredLocal2 := recoveredValue5.
    recoveredValue6 := recoveredLocal2.
    recoveredValue7 := recoveredValue6.
    recoveredValue8 := recoveredArg2.
    recoveredValue9 := (recoveredValue8) selectorName.
    recoveredValue10 := recoveredValue9.
    recoveredLocal1 := recoveredValue10.
    (recoveredValue7) nextPutAll: (recoveredValue9).
    recoveredValue11 := recoveredValue6.
    (recoveredValue11) cr.
    (recoveredValue6) nextPutAll: ('">> ').
    recoveredValue12 := (self) pathName.
    recoveredValue13 := recoveredLocal2.
    (recoveredValue12) printOn: (recoveredValue13).
    recoveredValue14 := recoveredLocal2.
    recoveredValue15 := recoveredValue14.
    (recoveredValue15) nextPutAll: (' <<"').
    recoveredValue16 := recoveredValue14.
    (recoveredValue16) cr.
    recoveredValue17 := recoveredValue14.
    (recoveredValue17) nextPutAll: ('^( ').
    recoveredValue18 := recoveredArg2.
    recoveredValue19 := (recoveredValue18) generateClassName.
    (recoveredValue14) nextPutAll: (recoveredValue19).
    recoveredValue20 := recoveredArg1.
    recoveredValue21 := recoveredLocal2.
    (self) localAccessCode: (recoveredValue20) on: (recoveredValue21).
    recoveredValue22 := recoveredLocal1.
    recoveredValue23 := recoveredLocal2.
    recoveredValue24 := (recoveredValue23) contents.
    recoveredValue25 := recoveredLocal3.
    recoveredValue26 := recoveredLocal3.
    recoveredValue27 := (recoveredValue26) getDefinedApplication.
    (self) generateMethod: (recoveredValue22) source: (recoveredValue24) for: (recoveredValue25) in: (recoveredValue27) categorizeIn: ('internal').
    ^self
! !

"ASDBase.ic method 0x20464cdc; bytecode file offset 0xd615f4"
!AMLStructedTypes methodsFor: 'recovered'!
generateClassAccessMethodStruct: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
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
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := name.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := 'ep_parameters'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 25] ifFalse: [recoveredPC := 22].
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
            recoveredPC := 118.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := Smalltalk.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) parent.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) generateClassName.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock34Value0 |
    recoveredBlock34Value0 := (self) etasDevHalt.
    recoveredBlock34Value0
].
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := WriteStream.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := (recoveredStack3) selectorName.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := '">> '.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) pathName.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack1) printOn: (recoveredStack2).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack3 := ' <<"'.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack2) cr.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack3 := '^( '.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := (recoveredStack2) generateClassName.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack1) localAccessCode: (recoveredStack2) on: (recoveredStack3).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack2 := ' ) '.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack3 := (recoveredStack3) contents.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack5 := recoveredLocal3.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack5 := (recoveredStack5) getDefinedApplication.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack6 := 'complexArgument'.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack1) generateMethod: (recoveredStack2) source: (recoveredStack3) for: (recoveredStack4) in: (recoveredStack5) categorizeIn: (recoveredStack6).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204a54fc; bytecode file offset 0xda1e24"
!AMLStructedTypes methodsFor: 'recovered'!
generateClassAccessMethodTaggedStruct: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
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
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := name.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := 'ep_parameters'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 25] ifFalse: [recoveredPC := 22].
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
            recoveredPC := 138.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := Smalltalk.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) parent.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) generateClassName.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock34Value0 |
    recoveredBlock34Value0 := (self) etasDevHalt.
    recoveredBlock34Value0
].
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := WriteStream.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack4 := (recoveredStack4) parent.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack4 := (recoveredStack4) localName.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack3 := (recoveredStack3) selectorName: (recoveredStack4).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := '">> '.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) pathName.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack1) printOn: (recoveredStack2).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack3 := ' <<"'.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack2) cr.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack3 := '^( '.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := (recoveredStack2) generateClassName.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := ' createFor: ( '.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack3 := (recoveredStack3) parent.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack3 := (recoveredStack3) getAccessCode.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack3 := (recoveredStack3) localPartsAccessCode: (recoveredStack4).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack3 := ' ) ) '.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack3 := (recoveredStack3) contents.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack5 := recoveredLocal3.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack5 := (recoveredStack5) getDefinedApplication.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack6 := 'complexArgument'.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack1) generateMethod: (recoveredStack2) source: (recoveredStack3) for: (recoveredStack4) in: (recoveredStack5) categorizeIn: (recoveredStack6).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205dea54; bytecode file offset 0xedb36c"
!AMLStructedTypes methodsFor: 'recovered'!
getValueFrom: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) checkPartsAndKeywords.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasKeyWords.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 266].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 192.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 126] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := parts.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := [:recoveredBlock33Arg1 | 
    | recoveredBlock33Stack0 recoveredBlock33Stack1 recoveredBlock33Stack2 recoveredBlock33PC recoveredBlock33Step recoveredBlock33Done recoveredBlock33Result |
    recoveredBlock33Stack0 := self.
    recoveredBlock33PC := 40.
    recoveredBlock33Done := false.
    [recoveredBlock33Done not] whileTrue: [
        recoveredBlock33Step := recoveredBlock33PC.
        recoveredBlock33Step = 40 ifTrue: [
            recoveredBlock33Stack0 := (recoveredBlock33Stack0) keyWords.
            recoveredBlock33PC := 41.
        ].
        recoveredBlock33Step = 41 ifTrue: [
            recoveredBlock33Stack1 := recoveredBlock33Arg1.
            recoveredBlock33PC := 42.
        ].
        recoveredBlock33Step = 42 ifTrue: [
            recoveredBlock33Stack1 := (recoveredBlock33Stack1) name.
            recoveredBlock33PC := 44.
        ].
        recoveredBlock33Step = 44 ifTrue: [
            recoveredBlock33Stack0 := (recoveredBlock33Stack0) includesKey: (recoveredBlock33Stack1).
            recoveredBlock33PC := 46.
        ].
        recoveredBlock33Step = 46 ifTrue: [
            (recoveredBlock33Stack0) ifTrue: [recoveredBlock33PC := 50] ifFalse: [recoveredBlock33PC := 78].
        ].
        recoveredBlock33Step = 50 ifTrue: [
            recoveredBlock33Stack0 := self.
            recoveredBlock33PC := 51.
        ].
        recoveredBlock33Step = 51 ifTrue: [
            (recoveredBlock33Stack0) etasDevHalt.
            recoveredBlock33PC := 53.
        ].
        recoveredBlock33Step = 53 ifTrue: [
            recoveredBlock33Stack0 := self.
            recoveredBlock33PC := 54.
        ].
        recoveredBlock33Step = 54 ifTrue: [
            recoveredBlock33Stack0 := (recoveredBlock33Stack0) keyWords.
            recoveredBlock33PC := 55.
        ].
        recoveredBlock33Step = 55 ifTrue: [
            recoveredBlock33Stack1 := recoveredLocal4.
            recoveredBlock33PC := 58.
        ].
        recoveredBlock33Step = 58 ifTrue: [
            recoveredBlock33Stack0 := (recoveredBlock33Stack0) includesKey: (recoveredBlock33Stack1).
            recoveredBlock33PC := 60.
        ].
        recoveredBlock33Step = 60 ifTrue: [
            (recoveredBlock33Stack0) ifTrue: [recoveredBlock33PC := 74] ifFalse: [recoveredBlock33PC := 64].
        ].
        recoveredBlock33Step = 64 ifTrue: [
            recoveredBlock33Stack0 := recoveredArg1.
            recoveredBlock33PC := 67.
        ].
        recoveredBlock33Step = 67 ifTrue: [
            recoveredBlock33Stack1 := recoveredLocal1.
            recoveredBlock33PC := 70.
        ].
        recoveredBlock33Step = 70 ifTrue: [
            (recoveredBlock33Stack0) position: (recoveredBlock33Stack1).
            recoveredBlock33PC := 72.
        ].
        recoveredBlock33Step = 72 ifTrue: [
            recoveredBlock33Stack0 := self.
            recoveredBlock33PC := 73.
        ].
        recoveredBlock33Step = 73 ifTrue: [
            ^recoveredBlock33Stack0
        ].
        recoveredBlock33Step = 74 ifTrue: [
            recoveredBlock33PC := 110.
        ].
        recoveredBlock33Step = 78 ifTrue: [
            recoveredBlock33Stack0 := recoveredArg1.
            recoveredBlock33PC := 81.
        ].
        recoveredBlock33Step = 81 ifTrue: [
            recoveredBlock33Stack1 := recoveredLocal1.
            recoveredBlock33PC := 84.
        ].
        recoveredBlock33Step = 84 ifTrue: [
            (recoveredBlock33Stack0) position: (recoveredBlock33Stack1).
            recoveredBlock33PC := 86.
        ].
        recoveredBlock33Step = 86 ifTrue: [
            recoveredBlock33Stack0 := recoveredBlock33Arg1.
            recoveredBlock33PC := 87.
        ].
        recoveredBlock33Step = 87 ifTrue: [
            recoveredBlock33Stack0 := (recoveredBlock33Stack0) hasKeyWords.
            recoveredBlock33PC := 88.
        ].
        recoveredBlock33Step = 88 ifTrue: [
            (recoveredBlock33Stack0) ifTrue: [recoveredBlock33PC := 92] ifFalse: [recoveredBlock33PC := 104].
        ].
        recoveredBlock33Step = 92 ifTrue: [
            recoveredBlock33Stack0 := recoveredBlock33Arg1.
            recoveredBlock33PC := 93.
        ].
        recoveredBlock33Step = 93 ifTrue: [
            recoveredBlock33Stack0 := (recoveredBlock33Stack0) keyWords.
            recoveredBlock33PC := 94.
        ].
        recoveredBlock33Step = 94 ifTrue: [
            recoveredBlock33Stack1 := name.
            recoveredBlock33PC := 96.
        ].
        recoveredBlock33Step = 96 ifTrue: [
            recoveredBlock33Stack0 := (recoveredBlock33Stack0) includes: (recoveredBlock33Stack1).
            recoveredBlock33PC := 98.
        ].
        recoveredBlock33Step = 98 ifTrue: [
            (recoveredBlock33Stack0) ifTrue: [recoveredBlock33PC := 104] ifFalse: [recoveredBlock33PC := 102].
        ].
        recoveredBlock33Step = 102 ifTrue: [
            recoveredBlock33Stack0 := self.
            recoveredBlock33PC := 103.
        ].
        recoveredBlock33Step = 103 ifTrue: [
            ^recoveredBlock33Stack0
        ].
        recoveredBlock33Step = 104 ifTrue: [
            recoveredBlock33Stack0 := recoveredBlock33Arg1.
            recoveredBlock33PC := 105.
        ].
        recoveredBlock33Step = 105 ifTrue: [
            recoveredBlock33Stack1 := recoveredArg1.
            recoveredBlock33PC := 108.
        ].
        recoveredBlock33Step = 108 ifTrue: [
            (recoveredBlock33Stack0) getValueFrom: (recoveredBlock33Stack1).
            recoveredBlock33PC := 110.
        ].
        recoveredBlock33Step = 110 ifTrue: [
            recoveredBlock33Stack0 := recoveredLocal2.
            recoveredBlock33PC := 113.
        ].
        recoveredBlock33Step = 113 ifTrue: [
            recoveredBlock33Stack0 := (recoveredBlock33Stack0) + (1).
            recoveredBlock33PC := 114.
        ].
        recoveredBlock33Step = 114 ifTrue: [
            recoveredBlock33Stack1 := recoveredBlock33Stack0.
            recoveredBlock33PC := 115.
        ].
        recoveredBlock33Step = 115 ifTrue: [
            recoveredLocal2 := recoveredBlock33Stack1.
            recoveredBlock33PC := 118.
        ].
        recoveredBlock33Step = 118 ifTrue: [
            recoveredBlock33Result := recoveredBlock33Stack0.
            recoveredBlock33Done := true.
        ].
    ].
    recoveredBlock33Result
].
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2) ifPresent: (recoveredStack3).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredPC := 169.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSymbol.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 134] ifFalse: [recoveredPC := 146].
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            (recoveredStack0) perform: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredPC := 169.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := (recoveredStack1) BlockDepth.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            (recoveredStack0) setStartingDepth: (recoveredStack1).
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            (recoveredStack0) getValueFrom: (recoveredStack1).
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack1 := 'end:'.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 178] ifFalse: [recoveredPC := 180].
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack1 := 'shortEnd:'.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 190] ifFalse: [recoveredPC := 192].
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack0 := (recoveredStack0) position.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack0 := startingDepth.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack1 := (recoveredStack1) BlockDepth.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 216] ifFalse: [recoveredPC := 218].
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack0 := keyWords.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack1 := (recoveredStack1) nextWordBySeparators.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack0 := startingDepth.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack1 := (recoveredStack1) BlockDepth.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 246] ifFalse: [recoveredPC := 246].
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 262] ifFalse: [recoveredPC := 252].
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack1 := (recoveredStack1) maxPartSize.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack0 := (recoveredStack0) <= (recoveredStack1).
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 262].
        ].
        recoveredStep = 262 ifTrue: [
            recoveredPC := 331.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack0 := parts.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack1 := [:recoveredBlock268Arg1 | 
    | recoveredBlock268Value0 recoveredBlock268Value1 recoveredBlock268Value2 |
    recoveredBlock268Value0 := recoveredBlock268Arg1.
    recoveredBlock268Value1 := recoveredArg1.
    recoveredBlock268Value2 := (recoveredBlock268Value0) getValueFrom: (recoveredBlock268Value1).
    recoveredBlock268Value2
].
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack0 := parent.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasBegin.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 290] ifFalse: [recoveredPC := 331].
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack0 := startingDepth.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack1 := (recoveredStack1) BlockDepth.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 300] ifFalse: [recoveredPC := 331].
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack0 := keyWords.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack1 := (recoveredStack1) nextWordBySeparators.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack1 := 'end:'.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 331] ifFalse: [recoveredPC := 328].
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            (recoveredStack0) etasDevHalt.
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            recoveredStack1 := 'end:'.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 340] ifFalse: [recoveredPC := 352].
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            (recoveredStack0) perform: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredPC := 369.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 369] ifFalse: [recoveredPC := 358].
        ].
        recoveredStep = 358 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            (recoveredStack0) backup: (recoveredStack1).
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

