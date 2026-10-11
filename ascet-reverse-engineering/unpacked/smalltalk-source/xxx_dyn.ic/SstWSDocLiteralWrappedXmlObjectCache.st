"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20022f6c; bytecode file offset 0x840a8"
!SstWSDocLiteralWrappedXmlObjectCache methodsFor: 'recovered'!
initializeWrappedLitSerializationConfigurations: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 |
    recoveredValue0 := AbtXmlDeserializationConfiguration.
    recoveredValue1 := (recoveredValue0) newSoapConfiguration.
    recoveredValue2 := (recoveredValue1) objectCache: (self).
    recoveredValue3 := SstSoapEnvelope.
    recoveredValue4 := (recoveredValue3) abtXmlCacheKey.
    (self) addDeserializationConfiguration: (recoveredValue2) named: (recoveredValue4).
    recoveredValue5 := AbtXmlDeserializationConfiguration.
    recoveredValue6 := (recoveredValue5) newWrappedLitWsdlConfiguration.
    recoveredValue7 := (recoveredValue6) objectCache: (self).
    recoveredValue8 := SstWebServicesParserApp.
    recoveredValue9 := (recoveredValue8) abtXmlCacheKey.
    (self) addDeserializationConfiguration: (recoveredValue7) named: (recoveredValue9).
    recoveredValue10 := AbtXmlSerializationConfiguration.
    recoveredValue11 := (recoveredValue10) newSoapConfiguration.
    recoveredValue12 := (recoveredValue11) objectCache: (self).
    recoveredValue13 := SstSoapEnvelope.
    recoveredValue14 := (recoveredValue13) abtXmlCacheKey.
    (self) addSerializationConfiguration: (recoveredValue12) named: (recoveredValue14).
    recoveredValue15 := AbtXmlSerializationConfiguration.
    recoveredValue16 := (recoveredValue15) newSoapConfiguration.
    recoveredValue17 := (recoveredValue16) objectCache: (self).
    recoveredLocal1 := recoveredValue17.
    recoveredValue18 := SstSoapDefaultEncodingNamespace.
    recoveredValue19 := (self) outputSerializerNamed: (recoveredValue18).
    recoveredValue20 := [:recoveredBlock53Arg1 | 
    | recoveredBlock53Value0 recoveredBlock53Value1 recoveredBlock53Value2 recoveredBlock53Value3 recoveredBlock53Value4 |
    recoveredBlock53Value0 := recoveredLocal1.
    recoveredBlock53Value1 := recoveredBlock53Arg1.
    (recoveredBlock53Value0) serializer: (recoveredBlock53Value1).
    recoveredBlock53Value2 := recoveredLocal1.
    recoveredBlock53Value3 := SstSoapDefaultEncodingNamespace.
    recoveredBlock53Value4 := (self) addSerializationConfiguration: (recoveredBlock53Value2) named: (recoveredBlock53Value3).
    recoveredBlock53Value4
].
    (recoveredValue19) ifNotNil: (recoveredValue20).
    ^self
! !

