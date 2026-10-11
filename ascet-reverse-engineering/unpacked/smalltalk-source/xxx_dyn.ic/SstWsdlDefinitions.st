"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x200006c0; bytecode file offset 0x619a4"
!SstWsdlDefinitions methodsFor: 'recovered'!
targetNamespace
    | recoveredValue0 |
    recoveredValue0 := (self) namespace.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x200016ec; bytecode file offset 0x62c08"
!SstWsdlDefinitions methodsFor: 'recovered'!
portClass
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) configuration.
    recoveredValue1 := (recoveredValue0) portClass.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x2000170c; bytecode file offset 0x62c08"
!SstWsdlDefinitions methodsFor: 'recovered'!
partClass
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) configuration.
    recoveredValue1 := (recoveredValue0) partClass.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x200017dc; bytecode file offset 0x62c08"
!SstWsdlDefinitions methodsFor: 'recovered'!
bindingClass
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) configuration.
    recoveredValue1 := (recoveredValue0) bindingClass.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x200017ec; bytecode file offset 0x62c08"
!SstWsdlDefinitions methodsFor: 'recovered'!
serviceClass
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) configuration.
    recoveredValue1 := (recoveredValue0) serviceClass.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x2000181c; bytecode file offset 0x62c08"
!SstWsdlDefinitions methodsFor: 'recovered'!
schemaClass
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) configuration.
    recoveredValue1 := (recoveredValue0) schemaClass.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x2000184c; bytecode file offset 0x62c08"
!SstWsdlDefinitions methodsFor: 'recovered'!
bindingOperationClass
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) configuration.
    recoveredValue1 := (recoveredValue0) bindingOperationClass.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x2000187c; bytecode file offset 0x62c08"
!SstWsdlDefinitions methodsFor: 'recovered'!
typesClass
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) configuration.
    recoveredValue1 := (recoveredValue0) typesClass.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x200018ec; bytecode file offset 0x62c08"
!SstWsdlDefinitions methodsFor: 'recovered'!
portTypeClass
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) configuration.
    recoveredValue1 := (recoveredValue0) portTypeClass.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20001a4c; bytecode file offset 0x62c08"
!SstWsdlDefinitions methodsFor: 'recovered'!
messageClass
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) configuration.
    recoveredValue1 := (recoveredValue0) messageClass.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20004224; bytecode file offset 0x65328"
!SstWsdlDefinitions methodsFor: 'recovered'!
services
    | recoveredValue0 |
    recoveredValue0 := services.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20004278; bytecode file offset 0x65384"
!SstWsdlDefinitions methodsFor: 'recovered'!
portTypes
    | recoveredValue0 |
    recoveredValue0 := portTypes.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20004304; bytecode file offset 0x653d8"
!SstWsdlDefinitions methodsFor: 'recovered'!
bindings
    | recoveredValue0 |
    recoveredValue0 := bindings.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20004330; bytecode file offset 0x65414"
!SstWsdlDefinitions methodsFor: 'recovered'!
messages
    | recoveredValue0 |
    recoveredValue0 := messages.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x2000438c; bytecode file offset 0x65450"
!SstWsdlDefinitions methodsFor: 'recovered'!
types
    | recoveredValue0 |
    recoveredValue0 := types.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x200043b0; bytecode file offset 0x6547c"
!SstWsdlDefinitions methodsFor: 'recovered'!
imports
    | recoveredValue0 |
    recoveredValue0 := imports.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x2000441c; bytecode file offset 0x654f0"
!SstWsdlDefinitions methodsFor: 'recovered'!
sourceUrl
    | recoveredValue0 |
    recoveredValue0 := sourceUrl.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20004830; bytecode file offset 0x6592c"
!SstWsdlDefinitions methodsFor: 'recovered'!
qualifyElementNames
    ^true
! !

"xxx_dyn.ic method 0x20005d04; bytecode file offset 0x66e50"
!SstWsdlDefinitions methodsFor: 'recovered'!
addMessage: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) messages.
    recoveredValue2 := (self) add: (recoveredValue0) to: (recoveredValue1).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x20005d14; bytecode file offset 0x66e50"
!SstWsdlDefinitions methodsFor: 'recovered'!
addBinding: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) bindings.
    recoveredValue2 := (self) add: (recoveredValue0) to: (recoveredValue1).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x20005d24; bytecode file offset 0x66e50"
