"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2006b600; bytecode file offset 0x96873c"
!AbtXmlSchemaAnyAttribute methodsFor: 'recovered'!
namespace
    | recoveredValue0 |
    recoveredValue0 := namespace.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006c00c; bytecode file offset 0x9692b0"
!AbtXmlSchemaAnyAttribute methodsFor: 'recovered'!
processContents
    | recoveredValue0 |
    recoveredValue0 := processContents.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20074b94; bytecode file offset 0x9757c8"
!AbtXmlSchemaAnyAttribute methodsFor: 'recovered'!
isAnyAttribute
    ^true
! !

"ASDBase.ic method 0x20078b64; bytecode file offset 0x9757c8"
!AbtXmlSchemaAnyAttribute methodsFor: 'recovered'!
isAttribute
    ^true
! !

"ASDBase.ic method 0x200c2b20; bytecode file offset 0x9bf474"
!AbtXmlSchemaAnyAttribute methodsFor: 'recovered'!
namespace: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    namespace := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c301c; bytecode file offset 0x9bfde0"
!AbtXmlSchemaAnyAttribute methodsFor: 'recovered'!
processContents: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    processContents := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200ed3ec; bytecode file offset 0x9e9ca8"
!AbtXmlSchemaAnyAttribute methodsFor: 'recovered'!
abtXmlPrint: recoveredArg1 on: recoveredArg2 context: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) tagName.
    recoveredValue3 := recoveredArg3.
    (self) abtXmlPrint: (recoveredValue0) on: (recoveredValue1) tagName: (recoveredValue2) context: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20102530; bytecode file offset 0x9fedfc"
!AbtXmlSchemaAnyAttribute methodsFor: 'recovered'!
abtXmlPrint: recoveredArg1 on: recoveredArg2 tagName: recoveredArg3 context: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg4.
    recoveredValue1 := (recoveredValue0) serializer.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := recoveredArg4.
    (recoveredValue1) abtXmlPrint: (recoveredValue2) on: (recoveredValue3) tagName: (recoveredValue4) anyAttribute: (self) context: (recoveredValue5).
    ^self
! !

