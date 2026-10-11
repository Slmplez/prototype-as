"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20006884; bytecode file offset 0x908be4"
!AbtClassElementMapping methodsFor: 'recovered'!
abrAsClass
    | recoveredValue0 |
    recoveredValue0 := (self) smalltalkClass.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20007df0; bytecode file offset 0x908be4"
!AbtClassElementMapping methodsFor: 'recovered'!
elementTagName
    | recoveredValue0 |
    recoveredValue0 := (self) xmlName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001dd50; bytecode file offset 0x92209c"
!AbtClassElementMapping methodsFor: 'recovered'!
xmlId
    ^'ElementTagName'
! !

"ASDBase.ic method 0x20065a74; bytecode file offset 0x963428"
!AbtClassElementMapping methodsFor: 'recovered'!
xmlName
    | recoveredValue0 |
    recoveredValue0 := xmlName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20067cd4; bytecode file offset 0x9646f8"
!AbtClassElementMapping methodsFor: 'recovered'!
creationMethod
    | recoveredValue0 |
    recoveredValue0 := creationMethod.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20068804; bytecode file offset 0x965b90"
!AbtClassElementMapping methodsFor: 'recovered'!
className
    | recoveredValue0 |
    recoveredValue0 := className.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069560; bytecode file offset 0x966bdc"
!AbtClassElementMapping methodsFor: 'recovered'!
attributeMappings
    | recoveredValue0 |
    recoveredValue0 := attrMaps.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006ac0c; bytecode file offset 0x967a18"
!AbtClassElementMapping methodsFor: 'recovered'!
mappingSpec
    | recoveredValue0 |
    recoveredValue0 := mappingSpec.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006b8b0; bytecode file offset 0x96873c"
!AbtClassElementMapping methodsFor: 'recovered'!
primNameSpaceURI
    | recoveredValue0 |
    recoveredValue0 := nameSpaceURI.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d118; bytecode file offset 0x969c04"
!AbtClassElementMapping methodsFor: 'recovered'!
parentId
    | recoveredValue0 |
    recoveredValue0 := parentId.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006e24c; bytecode file offset 0x96af48"
!AbtClassElementMapping methodsFor: 'recovered'!
symbolTable
    | recoveredValue0 |
    recoveredValue0 := symbolTable.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200838d0; bytecode file offset 0x980230"
!AbtClassElementMapping methodsFor: 'recovered'!
attributeMappingNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) attributeMappingNamed: (recoveredValue0) nameSpaceURI: (nil).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20084348; bytecode file offset 0x981ca4"
!AbtClassElementMapping methodsFor: 'recovered'!
elementTagName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) xmlName: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200884e4; bytecode file offset 0x985628"
!AbtClassElementMapping methodsFor: 'recovered'!
elementLocalName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := AbtXmlUtility.
    recoveredValue1 := (self) elementTagName.
    recoveredValue2 := (recoveredValue0) localNameFor: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20094e0c; bytecode file offset 0x991c58"
!AbtClassElementMapping methodsFor: 'recovered'!
getSelectorFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) nameSpaceURI.
    recoveredValue2 := (self) getSelectorFor: (recoveredValue0) nameSpaceURI: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200bdb44; bytecode file offset 0x9bb178"
!AbtClassElementMapping methodsFor: 'recovered'!
xmlName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    xmlName := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bed50; bytecode file offset 0x9bc0b4"
!AbtClassElementMapping methodsFor: 'recovered'!
creationMethod: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    creationMethod := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c0974; bytecode file offset 0x9bd228"
!AbtClassElementMapping methodsFor: 'recovered'!
className: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    className := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1a9c; bytecode file offset 0x9beac8"
!AbtClassElementMapping methodsFor: 'recovered'!
mappingSpec: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    mappingSpec := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c24e8; bytecode file offset 0x9bf474"
!AbtClassElementMapping methodsFor: 'recovered'!
nameSpaceURI: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    nameSpaceURI := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c327c; bytecode file offset 0x9bfde0"
!AbtClassElementMapping methodsFor: 'recovered'!
id: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    id := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3bb8; bytecode file offset 0x9c058c"
!AbtClassElementMapping methodsFor: 'recovered'!
parentId: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    parentId := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4428; bytecode file offset 0x9c11bc"
!AbtClassElementMapping methodsFor: 'recovered'!
smalltalkClass: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    smalltalkClass := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200e92a0; bytecode file offset 0x9e5b5c"
!AbtClassElementMapping methodsFor: 'recovered'!
addAttributeMapping: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) classElementMapping: (self).
    recoveredValue1 := attrMaps.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) add: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200f0178; bytecode file offset 0x9eca38"
