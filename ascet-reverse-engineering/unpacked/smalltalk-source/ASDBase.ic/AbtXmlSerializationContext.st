"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20028394; bytecode file offset 0x934580"
!AbtXmlSerializationContext methodsFor: 'recovered'!
schema
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) configuration.
    recoveredValue1 := (recoveredValue0) schema.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20030074; bytecode file offset 0x934580"
!AbtXmlSerializationContext methodsFor: 'recovered'!
popNamespaceContext
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) namespaceSupport.
    recoveredValue1 := (recoveredValue0) popContext.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20031a14; bytecode file offset 0x934580"
!AbtXmlSerializationContext methodsFor: 'recovered'!
formattingEnabled
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) configuration.
    recoveredValue1 := (recoveredValue0) formattingEnabled.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20031d74; bytecode file offset 0x934580"
!AbtXmlSerializationContext methodsFor: 'recovered'!
objectCache
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) configuration.
    recoveredValue1 := (recoveredValue0) objectCache.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200342b4; bytecode file offset 0x934580"
!AbtXmlSerializationContext methodsFor: 'recovered'!
mappingSpec
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) configuration.
    recoveredValue1 := (recoveredValue0) mappingSpec.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20037564; bytecode file offset 0x934580"
!AbtXmlSerializationContext methodsFor: 'recovered'!
dtd
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) configuration.
    recoveredValue1 := (recoveredValue0) dtd.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200589b8; bytecode file offset 0x956284"
!AbtXmlSerializationContext methodsFor: 'recovered'!
prefixForURI: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) namespaceSupport.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) prefixForURI: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20063ef4; bytecode file offset 0x961970"
!AbtXmlSerializationContext methodsFor: 'recovered'!
pushNamespaceContext
    | recoveredValue0 |
    recoveredValue0 := (self) namespaceSupport.
    (recoveredValue0) pushContext.
    ^self
! !

"ASDBase.ic method 0x200676fc; bytecode file offset 0x9646f8"
!AbtXmlSerializationContext methodsFor: 'recovered'!
configuration
    | recoveredValue0 |
    recoveredValue0 := configuration.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006860c; bytecode file offset 0x965b90"
!AbtXmlSerializationContext methodsFor: 'recovered'!
namespaceSupport
    | recoveredValue0 |
    recoveredValue0 := namespaceSupport.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069988; bytecode file offset 0x966bdc"
!AbtXmlSerializationContext methodsFor: 'recovered'!
primSerializer
    | recoveredValue0 |
    recoveredValue0 := serializer.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006aedc; bytecode file offset 0x967a18"
!AbtXmlSerializationContext methodsFor: 'recovered'!
currentElement
    | recoveredValue0 |
    recoveredValue0 := currentElement.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006bcf8; bytecode file offset 0x96873c"
!AbtXmlSerializationContext methodsFor: 'recovered'!
currentElementName
    | recoveredValue0 |
    recoveredValue0 := currentElementName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006c8bc; bytecode file offset 0x9692b0"
!AbtXmlSerializationContext methodsFor: 'recovered'!
currentMapping
    | recoveredValue0 |
    recoveredValue0 := currentMapping.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20094578; bytecode file offset 0x991174"
!AbtXmlSerializationContext methodsFor: 'recovered'!
shareWithSubElements: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) addProperty: (recoveredValue0) named: ('shareWithSubElements').
    ^recoveredValue1
! !

"ASDBase.ic method 0x20094768; bytecode file offset 0x991174"
!AbtXmlSerializationContext methodsFor: 'recovered'!
printedRoot: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) addProperty: (recoveredValue0) named: ('printedRoot').
    ^recoveredValue1
! !

"ASDBase.ic method 0x20097684; bytecode file offset 0x995850"
!AbtXmlSerializationContext methodsFor: 'recovered'!
pushNamespaceContextFor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) namespaceSupport.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) pushContextFor: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20097b44; bytecode file offset 0x995850"
!AbtXmlSerializationContext methodsFor: 'recovered'!
pushNamespaceContext: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) namespaceSupport.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) pushContext: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200983c4; bytecode file offset 0x995850"
!AbtXmlSerializationContext methodsFor: 'recovered'!
declareUniquePrefixFor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) namespaceSupport.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) declareUniquePrefixFor: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200ae348; bytecode file offset 0x9ab034"
!AbtXmlSerializationContext methodsFor: 'recovered'!
declarePrefix: recoveredArg1 uri: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) namespaceSupport.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (recoveredValue0) declarePrefix: (recoveredValue1) uri: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200be988; bytecode file offset 0x9bc0b4"
!AbtXmlSerializationContext methodsFor: 'recovered'!
configuration: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    configuration := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c05e4; bytecode file offset 0x9bd228"
!AbtXmlSerializationContext methodsFor: 'recovered'!
namespaceSupport: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    namespaceSupport := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c0c18; bytecode file offset 0x9bdf14"
!AbtXmlSerializationContext methodsFor: 'recovered'!
serializer: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    serializer := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1ef4; bytecode file offset 0x9beac8"
!AbtXmlSerializationContext methodsFor: 'recovered'!
currentElement: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    currentElement := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2880; bytecode file offset 0x9bf474"
!AbtXmlSerializationContext methodsFor: 'recovered'!
currentElementName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    currentElementName := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2ca4; bytecode file offset 0x9bfde0"
!AbtXmlSerializationContext methodsFor: 'recovered'!
currentMapping: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    currentMapping := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c37b8; bytecode file offset 0x9c058c"
!AbtXmlSerializationContext methodsFor: 'recovered'!
printTypes: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    printTypes := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200f7ac4; bytecode file offset 0x9f4e38"
!AbtXmlSerializationContext methodsFor: 'recovered'!
currentMappingSpec
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentMapping.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c4e24Arg1 | 
    | block280c4e24Value0 block280c4e24Value1 |
    block280c4e24Value0 := block280c4e24Arg1.
    block280c4e24Value1 := (block280c4e24Value0) mappingSpec.
    block280c4e24Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2010094c; bytecode file offset 0x9fd20c"
