"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2002b754; bytecode file offset 0x934580"
!AbtXmlMappingSpec methodsFor: 'recovered'!
isEmpty
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) mappings.
    recoveredValue1 := (recoveredValue0) isEmpty.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20066924; bytecode file offset 0x963428"
!AbtXmlMappingSpec methodsFor: 'recovered'!
name
    | recoveredValue0 |
    recoveredValue0 := name.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200677c4; bytecode file offset 0x9646f8"
!AbtXmlMappingSpec methodsFor: 'recovered'!
nameSpaceURI
    | recoveredValue0 |
    recoveredValue0 := nameSpaceURI.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200687cc; bytecode file offset 0x965b90"
!AbtXmlMappingSpec methodsFor: 'recovered'!
mappings
    | recoveredValue0 |
    recoveredValue0 := mappings.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20097614; bytecode file offset 0x995850"
!AbtXmlMappingSpec methodsFor: 'recovered'!
do: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) mappings.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200996e8; bytecode file offset 0x995fe4"
!AbtXmlMappingSpec methodsFor: 'recovered'!
mappingForElement: recoveredArg1 nameSpaceURI: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) allMappingsForElement: (recoveredValue0) nameSpaceURI: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) firstMapping.
    ^recoveredValue3
! !

"ASDBase.ic method 0x2009c568; bytecode file offset 0x998e50"
!AbtXmlMappingSpec methodsFor: 'recovered'!
addToXmlObjectCache
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := AbtXmlObjectCache.
    recoveredValue1 := (recoveredValue0) current.
    (recoveredValue1) addMappingSpec: (self).
    ^self
! !

"ASDBase.ic method 0x2009ccf0; bytecode file offset 0x999628"
!AbtXmlMappingSpec methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    (self) mappings: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200b8034; bytecode file offset 0x9b4908"
!AbtXmlMappingSpec methodsFor: 'recovered'!
addToXmlObjectCacheWithName: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := AbtXmlObjectCache.
    recoveredValue1 := (recoveredValue0) current.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) addMappingSpec: (self) named: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200be704; bytecode file offset 0x9bb178"
!AbtXmlMappingSpec methodsFor: 'recovered'!
name: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    name := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200becc8; bytecode file offset 0x9bc0b4"
!AbtXmlMappingSpec methodsFor: 'recovered'!
nameSpaceURI: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    nameSpaceURI := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bff34; bytecode file offset 0x9bd228"
!AbtXmlMappingSpec methodsFor: 'recovered'!
mappings: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    mappings := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200e9330; bytecode file offset 0x9e5bf0"
!AbtXmlMappingSpec methodsFor: 'recovered'!
addMapping: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) mappingSpec: (self).
    recoveredValue1 := (self) mappings.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) add: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2012ece4; bytecode file offset 0xa2b5f4"
!AbtXmlMappingSpec methodsFor: 'recovered'!
firstMapping
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) mappings.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) mappings.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201daf20; bytecode file offset 0xad780c"
!AbtXmlMappingSpec methodsFor: 'recovered'!
allMappingsForElement: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := AbtXmlMappingSpec.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := (self) mappings.
    recoveredValue3 := [:recoveredBlock9Arg1 | 
    | recoveredBlock9Value0 recoveredBlock9Value1 recoveredBlock9Value2 recoveredBlock9Value3 |
    recoveredBlock9Value0 := recoveredBlock9Arg1.
    recoveredBlock9Value1 := (recoveredBlock9Value0) elementTagName.
    recoveredBlock9Value2 := recoveredArg1.
    recoveredBlock9Value3 := (recoveredBlock9Value1) = (recoveredBlock9Value2).
    recoveredBlock9Value3
].
    recoveredValue4 := (recoveredValue2) select: (recoveredValue3).
    recoveredValue5 := (recoveredValue1) mappings: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x201daf40; bytecode file offset 0xad780c"
!AbtXmlMappingSpec methodsFor: 'recovered'!
allMappingsForClassNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := AbtXmlMappingSpec.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := (self) mappings.
    recoveredValue3 := [:recoveredBlock9Arg1 | 
    | recoveredBlock9Value0 recoveredBlock9Value1 recoveredBlock9Value2 recoveredBlock9Value3 |
    recoveredBlock9Value0 := recoveredBlock9Arg1.
    recoveredBlock9Value1 := (recoveredBlock9Value0) className.
    recoveredBlock9Value2 := recoveredArg1.
    recoveredBlock9Value3 := (recoveredBlock9Value1) = (recoveredBlock9Value2).
    recoveredBlock9Value3
].
    recoveredValue4 := (recoveredValue2) select: (recoveredValue3).
    recoveredValue5 := (recoveredValue1) mappings: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x201daf7c; bytecode file offset 0xad7848"
!AbtXmlMappingSpec methodsFor: 'recovered'!
allMappingsForClass: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := AbtXmlMappingSpec.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := (self) mappings.
    recoveredValue3 := [:recoveredBlock9Arg1 | 
    | recoveredBlock9Value0 recoveredBlock9Value1 recoveredBlock9Value2 recoveredBlock9Value3 |
    recoveredBlock9Value0 := recoveredBlock9Arg1.
    recoveredBlock9Value1 := (recoveredBlock9Value0) smalltalkClass.
    recoveredBlock9Value2 := recoveredArg1.
    recoveredBlock9Value3 := (recoveredBlock9Value1) == (recoveredBlock9Value2).
    recoveredBlock9Value3
].
    recoveredValue4 := (recoveredValue2) select: (recoveredValue3).
    recoveredValue5 := (recoveredValue1) mappings: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x202f60bc; bytecode file offset 0xbf298c"