!SstWsdlDefinitions methodsFor: 'recovered'!
addService: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) services.
    recoveredValue2 := (self) add: (recoveredValue0) to: (recoveredValue1).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x20005d44; bytecode file offset 0x66e50"
!SstWsdlDefinitions methodsFor: 'recovered'!
addImport: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) imports.
    recoveredValue2 := (self) add: (recoveredValue0) to: (recoveredValue1).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x20005d74; bytecode file offset 0x66e50"
!SstWsdlDefinitions methodsFor: 'recovered'!
addPortType: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) portTypes.
    recoveredValue2 := (self) add: (recoveredValue0) to: (recoveredValue1).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x20007760; bytecode file offset 0x6887c"
!SstWsdlDefinitions methodsFor: 'recovered'!
attributeSelectors
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super attributeSelectors.
    recoveredValue1 := (recoveredValue0) , (#('targetNamespace')).
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20008698; bytecode file offset 0x6978c"
!SstWsdlDefinitions methodsFor: 'recovered'!
configuration: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    configuration := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x2000877c; bytecode file offset 0x69858"
!SstWsdlDefinitions methodsFor: 'recovered'!
services: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    services := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x200087b0; bytecode file offset 0x698bc"
!SstWsdlDefinitions methodsFor: 'recovered'!
portTypes: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    portTypes := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x2000880c; bytecode file offset 0x69910"
!SstWsdlDefinitions methodsFor: 'recovered'!
bindings: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    bindings := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20008868; bytecode file offset 0x6994c"
!SstWsdlDefinitions methodsFor: 'recovered'!
messages: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    messages := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x200088a4; bytecode file offset 0x69980"
!SstWsdlDefinitions methodsFor: 'recovered'!
types: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    types := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x200088e0; bytecode file offset 0x699ac"
!SstWsdlDefinitions methodsFor: 'recovered'!
imports: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    imports := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20008914; bytecode file offset 0x699e8"
!SstWsdlDefinitions methodsFor: 'recovered'!
schemaDefinitionUri: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    schemaDefinitionUri := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20008950; bytecode file offset 0x69a14"
!SstWsdlDefinitions methodsFor: 'recovered'!
schemaInstanceUri: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    schemaInstanceUri := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20008974; bytecode file offset 0x69a38"
!SstWsdlDefinitions methodsFor: 'recovered'!
sourceUrl: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    sourceUrl := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x2000b42c; bytecode file offset 0x6c500"
!SstWsdlDefinitions methodsFor: 'recovered'!
schemaDefinitionUri
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := schemaDefinitionUri.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) getSchemaDefinitionUri.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            schemaDefinitionUri := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := schemaDefinitionUri.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x2000b458; bytecode file offset 0x6c520"
!SstWsdlDefinitions methodsFor: 'recovered'!
schemaInstanceUri
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := schemaInstanceUri.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) getSchemaInstanceUri.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            schemaInstanceUri := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := schemaInstanceUri.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x2000bea8; bytecode file offset 0x6cf84"
!SstWsdlDefinitions methodsFor: 'recovered'!
configuration
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := configuration.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := SstWsdlConfiguration.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            configuration := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := configuration.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x2000c884; bytecode file offset 0x6d94c"
!SstWsdlDefinitions methodsFor: 'recovered'!
name
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
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := name.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 18.
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
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x2000cb20; bytecode file offset 0x6dbf0"
!SstWsdlDefinitions methodsFor: 'recovered'!
uriForPrefix: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) namespaceMappings.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) namespaceMappings.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x2000d730; bytecode file offset 0x6e800"
!SstWsdlDefinitions methodsFor: 'recovered'!
add: recoveredArg1 to: recoveredArg2
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
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) addAll: (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x2000df94; bytecode file offset 0x6f06c"
!SstWsdlDefinitions methodsFor: 'recovered'!
addToTypes: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) types.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
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
            recoveredStack1 := (recoveredStack1) typesClass.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) types: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) types.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) addSchema: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x200100dc; bytecode file offset 0x71210"
