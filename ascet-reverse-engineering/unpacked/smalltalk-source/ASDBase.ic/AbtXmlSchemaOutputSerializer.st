"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20005b48; bytecode file offset 0x902744"
!AbtXmlSchemaOutputSerializer methodsFor: 'recovered'!
abtXmlPrintReferencesOn: recoveredArg1 context: recoveredArg2
    ^self
! !

"ASDBase.ic method 0x20056410; bytecode file offset 0x952cc8"
!AbtXmlSchemaOutputSerializer methodsFor: 'recovered'!
supportsContext: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) schema.
    recoveredValue2 := (recoveredValue1) notNil.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008676c; bytecode file offset 0x9830a8"
!AbtXmlSchemaOutputSerializer methodsFor: 'recovered'!
abtXmlPrintNamespacesOn: recoveredArg1 context: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) printCurrentNamespaceContextOn: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200debfc; bytecode file offset 0x9db4b8"
!AbtXmlSchemaOutputSerializer methodsFor: 'recovered'!
abtXmlPrint: recoveredArg1 on: recoveredArg2 simpleType: recoveredArg3 context: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg4.
    recoveredValue4 := (recoveredValue1) convertToString: (recoveredValue2) context: (recoveredValue3).
    (recoveredValue0) nextPutAll: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x201026b0; bytecode file offset 0x9fef7c"
!AbtXmlSchemaOutputSerializer methodsFor: 'recovered'!
abtXmlPrint: recoveredArg1 on: recoveredArg2 element: recoveredArg3 context: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (recoveredValue2) tagName.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := recoveredArg4.
    (self) abtXmlPrint: (recoveredValue0) on: (recoveredValue1) tagName: (recoveredValue3) element: (recoveredValue4) context: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x201026c0; bytecode file offset 0x9fef7c"
!AbtXmlSchemaOutputSerializer methodsFor: 'recovered'!
abtXmlPrint: recoveredArg1 on: recoveredArg2 complexType: recoveredArg3 context: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (recoveredValue2) tagName.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := recoveredArg4.
    (self) abtXmlPrint: (recoveredValue0) on: (recoveredValue1) tagName: (recoveredValue3) complexType: (recoveredValue4) context: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x20102808; bytecode file offset 0x9ff0cc"
!AbtXmlSchemaOutputSerializer methodsFor: 'recovered'!
abtXmlPrint: recoveredArg1 on: recoveredArg2 tagName: recoveredArg3 any: recoveredArg4 context: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    recoveredValue4 := recoveredArg5.
    (self) abtXmlPrint: (recoveredValue0) on: (recoveredValue1) tagName: (recoveredValue2) type: (recoveredValue3) context: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20147588; bytecode file offset 0xa43e4c"
!AbtXmlSchemaOutputSerializer methodsFor: 'recovered'!
tagNameFor: recoveredArg1 mapping: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) elementLocalName.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2016d66c; bytecode file offset 0xa69f2c"
!AbtXmlSchemaOutputSerializer methodsFor: 'recovered'!
abtXmlPrint: recoveredArg1 on: recoveredArg2 attribute: recoveredArg3 context: recoveredArg4
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := (recoveredValue1) localName.
    recoveredValue3 := recoveredArg4.
    recoveredValue4 := (recoveredValue0) printableNameFor: (recoveredValue2) context: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredArg3.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := recoveredArg2.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := recoveredArg4.
    (recoveredValue5) abtXmlPrint: (recoveredValue6) on: (recoveredValue7) tagName: (recoveredValue8) context: (recoveredValue9).
    ^self
! !

"ASDBase.ic method 0x201b76d0; bytecode file offset 0xab3f8c"
!AbtXmlSchemaOutputSerializer methodsFor: 'recovered'!
abtXmlPrintEndTagFor: recoveredArg1 on: recoveredArg2 tagName: recoveredArg3 type: recoveredArg4 context: recoveredArg5 newLine: recoveredArg6
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 25] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg6.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) closeTagOnNewLine: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) closeTag: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201dbbcc; bytecode file offset 0xad8490"
!AbtXmlSchemaOutputSerializer methodsFor: 'recovered'!
updateContext: recoveredArg1 forType: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 27] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) printTypes.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) namespaceUri.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) prefixForURI: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 27] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) namespaceUri.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) declareUniquePrefixFor: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201f8294; bytecode file offset 0xaf4b50"
!AbtXmlSchemaOutputSerializer methodsFor: 'recovered'!
abtXmlPrint: recoveredArg1 on: recoveredArg2 any: recoveredArg3 context: recoveredArg4
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg4.
    recoveredValue1 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 |
    recoveredBlock7Value0 := recoveredArg1.
    recoveredBlock7Value1 := recoveredArg2.
    recoveredBlock7Value2 := recoveredArg4.
    recoveredBlock7Value3 := (recoveredBlock7Value0) abtXmlPrintAnyTypeOn: (recoveredBlock7Value1) context: (recoveredBlock7Value2).
    recoveredBlock7Value3
].
    (recoveredValue0) executePrintBlock: (recoveredValue1) printTypes: (true).
    ^self
! !

"ASDBase.ic method 0x202050a8; bytecode file offset 0xb01968"
!AbtXmlSchemaOutputSerializer methodsFor: 'recovered'!
abtXmlPrint: recoveredArg1 on: recoveredArg2 complexContent: recoveredArg3 context: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := (recoveredValue0) content.
    recoveredValue2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 recoveredBlock8Value4 |
    recoveredBlock8Value0 := recoveredBlock8Arg1.
    recoveredBlock8Value1 := recoveredArg1.
    recoveredBlock8Value2 := recoveredArg2.
    recoveredBlock8Value3 := recoveredArg4.
    recoveredBlock8Value4 := (recoveredBlock8Value0) abtXmlPrint: (recoveredBlock8Value1) on: (recoveredBlock8Value2) context: (recoveredBlock8Value3).
    recoveredBlock8Value4
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x202236ec; bytecode file offset 0xb1ffb4"
!AbtXmlSchemaOutputSerializer methodsFor: 'recovered'!
primXmlPrint: recoveredArg1 on: recoveredArg2 context: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := (recoveredValue1) mappingSpec.
    recoveredValue3 := (self) classMappingFor: (recoveredValue0) mappingSpecification: (recoveredValue2).
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := recoveredLocal2.
    (recoveredValue4) currentMapping: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := recoveredLocal2.
    recoveredValue8 := (self) tagNameFor: (recoveredValue6) mapping: (recoveredValue7).
    recoveredLocal1 := recoveredValue8.
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := recoveredArg2.
    recoveredValue11 := recoveredLocal1.
    recoveredValue12 := recoveredArg3.
    (self) abtXmlPrint: (recoveredValue9) on: (recoveredValue10) tagName: (recoveredValue11) context: (recoveredValue12).
    ^self
! !

"ASDBase.ic method 0x2022a8b0; bytecode file offset 0xb27170"
!AbtXmlSchemaOutputSerializer methodsFor: 'recovered'!
abtXmlPrint: recoveredArg1 on: recoveredArg2 tagName: recoveredArg3 anyAttribute: recoveredArg4 context: recoveredArg5
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7Stack4 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
    recoveredBlock7Stack0 := self.
    recoveredBlock7PC := 14.
    recoveredBlock7Done := false.
    [recoveredBlock7Done not] whileTrue: [
        recoveredBlock7Step := recoveredBlock7PC.
        recoveredBlock7Step = 14 ifTrue: [
            recoveredBlock7Stack1 := nil.
            recoveredBlock7PC := 15.
        ].
        recoveredBlock7Step = 15 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Arg1.
            recoveredBlock7PC := 16.
        ].
        recoveredBlock7Step = 16 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) abtIsXmlMappedObject.
            recoveredBlock7PC := 17.
        ].
        recoveredBlock7Step = 17 ifTrue: [
            (recoveredBlock7Stack2) ifTrue: [recoveredBlock7PC := 20] ifFalse: [recoveredBlock7PC := 30].
        ].
        recoveredBlock7Step = 20 ifTrue: [
            recoveredBlock7PC := 21.
        ].
        recoveredBlock7Step = 21 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg1.
            recoveredBlock7PC := 22.
        ].
        recoveredBlock7Step = 22 ifTrue: [
            recoveredBlock7Stack2 := recoveredArg2.
            recoveredBlock7PC := 25.
        ].
        recoveredBlock7Step = 25 ifTrue: [
            recoveredBlock7Stack3 := recoveredArg5.
            recoveredBlock7PC := 28.
        ].
        recoveredBlock7Step = 28 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) abtXmlPrintAttributesOn: (recoveredBlock7Stack2) context: (recoveredBlock7Stack3).
            recoveredBlock7PC := 30.
        ].
        recoveredBlock7Step = 30 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack1.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x202785d4; bytecode file offset 0xb74ea0"
