"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20018494; bytecode file offset 0x92209c"
!AbtXmlSchemaTypeFactory methodsFor: 'recovered'!
builtInPrimitiveTypes
    ^#('string' 'decimal' 'duration' 'dateTime' 'time' 'date' 'gYearMonth' 'gYear' 'gMonthDay' 'gDay' 'gMonth' 'boolean' 'base64Binary' 'hexBinary' 'float' 'double' 'anyURI' 'qName' 'notation')
! !

"ASDBase.ic method 0x2001c598; bytecode file offset 0x92209c"
!AbtXmlSchemaTypeFactory methodsFor: 'recovered'!
decimalDerivedTypes
    ^#('integer' 'nonPositiveInteger' 'long' 'nonNegativeInteger' 'negativeInteger' 'int' 'unsignedLong' 'positiveInteger' 'short' 'unsignedInt' 'byte' 'unsignedShort' 'unsignedByte')
! !

"ASDBase.ic method 0x20020828; bytecode file offset 0x92209c"
!AbtXmlSchemaTypeFactory methodsFor: 'recovered'!
obsoleteTypes
    ^#('uriReference' 'uriReferenceCompatible' 'qNameCompatible')
! !

"ASDBase.ic method 0x20020fcc; bytecode file offset 0x92209c"
!AbtXmlSchemaTypeFactory methodsFor: 'recovered'!
urTypes
    ^#('anyType' 'anySimpleType')
! !

"ASDBase.ic method 0x20021368; bytecode file offset 0x92209c"
!AbtXmlSchemaTypeFactory methodsFor: 'recovered'!
stringDerivedTypes
    ^#('normalizedString' 'token' 'language' 'name' 'nmtoken' 'ncName' 'nmtokens' 'id' 'idRef' 'entity' 'idRefs' 'entities')
! !

"ASDBase.ic method 0x2008684c; bytecode file offset 0x983108"
!AbtXmlSchemaTypeFactory methodsFor: 'recovered'!
newDerivedTypeNamed: recoveredArg1 forBaseType: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (recoveredValue0) newDerivedType.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) name: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200cb878; bytecode file offset 0x9c8200"
!AbtXmlSchemaTypeFactory methodsFor: 'recovered'!
ncName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := AbtXmlSchemaNCNameString.
    recoveredValue1 := AbtXmlSchemaNameString.
    recoveredValue2 := (self) newDerivedTypeNamed: (recoveredValue0) forBaseTypeNamed: (recoveredValue1) inNamespace: (nil).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200cb88c; bytecode file offset 0x9c8200"
!AbtXmlSchemaTypeFactory methodsFor: 'recovered'!
language
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := AbtXmlSchemaLanguageString.
    recoveredValue1 := AbtXmlSchemaTokenString.
    recoveredValue2 := (self) newDerivedTypeNamed: (recoveredValue0) forBaseTypeNamed: (recoveredValue1) inNamespace: (nil).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200cb8a0; bytecode file offset 0x9c8200"
!AbtXmlSchemaTypeFactory methodsFor: 'recovered'!
nmtokens
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := AbtXmlSchemaNMTOKENSString.
    recoveredValue1 := AbtXmlSchemaNMTOKENString.
    recoveredValue2 := (self) newListTypeNamed: (recoveredValue0) forItemTypeNamed: (recoveredValue1) inNamespace: (nil).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200cb8b4; bytecode file offset 0x9c8200"
!AbtXmlSchemaTypeFactory methodsFor: 'recovered'!
entity
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := AbtXmlSchemaENTITYString.
    recoveredValue1 := AbtXmlSchemaNCNameString.
    recoveredValue2 := (self) newDerivedTypeNamed: (recoveredValue0) forBaseTypeNamed: (recoveredValue1) inNamespace: (nil).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200cb8c8; bytecode file offset 0x9c8200"
!AbtXmlSchemaTypeFactory methodsFor: 'recovered'!
entities
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := AbtXmlSchemaENTITIESString.
    recoveredValue1 := AbtXmlSchemaENTITYString.
    recoveredValue2 := (self) newListTypeNamed: (recoveredValue0) forItemTypeNamed: (recoveredValue1) inNamespace: (nil).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200cb8dc; bytecode file offset 0x9c8200"
!AbtXmlSchemaTypeFactory methodsFor: 'recovered'!
notation
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := AbtXmlSchemaNOTATIONString.
    recoveredValue1 := AbtXmlSchemaQNameString.
    recoveredValue2 := (self) newDerivedTypeNamed: (recoveredValue0) forBaseTypeNamed: (recoveredValue1) inNamespace: (nil).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200cb8f0; bytecode file offset 0x9c8200"