!SstWsdlDefinitions methodsFor: 'recovered'!
serviceNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) services.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) name.
    recoveredBlock5Value2 := recoveredArg1.
    recoveredBlock5Value3 := (recoveredBlock5Value1) = (recoveredBlock5Value2).
    recoveredBlock5Value3
].
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) detect: (recoveredValue1) ifNone: (recoveredValue2).
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x20011560; bytecode file offset 0x7267c"
!SstWsdlDefinitions methodsFor: 'recovered'!
typeNamed: recoveredArg1 inNamespace: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) types.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) types.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) typeNamed: (recoveredStack1) inNamespace: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := AbtXmlObjectCache.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) current.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) typeNamed: (recoveredStack1) inNamespace: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x200115a8; bytecode file offset 0x7267c"
!SstWsdlDefinitions methodsFor: 'recovered'!
elementNamed: recoveredArg1 inNamespace: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) types.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) types.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) elementNamed: (recoveredStack1) inNamespace: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := AbtXmlObjectCache.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) current.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) elementNamed: (recoveredStack1) inNamespace: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x200145b0; bytecode file offset 0x756b4"
!SstWsdlDefinitions methodsFor: 'recovered'!
portTypeNamed: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) portTypes.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) portTypes.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 |
    recoveredBlock10Value0 := recoveredBlock10Arg1.
    recoveredBlock10Value1 := (recoveredBlock10Value0) name.
    recoveredBlock10Value2 := recoveredArg1.
    recoveredBlock10Value3 := (recoveredBlock10Value1) = (recoveredBlock10Value2).
    recoveredBlock10Value3
].
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x200145c8; bytecode file offset 0x756b4"
!SstWsdlDefinitions methodsFor: 'recovered'!
bindingNamed: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) bindings.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) bindings.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 |
    recoveredBlock10Value0 := recoveredBlock10Arg1.
    recoveredBlock10Value1 := (recoveredBlock10Value0) name.
    recoveredBlock10Value2 := recoveredArg1.
    recoveredBlock10Value3 := (recoveredBlock10Value1) = (recoveredBlock10Value2).
    recoveredBlock10Value3
].
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x200145e0; bytecode file offset 0x756b4"
!SstWsdlDefinitions methodsFor: 'recovered'!
messageNamed: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) messages.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) messages.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 |
    recoveredBlock10Value0 := recoveredBlock10Arg1.
    recoveredBlock10Value1 := (recoveredBlock10Value0) name.
    recoveredBlock10Value2 := recoveredArg1.
    recoveredBlock10Value3 := (recoveredBlock10Value1) = (recoveredBlock10Value2).
    recoveredBlock10Value3
].
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x200178e4; bytecode file offset 0x789cc"
!SstWsdlDefinitions methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    super initialize.
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    (self) imports: (recoveredValue1).
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    (self) bindings: (recoveredValue3).
    recoveredValue4 := OrderedCollection.
    recoveredValue5 := (recoveredValue4) new.
    (self) portTypes: (recoveredValue5).
    recoveredValue6 := OrderedCollection.
    recoveredValue7 := (recoveredValue6) new.
    (self) services: (recoveredValue7).
    recoveredValue8 := OrderedCollection.
    recoveredValue9 := (recoveredValue8) new.
    (self) messages: (recoveredValue9).
    ^self
! !

