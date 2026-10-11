"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20014040; bytecode file offset 0x912098"
!AbtXmlSchemaSimpleType class methodsFor: 'recovered'!
defaultConverter
    | recoveredValue0 |
    recoveredValue0 := AbtTypeConverter.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2009159c; bytecode file offset 0x98de70"
!AbtXmlSchemaSimpleType class methodsFor: 'recovered'!
new
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super new.
    recoveredValue1 := (recoveredValue0) initialize.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200c8838; bytecode file offset 0x9c5114"
!AbtXmlSchemaSimpleType class methodsFor: 'recovered'!
name: recoveredArg1 converter: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) defaultNamespace.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (self) name: (recoveredValue0) namespace: (recoveredValue1) converter: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x201007e4; bytecode file offset 0x9fd0a8"
!AbtXmlSchemaSimpleType class methodsFor: 'recovered'!
name: recoveredArg1 smalltalkClass: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) defaultNamespace.
    recoveredValue2 := (self) defaultConverter.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue2) smalltalkClass: (recoveredValue3).
    recoveredValue5 := (self) name: (recoveredValue0) namespace: (recoveredValue1) converter: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x20111ba4; bytecode file offset 0xa0e4c8"
!AbtXmlSchemaSimpleType class methodsFor: 'recovered'!
name: recoveredArg1 namespace: recoveredArg2 converter: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) name: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg2.
    (recoveredValue3) namespaceUri: (recoveredValue4).
    recoveredValue5 := recoveredArg3.
    recoveredValue6 := (recoveredValue0) converter: (recoveredValue5).
    ^recoveredValue6
! !

