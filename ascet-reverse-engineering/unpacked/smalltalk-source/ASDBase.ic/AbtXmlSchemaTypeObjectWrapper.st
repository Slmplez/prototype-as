"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200dbacc; bytecode file offset 0x9d8388"
!AbtXmlSchemaTypeObjectWrapper methodsFor: 'recovered'!
abtXmlPrintOn: recoveredArg1 context: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) object.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (self) abtXmlPrint: (recoveredValue0) on: (recoveredValue1) context: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20111d9c; bytecode file offset 0xa0e660"
!AbtXmlSchemaTypeObjectWrapper methodsFor: 'recovered'!
abtXmlPrint: recoveredArg1 on: recoveredArg2 context: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) type.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue2) abtAsXmlStream.
    recoveredValue4 := (self) abtXmlName.
    recoveredValue5 := recoveredArg3.
    (recoveredValue0) abtXmlPrint: (recoveredValue1) on: (recoveredValue3) tagName: (recoveredValue4) context: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x201620ec; bytecode file offset 0xa5e9c0"
!AbtXmlSchemaTypeObjectWrapper methodsFor: 'recovered'!
abtXmlSerializationConfiguration
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := super abtXmlSerializationConfiguration.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) object.
    recoveredValue3 := (recoveredValue2) abtXmlMappingSpecification.
    (recoveredValue1) mappingSpec: (recoveredValue3).
    recoveredValue4 := AbtXmlSchemaOutputSerializer.
    recoveredValue5 := (recoveredValue4) current.
    recoveredValue6 := (recoveredValue0) serializer: (recoveredValue5).
    ^recoveredValue6
! !