!AbtXmlSchemaOutputSerializer methodsFor: 'recovered'!
classMappingFor: recoveredArg1 mappingSpecification: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Local1 recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
    recoveredBlock7Stack0 := self.
    recoveredBlock7PC := 14.
    recoveredBlock7Done := false.
    [recoveredBlock7Done not] whileTrue: [
        recoveredBlock7Step := recoveredBlock7PC.
        recoveredBlock7Step = 14 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg1.
            recoveredBlock7PC := 15.
        ].
        recoveredBlock7Step = 15 ifTrue: [
            recoveredBlock7Stack2 := recoveredArg1.
            recoveredBlock7PC := 18.
        ].
        recoveredBlock7Step = 18 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) class.
            recoveredBlock7PC := 19.
        ].
        recoveredBlock7Step = 19 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) allMappingsForClass: (recoveredBlock7Stack2).
            recoveredBlock7PC := 20.
        ].
        recoveredBlock7Step = 20 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) mappings.
            recoveredBlock7PC := 21.
        ].
        recoveredBlock7Step = 21 ifTrue: [
            recoveredBlock7Local1 := recoveredBlock7Stack1.
            recoveredBlock7PC := 22.
        ].
        recoveredBlock7Step = 22 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Local1.
            recoveredBlock7PC := 23.
        ].
        recoveredBlock7Step = 23 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) size.
            recoveredBlock7PC := 24.
        ].
        recoveredBlock7Step = 24 ifTrue: [
            recoveredBlock7Stack2 := 1.
            recoveredBlock7PC := 26.
        ].
        recoveredBlock7Step = 26 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) >= (recoveredBlock7Stack2).
            recoveredBlock7PC := 27.
        ].
        recoveredBlock7Step = 27 ifTrue: [
            (recoveredBlock7Stack1) ifTrue: [recoveredBlock7PC := 30] ifFalse: [recoveredBlock7PC := 36].
        ].
        recoveredBlock7Step = 30 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Local1.
            recoveredBlock7PC := 31.
        ].
        recoveredBlock7Step = 31 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) first.
            recoveredBlock7PC := 33.
        ].
        recoveredBlock7Step = 33 ifTrue: [
            recoveredBlock7PC := 37.
        ].
        recoveredBlock7Step = 36 ifTrue: [
            recoveredBlock7Stack1 := nil.
            recoveredBlock7PC := 37.
        ].
        recoveredBlock7Step = 37 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack1.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    recoveredValue2 := (recoveredValue0) ifNotNil: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2027c7c4; bytecode file offset 0xb79090"