!AbtXmlSchemaTypeFactory methodsFor: 'recovered'!
idRef
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := AbtXmlSchemaIDREFString.
    recoveredValue1 := AbtXmlSchemaNCNameString.
    recoveredValue2 := (self) newDerivedTypeNamed: (recoveredValue0) forBaseTypeNamed: (recoveredValue1) inNamespace: (nil).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200cb904; bytecode file offset 0x9c8200"
!AbtXmlSchemaTypeFactory methodsFor: 'recovered'!
id
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := AbtXmlSchemaIDString.
    recoveredValue1 := AbtXmlSchemaNCNameString.
    recoveredValue2 := (self) newDerivedTypeNamed: (recoveredValue0) forBaseTypeNamed: (recoveredValue1) inNamespace: (nil).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200cb918; bytecode file offset 0x9c8200"
!AbtXmlSchemaTypeFactory methodsFor: 'recovered'!
name
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := AbtXmlSchemaNameString.
    recoveredValue1 := AbtXmlSchemaTokenString.
    recoveredValue2 := (self) newDerivedTypeNamed: (recoveredValue0) forBaseTypeNamed: (recoveredValue1) inNamespace: (nil).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200cb92c; bytecode file offset 0x9c8200"
!AbtXmlSchemaTypeFactory methodsFor: 'recovered'!
nmtoken
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := AbtXmlSchemaNMTOKENString.
    recoveredValue1 := AbtXmlSchemaTokenString.
    recoveredValue2 := (self) newDerivedTypeNamed: (recoveredValue0) forBaseTypeNamed: (recoveredValue1) inNamespace: (nil).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200cb940; bytecode file offset 0x9c8200"
!AbtXmlSchemaTypeFactory methodsFor: 'recovered'!
idRefs
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := AbtXmlSchemaIDREFSString.
    recoveredValue1 := AbtXmlSchemaIDREFString.
    recoveredValue2 := (self) newListTypeNamed: (recoveredValue0) forItemTypeNamed: (recoveredValue1) inNamespace: (nil).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200cbe28; bytecode file offset 0x9c86e8"
!AbtXmlSchemaTypeFactory methodsFor: 'recovered'!
token
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := AbtXmlSchemaTokenString.
    recoveredValue1 := (self) newDerivedTypeNamed: (recoveredValue0) forBaseTypeNamed: ('normalizedString') inNamespace: (nil).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200cbff4; bytecode file offset 0x9c892c"
!AbtXmlSchemaTypeFactory methodsFor: 'recovered'!
dateTime
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := AbtXmlSchemaDateTimeString.
    recoveredValue1 := DateAndTime.
    recoveredValue2 := (self) newBaseTypeNamed: (recoveredValue0) namespace: (nil) smalltalkClass: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200cc008; bytecode file offset 0x9c892c"
!AbtXmlSchemaTypeFactory methodsFor: 'recovered'!
float
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := AbtXmlSchemaFloatString.
    recoveredValue1 := Float.
    recoveredValue2 := (self) newBaseTypeNamed: (recoveredValue0) namespace: (nil) smalltalkClass: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200cc01c; bytecode file offset 0x9c892c"
!AbtXmlSchemaTypeFactory methodsFor: 'recovered'!
string
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := AbtXmlSchemaStringString.
    recoveredValue1 := String.
    recoveredValue2 := (self) newBaseTypeNamed: (recoveredValue0) namespace: (nil) smalltalkClass: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200cc030; bytecode file offset 0x9c892c"
!AbtXmlSchemaTypeFactory methodsFor: 'recovered'!
decimal
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := AbtXmlSchemaDecimalString.
    recoveredValue1 := ScaledDecimal.
    recoveredValue2 := (self) newBaseTypeNamed: (recoveredValue0) namespace: (nil) smalltalkClass: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200cc044; bytecode file offset 0x9c892c"
!AbtXmlSchemaTypeFactory methodsFor: 'recovered'!
boolean
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := AbtXmlSchemaBooleanString.
    recoveredValue1 := Boolean.
    recoveredValue2 := (self) newBaseTypeNamed: (recoveredValue0) namespace: (nil) smalltalkClass: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200cc058; bytecode file offset 0x9c892c"
!AbtXmlSchemaTypeFactory methodsFor: 'recovered'!
double
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := AbtXmlSchemaDoubleString.
    recoveredValue1 := Float.
    recoveredValue2 := (self) newBaseTypeNamed: (recoveredValue0) namespace: (nil) smalltalkClass: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200cc06c; bytecode file offset 0x9c892c"
