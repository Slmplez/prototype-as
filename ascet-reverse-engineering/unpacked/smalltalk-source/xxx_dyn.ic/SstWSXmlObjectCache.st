"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20000148; bytecode file offset 0x6147c"
!SstWSXmlObjectCache methodsFor: 'recovered'!
startUp
    ^self
! !

"xxx_dyn.ic method 0x20000470; bytecode file offset 0x615ac"
!SstWSXmlObjectCache methodsFor: 'recovered'!
manage: recoveredArg1
    ^self
! !

"xxx_dyn.ic method 0x20000478; bytecode file offset 0x615ac"
!SstWSXmlObjectCache methodsFor: 'recovered'!
undeploy: recoveredArg1
    ^self
! !

"xxx_dyn.ic method 0x20000508; bytecode file offset 0x615fc"
!SstWSXmlObjectCache methodsFor: 'recovered'!
manage: recoveredArg1 inNamespace: recoveredArg2
    ^self
! !

"xxx_dyn.ic method 0x2000282c; bytecode file offset 0x63b1c"
!SstWSXmlObjectCache methodsFor: 'recovered'!
clear
    (self) initialize.
    ^self
! !

"xxx_dyn.ic method 0x200028e0; bytecode file offset 0x63b1c"
!SstWSXmlObjectCache methodsFor: 'recovered'!
shutDown
    (self) clear.
    ^self
! !

"xxx_dyn.ic method 0x2000ddf4; bytecode file offset 0x6eec8"
!SstWSXmlObjectCache methodsFor: 'recovered'!
deploy: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) sstImplementation.
    recoveredBlock5Value2 := (recoveredBlock5Value1) definedBy.
    recoveredBlock5Value3 := (recoveredBlock5Value2) addSchemasTo: (self).
    recoveredBlock5Value3
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"xxx_dyn.ic method 0x20012bd4; bytecode file offset 0x73d00"
!SstWSXmlObjectCache methodsFor: 'recovered'!
deserializationConfigurationNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super deserializationConfigurationNamed: (recoveredValue0).
    recoveredValue2 := [
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 |
    recoveredBlock11Value0 := AbtXmlObjectCache.
    recoveredBlock11Value1 := (recoveredBlock11Value0) current.
    recoveredBlock11Value2 := recoveredArg1.
    recoveredBlock11Value3 := (recoveredBlock11Value1) deserializationConfigurationNamed: (recoveredBlock11Value2).
    recoveredBlock11Value3
].
    recoveredValue3 := (recoveredValue1) ifNil: (recoveredValue2).
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x20012bf0; bytecode file offset 0x73d00"
!SstWSXmlObjectCache methodsFor: 'recovered'!
mappingSpecNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super mappingSpecNamed: (recoveredValue0).
    recoveredValue2 := [
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 |
    recoveredBlock11Value0 := AbtXmlObjectCache.
    recoveredBlock11Value1 := (recoveredBlock11Value0) current.
    recoveredBlock11Value2 := recoveredArg1.
    recoveredBlock11Value3 := (recoveredBlock11Value1) mappingSpecNamed: (recoveredBlock11Value2).
    recoveredBlock11Value3
].
    recoveredValue3 := (recoveredValue1) ifNil: (recoveredValue2).
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x20012c0c; bytecode file offset 0x73d00"
!SstWSXmlObjectCache methodsFor: 'recovered'!
schemaNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super schemaNamed: (recoveredValue0).
    recoveredValue2 := [
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 |
    recoveredBlock11Value0 := AbtXmlObjectCache.
    recoveredBlock11Value1 := (recoveredBlock11Value0) current.
    recoveredBlock11Value2 := recoveredArg1.
    recoveredBlock11Value3 := (recoveredBlock11Value1) schemaNamed: (recoveredBlock11Value2).
    recoveredBlock11Value3
].
    recoveredValue3 := (recoveredValue1) ifNil: (recoveredValue2).
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x20012c28; bytecode file offset 0x73d00"
!SstWSXmlObjectCache methodsFor: 'recovered'!
serializationConfigurationNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super serializationConfigurationNamed: (recoveredValue0).
    recoveredValue2 := [
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 |
    recoveredBlock11Value0 := AbtXmlObjectCache.
    recoveredBlock11Value1 := (recoveredBlock11Value0) current.
    recoveredBlock11Value2 := recoveredArg1.
    recoveredBlock11Value3 := (recoveredBlock11Value1) serializationConfigurationNamed: (recoveredBlock11Value2).
    recoveredBlock11Value3
].
    recoveredValue3 := (recoveredValue1) ifNil: (recoveredValue2).
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x20013648; bytecode file offset 0x74724"
!SstWSXmlObjectCache methodsFor: 'recovered'!
outputSerializerNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) outputSerializers.
    recoveredValue2 := (self) lookup: (recoveredValue0) in: (recoveredValue1).
    recoveredValue3 := [
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 |
    recoveredBlock11Value0 := AbtXmlObjectCache.
    recoveredBlock11Value1 := (recoveredBlock11Value0) current.
    recoveredBlock11Value2 := recoveredArg1.
    recoveredBlock11Value3 := (recoveredBlock11Value1) outputSerializerNamed: (recoveredBlock11Value2).
    recoveredBlock11Value3
].
    recoveredValue4 := (recoveredValue2) ifNil: (recoveredValue3).
    ^recoveredValue4