!AbtXmlSerializationContext methodsFor: 'recovered'!
pushNamespaceContextFor: recoveredArg1 while: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) pushNamespaceContextFor: (recoveredValue0).
    recoveredValue1 := recoveredArg2.
    (recoveredValue1) value.
    (self) popNamespaceContext.
    ^self
! !

"ASDBase.ic method 0x2010bac0; bytecode file offset 0xa085f0"
!AbtXmlSerializationContext methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    recoveredValue0 := AbtXmlSaxNamespaceSupport.
    recoveredValue1 := (recoveredValue0) new.
    (self) namespaceSupport: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20117790; bytecode file offset 0xa1408c"
!AbtXmlSerializationContext methodsFor: 'recovered'!
printedRoot
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'printedRoot'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [
    false
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) propertyNamed: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201177f4; bytecode file offset 0xa140b4"
!AbtXmlSerializationContext methodsFor: 'recovered'!
shareWithSubElements
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'shareWithSubElements'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [
    true
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) propertyNamed: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2011bb14; bytecode file offset 0xa183f0"
!AbtXmlSerializationContext methodsFor: 'recovered'!
serializer
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) primSerializer.
    recoveredValue1 := [
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := (self) configuration.
    recoveredBlock5Value1 := (recoveredBlock5Value0) serializer.
    recoveredBlock5Value1
].
    recoveredValue2 := (recoveredValue0) ifNil: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2012a574; bytecode file offset 0xa26e30"
!AbtXmlSerializationContext methodsFor: 'recovered'!
smalltalkMappingSpec
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := smalltalkMappingSpec.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) configuration.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) smalltalkMappingSpec.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            smalltalkMappingSpec := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := smalltalkMappingSpec.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2013b2f8; bytecode file offset 0xa37bb4"
!AbtXmlSerializationContext methodsFor: 'recovered'!
printTypes
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := printTypes.
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
            recoveredStack1 := (recoveredStack1) configuration.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) printTypes.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := printTypes.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2014b4fc; bytecode file offset 0xa47dd0"
!AbtXmlSerializationContext methodsFor: 'recovered'!
executePrintBlock: recoveredArg1 printTypes: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) printTypes.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredArg2.
    (self) printTypes: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (recoveredValue2) value.
    recoveredValue3 := recoveredLocal1.
    (self) printTypes: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2014d68c; bytecode file offset 0xa49f4c"
!AbtXmlSerializationContext methodsFor: 'recovered'!
schemaInstanceUri
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := schemaInstanceUri.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := AbtXmlSchema.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) defaultInstanceNamespace.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) compatibleUriFor: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            schemaInstanceUri := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := schemaInstanceUri.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2014d74c; bytecode file offset 0xa4a00c"
!AbtXmlSerializationContext methodsFor: 'recovered'!
schemaUri
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := schemaUri.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := AbtXmlSchema.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) defaultNamespace.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) compatibleUriFor: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            schemaUri := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := schemaUri.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2017bb5c; bytecode file offset 0xa78418"
!AbtXmlSerializationContext methodsFor: 'recovered'!
compatibleUriFor: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := AbtXmlUtility.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) compatibleUriFor: (recoveredStack2) inObject: (recoveredStack3).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20273cf4; bytecode file offset 0xb705c4"
!AbtXmlSerializationContext methodsFor: 'recovered'!
printCurrentNamespaceContextOn: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) printedRoot.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := AbtXmlUtility.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) namespaceSupport.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) rootContext.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) printNamespaces: (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) printedRoot: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) namespaceSupport.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentContext.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0 == recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := AbtXmlUtility.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) printNamespaces: (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20307f74; bytecode file offset 0xc04858"
!AbtXmlSerializationContext methodsFor: 'recovered'!
initializeFrom: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) configuration: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) serializer.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) serializer: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) namespaceSupport.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) createContextFor: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) pushNamespaceContext.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 36.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) pushNamespaceContext: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) primSerializer.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := [:recoveredBlock39Arg1 | 
    | recoveredBlock39Value0 recoveredBlock39Value1 |
    recoveredBlock39Value0 := recoveredBlock39Arg1.
    recoveredBlock39Value1 := (recoveredBlock39Value0) initializeContext: (self).
    recoveredBlock39Value1
].
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