!AbtXmlSchemaOutputSerializer methodsFor: 'recovered'!
abtXmlPrintMixedContentFor: recoveredArg1 on: recoveredArg2 type: recoveredArg3 context: recoveredArg4
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := AbtXmlUtility.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack4 := (recoveredStack4) currentMapping.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) valueOfAttributeNamed: (recoveredStack2) inObject: (recoveredStack3) mapping: (recoveredStack4).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 25] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) abtXmlMappedObject.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1 == recoveredStack2) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20286130; bytecode file offset 0xb829f4"
!AbtXmlSchemaOutputSerializer methodsFor: 'recovered'!
abtXmlPrintAttributesFor: recoveredArg1 on: recoveredArg2 type: recoveredArg3 context: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := (recoveredValue0) attributes.
    recoveredValue2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Local1 recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 recoveredBlock8Value4 recoveredBlock8Value5 recoveredBlock8Value6 recoveredBlock8Value7 recoveredBlock8Value8 recoveredBlock8Value9 |
    recoveredBlock8Value0 := recoveredArg3.
    recoveredBlock8Value1 := recoveredBlock8Arg1.
    recoveredBlock8Value2 := recoveredArg4.
    recoveredBlock8Value3 := (recoveredBlock8Value0) printableNameForAttribute: (recoveredBlock8Value1) context: (recoveredBlock8Value2).
    recoveredBlock8Local1 := recoveredBlock8Value3.
    recoveredBlock8Value4 := recoveredBlock8Arg1.
    recoveredBlock8Value5 := recoveredArg1.
    recoveredBlock8Value6 := recoveredArg2.
    recoveredBlock8Value7 := recoveredBlock8Local1.
    recoveredBlock8Value8 := recoveredArg4.
    recoveredBlock8Value9 := (recoveredBlock8Value4) abtXmlPrint: (recoveredBlock8Value5) on: (recoveredBlock8Value6) tagName: (recoveredBlock8Value7) context: (recoveredBlock8Value8).
    recoveredBlock8Value9
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20290b4c; bytecode file offset 0xb8d418"
!AbtXmlSchemaOutputSerializer methodsFor: 'recovered'!
abtXmlPrintStartTagFor: recoveredArg1 on: recoveredArg2 tagName: recoveredArg3 type: recoveredArg4 context: recoveredArg5
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) startOpenTag: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack5 := recoveredArg5.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack2) abtXmlPrintTypeOn: (recoveredStack3) type: (recoveredStack4) context: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack5 := recoveredArg4.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack6 := recoveredArg5.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack2) abtXmlPrintAttributesFor: (recoveredStack3) on: (recoveredStack4) type: (recoveredStack5) context: (recoveredStack6).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack5 := recoveredArg5.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack2) abtXmlPrintNilFor: (recoveredStack3) on: (recoveredStack4) context: (recoveredStack5).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := recoveredArg5.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) abtXmlPrintNamespacesOn: (recoveredStack2) context: (recoveredStack3).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) endOpenTag.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2029a034; bytecode file offset 0xb968fc"
!AbtXmlSchemaOutputSerializer methodsFor: 'recovered'!
abtXmlPrint: recoveredArg1 on: recoveredArg2 tagName: recoveredArg3 simpleType: recoveredArg4 context: recoveredArg5
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack5 := recoveredArg4.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack6 := recoveredArg5.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) abtXmlPrintStartTagFor: (recoveredStack2) on: (recoveredStack3) tagName: (recoveredStack4) type: (recoveredStack5) context: (recoveredStack6).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg4.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := (recoveredStack3) abtXmlSerializationValue.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack4 := recoveredArg5.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) convertToString: (recoveredStack3) context: (recoveredStack4).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 43] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack5 := recoveredArg4.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack6 := recoveredArg5.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack7 := false.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) abtXmlPrintEndTagFor: (recoveredStack2) on: (recoveredStack3) tagName: (recoveredStack4) type: (recoveredStack5) context: (recoveredStack6) newLine: (recoveredStack7).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202b1ecc; bytecode file offset 0xbae798"
!AbtXmlSchemaOutputSerializer methodsFor: 'recovered'!
abtXmlPrint: recoveredArg1 on: recoveredArg2 tagName: recoveredArg3 context: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) schema.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) getTypeNamed: (recoveredStack2) from: (recoveredStack3).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := (recoveredStack3) abtAsXmlStream.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := super primXmlPrint: (recoveredStack2) on: (recoveredStack3) context: (recoveredStack4).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack5 := recoveredArg4.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) abtXmlPrint: (recoveredStack1) on: (recoveredStack2) tagName: (recoveredStack3) type: (recoveredStack4) context: (recoveredStack5).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202b6268; bytecode file offset 0xbb2b38"
!AbtXmlSchemaOutputSerializer methodsFor: 'recovered'!
abtXmlPrint: recoveredArg1 on: recoveredArg2 tagName: recoveredArg3 list: recoveredArg4 context: recoveredArg5
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg5.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) serializer.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack5 := recoveredArg4.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack5 := (recoveredStack5) parent.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack6 := recoveredArg5.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) abtXmlPrintStartTagFor: (recoveredStack2) on: (recoveredStack3) tagName: (recoveredStack4) type: (recoveredStack5) context: (recoveredStack6).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg4.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := (recoveredStack3) abtXmlSerializationValue.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack4 := recoveredArg5.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) convertToString: (recoveredStack3) context: (recoveredStack4).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg5.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) serializer.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack5 := recoveredArg4.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack6 := recoveredArg5.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack7 := false.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) abtXmlPrintEndTagFor: (recoveredStack2) on: (recoveredStack3) tagName: (recoveredStack4) type: (recoveredStack5) context: (recoveredStack6) newLine: (recoveredStack7).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202dff2c; bytecode file offset 0xbdc800"
!AbtXmlSchemaOutputSerializer methodsFor: 'recovered'!
abtXmlPrint: recoveredArg1 on: recoveredArg2 simpleContent: recoveredArg3 context: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentMapping.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := AbtXmlUtility.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) serializationValueFor: (recoveredStack2) inObject: (recoveredStack3) context: (recoveredStack4).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) types.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 49].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) abtXmlPrint: (recoveredStack2) on: (recoveredStack3) context: (recoveredStack4).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20312dd0; bytecode file offset 0xc0f694"
!AbtXmlSchemaOutputSerializer methodsFor: 'recovered'!
searchForMappingOf: recoveredArg1 inNamespaces: recoveredArg2 context: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7Stack4 recoveredBlock7Stack5 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
    recoveredBlock7Stack0 := self.
    recoveredBlock7PC := 14.
    recoveredBlock7Done := false.
    [recoveredBlock7Done not] whileTrue: [
        recoveredBlock7Step := recoveredBlock7PC.
        recoveredBlock7Step = 14 ifTrue: [
            recoveredBlock7Stack1 := nil.
            recoveredBlock7PC := 15.
        ].
        recoveredBlock7Step = 15 ifTrue: [
            recoveredBlock7Stack2 := recoveredArg3.
            recoveredBlock7PC := 18.
        ].
        recoveredBlock7Step = 18 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) objectCache.
            recoveredBlock7PC := 19.
        ].
        recoveredBlock7Step = 19 ifTrue: [
            recoveredBlock7Stack3 := recoveredBlock7Arg1.
            recoveredBlock7PC := 20.
        ].
        recoveredBlock7Step = 20 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) mappingSpecNamed: (recoveredBlock7Stack3).
            recoveredBlock7PC := 21.
        ].
        recoveredBlock7Step = 21 ifTrue: [
            recoveredBlock7Stack3 := recoveredBlock7Stack2.
            recoveredBlock7PC := 22.
        ].
        recoveredBlock7Step = 22 ifTrue: [
            recoveredLocal2 := recoveredBlock7Stack3.
            recoveredBlock7PC := 25.
        ].
        recoveredBlock7Step = 25 ifTrue: [
            (recoveredBlock7Stack2 == nil) ifTrue: [recoveredBlock7PC := 51] ifFalse: [recoveredBlock7PC := 28].
        ].
        recoveredBlock7Step = 28 ifTrue: [
            recoveredBlock7PC := 29.
        ].
        recoveredBlock7Step = 29 ifTrue: [
            recoveredBlock7Stack1 := nil.
            recoveredBlock7PC := 30.
        ].
        recoveredBlock7Step = 30 ifTrue: [
            recoveredBlock7Stack2 := self.
            recoveredBlock7PC := 31.
        ].
        recoveredBlock7Step = 31 ifTrue: [
            recoveredBlock7Stack3 := recoveredArg1.
            recoveredBlock7PC := 34.
        ].
        recoveredBlock7Step = 34 ifTrue: [
            recoveredBlock7Stack4 := recoveredLocal2.
            recoveredBlock7PC := 37.
        ].
        recoveredBlock7Step = 37 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) classMappingFor: (recoveredBlock7Stack3) mappingSpecification: (recoveredBlock7Stack4).
            recoveredBlock7PC := 39.
        ].
        recoveredBlock7Step = 39 ifTrue: [
            recoveredBlock7Stack3 := recoveredBlock7Stack2.
            recoveredBlock7PC := 40.
        ].
        recoveredBlock7Step = 40 ifTrue: [
            recoveredLocal1 := recoveredBlock7Stack3.
            recoveredBlock7PC := 43.
        ].
        recoveredBlock7Step = 43 ifTrue: [
            (recoveredBlock7Stack2 == nil) ifTrue: [recoveredBlock7PC := 51] ifFalse: [recoveredBlock7PC := 46].
        ].
        recoveredBlock7Step = 46 ifTrue: [
            recoveredBlock7PC := 47.
        ].
        recoveredBlock7Step = 47 ifTrue: [
            recoveredBlock7Stack1 := recoveredLocal1.
            recoveredBlock7PC := 50.
        ].
        recoveredBlock7Step = 50 ifTrue: [
            ^recoveredBlock7Stack1
        ].
        recoveredBlock7Step = 51 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack1.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^nil
! !