! !

"xxx_dyn.ic method 0x2001b430; bytecode file offset 0x7c508"
!SstWSXmlObjectCache methodsFor: 'recovered'!
serializationConfigurationFor: recoveredArg1 context: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) encodingStyle.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) abtXmlCacheKey.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) serializationConfigurationNamed: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) encodingStyle.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) serializationConfigurationNamed: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock34Value0 recoveredBlock34Value1 |
    recoveredBlock34Value0 := recoveredArg2.
    recoveredBlock34Value1 := (recoveredBlock34Value0) serializationConfiguration.
    recoveredBlock34Value1
].
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) ifNil: (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x20022fac; bytecode file offset 0x840a8"
!SstWSXmlObjectCache methodsFor: 'recovered'!
initializeSerializationConfigurations: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 |
    recoveredValue0 := AbtXmlDeserializationConfiguration.
    recoveredValue1 := (recoveredValue0) newSoapConfiguration.
    recoveredValue2 := (recoveredValue1) objectCache: (self).
    recoveredValue3 := SstSoapEnvelope.
    recoveredValue4 := (recoveredValue3) abtXmlCacheKey.
    (self) addDeserializationConfiguration: (recoveredValue2) named: (recoveredValue4).
    recoveredValue5 := AbtXmlDeserializationConfiguration.
    recoveredValue6 := (recoveredValue5) newWsdlConfiguration.
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

"xxx_dyn.ic method 0x2002a810; bytecode file offset 0x8b92c"
!SstWSXmlObjectCache methodsFor: 'recovered'!
serialize: recoveredArg1 context: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) serializationConfigurationFor: (recoveredStack1) context: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) newContext.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) abtXmlPrintUsing: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) xmlEncoding.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := [:recoveredBlock38Arg1 | 
    | recoveredBlock38Local1 recoveredBlock38Value0 recoveredBlock38Value1 recoveredBlock38Value2 recoveredBlock38Value3 recoveredBlock38Value4 recoveredBlock38Value5 recoveredBlock38Value6 recoveredBlock38Value7 recoveredBlock38Value8 recoveredBlock38Value9 recoveredBlock38Value10 recoveredBlock38Value11 recoveredBlock38Value12 recoveredBlock38Value13 recoveredBlock38Value14 recoveredBlock38Value15 recoveredBlock38Value16 recoveredBlock38Value17 recoveredBlock38Value18 recoveredBlock38Value19 recoveredBlock38Value20 |
    recoveredBlock38Value0 := WriteStream.
    recoveredBlock38Value1 := String.
    recoveredBlock38Value2 := (recoveredBlock38Value1) new: (100).
    recoveredBlock38Value3 := (recoveredBlock38Value0) on: (recoveredBlock38Value2).
    recoveredLocal1 := recoveredBlock38Value3.
    recoveredBlock38Value4 := AbtXmlStreamConverter.
    recoveredBlock38Value5 := recoveredBlock38Arg1.
    recoveredBlock38Value6 := (recoveredBlock38Value4) ibmCodePageForEncoding: (recoveredBlock38Value5).
    recoveredBlock38Value7 := [
    | recoveredBlock38Block66Value0 recoveredBlock38Block66Value1 recoveredBlock38Block66Value2 recoveredBlock38Block66Value3 |
    recoveredBlock38Block66Value0 := recoveredBlock38Arg1.
    recoveredBlock38Block66Value1 := (recoveredBlock38Block66Value0) printString.
    recoveredBlock38Block66Value2 := ('No code page found for encoding %1') bindWith: (recoveredBlock38Block66Value1).
    recoveredBlock38Block66Value3 := (self) error: (recoveredBlock38Block66Value2).
    recoveredBlock38Block66Value3
].
    recoveredBlock38Value8 := (recoveredBlock38Value6) ifNil: (recoveredBlock38Value7).
    recoveredLocal2 := recoveredBlock38Value8.
    recoveredBlock38Value9 := recoveredLocal1.
    recoveredBlock38Value10 := recoveredBlock38Value9.
    (recoveredBlock38Value10) nextPutAll: ('<?xml version="1.0" encoding="').
    recoveredBlock38Value11 := recoveredBlock38Value9.
    recoveredBlock38Value12 := recoveredBlock38Arg1.
    (recoveredBlock38Value11) nextPutAll: (recoveredBlock38Value12).
    recoveredBlock38Value13 := recoveredBlock38Value9.
    (recoveredBlock38Value13) nextPutAll: ('" ?>').
    (recoveredBlock38Value9) cr.
    recoveredBlock38Value14 := recoveredLocal1.
    recoveredBlock38Value15 := recoveredLocal3.
    recoveredBlock38Value16 := recoveredLocal2.
    recoveredBlock38Value17 := (recoveredBlock38Value15) convertToCodePage: (recoveredBlock38Value16).
    (recoveredBlock38Value14) nextPutAll: (recoveredBlock38Value17).
    recoveredBlock38Value18 := recoveredLocal1.
    recoveredBlock38Value19 := (recoveredBlock38Value18) contents.
    recoveredBlock38Value20 := recoveredBlock38Value19.
    recoveredLocal3 := recoveredBlock38Value20.
    recoveredBlock38Value19
].
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