!AbtClassElementMapping methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    attrMaps := recoveredValue1.
    recoveredValue2 := LookupTable.
    recoveredValue3 := (recoveredValue2) new.
    symbolTable := recoveredValue3.
    ^self
! !

"ASDBase.ic method 0x2012c9e4; bytecode file offset 0xa292ac"
!AbtClassElementMapping methodsFor: 'recovered'!
wildCardAttribute
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributeMappings.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c9c9cArg1 | 
    | block280c9c9cValue0 block280c9c9cValue1 |
    block280c9c9cValue0 := block280c9c9cArg1.
    block280c9c9cValue1 := (block280c9c9cValue0) isWildCard.
    block280c9c9cValue1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201371b4; bytecode file offset 0xa33b30"
!AbtClassElementMapping methodsFor: 'recovered'!
parentNameSpaceURI
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) mappingSpec.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) nameSpaceURI.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2013b0d8; bytecode file offset 0xa37990"
!AbtClassElementMapping methodsFor: 'recovered'!
nameSpaceURI
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := nameSpaceURI.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) parentNameSpaceURI.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := nameSpaceURI.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2013b1a4; bytecode file offset 0xa37a5c"
!AbtClassElementMapping methodsFor: 'recovered'!
id
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := id.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) elementTagName.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := id.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2018484c; bytecode file offset 0xa81128"
!AbtClassElementMapping methodsFor: 'recovered'!
isNamespaceCompatibleWith: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) nameSpaceURI.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := '*'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := AbtXmlUtility.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) nameSpaceURI.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) isUriCompatible: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201c7860; bytecode file offset 0xac4124"
!AbtClassElementMapping methodsFor: 'recovered'!
smalltalkClass
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := smalltalkClass.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) className.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := [:block280d4850Arg1 | 
    | block280d4850Value0 block280d4850Value1 |
    block280d4850Value0 := block280d4850Arg1.
    block280d4850Value1 := (block280d4850Value0) abrAsClass.
    block280d4850Value1
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            smalltalkClass := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := smalltalkClass.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201d96b8; bytecode file offset 0xad5f90"
!AbtClassElementMapping methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) name.
    recoveredValue3 := (recoveredValue2) , ('(').
    recoveredValue4 := (self) className.
    recoveredValue5 := (recoveredValue3) , (recoveredValue4).
    recoveredValue6 := (recoveredValue5) , (' -> ').
    recoveredValue7 := (self) elementTagName.
    recoveredValue8 := (recoveredValue6) , (recoveredValue7).
    recoveredValue9 := (recoveredValue8) , (')').
    recoveredValue10 := (recoveredValue0) nextPutAll: (recoveredValue9).
    ^recoveredValue10
! !

"ASDBase.ic method 0x201db8e4; bytecode file offset 0xad81a8"
!AbtClassElementMapping methodsFor: 'recovered'!
subElementAttributeMappingsForElementNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) attributeMappings.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := false.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) isSubElementAttribute.
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 18] ifFalse: [recoveredBlock5PC := 25].
        ].
        recoveredBlock5Step = 18 ifTrue: [
            recoveredBlock5PC := 19.
        ].
        recoveredBlock5Step = 19 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 20.
        ].
        recoveredBlock5Step = 20 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) subElement.
            recoveredBlock5PC := 21.
        ].
        recoveredBlock5Step = 21 ifTrue: [
            recoveredBlock5Stack2 := recoveredArg1.
            recoveredBlock5PC := 24.
        ].
        recoveredBlock5Step = 24 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) = (recoveredBlock5Stack2).
            recoveredBlock5PC := 25.
        ].
        recoveredBlock5Step = 25 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    recoveredValue2 := (recoveredValue0) select: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x201f22c4; bytecode file offset 0xaeeb8c"