!AbtXmlSchemaTypeFactory methodsFor: 'recovered'!
hexBinary
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := AbtXmlSchemaHexBinaryString.
    recoveredValue1 := String.
    recoveredValue2 := (self) newBaseTypeNamed: (recoveredValue0) namespace: (nil) smalltalkClass: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200cfe10; bytecode file offset 0x9cc6e4"
!AbtXmlSchemaTypeFactory methodsFor: 'recovered'!
normalizedString
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := AbtXmlSchemaStringString.
    recoveredValue1 := (self) newDerivedTypeNamed: ('normalizedString') forBaseTypeNamed: (recoveredValue0) inNamespace: (nil).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200cfe24; bytecode file offset 0x9cc6e4"
!AbtXmlSchemaTypeFactory methodsFor: 'recovered'!
qNameCompatible
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := AbtXmlSchemaStringString.
    recoveredValue1 := (self) newDerivedTypeNamed: ('qname') forBaseTypeNamed: (recoveredValue0) inNamespace: (nil).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200d1f50; bytecode file offset 0x9ce8ec"
!AbtXmlSchemaTypeFactory methodsFor: 'recovered'!
date
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Date.
    recoveredValue1 := (self) newBaseTypeNamed: ('date') namespace: (nil) smalltalkClass: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200d1f64; bytecode file offset 0x9ce8ec"
!AbtXmlSchemaTypeFactory methodsFor: 'recovered'!
gDay
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := String.
    recoveredValue1 := (self) newBaseTypeNamed: ('gDay') namespace: (nil) smalltalkClass: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200d1f78; bytecode file offset 0x9ce8ec"
!AbtXmlSchemaTypeFactory methodsFor: 'recovered'!
uriReference
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := String.
    recoveredValue1 := (self) newBaseTypeNamed: ('uriReference') namespace: (nil) smalltalkClass: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200d1f8c; bytecode file offset 0x9ce8ec"
!AbtXmlSchemaTypeFactory methodsFor: 'recovered'!
anyURI
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := String.
    recoveredValue1 := (self) newBaseTypeNamed: ('anyURI') namespace: (nil) smalltalkClass: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200d1fa0; bytecode file offset 0x9ce8ec"
!AbtXmlSchemaTypeFactory methodsFor: 'recovered'!
anySimpleType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Object.
    recoveredValue1 := (self) newBaseTypeNamed: ('anySimpleType') namespace: (nil) smalltalkClass: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200d1fb4; bytecode file offset 0x9ce8ec"
!AbtXmlSchemaTypeFactory methodsFor: 'recovered'!
gYearMonth
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := String.
    recoveredValue1 := (self) newBaseTypeNamed: ('gYearMonth') namespace: (nil) smalltalkClass: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200d1fc8; bytecode file offset 0x9ce8ec"
!AbtXmlSchemaTypeFactory methodsFor: 'recovered'!
time
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Time.
    recoveredValue1 := (self) newBaseTypeNamed: ('time') namespace: (nil) smalltalkClass: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200d1fdc; bytecode file offset 0x9ce8ec"
!AbtXmlSchemaTypeFactory methodsFor: 'recovered'!
gMonthDay
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := String.
    recoveredValue1 := (self) newBaseTypeNamed: ('gMonthDay') namespace: (nil) smalltalkClass: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200d1ff0; bytecode file offset 0x9ce8ec"
!AbtXmlSchemaTypeFactory methodsFor: 'recovered'!
gYear
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := String.
    recoveredValue1 := (self) newBaseTypeNamed: ('gYear') namespace: (nil) smalltalkClass: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200d2004; bytecode file offset 0x9ce8ec"
!AbtXmlSchemaTypeFactory methodsFor: 'recovered'!
uriReferenceCompatible
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := String.
    recoveredValue1 := (self) newBaseTypeNamed: ('uri-reference') namespace: (nil) smalltalkClass: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200d2018; bytecode file offset 0x9ce8ec"
!AbtXmlSchemaTypeFactory methodsFor: 'recovered'!
gMonth
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := String.
    recoveredValue1 := (self) newBaseTypeNamed: ('gMonth') namespace: (nil) smalltalkClass: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200d202c; bytecode file offset 0x9ce8ec"
!AbtXmlSchemaTypeFactory methodsFor: 'recovered'!
duration
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Duration.
    recoveredValue1 := (self) newBaseTypeNamed: ('duration') namespace: (nil) smalltalkClass: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200dd164; bytecode file offset 0x9d9a24"
