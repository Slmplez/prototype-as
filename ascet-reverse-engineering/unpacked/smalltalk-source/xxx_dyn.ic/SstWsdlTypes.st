"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x200019ec; bytecode file offset 0x62c08"
!SstWsdlTypes methodsFor: 'recovered'!
schemas
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) primSchemas.
    recoveredValue1 := (recoveredValue0) values.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20004138; bytecode file offset 0x65264"
!SstWsdlTypes methodsFor: 'recovered'!
primSchemas
    | recoveredValue0 |
    recoveredValue0 := schemas.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20007350; bytecode file offset 0x6843c"
!SstWsdlTypes methodsFor: 'recovered'!
schemaAt: recoveredArg1 put: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) primSchemas.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (recoveredValue0) at: (recoveredValue1) put: (recoveredValue2).
    ^self
! !

"xxx_dyn.ic method 0x200086a8; bytecode file offset 0x6978c"
!SstWsdlTypes methodsFor: 'recovered'!
schemas: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    schemas := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x2000ab20; bytecode file offset 0x6bc84"
!SstWsdlTypes methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    recoveredValue0 := EsOrderedDictionary.
    recoveredValue1 := (recoveredValue0) new.
    (self) schemas: (recoveredValue1).
    ^self
! !

"xxx_dyn.ic method 0x2000c0bc; bytecode file offset 0x6d190"
!SstWsdlTypes methodsFor: 'recovered'!
schema
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) primSchemas.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
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
            recoveredStack0 := (recoveredStack0) schemas.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
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

"xxx_dyn.ic method 0x2000d8b8; bytecode file offset 0x6e9a4"
!SstWsdlTypes methodsFor: 'recovered'!
declarationNamed: recoveredArg1 inNamespace: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) schemaAt: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) declarationNamed: (recoveredStack1) inNamespace: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x2000d8c8; bytecode file offset 0x6e9a4"
!SstWsdlTypes methodsFor: 'recovered'!
typeNamed: recoveredArg1 inNamespace: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) schemaAt: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) typeNamed: (recoveredStack1) inNamespace: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x2000d8d8; bytecode file offset 0x6e9a4"
!SstWsdlTypes methodsFor: 'recovered'!
elementNamed: recoveredArg1 inNamespace: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) schemaAt: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) elementNamed: (recoveredStack1) inNamespace: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x20010a28; bytecode file offset 0x71b00"
!SstWsdlTypes methodsFor: 'recovered'!
schemaAt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) primSchemas.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 |
    recoveredBlock8Value0 := AbtXmlObjectCache.
    recoveredBlock8Value1 := (recoveredBlock8Value0) current.
    recoveredBlock8Value2 := recoveredArg1.
    recoveredBlock8Value3 := (recoveredBlock8Value1) schemaNamed: (recoveredBlock8Value2).
    recoveredBlock8Value3
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x20010d50; bytecode file offset 0x71e24"
!SstWsdlTypes methodsFor: 'recovered'!
addSchema: recoveredArg1
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
            (recoveredStack1) parent: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) targetNamespace.
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
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) namespace.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) schemaAt: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x2001566c; bytecode file offset 0x76744"
!SstWsdlTypes methodsFor: 'recovered'!
printSubElementsOn: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) schemas.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) allNamespaceMappings.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) schemas.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Value0 recoveredBlock17Value1 recoveredBlock17Value2 |
    recoveredBlock17Value0 := recoveredBlock17Arg1.
    recoveredBlock17Value1 := recoveredArg1.
    recoveredBlock17Value2 := (recoveredBlock17Value0) abtXmlPrintOn: (recoveredBlock17Value1).
    recoveredBlock17Value2
].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
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

"xxx_dyn.ic method 0x200159ec; bytecode file offset 0x76af0"
!SstWsdlTypes methodsFor: 'recovered'!
getSchemaDefinitionUri
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) schemas.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 recoveredBlock5Value6 |
    recoveredBlock5Value0 := AbtXmlUtility.
    recoveredBlock5Value1 := AbtXmlSchema.
    recoveredBlock5Value2 := (recoveredBlock5Value1) defaultNamespace.
    recoveredBlock5Value3 := recoveredBlock5Arg1.
    recoveredBlock5Value4 := (recoveredBlock5Value0) compatibleUriFor: (recoveredBlock5Value2) inObject: (recoveredBlock5Value3).
    recoveredBlock5Value5 := [:recoveredBlock5Block20Arg1 | 
    | recoveredBlock5Block20Value0 |
    recoveredBlock5Block20Value0 := recoveredBlock5Block20Arg1.
    ^recoveredBlock5Block20Value0
].
    recoveredBlock5Value6 := (recoveredBlock5Value4) ifNotNil: (recoveredBlock5Value5).
    recoveredBlock5Value6
].
    (recoveredValue0) do: (recoveredValue1).
    ^nil
! !

"xxx_dyn.ic method 0x20015a10; bytecode file offset 0x76af0"
!SstWsdlTypes methodsFor: 'recovered'!
getSchemaInstanceUri
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) schemas.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 recoveredBlock5Value6 |
    recoveredBlock5Value0 := AbtXmlUtility.
    recoveredBlock5Value1 := AbtXmlSchema.
    recoveredBlock5Value2 := (recoveredBlock5Value1) defaultInstanceNamespace.
    recoveredBlock5Value3 := recoveredBlock5Arg1.
    recoveredBlock5Value4 := (recoveredBlock5Value0) compatibleUriFor: (recoveredBlock5Value2) inObject: (recoveredBlock5Value3).
    recoveredBlock5Value5 := [:recoveredBlock5Block20Arg1 | 
    | recoveredBlock5Block20Value0 |
    recoveredBlock5Block20Value0 := recoveredBlock5Block20Arg1.
    ^recoveredBlock5Block20Value0
].
    recoveredBlock5Value6 := (recoveredBlock5Value4) ifNotNil: (recoveredBlock5Value5).
    recoveredBlock5Value6
].
    (recoveredValue0) do: (recoveredValue1).
    ^nil