!AbtClassElementMapping methodsFor: 'recovered'!
newTargetInstance
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) smalltalkClass.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) creationMethod.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            (recoveredBlock5Stack0 ~~ nil) ifTrue: [recoveredBlock5PC := 22] ifFalse: [recoveredBlock5PC := 16].
        ].
        recoveredBlock5Step = 16 ifTrue: [
            recoveredBlock5Stack0 := recoveredBlock5Arg1.
            recoveredBlock5PC := 17.
        ].
        recoveredBlock5Step = 17 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) new.
            recoveredBlock5PC := 18.
        ].
        recoveredBlock5Step = 18 ifTrue: [
            recoveredBlock5PC := 26.
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5Stack0 := recoveredBlock5Arg1.
            recoveredBlock5PC := 23.
        ].
        recoveredBlock5Step = 23 ifTrue: [
            recoveredBlock5Stack1 := self.
            recoveredBlock5PC := 24.
        ].
        recoveredBlock5Step = 24 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) creationMethod.
            recoveredBlock5PC := 25.
        ].
        recoveredBlock5Step = 25 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) perform: (recoveredBlock5Stack1).
            recoveredBlock5PC := 26.
        ].
        recoveredBlock5Step = 26 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack0.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    recoveredValue2 := (recoveredValue0) ifNotNil: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x202903a8; bytecode file offset 0xb8cc74"
!AbtClassElementMapping methodsFor: 'recovered'!
subElementAttributeMappingNamed: recoveredArg1 forElementNamed: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) attributeMappings.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := false.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) isSubElementAttribute.
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 18] ifFalse: [recoveredBlock5PC := 37].
        ].
        recoveredBlock5Step = 18 ifTrue: [
            recoveredBlock5PC := 19.
        ].
        recoveredBlock5Step = 19 ifTrue: [
            recoveredBlock5Stack1 := false.
            recoveredBlock5PC := 20.
        ].
        recoveredBlock5Step = 20 ifTrue: [
            recoveredBlock5Stack2 := recoveredArg1.
            recoveredBlock5PC := 23.
        ].
        recoveredBlock5Step = 23 ifTrue: [
            recoveredBlock5Stack3 := recoveredBlock5Arg1.
            recoveredBlock5PC := 24.
        ].
        recoveredBlock5Step = 24 ifTrue: [
            recoveredBlock5Stack3 := (recoveredBlock5Stack3) attribute.
            recoveredBlock5PC := 25.
        ].
        recoveredBlock5Step = 25 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) = (recoveredBlock5Stack3).
            recoveredBlock5PC := 26.
        ].
        recoveredBlock5Step = 26 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 30] ifFalse: [recoveredBlock5PC := 37].
        ].
        recoveredBlock5Step = 30 ifTrue: [
            recoveredBlock5PC := 31.
        ].
        recoveredBlock5Step = 31 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 32.
        ].
        recoveredBlock5Step = 32 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) subElement.
            recoveredBlock5PC := 33.
        ].
        recoveredBlock5Step = 33 ifTrue: [
            recoveredBlock5Stack2 := recoveredArg2.
            recoveredBlock5PC := 36.
        ].
        recoveredBlock5Step = 36 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) = (recoveredBlock5Stack2).
            recoveredBlock5PC := 37.
        ].
        recoveredBlock5Step = 37 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) detect: (recoveredValue1) ifNone: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x202caf90; bytecode file offset 0xbc7858"
