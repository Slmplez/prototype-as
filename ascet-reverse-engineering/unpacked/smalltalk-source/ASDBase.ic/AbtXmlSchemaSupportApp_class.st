"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20002570; bytecode file offset 0x8ffcfc"
!AbtXmlSchemaSupportApp class methodsFor: 'recovered'!
_PRAGMA_AbtXmlSchemaConstants
    ^self
! !

"ASDBase.ic method 0x20020edc; bytecode file offset 0x92209c"
!AbtXmlSchemaSupportApp class methodsFor: 'recovered'!
packagerIncludeClassNames
    ^#('AbtBase64Coder')
! !

"ASDBase.ic method 0x200955a8; bytecode file offset 0x991fb4"
!AbtXmlSchemaSupportApp class methodsFor: 'recovered'!
packagingRulesFor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) symbol.
    (recoveredValue0) doNotReduceSubApplicationNamed: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2014c954; bytecode file offset 0xa49220"
!AbtXmlSchemaSupportApp class methodsFor: 'recovered'!
loaded
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) imageStarted.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) startUp.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            AbtXmlSchemaDefaultAttributes := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201812f8; bytecode file offset 0xa7dbc8"
!AbtXmlSchemaSupportApp class methodsFor: 'recovered'!
removeAliasesFromCache
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) aliasCollection.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280d01b8Arg1 | 
    | block280d01b8Value0 block280d01b8Value1 block280d01b8Value2 block280d01b8Value3 block280d01b8Value4 |
    block280d01b8Value0 := AbtXmlObjectCache.
    block280d01b8Value1 := (block280d01b8Value0) current.
    block280d01b8Value2 := block280d01b8Arg1.
    block280d01b8Value3 := (block280d01b8Value2) key.
    block280d01b8Value4 := (block280d01b8Value1) removeAlias: (block280d01b8Value3).
    block280d01b8Value4
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201ae1f4; bytecode file offset 0xaaaacc"
!AbtXmlSchemaSupportApp class methodsFor: 'recovered'!
startUp
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := AbtXmlObjectCache.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) current.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := AbtXmlSchema.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) defaultNamespace.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) schemaNamed: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := AbtXmlSchemaTypeFactory.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) default.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) initializeBaseSchema.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) addAliasesToCache.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201b0010; bytecode file offset 0xaac8e4"
!AbtXmlSchemaSupportApp class methodsFor: 'recovered'!
addAliasesToCache
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) aliasCollection.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280d3de8Arg1 | 
    | block280d3de8Value0 block280d3de8Value1 block280d3de8Value2 block280d3de8Value3 block280d3de8Value4 block280d3de8Value5 block280d3de8Value6 |
    block280d3de8Value0 := AbtXmlObjectCache.
    block280d3de8Value1 := (block280d3de8Value0) current.
    block280d3de8Value2 := block280d3de8Arg1.
    block280d3de8Value3 := (block280d3de8Value2) key.
    block280d3de8Value4 := block280d3de8Arg1.
    block280d3de8Value5 := (block280d3de8Value4) value.
    block280d3de8Value6 := (block280d3de8Value1) addAlias: (block280d3de8Value3) forName: (block280d3de8Value5).
    block280d3de8Value6
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201fcfe8; bytecode file offset 0xaf98c8"
!AbtXmlSchemaSupportApp class methodsFor: 'recovered'!
removing
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := AbtXmlSchemaTypeFactory.
    (recoveredValue0) reset.
    recoveredValue1 := AbtXmlObjectCache.
    recoveredValue2 := (recoveredValue1) current.
    recoveredValue3 := LookupTable.
    recoveredValue4 := (recoveredValue3) new.
    (recoveredValue2) schemas: (recoveredValue4).
    recoveredValue5 := AbtXmlSchemaConstrainingFacet.
    (recoveredValue5) reset.
    recoveredValue6 := AbtXmlObjectCache.
    recoveredValue7 := (recoveredValue6) current.
    recoveredValue8 := AbtXmlSchema.
    recoveredValue9 := (recoveredValue8) defaultNamespace.
    (recoveredValue7) removeMappingSpecNamed: (recoveredValue9).
    ^self
! !

"ASDBase.ic method 0x20319218; bytecode file offset 0xc15afc"
!AbtXmlSchemaSupportApp class methodsFor: 'recovered'!
aliasCollection
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 |
    recoveredValue0 := AbtXmlSchema.
    recoveredValue1 := (recoveredValue0) defaultNamespace.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredValue4.
    recoveredValue6 := Association.
    recoveredValue7 := AbtXmlSchema.
    recoveredValue8 := (recoveredValue7) defaultInstanceNamespace.
    recoveredValue9 := (recoveredValue6) key: ('http://www.w3.org/1999/XMLSchema-instance') value: (recoveredValue8).
    (recoveredValue5) add: (recoveredValue9).
    recoveredValue10 := recoveredValue4.
    recoveredValue11 := Association.
    recoveredValue12 := recoveredLocal2.
    recoveredValue13 := (recoveredValue11) key: ('http://www.w3.org/1999/XMLSchema') value: (recoveredValue12).
    (recoveredValue10) add: (recoveredValue13).
    recoveredValue14 := recoveredValue4.
    recoveredValue15 := Association.
    recoveredValue16 := recoveredLocal2.
    recoveredValue17 := (recoveredValue15) key: ('http://www.w3.org/2000/08/XMLSchema') value: (recoveredValue16).
    (recoveredValue14) add: (recoveredValue17).
    recoveredValue18 := Association.
    recoveredValue19 := recoveredLocal2.
    recoveredValue20 := (recoveredValue18) key: ('http://www.w3.org/2000/10/XMLSchema') value: (recoveredValue19).
    (recoveredValue4) add: (recoveredValue20).
    recoveredValue21 := recoveredLocal1.
    ^recoveredValue21
! !

