"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x201afc5c; bytecode file offset 0xaac538"
!AbtXmlDeserializationConfiguration class methodsFor: 'recovered'!
newMappingParserConfiguration
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := AbtXmlSchemaInputDeserializer.
    recoveredValue3 := (recoveredValue2) current.
    (recoveredValue1) deserializer: (recoveredValue3).
    recoveredValue4 := recoveredValue0.
    recoveredValue5 := AbtXmlMappedContentHandler.
    (recoveredValue4) handlerClass: (recoveredValue5).
    recoveredValue6 := recoveredValue0.
    recoveredValue7 := AbtXmlMappedElement.
    (recoveredValue6) elementClass: (recoveredValue7).
    recoveredValue8 := AbtXmlMappedAttribute.
    recoveredValue9 := (recoveredValue0) attributeClass: (recoveredValue8).
    ^recoveredValue9
! !

"ASDBase.ic method 0x202755c0; bytecode file offset 0xb71e98"
!AbtXmlDeserializationConfiguration class methodsFor: 'recovered'!
newLoggingConfiguration
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) newMappingParserConfiguration.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280e09acArg1 | 
    | block280e09acValue0 block280e09acValue1 block280e09acValue2 block280e09acValue3 block280e09acValue4 |
    block280e09acValue0 := AbtXmlUtility.
    block280e09acValue1 := block280e09acArg1.
    block280e09acValue2 := (block280e09acValue1) argument.
    (block280e09acValue0) logError: (block280e09acValue2).
    block280e09acValue3 := block280e09acArg1.
    block280e09acValue4 := (block280e09acValue3) exitWith: (nil).
    block280e09acValue4
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) errorHandler: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := [:block280e09d0Arg1 | 
    | block280e09d0Value0 block280e09d0Value1 block280e09d0Value2 |
    block280e09d0Value0 := AbtXmlUtility.
    block280e09d0Value1 := block280e09d0Arg1.
    block280e09d0Value2 := (block280e09d0Value0) logError: (block280e09d0Value1).
    block280e09d0Value2
].
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) warningHandler: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202fab64; bytecode file offset 0xbf7478"
!AbtXmlDeserializationConfiguration class methodsFor: 'recovered'!
newWrappedLitSchemaConfiguration
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 |
    recoveredValue0 := (self) newMappingParserConfiguration.
    recoveredLocal3 := recoveredValue0.
    recoveredValue1 := recoveredLocal3.
    recoveredValue2 := (recoveredValue1) newConfiguration.
    recoveredValue3 := AbtXmlSchemaIncludeHandler.
    recoveredValue4 := (recoveredValue2) handlerClass: (recoveredValue3).
    recoveredLocal2 := recoveredValue4.
    recoveredValue5 := recoveredLocal3.
    recoveredValue6 := (recoveredValue5) newConfiguration.
    recoveredValue7 := AbtXmlWrappedLitSchemaImportHandler.
    recoveredValue8 := (recoveredValue6) handlerClass: (recoveredValue7).
    recoveredLocal1 := recoveredValue8.
    recoveredValue9 := recoveredLocal3.
    recoveredValue10 := recoveredLocal2.
    recoveredValue11 := AbtXmlSchema.
    recoveredValue12 := (recoveredValue11) defaultNamespace.
    (recoveredValue9) useConfiguration: (recoveredValue10) forElementNamed: ('include') inNamespace: (recoveredValue12).
    recoveredValue13 := recoveredLocal3.
    recoveredValue14 := recoveredLocal2.
    recoveredValue15 := AbtXmlSchema.
    recoveredValue16 := (recoveredValue15) defaultNamespace.
    (recoveredValue13) useConfiguration: (recoveredValue14) forElementNamed: ('redefine') inNamespace: (recoveredValue16).
    recoveredValue17 := recoveredLocal3.
    recoveredValue18 := recoveredLocal1.
    recoveredValue19 := AbtXmlSchema.
    recoveredValue20 := (recoveredValue19) defaultNamespace.
    (recoveredValue17) useConfiguration: (recoveredValue18) forElementNamed: ('import') inNamespace: (recoveredValue20).
    recoveredValue21 := recoveredLocal3.
    ^recoveredValue21
! !

"ASDBase.ic method 0x202fab98; bytecode file offset 0xbf7478"
!AbtXmlDeserializationConfiguration class methodsFor: 'recovered'!
newSchemaConfiguration
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 |
    recoveredValue0 := (self) newMappingParserConfiguration.
    recoveredLocal3 := recoveredValue0.
    recoveredValue1 := recoveredLocal3.
    recoveredValue2 := (recoveredValue1) newConfiguration.
    recoveredValue3 := AbtXmlSchemaIncludeHandler.
    recoveredValue4 := (recoveredValue2) handlerClass: (recoveredValue3).
    recoveredLocal2 := recoveredValue4.
    recoveredValue5 := recoveredLocal3.
    recoveredValue6 := (recoveredValue5) newConfiguration.
    recoveredValue7 := AbtXmlSchemaImportHandler.
    recoveredValue8 := (recoveredValue6) handlerClass: (recoveredValue7).
    recoveredLocal1 := recoveredValue8.
    recoveredValue9 := recoveredLocal3.
    recoveredValue10 := recoveredLocal2.
    recoveredValue11 := AbtXmlSchema.
    recoveredValue12 := (recoveredValue11) defaultNamespace.
    (recoveredValue9) useConfiguration: (recoveredValue10) forElementNamed: ('include') inNamespace: (recoveredValue12).
    recoveredValue13 := recoveredLocal3.
    recoveredValue14 := recoveredLocal2.
    recoveredValue15 := AbtXmlSchema.
    recoveredValue16 := (recoveredValue15) defaultNamespace.
    (recoveredValue13) useConfiguration: (recoveredValue14) forElementNamed: ('redefine') inNamespace: (recoveredValue16).
    recoveredValue17 := recoveredLocal3.
    recoveredValue18 := recoveredLocal1.
    recoveredValue19 := AbtXmlSchema.
    recoveredValue20 := (recoveredValue19) defaultNamespace.
    (recoveredValue17) useConfiguration: (recoveredValue18) forElementNamed: ('import') inNamespace: (recoveredValue20).
    recoveredValue21 := recoveredLocal3.
    ^recoveredValue21
! !