"ASDBase.ic method 0x20318a30; bytecode file offset 0xc152f4"
!AbtXmlSchemaOutputSerializer methodsFor: 'recovered'!
getTypeNamed: recoveredArg1 from: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
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
            recoveredStack1 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) typeNamed: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 53] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) elementNamed: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := [:recoveredBlock37Arg1 | 
    | recoveredBlock37Value0 recoveredBlock37Value1 recoveredBlock37Value2 |
    recoveredBlock37Value0 := recoveredBlock37Arg1.
    recoveredBlock37Value1 := (recoveredBlock37Value0) type.
    recoveredBlock37Value2 := recoveredBlock37Value1.
    recoveredLocal1 := recoveredBlock37Value2.
    recoveredBlock37Value1
].
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20322784; bytecode file offset 0xc1f058"
!AbtXmlSchemaOutputSerializer methodsFor: 'recovered'!
abtXmlPrintNilFor: recoveredArg1 on: recoveredArg2 context: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentElement.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) nillable.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 57].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) schemaInstanceUri.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 53] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := AbtXmlUtility.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := AbtXmlSchemaNilString.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) qualifiedNameFor: (recoveredStack2) uri: (recoveredStack3) inObject: (recoveredStack4).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := AbtXmlSchemaTrueString.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) addTagAttributeNamed: (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2032d4e0; bytecode file offset 0xc29da0"
!AbtXmlSchemaOutputSerializer methodsFor: 'recovered'!
abtXmlPrint: recoveredArg1 on: recoveredArg2 choice: recoveredArg3 context: recoveredArg4
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCollectionObject: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Value0 recoveredBlock17Value1 recoveredBlock17Value2 recoveredBlock17Value3 recoveredBlock17Value4 |
    recoveredBlock17Value0 := recoveredArg3.
    recoveredBlock17Value1 := recoveredBlock17Arg1.
    recoveredBlock17Value2 := recoveredArg2.
    recoveredBlock17Value3 := recoveredArg4.
    recoveredBlock17Value4 := (recoveredBlock17Value0) abtXmlPrintValue: (recoveredBlock17Value1) on: (recoveredBlock17Value2) context: (recoveredBlock17Value3).
    recoveredBlock17Value4
].
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredPC := 59.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack1) abtXmlPrintValue: (recoveredStack2) on: (recoveredStack3) context: (recoveredStack4).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203566e4; bytecode file offset 0xc52fac"
!AbtXmlSchemaOutputSerializer methodsFor: 'recovered'!
abtXmlPrint: recoveredArg1 on: recoveredArg2 extension: recoveredArg3 context: recoveredArg4
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) elements.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) baseType.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) abtXmlPrint: (recoveredStack2) on: (recoveredStack3) context: (recoveredStack4).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredPC := 64.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := [:recoveredBlock41Arg1 | 
    | recoveredBlock41Value0 recoveredBlock41Value1 recoveredBlock41Value2 recoveredBlock41Value3 recoveredBlock41Value4 |
    recoveredBlock41Value0 := recoveredBlock41Arg1.
    recoveredBlock41Value1 := recoveredArg1.
    recoveredBlock41Value2 := recoveredArg2.
    recoveredBlock41Value3 := recoveredArg4.
    recoveredBlock41Value4 := (recoveredBlock41Value0) abtXmlPrint: (recoveredBlock41Value1) on: (recoveredBlock41Value2) context: (recoveredBlock41Value3).
    recoveredBlock41Value4
].
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2036eccc; bytecode file offset 0xc6b5a0"
!AbtXmlSchemaOutputSerializer methodsFor: 'recovered'!
searchAllVisibleNamespacesFor: recoveredArg1 context: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) class.
    recoveredValue2 := (recoveredValue1) printString.
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue3) namespaceSupport.
    recoveredValue5 := (recoveredValue4) getDeclaredPrefixes.
    recoveredValue6 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Stack0 recoveredBlock17Stack1 recoveredBlock17Stack2 recoveredBlock17Stack3 recoveredBlock17Stack4 recoveredBlock17PC recoveredBlock17Step recoveredBlock17Done recoveredBlock17Result |
    recoveredBlock17Stack0 := self.
    recoveredBlock17PC := 24.
    recoveredBlock17Done := false.
    [recoveredBlock17Done not] whileTrue: [
        recoveredBlock17Step := recoveredBlock17PC.
        recoveredBlock17Step = 24 ifTrue: [
            recoveredBlock17Stack1 := recoveredArg2.
            recoveredBlock17PC := 27.
        ].
        recoveredBlock17Step = 27 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) namespaceSupport.
            recoveredBlock17PC := 28.
        ].
        recoveredBlock17Step = 28 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Arg1.
            recoveredBlock17PC := 29.
        ].
        recoveredBlock17Step = 29 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) getUri: (recoveredBlock17Stack2).
            recoveredBlock17PC := 31.
        ].
        recoveredBlock17Step = 31 ifTrue: [
            recoveredLocal3 := recoveredBlock17Stack1.
            recoveredBlock17PC := 34.
        ].
        recoveredBlock17Step = 34 ifTrue: [
            recoveredBlock17Stack1 := recoveredArg2.
            recoveredBlock17PC := 37.
        ].
        recoveredBlock17Step = 37 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) objectCache.
            recoveredBlock17PC := 39.
        ].
        recoveredBlock17Step = 39 ifTrue: [
            recoveredBlock17Stack2 := recoveredLocal2.
            recoveredBlock17PC := 42.
        ].
        recoveredBlock17Step = 42 ifTrue: [
            recoveredBlock17Stack3 := recoveredLocal3.
            recoveredBlock17PC := 45.
        ].
        recoveredBlock17Step = 45 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) typeNamed: (recoveredBlock17Stack2) inNamespace: (recoveredBlock17Stack3).
            recoveredBlock17PC := 47.
        ].
        recoveredBlock17Step = 47 ifTrue: [
            recoveredLocal1 := recoveredBlock17Stack1.
            recoveredBlock17PC := 50.
        ].
        recoveredBlock17Step = 50 ifTrue: [
            recoveredBlock17Stack1 := nil.
            recoveredBlock17PC := 51.
        ].
        recoveredBlock17Step = 51 ifTrue: [
            recoveredBlock17Stack2 := recoveredLocal1.
            recoveredBlock17PC := 54.
        ].
        recoveredBlock17Step = 54 ifTrue: [
            (recoveredBlock17Stack2 == nil) ifTrue: [recoveredBlock17PC := 63] ifFalse: [recoveredBlock17PC := 58].
        ].
        recoveredBlock17Step = 58 ifTrue: [
            recoveredBlock17PC := 59.
        ].
        recoveredBlock17Step = 59 ifTrue: [
            recoveredBlock17Stack1 := recoveredLocal1.
            recoveredBlock17PC := 62.
        ].
        recoveredBlock17Step = 62 ifTrue: [
            ^recoveredBlock17Stack1
        ].
        recoveredBlock17Step = 63 ifTrue: [
            recoveredBlock17Result := recoveredBlock17Stack1.
            recoveredBlock17Done := true.
        ].
    ].
    recoveredBlock17Result
].
    (recoveredValue5) do: (recoveredValue6).
    ^nil
! !