"xxx_dyn.ic method 0x2001d4f0; bytecode file offset 0x7e5e0"
!SstWsdlDefinitions methodsFor: 'recovered'!
getSchemaInstanceUri
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) namespaceMappings.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:recoveredBlock5Arg1 :recoveredBlock5Arg2 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := nil.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg2.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            recoveredBlock5Stack3 := AbtXmlSchemaInstanceUriSuffix.
            recoveredBlock5PC := 16.
        ].
        recoveredBlock5Step = 16 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) abtContains: (recoveredBlock5Stack3).
            recoveredBlock5PC := 17.
        ].
        recoveredBlock5Step = 17 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 20] ifFalse: [recoveredBlock5PC := 23].
        ].
        recoveredBlock5Step = 20 ifTrue: [
            recoveredBlock5PC := 21.
        ].
        recoveredBlock5Step = 21 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg2.
            recoveredBlock5PC := 22.
        ].
        recoveredBlock5Step = 22 ifTrue: [
            ^recoveredBlock5Stack1
        ].
        recoveredBlock5Step = 23 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) keysAndValuesDo: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) types.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := [:block2800b97cArg1 | 
    | block2800b97cValue0 block2800b97cValue1 |
    block2800b97cValue0 := block2800b97cArg1.
    block2800b97cValue1 := (block2800b97cValue0) getSchemaInstanceUri.
    block2800b97cValue1
].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) schemaDefinitionUri.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := '-instance'.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x2001d9cc; bytecode file offset 0x7eaac"
!SstWsdlDefinitions methodsFor: 'recovered'!
getSchemaDefinitionUri
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
            recoveredStack2 := AbtXmlSchema.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) defaultNamespace.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) compatibleUriFor: (recoveredStack2) inObject: (recoveredStack3).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) types.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := [:recoveredBlock23Arg1 | 
    | recoveredBlock23Value0 recoveredBlock23Value1 recoveredBlock23Value2 |
    recoveredBlock23Value0 := recoveredBlock23Arg1.
    recoveredBlock23Value1 := (recoveredBlock23Value0) getSchemaDefinitionUri.
    recoveredBlock23Value2 := recoveredBlock23Value1.
    recoveredLocal1 := recoveredBlock23Value2.
    recoveredBlock23Value1
].
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := AbtXmlSchema.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultNamespace.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredPC := 55.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x2002126c; bytecode file offset 0x82350"
!SstWsdlDefinitions methodsFor: 'recovered'!
printSubElementsOn: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) imports.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) imports.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) abtXmlPrintOn: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) types.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) abtXmlPrintOn: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) messages.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) messages.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) abtXmlPrintOn: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) portTypes.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) portTypes.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) abtXmlPrintOn: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) bindings.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) bindings.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) abtXmlPrintOn: (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) services.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) services.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0) abtXmlPrintOn: (recoveredStack1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x20024654; bytecode file offset 0x85740"
!SstWsdlDefinitions methodsFor: 'recovered'!
addSchemasTo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) types.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) schemas.
    recoveredBlock5Value2 := [:recoveredBlock5Block14Arg1 | 
    | recoveredBlock5Block14Stack0 recoveredBlock5Block14Stack1 recoveredBlock5Block14Stack2 recoveredBlock5Block14Stack3 recoveredBlock5Block14PC recoveredBlock5Block14Step recoveredBlock5Block14Done recoveredBlock5Block14Result |
    recoveredBlock5Block14Stack0 := nil.
    recoveredBlock5Block14PC := 20.
    recoveredBlock5Block14Done := false.
    [recoveredBlock5Block14Done not] whileTrue: [
        recoveredBlock5Block14Step := recoveredBlock5Block14PC.
        recoveredBlock5Block14Step = 20 ifTrue: [
            recoveredBlock5Block14Stack1 := nil.
            recoveredBlock5Block14PC := 21.
        ].
        recoveredBlock5Block14Step = 21 ifTrue: [
            recoveredBlock5Block14Stack2 := recoveredBlock5Block14Arg1.
            recoveredBlock5Block14PC := 22.
        ].
        recoveredBlock5Block14Step = 22 ifTrue: [
            (recoveredBlock5Block14Stack2 == nil) ifTrue: [recoveredBlock5Block14PC := 32] ifFalse: [recoveredBlock5Block14PC := 26].
        ].
        recoveredBlock5Block14Step = 26 ifTrue: [
            recoveredBlock5Block14PC := 27.
        ].
        recoveredBlock5Block14Step = 27 ifTrue: [
            recoveredBlock5Block14Stack1 := recoveredArg1.
            recoveredBlock5Block14PC := 30.
        ].
        recoveredBlock5Block14Step = 30 ifTrue: [
            recoveredBlock5Block14Stack2 := recoveredBlock5Block14Arg1.
            recoveredBlock5Block14PC := 31.
        ].
        recoveredBlock5Block14Step = 31 ifTrue: [
            recoveredBlock5Block14Stack1 := (recoveredBlock5Block14Stack1) addSchema: (recoveredBlock5Block14Stack2).
            recoveredBlock5Block14PC := 32.
        ].
        recoveredBlock5Block14Step = 32 ifTrue: [
            recoveredBlock5Block14Result := recoveredBlock5Block14Stack1.
            recoveredBlock5Block14Done := true.
        ].
    ].
    recoveredBlock5Block14Result
].
    recoveredBlock5Value3 := (recoveredBlock5Value1) do: (recoveredBlock5Value2).
    recoveredBlock5Value3
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    recoveredValue2 := (self) imports.
    recoveredValue3 := [:recoveredBlock40Arg1 | 
    | recoveredBlock40Stack0 recoveredBlock40Stack1 recoveredBlock40Stack2 recoveredBlock40Stack3 recoveredBlock40PC recoveredBlock40Step recoveredBlock40Done recoveredBlock40Result |
    recoveredBlock40Stack0 := self.
    recoveredBlock40PC := 46.
    recoveredBlock40Done := false.
    [recoveredBlock40Done not] whileTrue: [
        recoveredBlock40Step := recoveredBlock40PC.
        recoveredBlock40Step = 46 ifTrue: [
            recoveredBlock40Stack1 := recoveredBlock40Arg1.
            recoveredBlock40PC := 47.
        ].
        recoveredBlock40Step = 47 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) object.
            recoveredBlock40PC := 49.
        ].
        recoveredBlock40Step = 49 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) sstIsWsdlObject.
            recoveredBlock40PC := 51.
        ].
        recoveredBlock40Step = 51 ifTrue: [
            (recoveredBlock40Stack1) ifTrue: [recoveredBlock40PC := 54] ifFalse: [recoveredBlock40PC := 66].
        ].
        recoveredBlock40Step = 54 ifTrue: [
            recoveredBlock40Stack1 := recoveredBlock40Arg1.
            recoveredBlock40PC := 55.
        ].
        recoveredBlock40Step = 55 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) object.
            recoveredBlock40PC := 57.
        ].
        recoveredBlock40Step = 57 ifTrue: [
            recoveredBlock40Stack2 := recoveredArg1.
            recoveredBlock40PC := 60.
        ].
        recoveredBlock40Step = 60 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) addSchemasTo: (recoveredBlock40Stack2).
            recoveredBlock40PC := 62.
        ].
        recoveredBlock40Step = 62 ifTrue: [
            recoveredBlock40PC := 80.
        ].
        recoveredBlock40Step = 66 ifTrue: [
            recoveredBlock40Stack1 := recoveredArg1.
            recoveredBlock40PC := 69.
        ].
        recoveredBlock40Step = 69 ifTrue: [
            recoveredBlock40Stack2 := recoveredBlock40Arg1.
            recoveredBlock40PC := 70.
        ].
        recoveredBlock40Step = 70 ifTrue: [
            recoveredBlock40Stack2 := (recoveredBlock40Stack2) object.
            recoveredBlock40PC := 72.
        ].
        recoveredBlock40Step = 72 ifTrue: [
            (recoveredBlock40Stack1) addSchema: (recoveredBlock40Stack2).
            recoveredBlock40PC := 74.
        ].
        recoveredBlock40Step = 74 ifTrue: [
            recoveredBlock40Stack1 := self.
            recoveredBlock40PC := 75.
        ].
        recoveredBlock40Step = 75 ifTrue: [
            recoveredBlock40Stack2 := recoveredBlock40Arg1.
            recoveredBlock40PC := 76.
        ].
        recoveredBlock40Step = 76 ifTrue: [
            recoveredBlock40Stack2 := (recoveredBlock40Stack2) object.
            recoveredBlock40PC := 78.
        ].
        recoveredBlock40Step = 78 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) addToTypes: (recoveredBlock40Stack2).
            recoveredBlock40PC := 80.
        ].
        recoveredBlock40Step = 80 ifTrue: [
            recoveredBlock40Result := recoveredBlock40Stack1.
            recoveredBlock40Done := true.
        ].
    ].
    recoveredBlock40Result
].
    (recoveredValue2) do: (recoveredValue3).
    ^self