!AbtClassElementMapping methodsFor: 'recovered'!
getSelectorFor: recoveredArg1 nameSpaceURI: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            recoveredStack0 := (recoveredStack0) attributeMappingNamed: (recoveredStack1) nameSpaceURI: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) symbolTable.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock25Value0 recoveredBlock25Value1 |
    recoveredBlock25Value0 := recoveredArg1.
    recoveredBlock25Value1 := (recoveredBlock25Value0) asSymbol.
    recoveredBlock25Value1
].
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredPC := 47.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) getSelector.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203b150c; bytecode file offset 0xcaddd8"
!AbtClassElementMapping methodsFor: 'recovered'!
attributeMappingNamed: recoveredArg1 nameSpaceURI: recoveredArg2
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
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributeMappings.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := [:recoveredBlock13Arg1 | 
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
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) isSubElementAttribute.
            recoveredBlock13PC := 23.
        ].
        recoveredBlock13Step = 23 ifTrue: [
            (recoveredBlock13Stack2) ifTrue: [recoveredBlock13PC := 72] ifFalse: [recoveredBlock13PC := 26].
        ].
        recoveredBlock13Step = 26 ifTrue: [
            recoveredBlock13PC := 27.
        ].
        recoveredBlock13Step = 27 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 28.
        ].
        recoveredBlock13Step = 28 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) localName.
            recoveredBlock13PC := 29.
        ].
        recoveredBlock13Step = 29 ifTrue: [
            recoveredBlock13Stack2 := recoveredArg1.
            recoveredBlock13PC := 32.
        ].
        recoveredBlock13Step = 32 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) = (recoveredBlock13Stack2).
            recoveredBlock13PC := 33.
        ].
        recoveredBlock13Step = 33 ifTrue: [
            (recoveredBlock13Stack1) ifTrue: [recoveredBlock13PC := 36] ifFalse: [recoveredBlock13PC := 58].
        ].
        recoveredBlock13Step = 36 ifTrue: [
            recoveredBlock13Stack1 := nil.
            recoveredBlock13PC := 37.
        ].
        recoveredBlock13Step = 37 ifTrue: [
            recoveredBlock13Stack2 := recoveredArg2.
            recoveredBlock13PC := 40.
        ].
        recoveredBlock13Step = 40 ifTrue: [
            (recoveredBlock13Stack2 == nil) ifTrue: [recoveredBlock13PC := 52] ifFalse: [recoveredBlock13PC := 44].
        ].
        recoveredBlock13Step = 44 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 45.
        ].
        recoveredBlock13Step = 45 ifTrue: [
            recoveredBlock13Stack3 := recoveredArg2.
            recoveredBlock13PC := 48.
        ].
        recoveredBlock13Step = 48 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) isNamespaceCompatibleWith: (recoveredBlock13Stack3).
            recoveredBlock13PC := 49.
        ].
        recoveredBlock13Step = 49 ifTrue: [
            (recoveredBlock13Stack2) ifTrue: [recoveredBlock13PC := 52] ifFalse: [recoveredBlock13PC := 55].
        ].
        recoveredBlock13Step = 52 ifTrue: [
            recoveredBlock13PC := 53.
        ].
        recoveredBlock13Step = 53 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 54.
        ].
        recoveredBlock13Step = 54 ifTrue: [
            ^recoveredBlock13Stack1
        ].
        recoveredBlock13Step = 55 ifTrue: [
            recoveredBlock13PC := 72.
        ].
        recoveredBlock13Step = 58 ifTrue: [
            recoveredBlock13Stack1 := nil.
            recoveredBlock13PC := 59.
        ].
        recoveredBlock13Step = 59 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 60.
        ].
        recoveredBlock13Step = 60 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) isWildCard.
            recoveredBlock13PC := 62.
        ].
        recoveredBlock13Step = 62 ifTrue: [
            (recoveredBlock13Stack2) ifTrue: [recoveredBlock13PC := 66] ifFalse: [recoveredBlock13PC := 72].
        ].
        recoveredBlock13Step = 66 ifTrue: [
            recoveredBlock13PC := 67.
        ].
        recoveredBlock13Step = 67 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 68.
        ].
        recoveredBlock13Step = 68 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Stack1.
            recoveredBlock13PC := 69.
        ].
        recoveredBlock13Step = 69 ifTrue: [
            recoveredLocal1 := recoveredBlock13Stack2.
            recoveredBlock13PC := 72.
        ].
        recoveredBlock13Step = 72 ifTrue: [
            recoveredBlock13Result := recoveredBlock13Stack1.
            recoveredBlock13Done := true.
        ].
    ].
    recoveredBlock13Result
].
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203c1ccc; bytecode file offset 0xcbe5a8"
!AbtClassElementMapping methodsFor: 'recovered'!
subElementAttributeMappingsFor: recoveredArg1 nameSpaceURI: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributeMappings.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := [:recoveredBlock21Arg1 | 
    | recoveredBlock21Stack0 recoveredBlock21Stack1 recoveredBlock21Stack2 recoveredBlock21Stack3 recoveredBlock21Stack4 recoveredBlock21PC recoveredBlock21Step recoveredBlock21Done recoveredBlock21Result |
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
            recoveredBlock21Stack2 := recoveredBlock21Arg1.
            recoveredBlock21PC := 30.
        ].
        recoveredBlock21Step = 30 ifTrue: [
            recoveredBlock21Stack2 := (recoveredBlock21Stack2) isSubElementAttribute.
            recoveredBlock21PC := 31.
        ].
        recoveredBlock21Step = 31 ifTrue: [
            (recoveredBlock21Stack2) ifTrue: [recoveredBlock21PC := 34] ifFalse: [recoveredBlock21PC := 75].
        ].
        recoveredBlock21Step = 34 ifTrue: [
            recoveredBlock21PC := 35.
        ].
        recoveredBlock21Step = 35 ifTrue: [
            recoveredBlock21Stack1 := nil.
            recoveredBlock21PC := 36.
        ].
        recoveredBlock21Step = 36 ifTrue: [
            recoveredBlock21Stack2 := recoveredArg2.
            recoveredBlock21PC := 39.
        ].
        recoveredBlock21Step = 39 ifTrue: [
            (recoveredBlock21Stack2 == nil) ifTrue: [recoveredBlock21PC := 52] ifFalse: [recoveredBlock21PC := 42].
        ].
        recoveredBlock21Step = 42 ifTrue: [
            recoveredBlock21Stack2 := recoveredBlock21Arg1.
            recoveredBlock21PC := 43.
        ].
        recoveredBlock21Step = 43 ifTrue: [
            recoveredBlock21Stack3 := recoveredArg2.
            recoveredBlock21PC := 46.
        ].
        recoveredBlock21Step = 46 ifTrue: [
            recoveredBlock21Stack2 := (recoveredBlock21Stack2) isNamespaceCompatibleWith: (recoveredBlock21Stack3).
            recoveredBlock21PC := 48.
        ].
        recoveredBlock21Step = 48 ifTrue: [
            (recoveredBlock21Stack2) ifTrue: [recoveredBlock21PC := 52] ifFalse: [recoveredBlock21PC := 75].
        ].
        recoveredBlock21Step = 52 ifTrue: [
            recoveredBlock21PC := 53.
        ].
        recoveredBlock21Step = 53 ifTrue: [
            recoveredBlock21Stack1 := nil.
            recoveredBlock21PC := 54.
        ].
        recoveredBlock21Step = 54 ifTrue: [
            recoveredBlock21Stack2 := AbtXmlUtility.
            recoveredBlock21PC := 56.
        ].
        recoveredBlock21Step = 56 ifTrue: [
            recoveredBlock21Stack3 := recoveredBlock21Arg1.
            recoveredBlock21PC := 57.
        ].
        recoveredBlock21Step = 57 ifTrue: [
            recoveredBlock21Stack3 := (recoveredBlock21Stack3) subElement.
            recoveredBlock21PC := 59.
        ].
        recoveredBlock21Step = 59 ifTrue: [
            recoveredBlock21Stack2 := (recoveredBlock21Stack2) localNameFor: (recoveredBlock21Stack3).
            recoveredBlock21PC := 61.
        ].
        recoveredBlock21Step = 61 ifTrue: [
            recoveredBlock21Stack3 := recoveredArg1.
            recoveredBlock21PC := 64.
        ].
        recoveredBlock21Step = 64 ifTrue: [
            recoveredBlock21Stack2 := (recoveredBlock21Stack2) = (recoveredBlock21Stack3).
            recoveredBlock21PC := 65.
        ].
        recoveredBlock21Step = 65 ifTrue: [
            (recoveredBlock21Stack2) ifTrue: [recoveredBlock21PC := 68] ifFalse: [recoveredBlock21PC := 75].
        ].
        recoveredBlock21Step = 68 ifTrue: [
            recoveredBlock21PC := 69.
        ].
        recoveredBlock21Step = 69 ifTrue: [
            recoveredBlock21Stack1 := recoveredLocal1.
            recoveredBlock21PC := 72.
        ].
        recoveredBlock21Step = 72 ifTrue: [
            recoveredBlock21Stack2 := recoveredBlock21Arg1.
            recoveredBlock21PC := 73.
        ].
        recoveredBlock21Step = 73 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) add: (recoveredBlock21Stack2).
            recoveredBlock21PC := 75.
        ].
        recoveredBlock21Step = 75 ifTrue: [
            recoveredBlock21Result := recoveredBlock21Stack1.
            recoveredBlock21Done := true.
        ].
    ].
    recoveredBlock21Result
].
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 78.
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

