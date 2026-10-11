"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x200167d8; bytecode file offset 0x778cc"
!AbtXmlSerializationConfiguration class methodsFor: 'recovered'!
newSoapConfiguration
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := SstSoapEnvelope.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := (recoveredValue1) abtXmlSerializationConfiguration.
    recoveredValue3 := (recoveredValue2) copy.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredValue4.
    recoveredValue6 := SstSoapArrayOutputSerializer.
    recoveredValue7 := (recoveredValue6) arrayTypeFormatBlock.
    recoveredValue8 := SstSoapDefaultEncodingNamespace.
    (recoveredValue5) useProcessor: (recoveredValue7) forAttributeNamed: ('arrayType') inNamespace: (recoveredValue8).
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := SstSoapArray.
    recoveredValue11 := (recoveredValue10) abtXmlSerializationConfiguration.
    recoveredValue12 := SstSoapDefaultEncodingNamespace.
    (recoveredValue9) useConfiguration: (recoveredValue11) forElementNamed: ('Array') inNamespace: (recoveredValue12).
    recoveredValue13 := recoveredLocal1.
    ^recoveredValue13
! !