!AbtXmlSchemaTypeFactory methodsFor: 'recovered'!
newBaseTypeNamed: recoveredArg1 namespace: recoveredArg2 smalltalkClass: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := AbtXmlSchemaSimpleType.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (recoveredValue0) name: (recoveredValue1) smalltalkClass: (recoveredValue2).
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue3) namespaceUri: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200dd22c; bytecode file offset 0x9d9b78"
!AbtXmlSchemaTypeFactory methodsFor: 'recovered'!
newBaseTypeNamed: recoveredArg1 namespace: recoveredArg2 converter: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := AbtXmlSchemaSimpleType.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue0) name: (recoveredValue1) namespace: (recoveredValue2) converter: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20139860; bytecode file offset 0xa3616c"
!AbtXmlSchemaTypeFactory methodsFor: 'recovered'!
unsignedLong
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := AbtXmlSchemaUnsignedLongString.
    recoveredValue1 := AbtXmlSchemaNonNegativeIntegerString.
    recoveredValue2 := (self) newDerivedTypeNamed: (recoveredValue0) forBaseTypeNamed: (recoveredValue1) inNamespace: (nil).
    recoveredValue3 := AbtXmlSchemaMaxInclusiveFacetString.
    recoveredValue4 := (recoveredValue2) addFacetNamed: (recoveredValue3) value: (18446744073709551615).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20139880; bytecode file offset 0xa3616c"
!AbtXmlSchemaTypeFactory methodsFor: 'recovered'!
unsignedShort
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := AbtXmlSchemaUnsignedShortString.
    recoveredValue1 := AbtXmlSchemaUnsignedIntString.
    recoveredValue2 := (self) newDerivedTypeNamed: (recoveredValue0) forBaseTypeNamed: (recoveredValue1) inNamespace: (nil).
    recoveredValue3 := AbtXmlSchemaMaxInclusiveFacetString.
    recoveredValue4 := (recoveredValue2) addFacetNamed: (recoveredValue3) value: (65535).
    ^recoveredValue4
! !

"ASDBase.ic method 0x201398a0; bytecode file offset 0xa3616c"
!AbtXmlSchemaTypeFactory methodsFor: 'recovered'!
unsignedInt
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := AbtXmlSchemaUnsignedIntString.
    recoveredValue1 := AbtXmlSchemaUnsignedLongString.
    recoveredValue2 := (self) newDerivedTypeNamed: (recoveredValue0) forBaseTypeNamed: (recoveredValue1) inNamespace: (nil).
    recoveredValue3 := AbtXmlSchemaMaxInclusiveFacetString.
    recoveredValue4 := (recoveredValue2) addFacetNamed: (recoveredValue3) value: (4294967295).
    ^recoveredValue4
! !

"ASDBase.ic method 0x201398d4; bytecode file offset 0xa361b8"
!AbtXmlSchemaTypeFactory methodsFor: 'recovered'!
nonPositiveInteger
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := AbtXmlSchemaNonPositiveIntegerString.
    recoveredValue1 := AbtXmlSchemaIntegerString.
    recoveredValue2 := (self) newDerivedTypeNamed: (recoveredValue0) forBaseTypeNamed: (recoveredValue1) inNamespace: (nil).
    recoveredValue3 := AbtXmlSchemaMaxInclusiveFacetString.
    recoveredValue4 := (recoveredValue2) addFacetNamed: (recoveredValue3) value: (0).
    ^recoveredValue4
! !

"ASDBase.ic method 0x201398f0; bytecode file offset 0xa361b8"
!AbtXmlSchemaTypeFactory methodsFor: 'recovered'!
nonNegativeInteger
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := AbtXmlSchemaNonNegativeIntegerString.
    recoveredValue1 := AbtXmlSchemaIntegerString.
    recoveredValue2 := (self) newDerivedTypeNamed: (recoveredValue0) forBaseTypeNamed: (recoveredValue1) inNamespace: (nil).
    recoveredValue3 := AbtXmlSchemaMinInclusiveFacetString.
    recoveredValue4 := (recoveredValue2) addFacetNamed: (recoveredValue3) value: (0).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20139920; bytecode file offset 0xa361e8"