! !

"xxx_dyn.ic method 0x2002735c; bytecode file offset 0x88440"
!SstWsdlDefinitions methodsFor: 'recovered'!
resolveObjectNamed: recoveredArg1 inNamespace: recoveredArg2 usingSelector: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (self) definitionsInNamespace: (recoveredValue0).
    recoveredValue2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Local1 recoveredBlock8Stack0 recoveredBlock8Stack1 recoveredBlock8Stack2 recoveredBlock8Stack3 recoveredBlock8Stack4 recoveredBlock8Stack5 recoveredBlock8PC recoveredBlock8Step recoveredBlock8Done recoveredBlock8Result |
    recoveredBlock8Stack0 := self.
    recoveredBlock8PC := 14.
    recoveredBlock8Done := false.
    [recoveredBlock8Done not] whileTrue: [
        recoveredBlock8Step := recoveredBlock8PC.
        recoveredBlock8Step = 14 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Arg1.
            recoveredBlock8PC := 17.
        ].
        recoveredBlock8Step = 17 ifTrue: [
            recoveredBlock8Stack2 := self.
            recoveredBlock8PC := 18.
        ].
        recoveredBlock8Step = 18 ifTrue: [
            (recoveredBlock8Stack1 ~~ recoveredBlock8Stack2) ifTrue: [recoveredBlock8PC := 66] ifFalse: [recoveredBlock8PC := 22].
        ].
        recoveredBlock8Step = 22 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Arg1.
            recoveredBlock8PC := 25.
        ].
        recoveredBlock8Step = 25 ifTrue: [
            recoveredBlock8Stack2 := recoveredArg3.
            recoveredBlock8PC := 28.
        ].
        recoveredBlock8Step = 28 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) perform: (recoveredBlock8Stack2).
            recoveredBlock8PC := 29.
        ].
        recoveredBlock8Step = 29 ifTrue: [
            recoveredBlock8Stack2 := [:recoveredBlock8Block29Arg1 | 
    | recoveredBlock8Block29Value0 recoveredBlock8Block29Value1 recoveredBlock8Block29Value2 recoveredBlock8Block29Value3 recoveredBlock8Block29Value4 |
    recoveredBlock8Block29Value0 := recoveredBlock8Block29Arg1.
    recoveredBlock8Block29Value1 := [:recoveredBlock8Block29Block37Arg1 | 
    | recoveredBlock8Block29Block37Value0 recoveredBlock8Block29Block37Value1 recoveredBlock8Block29Block37Value2 recoveredBlock8Block29Block37Value3 |
    recoveredBlock8Block29Block37Value0 := recoveredBlock8Block29Block37Arg1.
    recoveredBlock8Block29Block37Value1 := (recoveredBlock8Block29Block37Value0) name.
    recoveredBlock8Block29Block37Value2 := recoveredArg1.
    recoveredBlock8Block29Block37Value3 := (recoveredBlock8Block29Block37Value1) = (recoveredBlock8Block29Block37Value2).
    recoveredBlock8Block29Block37Value3
].
    recoveredBlock8Block29Value2 := [].
    recoveredBlock8Block29Value3 := (recoveredBlock8Block29Value0) detect: (recoveredBlock8Block29Value1) ifNone: (recoveredBlock8Block29Value2).
    recoveredBlock8Block29Value4 := recoveredBlock8Block29Value3.
    recoveredBlock8Local1 := recoveredBlock8Block29Value4.
    recoveredBlock8Block29Value3
].
            recoveredBlock8PC := 60.
        ].
        recoveredBlock8Step = 60 ifTrue: [
            (recoveredBlock8Stack1) ifNotNil: (recoveredBlock8Stack2).
            recoveredBlock8PC := 62.
        ].
        recoveredBlock8Step = 62 ifTrue: [
            recoveredBlock8PC := 84.
        ].
        recoveredBlock8Step = 66 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Arg1.
            recoveredBlock8PC := 69.
        ].
        recoveredBlock8Step = 69 ifTrue: [
            recoveredBlock8Stack2 := recoveredArg1.
            recoveredBlock8PC := 72.
        ].
        recoveredBlock8Step = 72 ifTrue: [
            recoveredBlock8Stack3 := recoveredArg2.
            recoveredBlock8PC := 75.
        ].
        recoveredBlock8Step = 75 ifTrue: [
            recoveredBlock8Stack4 := recoveredArg3.
            recoveredBlock8PC := 78.
        ].
        recoveredBlock8Step = 78 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) resolveObjectNamed: (recoveredBlock8Stack2) inNamespace: (recoveredBlock8Stack3) usingSelector: (recoveredBlock8Stack4).
            recoveredBlock8PC := 81.
        ].
        recoveredBlock8Step = 81 ifTrue: [
            recoveredBlock8Local1 := recoveredBlock8Stack1.
            recoveredBlock8PC := 84.
        ].
        recoveredBlock8Step = 84 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Local1.
            recoveredBlock8PC := 87.
        ].
        recoveredBlock8Step = 87 ifTrue: [
            recoveredBlock8Stack2 := [:recoveredBlock8Block87Arg1 | 
    | recoveredBlock8Block87Value0 |
    recoveredBlock8Block87Value0 := recoveredBlock8Block87Arg1.
    ^recoveredBlock8Block87Value0
].
            recoveredBlock8PC := 96.
        ].
        recoveredBlock8Step = 96 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) ifNotNil: (recoveredBlock8Stack2).
            recoveredBlock8PC := 98.
        ].
        recoveredBlock8Step = 98 ifTrue: [
            recoveredBlock8Result := recoveredBlock8Stack1.
            recoveredBlock8Done := true.
        ].
    ].
    recoveredBlock8Result
].
    (recoveredValue1) do: (recoveredValue2).
    ^nil
! !