"ASDBase.ic method 0x2037dae4; bytecode file offset 0xc7a3ac"
!AbtXmlSchemaOutputSerializer methodsFor: 'recovered'!
abtXmlPrint: recoveredArg1 on: recoveredArg2 recurringType: recoveredArg3 context: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := (recoveredValue0) elements.
    recoveredValue2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Stack0 recoveredBlock8Stack1 recoveredBlock8Stack2 recoveredBlock8Stack3 recoveredBlock8Stack4 recoveredBlock8Stack5 recoveredBlock8PC recoveredBlock8Step recoveredBlock8Done recoveredBlock8Result |
    recoveredBlock8Stack0 := self.
    recoveredBlock8PC := 14.
    recoveredBlock8Done := false.
    [recoveredBlock8Done not] whileTrue: [
        recoveredBlock8Step := recoveredBlock8PC.
        recoveredBlock8Step = 14 ifTrue: [
            recoveredBlock8Stack1 := recoveredArg3.
            recoveredBlock8PC := 17.
        ].
        recoveredBlock8Step = 17 ifTrue: [
            recoveredBlock8Stack2 := recoveredArg1.
            recoveredBlock8PC := 20.
        ].
        recoveredBlock8Step = 20 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) isCollectionObject: (recoveredBlock8Stack2).
            recoveredBlock8PC := 21.
        ].
        recoveredBlock8Step = 21 ifTrue: [
            (recoveredBlock8Stack1) ifTrue: [recoveredBlock8PC := 24] ifFalse: [recoveredBlock8PC := 52].
        ].
        recoveredBlock8Step = 24 ifTrue: [
            recoveredBlock8Stack1 := recoveredArg1.
            recoveredBlock8PC := 27.
        ].
        recoveredBlock8Step = 27 ifTrue: [
            recoveredBlock8Stack2 := [:recoveredBlock8Block27Arg1 | 
    | recoveredBlock8Block27Value0 recoveredBlock8Block27Value1 recoveredBlock8Block27Value2 recoveredBlock8Block27Value3 recoveredBlock8Block27Value4 |
    recoveredBlock8Block27Value0 := recoveredBlock8Arg1.
    recoveredBlock8Block27Value1 := recoveredBlock8Block27Arg1.
    recoveredBlock8Block27Value2 := recoveredArg2.
    recoveredBlock8Block27Value3 := recoveredArg4.
    recoveredBlock8Block27Value4 := (recoveredBlock8Block27Value0) abtXmlPrintValue: (recoveredBlock8Block27Value1) on: (recoveredBlock8Block27Value2) context: (recoveredBlock8Block27Value3).
    recoveredBlock8Block27Value4
].
            recoveredBlock8PC := 48.
        ].
        recoveredBlock8Step = 48 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) do: (recoveredBlock8Stack2).
            recoveredBlock8PC := 49.
        ].
        recoveredBlock8Step = 49 ifTrue: [
            recoveredBlock8PC := 67.
        ].
        recoveredBlock8Step = 52 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Arg1.
            recoveredBlock8PC := 55.
        ].
        recoveredBlock8Step = 55 ifTrue: [
            recoveredBlock8Stack2 := recoveredArg1.
            recoveredBlock8PC := 58.
        ].
        recoveredBlock8Step = 58 ifTrue: [
            recoveredBlock8Stack3 := recoveredArg2.
            recoveredBlock8PC := 61.
        ].
        recoveredBlock8Step = 61 ifTrue: [
            recoveredBlock8Stack4 := recoveredArg4.
            recoveredBlock8PC := 64.
        ].
        recoveredBlock8Step = 64 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) abtXmlPrint: (recoveredBlock8Stack2) on: (recoveredBlock8Stack3) context: (recoveredBlock8Stack4).
            recoveredBlock8PC := 67.
        ].
        recoveredBlock8Step = 67 ifTrue: [
            recoveredBlock8Result := recoveredBlock8Stack1.
            recoveredBlock8Done := true.
        ].
    ].
    recoveredBlock8Result
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x203dcfa0; bytecode file offset 0xcd986c"
!AbtXmlSchemaOutputSerializer methodsFor: 'recovered'!
abtXmlPrint: recoveredArg1 on: recoveredArg2 restriction: recoveredArg3 context: recoveredArg4
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) elements.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) baseType.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) elements.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) baseType.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSimpleType.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) baseType.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack1) abtXmlPrint: (recoveredStack2) on: (recoveredStack3) context: (recoveredStack4).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredPC := 86.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := [:recoveredBlock63Arg1 | 
    | recoveredBlock63Value0 recoveredBlock63Value1 recoveredBlock63Value2 recoveredBlock63Value3 recoveredBlock63Value4 |
    recoveredBlock63Value0 := recoveredBlock63Arg1.
    recoveredBlock63Value1 := recoveredArg1.
    recoveredBlock63Value2 := recoveredArg2.
    recoveredBlock63Value3 := recoveredArg4.
    recoveredBlock63Value4 := (recoveredBlock63Value0) abtXmlPrint: (recoveredBlock63Value1) on: (recoveredBlock63Value2) context: (recoveredBlock63Value3).
    recoveredBlock63Value4
].
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2040e8bc; bytecode file offset 0xd0b19c"
!AbtXmlSchemaOutputSerializer methodsFor: 'recovered'!
abtXmlPrint: recoveredArg1 on: recoveredArg2 tagName: recoveredArg3 attribute: recoveredArg4 context: recoveredArg5
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg5.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) configuration.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredArg4.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) localName.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := recoveredArg4.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := (recoveredStack3) namespaceUri.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) processorForAttributeNamed: (recoveredStack2) inNamespace: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := recoveredArg5.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) value: (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredPC := 70.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := recoveredArg5.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack3 := (recoveredStack3) currentMapping.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) getXmlStringFrom: (recoveredStack2) mapping: (recoveredStack3).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock55Value0 recoveredBlock55Value1 |
    recoveredBlock55Value0 := recoveredArg4.
    recoveredBlock55Value1 := (recoveredBlock55Value0) value.
    recoveredBlock55Value1
].
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) ifNil: (recoveredStack2).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := [:recoveredBlock76Arg1 | 
    | recoveredBlock76Value0 recoveredBlock76Value1 recoveredBlock76Value2 recoveredBlock76Value3 |
    recoveredBlock76Value0 := recoveredArg2.
    recoveredBlock76Value1 := recoveredArg3.
    recoveredBlock76Value2 := recoveredLocal2.
    recoveredBlock76Value3 := (recoveredBlock76Value0) addTagAttributeNamed: (recoveredBlock76Value1) value: (recoveredBlock76Value2).
    recoveredBlock76Value3
].
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2042853c; bytecode file offset 0xd24e28"
!AbtXmlSchemaOutputSerializer methodsFor: 'recovered'!
getAnyTypeValueFor: recoveredArg1 baseType: recoveredArg2 context: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) propertyNamed: (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) searchAllVisibleNamespacesFor: (recoveredStack1) context: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := AbtXmlSchemaComplexType.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack1) name: (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := AbtXmlSmalltalkNamespace.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) namespaceUri: (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) allInstVarNames.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := [:recoveredBlock68Arg1 :recoveredBlock68Arg2 | 
    | recoveredBlock68Value0 recoveredBlock68Value1 recoveredBlock68Value2 recoveredBlock68Value3 |
    recoveredBlock68Value0 := recoveredLocal2.
    recoveredBlock68Value1 := recoveredBlock68Arg1.
    recoveredBlock68Value2 := recoveredArg2.
    recoveredBlock68Value3 := (recoveredBlock68Value0) addElement: (recoveredBlock68Value1) ofType: (recoveredBlock68Value2).
    recoveredBlock68Value3
].
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack0) doWithIndex: (recoveredStack1).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack0) addProperty: (recoveredStack1) named: (recoveredStack2).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20439bd4; bytecode file offset 0xd364cc"
!AbtXmlSchemaOutputSerializer methodsFor: 'recovered'!
abtXmlPrintTypeOn: recoveredArg1 type: recoveredArg2 context: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) printTypes.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 106].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) schemaInstanceUri.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) namespaceUri.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) schemaUri.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredPC := 54.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := (recoveredStack2) namespaceUri.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) compatibleUriFor: (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := AbtXmlUtility.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := 'type'.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) qualifiedNameFor: (recoveredStack2) uri: (recoveredStack3) inObject: (recoveredStack4).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := AbtXmlUtility.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) qualifiedNameFor: (recoveredStack2) uri: (recoveredStack3) inObject: (recoveredStack4).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := 'type'.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := AbtXmlMappingError.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := 'PrintTypesError'.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack3 := 'Unable to print types because namespace prefixes could not be determined'.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := (recoveredStack1) code: (recoveredStack2) text: (recoveredStack3).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack1) signalExceptionIfEnabled.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredPC := 106.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack1) addTagAttributeNamed: (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204efe60; bytecode file offset 0xdec754"
!AbtXmlSchemaOutputSerializer methodsFor: 'recovered'!
getActualTypeFor: recoveredArg1 baseType: recoveredArg2 context: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) type.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) getMappingFor: (recoveredStack1) type: (recoveredStack2) context: (recoveredStack3).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 110] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) xmlName.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) name.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 106].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) objectCache.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) nameSpaceURI.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) schemaNamed: (recoveredStack1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) getTypeNamed: (recoveredStack1) from: (recoveredStack2).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDescendentOf: (recoveredStack1).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 106] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredPC := 140.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := (recoveredStack0) schema.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := (recoveredStack0) primTypeNamed: (recoveredStack1).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := [:recoveredBlock125Arg1 | 
    | recoveredBlock125Value0 recoveredBlock125Value1 |
    recoveredBlock125Value0 := recoveredBlock125Arg1.
    recoveredBlock125Value1 := recoveredBlock125Value0.
    recoveredLocal4 := recoveredBlock125Value1.
    recoveredBlock125Value0
].
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack0 := (recoveredStack0) isAnyType.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 148] ifFalse: [recoveredPC := 164].
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack0 := (recoveredStack0) getAnyTypeValueFor: (recoveredStack1) baseType: (recoveredStack2) context: (recoveredStack3).
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20500298; bytecode file offset 0xdfcb8c"
!AbtXmlSchemaOutputSerializer methodsFor: 'recovered'!
getMappingFor: recoveredArg1 type: recoveredArg2 context: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) mappingSpec.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) classMappingFor: (recoveredStack1) mappingSpecification: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) nameSpaceURI.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := (recoveredStack2) smalltalkMappingSpec.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) classMappingFor: (recoveredStack1) mappingSpecification: (recoveredStack2).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) configuration.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := (recoveredStack1) smalltalkMappingNamespace.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) namespaceUri.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 118] ifFalse: [recoveredPC := 110].
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := (recoveredStack0) namespaceSupport.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := (recoveredStack0) getDeclaredPrefixes.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := [:recoveredBlock125Arg1 | 
    | recoveredBlock125Local1 recoveredBlock125Stack0 recoveredBlock125Stack1 recoveredBlock125Stack2 recoveredBlock125Stack3 recoveredBlock125Stack4 recoveredBlock125PC recoveredBlock125Step recoveredBlock125Done recoveredBlock125Result |
    recoveredBlock125Stack0 := self.
    recoveredBlock125PC := 132.
    recoveredBlock125Done := false.
    [recoveredBlock125Done not] whileTrue: [
        recoveredBlock125Step := recoveredBlock125PC.
        recoveredBlock125Step = 132 ifTrue: [
            recoveredBlock125Stack1 := recoveredArg3.
            recoveredBlock125PC := 135.
        ].
        recoveredBlock125Step = 135 ifTrue: [
            recoveredBlock125Stack1 := (recoveredBlock125Stack1) namespaceSupport.
            recoveredBlock125PC := 137.
        ].
        recoveredBlock125Step = 137 ifTrue: [
            recoveredBlock125Stack2 := recoveredBlock125Arg1.
            recoveredBlock125PC := 138.
        ].
        recoveredBlock125Step = 138 ifTrue: [
            recoveredBlock125Stack1 := (recoveredBlock125Stack1) getUri: (recoveredBlock125Stack2).
            recoveredBlock125PC := 140.
        ].
        recoveredBlock125Step = 140 ifTrue: [
            recoveredBlock125Local1 := recoveredBlock125Stack1.
            recoveredBlock125PC := 141.
        ].
        recoveredBlock125Step = 141 ifTrue: [
            recoveredBlock125Stack1 := nil.
            recoveredBlock125PC := 142.
        ].
        recoveredBlock125Step = 142 ifTrue: [
            recoveredBlock125Stack2 := recoveredLocal2.
            recoveredBlock125PC := 145.
        ].
        recoveredBlock125Step = 145 ifTrue: [
            recoveredBlock125Stack3 := recoveredBlock125Local1.
            recoveredBlock125PC := 146.
        ].
        recoveredBlock125Step = 146 ifTrue: [
            recoveredBlock125Stack2 := (recoveredBlock125Stack2) includes: (recoveredBlock125Stack3).
            recoveredBlock125PC := 148.
        ].
        recoveredBlock125Step = 148 ifTrue: [
            (recoveredBlock125Stack2) ifTrue: [recoveredBlock125PC := 159] ifFalse: [recoveredBlock125PC := 152].
        ].
        recoveredBlock125Step = 152 ifTrue: [
            recoveredBlock125PC := 153.
        ].
        recoveredBlock125Step = 153 ifTrue: [
            recoveredBlock125Stack1 := recoveredLocal4.
            recoveredBlock125PC := 156.
        ].
        recoveredBlock125Step = 156 ifTrue: [
            recoveredBlock125Stack2 := recoveredBlock125Local1.
            recoveredBlock125PC := 157.
        ].
        recoveredBlock125Step = 157 ifTrue: [
            recoveredBlock125Stack1 := (recoveredBlock125Stack1) add: (recoveredBlock125Stack2).
            recoveredBlock125PC := 159.
        ].
        recoveredBlock125Step = 159 ifTrue: [
            recoveredBlock125Result := recoveredBlock125Stack1.
            recoveredBlock125Done := true.
        ].
    ].
    recoveredBlock125Result
].
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack0 := (recoveredStack0) searchForMappingOf: (recoveredStack1) inNamespaces: (recoveredStack2) context: (recoveredStack3).
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20509318; bytecode file offset 0xe05bf4"
!AbtXmlSchemaOutputSerializer methodsFor: 'recovered'!
abtXmlPrint: recoveredArg1 on: recoveredArg2 tagName: recoveredArg3 complexType: recoveredArg4 context: recoveredArg5
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 47] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := recoveredArg5.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) printableNameFor: (recoveredStack2) context: (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack5 := recoveredArg4.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack6 := recoveredArg5.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) abtXmlPrintStartTagFor: (recoveredStack2) on: (recoveredStack3) tagName: (recoveredStack4) type: (recoveredStack5) context: (recoveredStack6).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) elements.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 152] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := [:recoveredBlock63Arg1 | 
    | recoveredBlock63Stack0 recoveredBlock63Stack1 recoveredBlock63Stack2 recoveredBlock63Stack3 recoveredBlock63Stack4 recoveredBlock63Stack5 recoveredBlock63PC recoveredBlock63Step recoveredBlock63Done recoveredBlock63Result |
    recoveredBlock63Stack0 := self.
    recoveredBlock63PC := 70.
    recoveredBlock63Done := false.
    [recoveredBlock63Done not] whileTrue: [
        recoveredBlock63Step := recoveredBlock63PC.
        recoveredBlock63Step = 70 ifTrue: [
            recoveredBlock63Stack1 := recoveredArg2.
            recoveredBlock63PC := 73.
        ].
        recoveredBlock63Step = 73 ifTrue: [
            recoveredBlock63Stack1 := (recoveredBlock63Stack1) position.
            recoveredBlock63PC := 74.
        ].
        recoveredBlock63Step = 74 ifTrue: [
            recoveredLocal3 := recoveredBlock63Stack1.
            recoveredBlock63PC := 77.
        ].
        recoveredBlock63Step = 77 ifTrue: [
            recoveredBlock63Stack1 := recoveredBlock63Arg1.
            recoveredBlock63PC := 78.
        ].
        recoveredBlock63Step = 78 ifTrue: [
            recoveredBlock63Stack2 := recoveredArg1.
            recoveredBlock63PC := 81.
        ].
        recoveredBlock63Step = 81 ifTrue: [
            recoveredBlock63Stack3 := recoveredArg2.
            recoveredBlock63PC := 84.
        ].
        recoveredBlock63Step = 84 ifTrue: [
            recoveredBlock63Stack4 := recoveredArg5.
            recoveredBlock63PC := 87.
        ].
        recoveredBlock63Step = 87 ifTrue: [
            (recoveredBlock63Stack1) abtXmlPrint: (recoveredBlock63Stack2) on: (recoveredBlock63Stack3) context: (recoveredBlock63Stack4).
            recoveredBlock63PC := 90.
        ].
        recoveredBlock63Step = 90 ifTrue: [
            recoveredBlock63Stack1 := nil.
            recoveredBlock63PC := 91.
        ].
        recoveredBlock63Step = 91 ifTrue: [
            recoveredBlock63Stack2 := recoveredLocal1.
            recoveredBlock63PC := 94.
        ].
        recoveredBlock63Step = 94 ifTrue: [
            (recoveredBlock63Stack2) ifTrue: [recoveredBlock63PC := 124] ifFalse: [recoveredBlock63PC := 98].
        ].
        recoveredBlock63Step = 98 ifTrue: [
            recoveredBlock63PC := 99.
        ].
        recoveredBlock63Step = 99 ifTrue: [
            recoveredBlock63Stack1 := nil.
            recoveredBlock63PC := 100.
        ].
        recoveredBlock63Step = 100 ifTrue: [
            recoveredBlock63Stack2 := recoveredLocal3.
            recoveredBlock63PC := 103.
        ].
        recoveredBlock63Step = 103 ifTrue: [
            recoveredBlock63Stack3 := recoveredArg2.
            recoveredBlock63PC := 106.
        ].
        recoveredBlock63Step = 106 ifTrue: [
            recoveredBlock63Stack3 := (recoveredBlock63Stack3) position.
            recoveredBlock63PC := 107.
        ].
        recoveredBlock63Step = 107 ifTrue: [
            recoveredBlock63Stack2 := (recoveredBlock63Stack2) ~= (recoveredBlock63Stack3).
            recoveredBlock63PC := 108.
        ].
        recoveredBlock63Step = 108 ifTrue: [
            (recoveredBlock63Stack2) ifTrue: [recoveredBlock63PC := 112] ifFalse: [recoveredBlock63PC := 124].
        ].
        recoveredBlock63Step = 112 ifTrue: [
            recoveredBlock63Stack2 := recoveredBlock63Arg1.
            recoveredBlock63PC := 113.
        ].
        recoveredBlock63Step = 113 ifTrue: [
            recoveredBlock63Stack2 := (recoveredBlock63Stack2) endTagOnNewLine.
            recoveredBlock63PC := 115.
        ].
        recoveredBlock63Step = 115 ifTrue: [
            (recoveredBlock63Stack2) ifTrue: [recoveredBlock63PC := 118] ifFalse: [recoveredBlock63PC := 124].
        ].
        recoveredBlock63Step = 118 ifTrue: [
            recoveredBlock63PC := 119.
        ].
        recoveredBlock63Step = 119 ifTrue: [
            recoveredBlock63Stack1 := true.
            recoveredBlock63PC := 120.
        ].
        recoveredBlock63Step = 120 ifTrue: [
            recoveredBlock63Stack2 := recoveredBlock63Stack1.
            recoveredBlock63PC := 121.
        ].
        recoveredBlock63Step = 121 ifTrue: [
            recoveredLocal1 := recoveredBlock63Stack2.
            recoveredBlock63PC := 124.
        ].
        recoveredBlock63Step = 124 ifTrue: [
            recoveredBlock63Result := recoveredBlock63Stack1.
            recoveredBlock63Done := true.
        ].
    ].
    recoveredBlock63Result
].
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMixed.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 136] ifFalse: [recoveredPC := 152].
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack5 := recoveredArg5.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            (recoveredStack1) abtXmlPrintMixedContentFor: (recoveredStack2) on: (recoveredStack3) type: (recoveredStack4) context: (recoveredStack5).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 180] ifFalse: [recoveredPC := 158].
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack5 := recoveredArg4.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack6 := recoveredArg5.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack7 := recoveredLocal1.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            (recoveredStack1) abtXmlPrintEndTagFor: (recoveredStack2) on: (recoveredStack3) tagName: (recoveredStack4) type: (recoveredStack5) context: (recoveredStack6) newLine: (recoveredStack7).
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2051c674; bytecode file offset 0xe18f74"
!AbtXmlSchemaOutputSerializer methodsFor: 'recovered'!
abtXmlPrint: recoveredArg1 on: recoveredArg2 tagName: recoveredArg3 type: recoveredArg4 context: recoveredArg5
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg5.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentElementName.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg5.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) printTypes.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg5.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := AbtXmlUtility.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) localNameFor: (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) currentElementName: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredArg4.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := recoveredArg5.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) getActualTypeFor: (recoveredStack1) baseType: (recoveredStack2) context: (recoveredStack3).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0 == recoveredStack1) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredArg5.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) printTypes: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredArg5.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack3 := recoveredArg5.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack3 := (recoveredStack3) mappingSpec.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) classMappingFor: (recoveredStack2) mappingSpecification: (recoveredStack3).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0) currentMapping: (recoveredStack1).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := recoveredArg5.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) configuration.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) getCustomSerializationConfigurationFrom: (recoveredStack1).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := recoveredArg5.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock106Stack0 recoveredBlock106Stack1 recoveredBlock106Stack2 recoveredBlock106Stack3 recoveredBlock106Stack4 recoveredBlock106Stack5 recoveredBlock106Stack6 recoveredBlock106PC recoveredBlock106Step recoveredBlock106Done recoveredBlock106Result |
    recoveredBlock106Stack0 := self.
    recoveredBlock106PC := 112.
    recoveredBlock106Done := false.
    [recoveredBlock106Done not] whileTrue: [
        recoveredBlock106Step := recoveredBlock106PC.
        recoveredBlock106Step = 112 ifTrue: [
            recoveredBlock106Stack1 := recoveredArg5.
            recoveredBlock106PC := 115.
        ].
        recoveredBlock106Step = 115 ifTrue: [
            recoveredBlock106Stack2 := recoveredLocal2.
            recoveredBlock106PC := 118.
        ].
        recoveredBlock106Step = 118 ifTrue: [
            (recoveredBlock106Stack0) updateContext: (recoveredBlock106Stack1) forType: (recoveredBlock106Stack2).
            recoveredBlock106PC := 120.
        ].
        recoveredBlock106Step = 120 ifTrue: [
            recoveredBlock106Stack0 := recoveredLocal4.
            recoveredBlock106PC := 123.
        ].
        recoveredBlock106Step = 123 ifTrue: [
            (recoveredBlock106Stack0 == nil) ifTrue: [recoveredBlock106PC := 152] ifFalse: [recoveredBlock106PC := 126].
        ].
        recoveredBlock106Step = 126 ifTrue: [
            recoveredBlock106Stack0 := recoveredLocal4.
            recoveredBlock106PC := 129.
        ].
        recoveredBlock106Step = 129 ifTrue: [
            recoveredBlock106Stack0 := (recoveredBlock106Stack0) serializer.
            recoveredBlock106PC := 131.
        ].
        recoveredBlock106Step = 131 ifTrue: [
            recoveredBlock106Stack1 := recoveredArg1.
            recoveredBlock106PC := 134.
        ].
        recoveredBlock106Step = 134 ifTrue: [
            recoveredBlock106Stack2 := recoveredArg2.
            recoveredBlock106PC := 137.
        ].
        recoveredBlock106Step = 137 ifTrue: [
            recoveredBlock106Stack3 := recoveredArg3.
            recoveredBlock106PC := 140.
        ].
        recoveredBlock106Step = 140 ifTrue: [
            recoveredBlock106Stack4 := recoveredLocal2.
            recoveredBlock106PC := 143.
        ].
        recoveredBlock106Step = 143 ifTrue: [
            recoveredBlock106Stack5 := recoveredArg5.
            recoveredBlock106PC := 146.
        ].
        recoveredBlock106Step = 146 ifTrue: [
            recoveredBlock106Stack0 := (recoveredBlock106Stack0) abtXmlPrint: (recoveredBlock106Stack1) on: (recoveredBlock106Stack2) tagName: (recoveredBlock106Stack3) type: (recoveredBlock106Stack4) context: (recoveredBlock106Stack5).
            recoveredBlock106PC := 149.
        ].
        recoveredBlock106Step = 149 ifTrue: [
            recoveredBlock106PC := 170.
        ].
        recoveredBlock106Step = 152 ifTrue: [
            recoveredBlock106Stack0 := recoveredLocal2.
            recoveredBlock106PC := 155.
        ].
        recoveredBlock106Step = 155 ifTrue: [
            recoveredBlock106Stack1 := recoveredArg1.
            recoveredBlock106PC := 158.
        ].
        recoveredBlock106Step = 158 ifTrue: [
            recoveredBlock106Stack2 := recoveredArg2.
            recoveredBlock106PC := 161.
        ].
        recoveredBlock106Step = 161 ifTrue: [
            recoveredBlock106Stack3 := recoveredArg3.
            recoveredBlock106PC := 164.
        ].
        recoveredBlock106Step = 164 ifTrue: [
            recoveredBlock106Stack4 := recoveredArg5.
            recoveredBlock106PC := 167.
        ].
        recoveredBlock106Step = 167 ifTrue: [
            recoveredBlock106Stack0 := (recoveredBlock106Stack0) abtXmlPrint: (recoveredBlock106Stack1) on: (recoveredBlock106Stack2) tagName: (recoveredBlock106Stack3) context: (recoveredBlock106Stack4).
            recoveredBlock106PC := 170.
        ].
        recoveredBlock106Step = 170 ifTrue: [
            recoveredBlock106Result := recoveredBlock106Stack0.
            recoveredBlock106Done := true.
        ].
    ].
    recoveredBlock106Result
].
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            (recoveredStack0) pushNamespaceContextFor: (recoveredStack1) while: (recoveredStack2).
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack0 := recoveredArg5.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            (recoveredStack0) currentElementName: (recoveredStack1).
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack0 := recoveredArg5.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            (recoveredStack0) printTypes: (recoveredStack1).
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20582f00; bytecode file offset 0xe7f800"
!AbtXmlSchemaOutputSerializer methodsFor: 'recovered'!
abtXmlPrint: recoveredArg1 on: recoveredArg2 tagName: recoveredArg3 element: recoveredArg4 context: recoveredArg5
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) ref.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) ref.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) type.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 57] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := 'Type not found for schema element %1'.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := Array.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack4 := (recoveredStack4) name.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1) reportError: (recoveredStack2) withArguments: (recoveredStack3).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack3 := recoveredArg5.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) printableNameFor: (recoveredStack2) context: (recoveredStack3).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredPC := 164.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := recoveredArg4.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 114].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack3 := recoveredArg5.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := (recoveredStack1) printableNameFor: (recoveredStack2) context: (recoveredStack3).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := AbtXmlUtility.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack4 := recoveredArg5.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := (recoveredStack1) serializationValueFor: (recoveredStack2) inObject: (recoveredStack3) context: (recoveredStack4).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 164] ifFalse: [recoveredPC := 138].
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRequired.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 146] ifFalse: [recoveredPC := 162].
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := (recoveredStack1) nillable.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 159] ifFalse: [recoveredPC := 154].
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredPC := 164.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock167Stack0 recoveredBlock167Stack1 recoveredBlock167Stack2 recoveredBlock167Stack3 recoveredBlock167Stack4 recoveredBlock167Stack5 recoveredBlock167Stack6 recoveredBlock167Stack7 recoveredBlock167PC recoveredBlock167Step recoveredBlock167Done recoveredBlock167Result |
    recoveredBlock167Stack0 := self.
    recoveredBlock167PC := 174.
    recoveredBlock167Done := false.
    [recoveredBlock167Done not] whileTrue: [
        recoveredBlock167Step := recoveredBlock167PC.
        recoveredBlock167Step = 174 ifTrue: [
            recoveredBlock167Stack1 := recoveredArg4.
            recoveredBlock167PC := 177.
        ].
        recoveredBlock167Step = 177 ifTrue: [
            recoveredBlock167Stack2 := recoveredLocal3.
            recoveredBlock167PC := 180.
        ].
        recoveredBlock167Step = 180 ifTrue: [
            recoveredBlock167Stack1 := (recoveredBlock167Stack1) isCollectionObject: (recoveredBlock167Stack2).
            recoveredBlock167PC := 182.
        ].
        recoveredBlock167Step = 182 ifTrue: [
            (recoveredBlock167Stack1) ifTrue: [recoveredBlock167PC := 186] ifFalse: [recoveredBlock167PC := 232].
        ].
        recoveredBlock167Step = 186 ifTrue: [
            recoveredBlock167Stack1 := recoveredArg4.
            recoveredBlock167PC := 189.
        ].
        recoveredBlock167Step = 189 ifTrue: [
            recoveredBlock167Stack1 := (recoveredBlock167Stack1) isCollection.
            recoveredBlock167PC := 191.
        ].
        recoveredBlock167Step = 191 ifTrue: [
            (recoveredBlock167Stack1) ifTrue: [recoveredBlock167PC := 194] ifFalse: [recoveredBlock167PC := 232].
        ].
        recoveredBlock167Step = 194 ifTrue: [
            recoveredBlock167Stack1 := recoveredLocal3.
            recoveredBlock167PC := 197.
        ].
        recoveredBlock167Step = 197 ifTrue: [
            recoveredBlock167Stack2 := [:recoveredBlock167Block197Arg1 | 
    | recoveredBlock167Block197Value0 recoveredBlock167Block197Value1 recoveredBlock167Block197Value2 recoveredBlock167Block197Value3 recoveredBlock167Block197Value4 recoveredBlock167Block197Value5 recoveredBlock167Block197Value6 recoveredBlock167Block197Value7 recoveredBlock167Block197Value8 |
    recoveredBlock167Block197Value0 := recoveredArg5.
    recoveredBlock167Block197Value1 := (recoveredBlock167Block197Value0) serializer.
    recoveredBlock167Block197Value2 := recoveredBlock167Block197Arg1.
    recoveredBlock167Block197Value3 := recoveredArg2.
    recoveredBlock167Block197Value4 := recoveredLocal2.
    recoveredBlock167Block197Value5 := recoveredArg4.
    recoveredBlock167Block197Value6 := (recoveredBlock167Block197Value5) type.
    recoveredBlock167Block197Value7 := recoveredArg5.
    recoveredBlock167Block197Value8 := (recoveredBlock167Block197Value1) abtXmlPrint: (recoveredBlock167Block197Value2) on: (recoveredBlock167Block197Value3) tagName: (recoveredBlock167Block197Value4) type: (recoveredBlock167Block197Value6) context: (recoveredBlock167Block197Value7).
    recoveredBlock167Block197Value8
].
            recoveredBlock167PC := 227.
        ].
        recoveredBlock167Step = 227 ifTrue: [
            recoveredBlock167Stack1 := (recoveredBlock167Stack1) do: (recoveredBlock167Stack2).
            recoveredBlock167PC := 229.
        ].
        recoveredBlock167Step = 229 ifTrue: [
            recoveredBlock167PC := 256.
        ].
        recoveredBlock167Step = 232 ifTrue: [
            recoveredBlock167Stack1 := recoveredArg5.
            recoveredBlock167PC := 235.
        ].
        recoveredBlock167Step = 235 ifTrue: [
            recoveredBlock167Stack1 := (recoveredBlock167Stack1) serializer.
            recoveredBlock167PC := 237.
        ].
        recoveredBlock167Step = 237 ifTrue: [
            recoveredBlock167Stack2 := recoveredLocal3.
            recoveredBlock167PC := 240.
        ].
        recoveredBlock167Step = 240 ifTrue: [
            recoveredBlock167Stack3 := recoveredArg2.
            recoveredBlock167PC := 243.
        ].
        recoveredBlock167Step = 243 ifTrue: [
            recoveredBlock167Stack4 := recoveredLocal2.
            recoveredBlock167PC := 246.
        ].
        recoveredBlock167Step = 246 ifTrue: [
            recoveredBlock167Stack5 := recoveredArg4.
            recoveredBlock167PC := 249.
        ].
        recoveredBlock167Step = 249 ifTrue: [
            recoveredBlock167Stack5 := (recoveredBlock167Stack5) type.
            recoveredBlock167PC := 250.
        ].
        recoveredBlock167Step = 250 ifTrue: [
            recoveredBlock167Stack6 := recoveredArg5.
            recoveredBlock167PC := 253.
        ].
        recoveredBlock167Step = 253 ifTrue: [
            recoveredBlock167Stack1 := (recoveredBlock167Stack1) abtXmlPrint: (recoveredBlock167Stack2) on: (recoveredBlock167Stack3) tagName: (recoveredBlock167Stack4) type: (recoveredBlock167Stack5) context: (recoveredBlock167Stack6).
            recoveredBlock167PC := 256.
        ].
        recoveredBlock167Step = 256 ifTrue: [
            recoveredBlock167Result := recoveredBlock167Stack1.
            recoveredBlock167Done := true.
        ].
    ].
    recoveredBlock167Result
].
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack3 := recoveredArg5.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            (recoveredStack1) executePrintBlock: (recoveredStack2) context: (recoveredStack3).
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