!AbtXmlSchemaTypeFactory methodsFor: 'recovered'!
positiveInteger
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := AbtXmlSchemaPositiveIntegerString.
    recoveredValue1 := AbtXmlSchemaNonNegativeIntegerString.
    recoveredValue2 := (self) newDerivedTypeNamed: (recoveredValue0) forBaseTypeNamed: (recoveredValue1) inNamespace: (nil).
    recoveredValue3 := AbtXmlSchemaMinInclusiveFacetString.
    recoveredValue4 := (recoveredValue2) addFacetNamed: (recoveredValue3) value: (1).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20139950; bytecode file offset 0xa36218"
!AbtXmlSchemaTypeFactory methodsFor: 'recovered'!
negativeInteger
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := AbtXmlSchemaNegativeIntegerString.
    recoveredValue1 := AbtXmlSchemaNonPositiveIntegerString.
    recoveredValue2 := (self) newDerivedTypeNamed: (recoveredValue0) forBaseTypeNamed: (recoveredValue1) inNamespace: (nil).
    recoveredValue3 := AbtXmlSchemaMaxInclusiveFacetString.
    recoveredValue4 := (recoveredValue2) addFacetNamed: (recoveredValue3) value: (-1).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20139980; bytecode file offset 0xa3624c"
!AbtXmlSchemaTypeFactory methodsFor: 'recovered'!
qName
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := AbtXmlSchemaQNameString.
    recoveredValue1 := AbtXmlSchemaStringString.
    recoveredValue2 := (self) newDerivedTypeNamed: (recoveredValue0) forBaseTypeNamed: (recoveredValue1) inNamespace: (nil).
    recoveredValue3 := AbtXmlSchemaQNameConverter.
    recoveredValue4 := (recoveredValue3) new.
    recoveredValue5 := (recoveredValue2) converter: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x2015bd5c; bytecode file offset 0xa5862c"
!AbtXmlSchemaTypeFactory methodsFor: 'recovered'!
integer
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := AbtXmlSchemaIntegerString.
    recoveredValue1 := AbtXmlSchemaDecimalString.
    recoveredValue2 := (self) newDerivedTypeNamed: (recoveredValue0) forBaseTypeNamed: (recoveredValue1) inNamespace: (nil).
    recoveredValue3 := AbtTypeConverter.
    recoveredValue4 := Integer.
    recoveredValue5 := (recoveredValue3) smalltalkClass: (recoveredValue4).
    recoveredValue6 := (recoveredValue2) converter: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x2015bd98; bytecode file offset 0xa58660"
!AbtXmlSchemaTypeFactory methodsFor: 'recovered'!
unsignedByte
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := AbtXmlSchemaUnsignedByteString.
    recoveredValue1 := AbtXmlSchemaUnsignedShortString.
    recoveredValue2 := (self) newDerivedTypeNamed: (recoveredValue0) forBaseTypeNamed: (recoveredValue1) inNamespace: (nil).
    recoveredValue3 := AbtXmlSchemaMaxInclusiveFacetString.
    recoveredValue4 := (recoveredValue2) addFacetNamed: (recoveredValue3) value: (255).
    ^recoveredValue4
! !

"ASDBase.ic method 0x2015ea0c; bytecode file offset 0xa5b2d8"
!AbtXmlSchemaTypeFactory methodsFor: 'recovered'!
anyType
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Object.
    recoveredValue1 := (self) newBaseTypeNamed: ('anyType') namespace: (nil) smalltalkClass: (recoveredValue0).
    recoveredValue2 := AbtXmlSchemaAnyTypeConverter.
    recoveredValue3 := Object.
    recoveredValue4 := (recoveredValue2) smalltalkClass: (recoveredValue3).
    recoveredValue5 := (recoveredValue1) converter: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x201adbcc; bytecode file offset 0xaaa4f0"
!AbtXmlSchemaTypeFactory methodsFor: 'recovered'!
long
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := AbtXmlSchemaLongString.
    recoveredValue1 := AbtXmlSchemaIntegerString.
    recoveredValue2 := (self) newDerivedTypeNamed: (recoveredValue0) forBaseTypeNamed: (recoveredValue1) inNamespace: (nil).
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := AbtXmlSchemaMaxInclusiveFacetString.
    (recoveredValue3) addFacetNamed: (recoveredValue4) value: (9223372036854775807).
    recoveredValue5 := AbtXmlSchemaMinInclusiveFacetString.
    recoveredValue6 := (recoveredValue2) addFacetNamed: (recoveredValue5) value: (-9223372036854775808).
    ^recoveredValue6
! !