"ASDBase.ic method 0x203eec28; bytecode file offset 0xceb530"
!AbtClassElementMapping methodsFor: 'recovered'!
initializeFromDOMElement: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) xmlId.
    recoveredValue2 := (recoveredValue0) getAttribute: (recoveredValue1).
    (self) xmlName: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) getAttribute: ('ClassName').
    (self) className: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) getAttribute: ('NameSpaceURI').
    (self) nameSpaceURI: (recoveredValue6).
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue7) getAttribute: ('ParentId').
    (self) parentId: (recoveredValue8).
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := (recoveredValue9) getAttribute: ('Id').
    (self) id: (recoveredValue10).
    recoveredValue11 := recoveredArg1.
    recoveredValue12 := (recoveredValue11) getAttribute: ('CreationMethod').
    recoveredValue13 := [:recoveredBlock42Arg1 | 
    | recoveredBlock42Value0 recoveredBlock42Value1 recoveredBlock42Value2 recoveredBlock42Value3 |
    recoveredBlock42Value0 := recoveredBlock42Arg1.
    recoveredBlock42Value1 := (recoveredBlock42Value0) asSBString.
    recoveredBlock42Value2 := [:recoveredBlock42Block51Arg1 | 
    | recoveredBlock42Block51Value0 recoveredBlock42Block51Value1 recoveredBlock42Block51Value2 |
    recoveredBlock42Block51Value0 := recoveredBlock42Block51Arg1.
    recoveredBlock42Block51Value1 := (recoveredBlock42Block51Value0) asSymbol.
    recoveredBlock42Block51Value2 := (self) creationMethod: (recoveredBlock42Block51Value1).
    recoveredBlock42Block51Value2
].
    recoveredBlock42Value3 := (recoveredBlock42Value1) ifNotNil: (recoveredBlock42Value2).
    recoveredBlock42Value3
].
    (recoveredValue12) ifNotNil: (recoveredValue13).
    recoveredValue14 := recoveredArg1.
    recoveredValue15 := (recoveredValue14) childNodes.
    recoveredValue16 := [:recoveredBlock72Arg1 | 
    | recoveredBlock72Value0 recoveredBlock72Value1 recoveredBlock72Value2 recoveredBlock72Value3 |
    recoveredBlock72Value0 := AbtAttributeMapping.
    recoveredBlock72Value1 := recoveredBlock72Arg1.
    recoveredBlock72Value2 := (recoveredBlock72Value0) fromDOMElement: (recoveredBlock72Value1) in: (self).
    recoveredBlock72Value3 := (self) addAttributeMapping: (recoveredBlock72Value2).
    recoveredBlock72Value3
].
    (recoveredValue15) do: (recoveredValue16).
    ^self