!AbtXmlMappingSpec methodsFor: 'recovered'!
allMappingsForElement: recoveredArg1 nameSpaceURI: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := AbtXmlMappingSpec.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := (self) mappings.
    recoveredValue3 := [:recoveredBlock9Arg1 | 
    | recoveredBlock9Local1 recoveredBlock9Stack0 recoveredBlock9Stack1 recoveredBlock9Stack2 recoveredBlock9Stack3 recoveredBlock9PC recoveredBlock9Step recoveredBlock9Done recoveredBlock9Result |
    recoveredBlock9Stack0 := self.
    recoveredBlock9PC := 16.
    recoveredBlock9Done := false.
    [recoveredBlock9Done not] whileTrue: [
        recoveredBlock9Step := recoveredBlock9PC.
        recoveredBlock9Step = 16 ifTrue: [
            recoveredBlock9Stack1 := recoveredBlock9Arg1.
            recoveredBlock9PC := 17.
        ].
        recoveredBlock9Step = 17 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) xmlName.
            recoveredBlock9PC := 18.
        ].
        recoveredBlock9Step = 18 ifTrue: [
            recoveredBlock9Stack2 := recoveredBlock9Stack1.
            recoveredBlock9PC := 19.
        ].
        recoveredBlock9Step = 19 ifTrue: [
            recoveredBlock9Local1 := recoveredBlock9Stack2.
            recoveredBlock9PC := 20.
        ].
        recoveredBlock9Step = 20 ifTrue: [
            recoveredBlock9Stack2 := recoveredArg1.
            recoveredBlock9PC := 23.
        ].
        recoveredBlock9Step = 23 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) = (recoveredBlock9Stack2).
            recoveredBlock9PC := 24.
        ].
        recoveredBlock9Step = 24 ifTrue: [
            (recoveredBlock9Stack1) ifTrue: [recoveredBlock9PC := 28] ifFalse: [recoveredBlock9PC := 46].
        ].
        recoveredBlock9Step = 28 ifTrue: [
            recoveredBlock9Stack1 := true.
            recoveredBlock9PC := 29.
        ].
        recoveredBlock9Step = 29 ifTrue: [
            recoveredBlock9Stack2 := recoveredArg2.
            recoveredBlock9PC := 32.
        ].
        recoveredBlock9Step = 32 ifTrue: [
            (recoveredBlock9Stack2 == nil) ifTrue: [recoveredBlock9PC := 43] ifFalse: [recoveredBlock9PC := 36].
        ].
        recoveredBlock9Step = 36 ifTrue: [
            recoveredBlock9PC := 37.
        ].
        recoveredBlock9Step = 37 ifTrue: [
            recoveredBlock9Stack1 := recoveredBlock9Arg1.
            recoveredBlock9PC := 38.
        ].
        recoveredBlock9Step = 38 ifTrue: [
            recoveredBlock9Stack2 := recoveredArg2.
            recoveredBlock9PC := 41.
        ].
        recoveredBlock9Step = 41 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) isNamespaceCompatibleWith: (recoveredBlock9Stack2).
            recoveredBlock9PC := 43.
        ].
        recoveredBlock9Step = 43 ifTrue: [
            recoveredBlock9PC := 47.
        ].
        recoveredBlock9Step = 46 ifTrue: [
            recoveredBlock9Stack1 := false.
            recoveredBlock9PC := 47.
        ].
        recoveredBlock9Step = 47 ifTrue: [
            recoveredBlock9Result := recoveredBlock9Stack1.
            recoveredBlock9Done := true.
        ].
    ].
    recoveredBlock9Result
].
    recoveredValue4 := (recoveredValue2) select: (recoveredValue3).
    recoveredValue5 := (recoveredValue1) mappings: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x2043cf38; bytecode file offset 0xd39808"
!AbtXmlMappingSpec methodsFor: 'recovered'!
mappingForElement: recoveredArg1 nameSpaceURI: recoveredArg2 parentId: recoveredArg3
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
            recoveredStack2 := recoveredArg2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) allMappingsForElement: (recoveredStack1) nameSpaceURI: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) mappings.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := [:recoveredBlock27Arg1 | 
    | recoveredBlock27Value0 recoveredBlock27Value1 recoveredBlock27Value2 recoveredBlock27Value3 |
    recoveredBlock27Value0 := recoveredBlock27Arg1.
    recoveredBlock27Value1 := (recoveredBlock27Value0) parentId.
    recoveredBlock27Value2 := recoveredArg3.
    recoveredBlock27Value3 := (recoveredBlock27Value1) = (recoveredBlock27Value2).
    recoveredBlock27Value3
].
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock41Value0 recoveredBlock41Value1 |
    recoveredBlock41Value0 := recoveredLocal2.
    recoveredBlock41Value1 := (recoveredBlock41Value0) first.
    recoveredBlock41Value1
].
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredPC := 107.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 106].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) parentId.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := (recoveredStack0) parentId.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 102].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredPC := 103.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredPC := 107.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

