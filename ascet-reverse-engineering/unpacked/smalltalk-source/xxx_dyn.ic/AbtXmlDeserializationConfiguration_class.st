"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20007bd0; bytecode file offset 0x68ca4"
!AbtXmlDeserializationConfiguration class methodsFor: 'recovered'!
newSoapConfiguration: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) newSoapConfiguration.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) container.
    recoveredValue4 := (recoveredValue3) serializationManager.
    (recoveredValue1) objectCache: (recoveredValue4).
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x2000b014; bytecode file offset 0x6c0ec"
!AbtXmlDeserializationConfiguration class methodsFor: 'recovered'!
newSoapConfiguration
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) newMappingParserConfiguration.
    recoveredValue1 := SstSoapInputDeserializer.
    recoveredValue2 := (recoveredValue1) current.
    recoveredValue3 := (recoveredValue0) deserializer: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    (self) addSoapHandlersToConfiguration: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"xxx_dyn.ic method 0x2002272c; bytecode file offset 0x838a8"
!AbtXmlDeserializationConfiguration class methodsFor: 'recovered'!
newWrappedLitWsdlConfiguration
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) newMappingParserConfiguration.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := [:block2800bc94Arg1 | 
    | block2800bc94Value0 block2800bc94Value1 block2800bc94Value2 block2800bc94Value3 block2800bc94Value4 block2800bc94Value5 |
    block2800bc94Value0 := ExWSDeploymentError.
    block2800bc94Value1 := SstWSError.
    block2800bc94Value2 := block2800bc94Arg1.
    block2800bc94Value3 := (block2800bc94Value2) arguments.
    block2800bc94Value4 := (block2800bc94Value1) for: ('WSInvalidWsdl') with: (block2800bc94Value3).
    block2800bc94Value5 := (block2800bc94Value0) signalWith: (block2800bc94Value4).
    block2800bc94Value5
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) errorHandler: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := SstWebServicesParserApp.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) abtXmlCacheKey.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) mappingSpecName: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := SstWsdlSaxHandler.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) handlerClass: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) newConfiguration.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := SstWsdlImportHandler.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) handlerClass: (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := 'import'.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := SstWebServicesParserApp.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := (recoveredStack3) abtXmlCacheKey.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) useConfiguration: (recoveredStack1) forElementNamed: (recoveredStack2) inNamespace: (recoveredStack3).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) newWrappedLitSchemaConfiguration.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := 'schema'.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack3 := AbtXmlSchema.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack3 := (recoveredStack3) defaultNamespace.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) useConfiguration: (recoveredStack1) forElementNamed: (recoveredStack2) inNamespace: (recoveredStack3).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x2002278c; bytecode file offset 0x838a8"
!AbtXmlDeserializationConfiguration class methodsFor: 'recovered'!
newWsdlConfiguration
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) newMappingParserConfiguration.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := [:block2800bcb8Arg1 | 
    | block2800bcb8Value0 block2800bcb8Value1 block2800bcb8Value2 block2800bcb8Value3 block2800bcb8Value4 block2800bcb8Value5 |
    block2800bcb8Value0 := ExWSDeploymentError.
    block2800bcb8Value1 := SstWSError.
    block2800bcb8Value2 := block2800bcb8Arg1.
    block2800bcb8Value3 := (block2800bcb8Value2) arguments.
    block2800bcb8Value4 := (block2800bcb8Value1) for: ('WSInvalidWsdl') with: (block2800bcb8Value3).
    block2800bcb8Value5 := (block2800bcb8Value0) signalWith: (block2800bcb8Value4).
    block2800bcb8Value5
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) errorHandler: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := SstWebServicesParserApp.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) abtXmlCacheKey.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) mappingSpecName: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := SstWsdlSaxHandler.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) handlerClass: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) newConfiguration.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := SstWsdlImportHandler.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) handlerClass: (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := 'import'.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := SstWebServicesParserApp.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := (recoveredStack3) abtXmlCacheKey.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) useConfiguration: (recoveredStack1) forElementNamed: (recoveredStack2) inNamespace: (recoveredStack3).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) newSchemaConfiguration.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := 'schema'.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack3 := AbtXmlSchema.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack3 := (recoveredStack3) defaultNamespace.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) useConfiguration: (recoveredStack1) forElementNamed: (recoveredStack2) inNamespace: (recoveredStack3).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x200265c0; bytecode file offset 0x876d8"
!AbtXmlDeserializationConfiguration class methodsFor: 'recovered'!
addSoapHandlersToConfiguration: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 |
    recoveredValue0 := recoveredArg1.
    recoveredLocal4 := recoveredValue0.
    recoveredValue1 := recoveredLocal4.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := OrderedCollection.
    recoveredValue4 := SstWSSoapMessageValidator.
    recoveredValue5 := (recoveredValue4) default.
    recoveredValue6 := (recoveredValue5) validateEnvelopeStartBlock.
    recoveredValue7 := (recoveredValue3) with: (recoveredValue6).
    (recoveredValue2) startElementValidators: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := SstWSSoapContentHandler.
    (recoveredValue8) handlerClass: (recoveredValue9).
    recoveredValue10 := SstSoapMappedElement.
    (recoveredValue1) elementClass: (recoveredValue10).
    recoveredValue11 := recoveredLocal4.
    recoveredValue12 := (recoveredValue11) newConfiguration.
    recoveredLocal3 := recoveredValue12.
    recoveredValue13 := recoveredLocal3.
    recoveredValue14 := SstWSSoapBodyContentHandler.
    (recoveredValue13) handlerClass: (recoveredValue14).
    recoveredValue15 := recoveredLocal4.
    recoveredValue16 := recoveredLocal3.
    recoveredValue17 := SstSoapBodyString.
    recoveredValue18 := SstSoapDefaultEnvelopeNamespace.
    (recoveredValue15) useConfiguration: (recoveredValue16) forElementNamed: (recoveredValue17) inNamespace: (recoveredValue18).
    recoveredValue19 := recoveredLocal4.
    recoveredValue20 := (recoveredValue19) newConfiguration.
    recoveredLocal1 := recoveredValue20.
    recoveredValue21 := recoveredLocal1.
    recoveredValue22 := SstWSSoapFaultContentHandler.
    (recoveredValue21) handlerClass: (recoveredValue22).
    recoveredValue23 := recoveredLocal4.
    recoveredValue24 := recoveredLocal1.
    recoveredValue25 := SstSoapFaultString.
    recoveredValue26 := SstSoapDefaultEnvelopeNamespace.
    (recoveredValue23) useConfiguration: (recoveredValue24) forElementNamed: (recoveredValue25) inNamespace: (recoveredValue26).
    recoveredValue27 := recoveredLocal4.
    recoveredValue28 := (recoveredValue27) newConfiguration.
    recoveredLocal2 := recoveredValue28.
    recoveredValue29 := recoveredLocal2.
    recoveredValue30 := recoveredValue29.
    recoveredValue31 := SstWSSoapHeaderContentHandler.
    (recoveredValue30) handlerClass: (recoveredValue31).
    recoveredValue32 := OrderedCollection.
    recoveredValue33 := SstWSSoapMessageValidator.
    recoveredValue34 := (recoveredValue33) default.
    recoveredValue35 := (recoveredValue34) validateHeaderEndBlock.
    recoveredValue36 := (recoveredValue32) with: (recoveredValue35).
    (recoveredValue29) endElementValidators: (recoveredValue36).
    recoveredValue37 := recoveredLocal4.
    recoveredValue38 := recoveredLocal2.
    recoveredValue39 := SstSoapHeaderString.
    recoveredValue40 := SstSoapDefaultEnvelopeNamespace.
    (recoveredValue37) useConfiguration: (recoveredValue38) forElementNamed: (recoveredValue39) inNamespace: (recoveredValue40).
    recoveredValue41 := recoveredLocal4.
    ^recoveredValue41
! !