! !

"ASDBase.ic method 0x203f5e7c; bytecode file offset 0xcf2774"
!AbtClassElementMapping methodsFor: 'recovered'!
mapElement: recoveredArg1 toObject: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) attributeMappings.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5Stack5 recoveredBlock5Stack6 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := recoveredArg2.
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 16.
        ].
        recoveredBlock5Step = 16 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) classAttribute.
            recoveredBlock5PC := 17.
        ].
        recoveredBlock5Step = 17 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) asSymbol.
            recoveredBlock5PC := 18.
        ].
        recoveredBlock5Step = 18 ifTrue: [
            recoveredBlock5Stack3 := [].
            recoveredBlock5PC := 20.
        ].
        recoveredBlock5Step = 20 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) abtAttributeSpecificationAt: (recoveredBlock5Stack2) ifAbsent: (recoveredBlock5Stack3).
            recoveredBlock5PC := 22.
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Stack1.
            recoveredBlock5PC := 23.
        ].
        recoveredBlock5Step = 23 ifTrue: [
            recoveredLocal2 := recoveredBlock5Stack2.
            recoveredBlock5PC := 26.
        ].
        recoveredBlock5Step = 26 ifTrue: [
            (recoveredBlock5Stack1 ~~ nil) ifTrue: [recoveredBlock5PC := 64] ifFalse: [recoveredBlock5PC := 30].
        ].
        recoveredBlock5Step = 30 ifTrue: [
            recoveredBlock5Stack1 := AbtXmlMappingError.
            recoveredBlock5PC := 32.
        ].
        recoveredBlock5Step = 32 ifTrue: [
            recoveredBlock5Stack2 := 'AttributeNotDefined'.
            recoveredBlock5PC := 34.
        ].
        recoveredBlock5Step = 34 ifTrue: [
            recoveredBlock5Stack3 := 'The attribute %1 does not exist in class %2'.
            recoveredBlock5PC := 36.
        ].
        recoveredBlock5Step = 36 ifTrue: [
            recoveredBlock5Stack4 := recoveredBlock5Arg1.
            recoveredBlock5PC := 37.
        ].
        recoveredBlock5Step = 37 ifTrue: [
            recoveredBlock5Stack4 := (recoveredBlock5Stack4) classAttribute.
            recoveredBlock5PC := 38.
        ].
        recoveredBlock5Step = 38 ifTrue: [
            recoveredBlock5Stack5 := recoveredArg2.
            recoveredBlock5PC := 41.
        ].
        recoveredBlock5Step = 41 ifTrue: [
            recoveredBlock5Stack5 := (recoveredBlock5Stack5) class.
            recoveredBlock5PC := 43.
        ].
        recoveredBlock5Step = 43 ifTrue: [
            recoveredBlock5Stack5 := (recoveredBlock5Stack5) name.
            recoveredBlock5PC := 45.
        ].
        recoveredBlock5Step = 45 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) code: (recoveredBlock5Stack2) text: (recoveredBlock5Stack3) with: (recoveredBlock5Stack4) with: (recoveredBlock5Stack5).
            recoveredBlock5PC := 48.
        ].
        recoveredBlock5Step = 48 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Stack1.
            recoveredBlock5PC := 49.
        ].
        recoveredBlock5Step = 49 ifTrue: [
            recoveredBlock5Stack3 := recoveredArg1.
            recoveredBlock5PC := 52.
        ].
        recoveredBlock5Step = 52 ifTrue: [
            (recoveredBlock5Stack2) domElement: (recoveredBlock5Stack3).
            recoveredBlock5Stack2 := recoveredBlock5Stack1.
            recoveredBlock5PC := 55.
        ].
        recoveredBlock5Step = 55 ifTrue: [
            recoveredBlock5Stack3 := self.
            recoveredBlock5PC := 56.
        ].
        recoveredBlock5Step = 56 ifTrue: [
            (recoveredBlock5Stack2) mapping: (recoveredBlock5Stack3).
            recoveredBlock5PC := 58.
        ].
        recoveredBlock5Step = 58 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) signalExceptionIfEnabled.
            recoveredBlock5PC := 60.
        ].
        recoveredBlock5Step = 60 ifTrue: [
            recoveredBlock5PC := 87.
        ].
        recoveredBlock5Step = 64 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 65.
        ].
        recoveredBlock5Step = 65 ifTrue: [
            recoveredBlock5Stack2 := recoveredArg1.
            recoveredBlock5PC := 68.
        ].
        recoveredBlock5Step = 68 ifTrue: [
            recoveredBlock5Stack3 := recoveredLocal2.
            recoveredBlock5PC := 71.
        ].
        recoveredBlock5Step = 71 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) getDataFor: (recoveredBlock5Stack2) usingAttributeSpec: (recoveredBlock5Stack3).
            recoveredBlock5PC := 73.
        ].
        recoveredBlock5Step = 73 ifTrue: [
            recoveredLocal1 := recoveredBlock5Stack1.
            recoveredBlock5PC := 76.
        ].
        recoveredBlock5Step = 76 ifTrue: [
            recoveredBlock5Stack1 := recoveredLocal2.
            recoveredBlock5PC := 79.
        ].
        recoveredBlock5Step = 79 ifTrue: [
            recoveredBlock5Stack2 := recoveredArg2.
            recoveredBlock5PC := 82.
        ].
        recoveredBlock5Step = 82 ifTrue: [
            recoveredBlock5Stack3 := recoveredLocal1.
            recoveredBlock5PC := 85.
        ].
        recoveredBlock5Step = 85 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) setValueIn: (recoveredBlock5Stack2) to: (recoveredBlock5Stack3).
            recoveredBlock5PC := 87.
        ].
        recoveredBlock5Step = 87 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