! !

"xxx_dyn.ic method 0x20016d34; bytecode file offset 0x77e08"
!SstWsdlTypes methodsFor: 'recovered'!
addSchemas: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) abtIsSequenceableCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 |
    recoveredBlock11Value0 := recoveredBlock11Arg1.
    (self) addSchema: (recoveredBlock11Value0).
    recoveredBlock11Value1 := (self) addImportedSchemas.
    recoveredBlock11Value1
].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 37.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) addSchema: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) addImportedSchemas.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x20025d40; bytecode file offset 0x86e24"
!SstWsdlTypes methodsFor: 'recovered'!
addImportedSchemas
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) definedBy.
    recoveredValue1 := (recoveredValue0) namespaceMappings.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := SstWsdlDefinitions.
    recoveredValue3 := (recoveredValue2) schemaCache.
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := recoveredLocal2.
    recoveredValue5 := [:recoveredBlock18Arg1 :recoveredBlock18Arg2 | 
    | recoveredBlock18Local1 recoveredBlock18Stack0 recoveredBlock18Stack1 recoveredBlock18Stack2 recoveredBlock18Stack3 recoveredBlock18PC recoveredBlock18Step recoveredBlock18Done recoveredBlock18Result |
    recoveredBlock18Stack0 := self.
    recoveredBlock18PC := 24.
    recoveredBlock18Done := false.
    [recoveredBlock18Done not] whileTrue: [
        recoveredBlock18Step := recoveredBlock18PC.
        recoveredBlock18Step = 24 ifTrue: [
            recoveredBlock18Stack1 := recoveredBlock18Arg2.
            recoveredBlock18PC := 27.
        ].
        recoveredBlock18Step = 27 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) namespaceMappings.
            recoveredBlock18PC := 28.
        ].
        recoveredBlock18Step = 28 ifTrue: [
            recoveredBlock18Stack2 := recoveredBlock18Stack1.
            recoveredBlock18PC := 29.
        ].
        recoveredBlock18Step = 29 ifTrue: [
            recoveredBlock18Local1 := recoveredBlock18Stack2.
            recoveredBlock18PC := 32.
        ].
        recoveredBlock18Step = 32 ifTrue: [
            (recoveredBlock18Stack1 == nil) ifTrue: [recoveredBlock18PC := 67] ifFalse: [recoveredBlock18PC := 36].
        ].
        recoveredBlock18Step = 36 ifTrue: [
            recoveredBlock18Stack1 := recoveredBlock18Local1.
            recoveredBlock18PC := 39.
        ].
        recoveredBlock18Step = 39 ifTrue: [
            recoveredBlock18Stack2 := [:recoveredBlock18Block39Arg1 :recoveredBlock18Block39Arg2 | 
    | recoveredBlock18Block39Value0 recoveredBlock18Block39Value1 recoveredBlock18Block39Value2 recoveredBlock18Block39Value3 |
    recoveredBlock18Block39Value0 := recoveredLocal1.
    recoveredBlock18Block39Value1 := recoveredBlock18Block39Arg1.
    recoveredBlock18Block39Value2 := [
    | recoveredBlock18Block39Block52Value0 |
    recoveredBlock18Block39Block52Value0 := recoveredBlock18Block39Arg2.
    recoveredBlock18Block39Block52Value0
].
    recoveredBlock18Block39Value3 := (recoveredBlock18Block39Value0) at: (recoveredBlock18Block39Value1) ifAbsentPut: (recoveredBlock18Block39Value2).
    recoveredBlock18Block39Value3
].
            recoveredBlock18PC := 65.
        ].
        recoveredBlock18Step = 65 ifTrue: [
            (recoveredBlock18Stack1) keysAndValuesDo: (recoveredBlock18Stack2).
            recoveredBlock18PC := 67.
        ].
        recoveredBlock18Step = 67 ifTrue: [
            recoveredBlock18Stack0 := (recoveredBlock18Stack0) primSchemas.
            recoveredBlock18PC := 69.
        ].
        recoveredBlock18Step = 69 ifTrue: [
            recoveredBlock18Stack1 := recoveredBlock18Arg1.
            recoveredBlock18PC := 72.
        ].
        recoveredBlock18Step = 72 ifTrue: [
            recoveredBlock18Stack2 := [
    | recoveredBlock18Block72Value0 |
    recoveredBlock18Block72Value0 := recoveredBlock18Arg2.
    recoveredBlock18Block72Value0
].
            recoveredBlock18PC := 82.
        ].
        recoveredBlock18Step = 82 ifTrue: [
            recoveredBlock18Stack0 := (recoveredBlock18Stack0) at: (recoveredBlock18Stack1) ifAbsentPut: (recoveredBlock18Stack2).
            recoveredBlock18PC := 84.
        ].
        recoveredBlock18Step = 84 ifTrue: [
            recoveredBlock18Result := recoveredBlock18Stack0.
            recoveredBlock18Done := true.
        ].
    ].
    recoveredBlock18Result
].
    (recoveredValue4) keysAndValuesDo: (recoveredValue5).
    recoveredValue6 := SstWsdlDefinitions.
    (recoveredValue6) clearSchemaCache.
    ^self
! !

