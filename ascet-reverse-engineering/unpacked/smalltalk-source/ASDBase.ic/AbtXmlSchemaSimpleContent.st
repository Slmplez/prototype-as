"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20077ee4; bytecode file offset 0x9757c8"
!AbtXmlSchemaSimpleContent methodsFor: 'recovered'!
isContentContainer
    ^true
! !

"ASDBase.ic method 0x200dc17c; bytecode file offset 0x9d8a98"
!AbtXmlSchemaSimpleContent methodsFor: 'recovered'!
initializeObjectFor: recoveredArg1 context: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (recoveredValue0) deserializer.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue1) initializeObjectFor: (recoveredValue2) simpleContent: (self) context: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200eccac; bytecode file offset 0x9e95c8"
!AbtXmlSchemaSimpleContent methodsFor: 'recovered'!
abtXmlPrint: recoveredArg1 on: recoveredArg2 context: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := (recoveredValue0) serializer.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    (recoveredValue1) abtXmlPrint: (recoveredValue2) on: (recoveredValue3) simpleContent: (self) context: (recoveredValue4).
    ^self
! !