"ASDBase.ic method 0x201adbf4; bytecode file offset 0xaaa4f0"
!AbtXmlSchemaTypeFactory methodsFor: 'recovered'!
int
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := AbtXmlSchemaIntString.
    recoveredValue1 := AbtXmlSchemaLongString.
    recoveredValue2 := (self) newDerivedTypeNamed: (recoveredValue0) forBaseTypeNamed: (recoveredValue1) inNamespace: (nil).
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := AbtXmlSchemaMaxInclusiveFacetString.
    (recoveredValue3) addFacetNamed: (recoveredValue4) value: (2147483647).
    recoveredValue5 := AbtXmlSchemaMinInclusiveFacetString.
    recoveredValue6 := (recoveredValue2) addFacetNamed: (recoveredValue5) value: (-2147483648).
    ^recoveredValue6
! !

"ASDBase.ic method 0x201adc1c; bytecode file offset 0xaaa4f0"
!AbtXmlSchemaTypeFactory methodsFor: 'recovered'!
short
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := AbtXmlSchemaShortString.
    recoveredValue1 := AbtXmlSchemaIntString.
    recoveredValue2 := (self) newDerivedTypeNamed: (recoveredValue0) forBaseTypeNamed: (recoveredValue1) inNamespace: (nil).
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := AbtXmlSchemaMaxInclusiveFacetString.
    (recoveredValue3) addFacetNamed: (recoveredValue4) value: (32767).
    recoveredValue5 := AbtXmlSchemaMinInclusiveFacetString.
    recoveredValue6 := (recoveredValue2) addFacetNamed: (recoveredValue5) value: (-32768).
    ^recoveredValue6
! !

"ASDBase.ic method 0x201e1660; bytecode file offset 0xaddf2c"
!AbtXmlSchemaTypeFactory methodsFor: 'recovered'!
byte
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := AbtXmlSchemaByteString.
    recoveredValue1 := AbtXmlSchemaShortString.
    recoveredValue2 := (self) newDerivedTypeNamed: (recoveredValue0) forBaseTypeNamed: (recoveredValue1) inNamespace: (nil).
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := AbtXmlSchemaMaxInclusiveFacetString.
    (recoveredValue3) addFacetNamed: (recoveredValue4) value: (127).
    recoveredValue5 := AbtXmlSchemaMinInclusiveFacetString.
    recoveredValue6 := (recoveredValue2) addFacetNamed: (recoveredValue5) value: (-128).
    ^recoveredValue6
! !

"ASDBase.ic method 0x2029d288; bytecode file offset 0xb99b68"
!AbtXmlSchemaTypeFactory methodsFor: 'recovered'!
newListTypeNamed: recoveredArg1 forItemTypeNamed: recoveredArg2 inNamespace: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := AbtXmlObjectCache.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) current.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) typeNamed: (recoveredStack2) inNamespace: (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := AbtXmlSchemaList.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack2) name: (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) itemType: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredPC := 43.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := 'Item type named %1 in namespace %2 was not found'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := (recoveredStack3) printString.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack4 := (recoveredStack4) printString.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) error: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2029d2e8; bytecode file offset 0xb99bc8"
!AbtXmlSchemaTypeFactory methodsFor: 'recovered'!
newDerivedTypeNamed: recoveredArg1 forBaseTypeNamed: recoveredArg2 inNamespace: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := AbtXmlObjectCache.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) current.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) typeNamed: (recoveredStack2) inNamespace: (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack2) name: (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) addRestrictionForBase: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredPC := 43.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := 'Base type named %1 in namespace %2 was not found'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := (recoveredStack3) printString.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack4 := (recoveredStack4) printString.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) error: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2031ec6c; bytecode file offset 0xc1b54c"
!AbtXmlSchemaTypeFactory methodsFor: 'recovered'!
initializeBaseSchema
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := AbtXmlSchema.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := AbtXmlSchema.
    recoveredValue3 := (recoveredValue2) defaultNamespace.
    recoveredValue4 := (recoveredValue1) targetNamespace: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := AbtXmlObjectCache.
    recoveredValue6 := (recoveredValue5) current.
    recoveredValue7 := recoveredLocal1.
    (recoveredValue6) addSchema: (recoveredValue7).
    recoveredValue8 := [:recoveredBlock25Arg1 | 
    | recoveredBlock25Value0 recoveredBlock25Value1 recoveredBlock25Value2 recoveredBlock25Value3 |
    recoveredBlock25Value0 := recoveredBlock25Arg1.
    recoveredBlock25Value1 := (self) perform: (recoveredBlock25Value0).
    recoveredBlock25Value2 := [:recoveredBlock25Block35Arg1 | 
    | recoveredBlock25Block35Value0 recoveredBlock25Block35Value1 recoveredBlock25Block35Value2 recoveredBlock25Block35Value3 |
    recoveredBlock25Block35Value0 := recoveredLocal1.
    recoveredBlock25Block35Value1 := recoveredBlock25Block35Arg1.
    recoveredBlock25Block35Value2 := (self) perform: (recoveredBlock25Block35Value1).
    recoveredBlock25Block35Value3 := (recoveredBlock25Block35Value0) addType: (recoveredBlock25Block35Value2).
    recoveredBlock25Block35Value3
].
    recoveredBlock25Value3 := (recoveredBlock25Value1) do: (recoveredBlock25Value2).
    recoveredBlock25Value3
].
    (#('urTypes' 'builtInPrimitiveTypes' 'stringDerivedTypes' 'decimalDerivedTypes' 'obsoleteTypes')) do: (recoveredValue8).
    ^self
! !

"ASDBase.ic method 0x2034e99c; bytecode file offset 0xc4b26c"
!AbtXmlSchemaTypeFactory methodsFor: 'recovered'!
copyConvertersFrom: recoveredArg1 to: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) types.
    recoveredValue2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Stack0 recoveredBlock8Stack1 recoveredBlock8Stack2 recoveredBlock8Stack3 recoveredBlock8Stack4 recoveredBlock8PC recoveredBlock8Step recoveredBlock8Done recoveredBlock8Result |
    recoveredBlock8Stack0 := self.
    recoveredBlock8PC := 14.
    recoveredBlock8Done := false.
    [recoveredBlock8Done not] whileTrue: [
        recoveredBlock8Step := recoveredBlock8PC.
        recoveredBlock8Step = 14 ifTrue: [
            recoveredBlock8Stack1 := nil.
            recoveredBlock8PC := 15.
        ].
        recoveredBlock8Step = 15 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Arg1.
            recoveredBlock8PC := 16.
        ].
        recoveredBlock8Step = 16 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) isSimpleType.
            recoveredBlock8PC := 17.
        ].
        recoveredBlock8Step = 17 ifTrue: [
            (recoveredBlock8Stack2) ifTrue: [recoveredBlock8PC := 20] ifFalse: [recoveredBlock8PC := 60].
        ].
        recoveredBlock8Step = 20 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Arg1.
            recoveredBlock8PC := 21.
        ].
        recoveredBlock8Step = 21 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) converter.
            recoveredBlock8PC := 22.
        ].
        recoveredBlock8Step = 22 ifTrue: [
            (recoveredBlock8Stack2 == nil) ifTrue: [recoveredBlock8PC := 60] ifFalse: [recoveredBlock8PC := 26].
        ].
        recoveredBlock8Step = 26 ifTrue: [
            recoveredBlock8PC := 27.
        ].
        recoveredBlock8Step = 27 ifTrue: [
            recoveredBlock8Stack1 := nil.
            recoveredBlock8PC := 28.
        ].
        recoveredBlock8Step = 28 ifTrue: [
            recoveredBlock8Stack2 := recoveredArg2.
            recoveredBlock8PC := 31.
        ].
        recoveredBlock8Step = 31 ifTrue: [
            recoveredBlock8Stack3 := recoveredBlock8Arg1.
            recoveredBlock8PC := 32.
        ].
        recoveredBlock8Step = 32 ifTrue: [
            recoveredBlock8Stack3 := (recoveredBlock8Stack3) name.
            recoveredBlock8PC := 33.
        ].
        recoveredBlock8Step = 33 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) typeNamed: (recoveredBlock8Stack3).
            recoveredBlock8PC := 35.
        ].
        recoveredBlock8Step = 35 ifTrue: [
            recoveredBlock8Stack3 := recoveredBlock8Stack2.
            recoveredBlock8PC := 36.
        ].
        recoveredBlock8Step = 36 ifTrue: [
            recoveredLocal1 := recoveredBlock8Stack3.
            recoveredBlock8PC := 39.
        ].
        recoveredBlock8Step = 39 ifTrue: [
            (recoveredBlock8Stack2 == nil) ifTrue: [recoveredBlock8PC := 60] ifFalse: [recoveredBlock8PC := 42].
        ].
        recoveredBlock8Step = 42 ifTrue: [
            recoveredBlock8PC := 43.
        ].
        recoveredBlock8Step = 43 ifTrue: [
            recoveredBlock8Stack1 := nil.
            recoveredBlock8PC := 44.
        ].
        recoveredBlock8Step = 44 ifTrue: [
            recoveredBlock8Stack2 := recoveredLocal1.
            recoveredBlock8PC := 47.
        ].
        recoveredBlock8Step = 47 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) isSimpleType.
            recoveredBlock8PC := 48.
        ].
        recoveredBlock8Step = 48 ifTrue: [
            (recoveredBlock8Stack2) ifTrue: [recoveredBlock8PC := 52] ifFalse: [recoveredBlock8PC := 60].
        ].
        recoveredBlock8Step = 52 ifTrue: [
            recoveredBlock8PC := 53.
        ].
        recoveredBlock8Step = 53 ifTrue: [
            recoveredBlock8Stack1 := recoveredLocal1.
            recoveredBlock8PC := 56.
        ].
        recoveredBlock8Step = 56 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Arg1.
            recoveredBlock8PC := 57.
        ].
        recoveredBlock8Step = 57 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) converter.
            recoveredBlock8PC := 58.
        ].
        recoveredBlock8Step = 58 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) converter: (recoveredBlock8Stack2).
            recoveredBlock8PC := 60.
        ].
        recoveredBlock8Step = 60 ifTrue: [
            recoveredBlock8Result := recoveredBlock8Stack1.
            recoveredBlock8Done := true.
        ].
    ].
    recoveredBlock8Result
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20365f0c; bytecode file offset 0xc627f8"
!AbtXmlSchemaTypeFactory methodsFor: 'recovered'!
base64Binary
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'base64Binary'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := ByteArray.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) newBaseTypeNamed: (recoveredStack1) namespace: (recoveredStack2) smalltalkClass: (recoveredStack3).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := AbtPluggableTypeConverter.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := [:block280f0c48Arg1 :block280f0c48Arg2 | 
    | block280f0c48Local1 block280f0c48Stack0 block280f0c48Stack1 block280f0c48Stack2 block280f0c48Stack3 block280f0c48PC block280f0c48Step block280f0c48Done block280f0c48Result |
    block280f0c48Stack0 := self.
    block280f0c48PC := 4.
    block280f0c48Done := false.
    [block280f0c48Done not] whileTrue: [
        block280f0c48Step := block280f0c48PC.
        block280f0c48Step = 4 ifTrue: [
            block280f0c48Stack1 := AbtBase64Coder.
            block280f0c48PC := 6.
        ].
        block280f0c48Step = 6 ifTrue: [
            block280f0c48Stack1 := (block280f0c48Stack1) current.
            block280f0c48PC := 8.
        ].
        block280f0c48Step = 8 ifTrue: [
            block280f0c48Stack2 := block280f0c48Arg1.
            block280f0c48PC := 9.
        ].
        block280f0c48Step = 9 ifTrue: [
            block280f0c48Stack1 := (block280f0c48Stack1) decode: (block280f0c48Stack2).
            block280f0c48PC := 11.
        ].
        block280f0c48Step = 11 ifTrue: [
            block280f0c48Stack2 := block280f0c48Stack1.
            block280f0c48PC := 12.
        ].
        block280f0c48Step = 12 ifTrue: [
            block280f0c48Local1 := block280f0c48Stack2.
            block280f0c48PC := 13.
        ].
        block280f0c48Step = 13 ifTrue: [
            (block280f0c48Stack1 == nil) ifTrue: [block280f0c48PC := 20] ifFalse: [block280f0c48PC := 16].
        ].
        block280f0c48Step = 16 ifTrue: [
            block280f0c48Stack1 := block280f0c48Local1.
            block280f0c48PC := 17.
        ].
        block280f0c48Step = 17 ifTrue: [
            block280f0c48PC := 21.
        ].
        block280f0c48Step = 20 ifTrue: [
            block280f0c48Stack1 := block280f0c48Arg1.
            block280f0c48PC := 21.
        ].
        block280f0c48Step = 21 ifTrue: [
            block280f0c48Result := block280f0c48Stack1.
            block280f0c48Done := true.
        ].
    ].
    block280f0c48Result
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1) fromBlock: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := [:block280f0c6cArg1 :block280f0c6cArg2 | 
    | block280f0c6cValue0 block280f0c6cValue1 block280f0c6cValue2 block280f0c6cValue3 |
    block280f0c6cValue0 := AbtBase64Coder.
    block280f0c6cValue1 := (block280f0c6cValue0) current.
    block280f0c6cValue2 := block280f0c6cArg1.
    block280f0c6cValue3 := (block280f0c6cValue1) encode: (block280f0c6cValue2).
    block280f0c6cValue3
].
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) toBlock: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) converter: (recoveredStack1).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

