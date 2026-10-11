"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20005078; bytecode file offset 0x90206c"
!AbtXmlOutputSerializer methodsFor: 'recovered'!
initializeContext: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x2000c974; bytecode file offset 0x909658"
!AbtXmlOutputSerializer methodsFor: 'recovered'!
supportsContext: recoveredArg1
    ^false
! !

"ASDBase.ic method 0x2003c348; bytecode file offset 0x938c0c"
!AbtXmlOutputSerializer methodsFor: 'recovered'!
selectXmlAttributesFor: recoveredArg1 from: recoveredArg2 context: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (recoveredValue0) copy.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20086790; bytecode file offset 0x9830a8"
!AbtXmlOutputSerializer methodsFor: 'recovered'!
printEndTagFor: recoveredArg1 on: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) closeTagOnNewLine: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009b258; bytecode file offset 0x997b14"
!AbtXmlOutputSerializer methodsFor: 'recovered'!
printEndTagFor: recoveredArg1 on: recoveredArg2 mapping: recoveredArg3 context: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := (recoveredValue1) elementTagName.
    (recoveredValue0) closeTag: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200eb0ac; bytecode file offset 0x9e796c"
!AbtXmlOutputSerializer methodsFor: 'recovered'!
getAttributeValueFrom: recoveredArg1 attributeMapping: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := AbtXmlUtility.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue1) classAttribute.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue0) valueOfAttributeNamed: (recoveredValue2) inObject: (recoveredValue3) mapping: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x20100c10; bytecode file offset 0x9fd4d4"
!AbtXmlOutputSerializer methodsFor: 'recovered'!
abtXmlPrint: recoveredArg1 on: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue1) abtAsXmlStream.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) abtXmlSerializationConfiguration.
    recoveredValue5 := (recoveredValue4) newContext.
    (self) abtXmlPrint: (recoveredValue0) on: (recoveredValue2) context: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x20122998; bytecode file offset 0xa1f25c"
!AbtXmlOutputSerializer methodsFor: 'recovered'!
selectXmlElementsFrom: recoveredArg1 context: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) attributeMappings.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280c9138Arg1 | 
    | block280c9138Value0 block280c9138Value1 |
    block280c9138Value0 := block280c9138Arg1.
    block280c9138Value1 := (block280c9138Value0) isAttribute.
    block280c9138Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) reject: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2014b760; bytecode file offset 0xa48028"
!AbtXmlOutputSerializer methodsFor: 'recovered'!
abtXmlPrint: recoveredArg1 on: recoveredArg2 mappingSpecification: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) abtXmlSerializationConfiguration.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (recoveredValue1) mappingSpec: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := (recoveredValue5) abtAsXmlStream.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (recoveredValue7) newContext.
    (self) abtXmlPrint: (recoveredValue4) on: (recoveredValue6) context: (recoveredValue8).
    ^self
! !

"ASDBase.ic method 0x20157bf8; bytecode file offset 0xa544c0"
!AbtXmlOutputSerializer methodsFor: 'recovered'!
abtXmlPrint: recoveredArg1 on: recoveredArg2 context: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := (self) serializerFor: (recoveredValue1).
    (recoveredValue0) serializer: (recoveredValue2).
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue3) serializer.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredArg2.
    recoveredValue7 := (recoveredValue6) abtAsXmlStream.
    recoveredValue8 := recoveredArg3.
    (recoveredValue4) primXmlPrint: (recoveredValue5) on: (recoveredValue7) context: (recoveredValue8).
    ^self
! !

"ASDBase.ic method 0x20188650; bytecode file offset 0xa84f10"
!AbtXmlOutputSerializer methodsFor: 'recovered'!
primXmlPrintObject: recoveredArg1 on: recoveredArg2 context: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) shareWithSubElements.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) abtXmlPrintOn: (recoveredStack2) context: (recoveredStack3).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) abtXmlPrintOn: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201b73e4; bytecode file offset 0xab3cac"
!AbtXmlOutputSerializer methodsFor: 'recovered'!
printStartTagFor: recoveredArg1 on: recoveredArg2 mapping: recoveredArg3 context: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := (recoveredValue1) elementTagName.
    (recoveredValue0) startOpenTag: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := recoveredArg3.
    recoveredValue6 := recoveredArg4.
    (self) printAttributesFor: (recoveredValue3) on: (recoveredValue4) mapping: (recoveredValue5) context: (recoveredValue6).
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := recoveredArg2.
    (self) printNamespaceMappingsFor: (recoveredValue7) on: (recoveredValue8).
    recoveredValue9 := recoveredArg2.
    (recoveredValue9) endOpenTag.
    ^self
! !

"ASDBase.ic method 0x201bee40; bytecode file offset 0xabb70c"
!AbtXmlOutputSerializer methodsFor: 'recovered'!
abtXmlPrint: recoveredArg1 on: recoveredArg2 mappingSpecification: recoveredArg3 dtd: recoveredArg4
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) abtXmlSerializationConfiguration.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg3.
    (recoveredValue2) mappingSpec: (recoveredValue3).
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := (recoveredValue1) dtd: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := recoveredArg2.
    recoveredValue8 := (recoveredValue7) abtAsXmlStream.
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := (recoveredValue9) newContext.
    (self) abtXmlPrint: (recoveredValue6) on: (recoveredValue8) context: (recoveredValue10).
    ^self
! !

"ASDBase.ic method 0x201dcde4; bytecode file offset 0xad96a4"
!AbtXmlOutputSerializer methodsFor: 'recovered'!
primXmlBasicPrint: recoveredArg1 on: recoveredArg2 mapping: recoveredArg3 context: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    (self) printStartTagFor: (recoveredValue0) on: (recoveredValue1) mapping: (recoveredValue2) context: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := recoveredArg3.
    recoveredValue7 := recoveredArg4.
    (self) printSubElementsFor: (recoveredValue4) on: (recoveredValue5) mapping: (recoveredValue6) context: (recoveredValue7).
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := recoveredArg2.
    recoveredValue10 := recoveredArg3.
    recoveredValue11 := recoveredArg4.
    (self) printEndTagFor: (recoveredValue8) on: (recoveredValue9) mapping: (recoveredValue10) context: (recoveredValue11).
    ^self
! !

"ASDBase.ic method 0x201dfc98; bytecode file offset 0xadc55c"
!AbtXmlOutputSerializer methodsFor: 'recovered'!
getAttributePrintValueFrom: recoveredArg1 attributeMapping: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) getAttributeValueFrom: (recoveredStack1) attributeMapping: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) objectToStringConversionMethod.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) objectToStringConversionMethod.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSymbol.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) perform: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20278c10; bytecode file offset 0xb754d8"
!AbtXmlOutputSerializer methodsFor: 'recovered'!
printAttribute: recoveredArg1 value: recoveredArg2 on: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 recoveredBlock7Value5 recoveredBlock7Value6 |
    recoveredBlock7Value0 := recoveredArg3.
    recoveredBlock7Value1 := recoveredBlock7Value0.
    (recoveredBlock7Value1) space.
    recoveredBlock7Value2 := recoveredBlock7Value0.
    recoveredBlock7Value3 := recoveredArg1.
    (recoveredBlock7Value2) nextPutAll: (recoveredBlock7Value3).
    (recoveredBlock7Value0) nextPut: ($=).
    recoveredBlock7Value4 := recoveredBlock7Arg1.
    recoveredBlock7Value5 := recoveredArg3.
    recoveredBlock7Value6 := (recoveredBlock7Value4) abtPrintAsXmlAttributeOn: (recoveredBlock7Value5).
    recoveredBlock7Value6
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20278e78; bytecode file offset 0xb75744"
!AbtXmlOutputSerializer methodsFor: 'recovered'!
printAttributesFor: recoveredArg1 on: recoveredArg2 mapping: recoveredArg3 context: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := (recoveredValue0) attributeMappings.
    recoveredValue2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Stack0 recoveredBlock8Stack1 recoveredBlock8Stack2 recoveredBlock8Stack3 recoveredBlock8Stack4 recoveredBlock8Stack5 recoveredBlock8Stack6 recoveredBlock8PC recoveredBlock8Step recoveredBlock8Done recoveredBlock8Result |
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
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) isAttribute.
            recoveredBlock8PC := 17.
        ].
        recoveredBlock8Step = 17 ifTrue: [
            (recoveredBlock8Stack2) ifTrue: [recoveredBlock8PC := 20] ifFalse: [recoveredBlock8PC := 37].
        ].
        recoveredBlock8Step = 20 ifTrue: [
            recoveredBlock8PC := 21.
        ].
        recoveredBlock8Step = 21 ifTrue: [
            recoveredBlock8Stack1 := self.
            recoveredBlock8PC := 22.
        ].
        recoveredBlock8Step = 22 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Arg1.
            recoveredBlock8PC := 23.
        ].
        recoveredBlock8Step = 23 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) attribute.
            recoveredBlock8PC := 24.
        ].
        recoveredBlock8Step = 24 ifTrue: [
            recoveredBlock8Stack3 := self.
            recoveredBlock8PC := 25.
        ].
        recoveredBlock8Step = 25 ifTrue: [
            recoveredBlock8Stack4 := recoveredArg1.
            recoveredBlock8PC := 28.
        ].
        recoveredBlock8Step = 28 ifTrue: [
            recoveredBlock8Stack5 := recoveredBlock8Arg1.
            recoveredBlock8PC := 29.
        ].
        recoveredBlock8Step = 29 ifTrue: [
            recoveredBlock8Stack3 := (recoveredBlock8Stack3) getAttributePrintValueFrom: (recoveredBlock8Stack4) attributeMapping: (recoveredBlock8Stack5).
            recoveredBlock8PC := 31.
        ].
        recoveredBlock8Step = 31 ifTrue: [
            recoveredBlock8Stack4 := recoveredArg2.
            recoveredBlock8PC := 34.
        ].
        recoveredBlock8Step = 34 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) printAttribute: (recoveredBlock8Stack2) value: (recoveredBlock8Stack3) on: (recoveredBlock8Stack4).
            recoveredBlock8PC := 37.
        ].
        recoveredBlock8Step = 37 ifTrue: [
            recoveredBlock8Result := recoveredBlock8Stack1.
            recoveredBlock8Done := true.
        ].
    ].
    recoveredBlock8Result
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x202da5bc; bytecode file offset 0xbd6e8c"
!AbtXmlOutputSerializer methodsFor: 'recovered'!
printNamespaceMappingsFor: recoveredArg1 on: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) abtXmlNamespaceMappings.
    recoveredValue2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 recoveredBlock8Value4 |
    recoveredBlock8Value0 := recoveredArg2.
    (recoveredBlock8Value0) increaseTabLevel.
    recoveredBlock8Value1 := recoveredBlock8Arg1.
    recoveredBlock8Value2 := [:recoveredBlock8Block20Arg1 :recoveredBlock8Block20Arg2 | 
    | recoveredBlock8Block20Local1 recoveredBlock8Block20Value0 recoveredBlock8Block20Value1 recoveredBlock8Block20Value2 recoveredBlock8Block20Value3 recoveredBlock8Block20Value4 |
    recoveredBlock8Block20Value0 := recoveredArg2.
    (recoveredBlock8Block20Value0) positionStreamOnNewLine.
    recoveredBlock8Block20Value1 := recoveredArg2.
    recoveredBlock8Block20Value2 := recoveredBlock8Block20Arg1.
    recoveredBlock8Block20Value3 := recoveredBlock8Block20Arg2.
    recoveredBlock8Block20Value4 := (recoveredBlock8Block20Value1) declarePrefix: (recoveredBlock8Block20Value2) uri: (recoveredBlock8Block20Value3).
    recoveredBlock8Block20Value4
].
    (recoveredBlock8Value1) keysAndValuesDo: (recoveredBlock8Value2).
    recoveredBlock8Value3 := recoveredArg2.
    recoveredBlock8Value4 := (recoveredBlock8Value3) decreaseTabLevel.
    recoveredBlock8Value4
].
    (recoveredValue1) ifNotNil: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x202f89cc; bytecode file offset 0xbf529c"
!AbtXmlOutputSerializer methodsFor: 'recovered'!
serializerFor: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := AbtXmlOutputSerializer.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 == recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) allSubclasses.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 recoveredBlock15Value3 |
    recoveredBlock15Value0 := recoveredBlock15Arg1.
    recoveredBlock15Value1 := (recoveredBlock15Value0) current.
    recoveredBlock15Value2 := recoveredArg1.
    recoveredBlock15Value3 := (recoveredBlock15Value1) supportsContext: (recoveredBlock15Value2).
    recoveredBlock15Value3
].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredPC := 52.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) current.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20347d48; bytecode file offset 0xc44614"
!AbtXmlOutputSerializer methodsFor: 'recovered'!
primXmlPrint: recoveredArg1 on: recoveredArg2 context: recoveredArg3
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
            recoveredStack1 := (recoveredStack1) mappingSpec.
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
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) primXmlBasicPrint: (recoveredStack2) on: (recoveredStack3) context: (recoveredStack4).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 62.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) allMappingsForClass: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := [:recoveredBlock40Arg1 | 
    | recoveredBlock40Value0 recoveredBlock40Value1 recoveredBlock40Value2 recoveredBlock40Value3 recoveredBlock40Value4 |
    recoveredBlock40Value0 := recoveredArg1.
    recoveredBlock40Value1 := recoveredArg2.
    recoveredBlock40Value2 := recoveredBlock40Arg1.
    recoveredBlock40Value3 := recoveredArg3.
    recoveredBlock40Value4 := (self) primXmlBasicPrint: (recoveredBlock40Value0) on: (recoveredBlock40Value1) mapping: (recoveredBlock40Value2) context: (recoveredBlock40Value3).
    recoveredBlock40Value4
].
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203f0c10; bytecode file offset 0xced4e8"
!AbtXmlOutputSerializer methodsFor: 'recovered'!
printFromCollection: recoveredArg1 on: recoveredArg2 mapping: recoveredArg3 context: recoveredArg4
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) isAttribute.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSubElementAttribute.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := [:recoveredBlock23Arg1 | 
    | recoveredBlock23Local1 recoveredBlock23Stack0 recoveredBlock23Stack1 recoveredBlock23Stack2 recoveredBlock23Stack3 recoveredBlock23Stack4 recoveredBlock23PC recoveredBlock23Step recoveredBlock23Done recoveredBlock23Result |
    recoveredBlock23Stack0 := self.
    recoveredBlock23PC := 30.
    recoveredBlock23Done := false.
    [recoveredBlock23Done not] whileTrue: [
        recoveredBlock23Step := recoveredBlock23PC.
        recoveredBlock23Step = 30 ifTrue: [
            recoveredBlock23Stack1 := false.
            recoveredBlock23PC := 31.
        ].
        recoveredBlock23Step = 31 ifTrue: [
            recoveredBlock23Stack2 := recoveredLocal1.
            recoveredBlock23PC := 34.
        ].
        recoveredBlock23Step = 34 ifTrue: [
            (recoveredBlock23Stack2) ifTrue: [recoveredBlock23PC := 38] ifFalse: [recoveredBlock23PC := 44].
        ].
        recoveredBlock23Step = 38 ifTrue: [
            recoveredBlock23PC := 39.
        ].
        recoveredBlock23Step = 39 ifTrue: [
            recoveredBlock23Stack1 := AbtXmlUtility.
            recoveredBlock23PC := 41.
        ].
        recoveredBlock23Step = 41 ifTrue: [
            recoveredBlock23Stack2 := recoveredBlock23Arg1.
            recoveredBlock23PC := 42.
        ].
        recoveredBlock23Step = 42 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) abtXmlAttributesFor: (recoveredBlock23Stack2).
            recoveredBlock23PC := 43.
        ].
        recoveredBlock23Step = 43 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) isNil.
            recoveredBlock23PC := 44.
        ].
        recoveredBlock23Step = 44 ifTrue: [
            recoveredBlock23Stack2 := recoveredBlock23Stack1.
            recoveredBlock23PC := 45.
        ].
        recoveredBlock23Step = 45 ifTrue: [
            recoveredBlock23Local1 := recoveredBlock23Stack2.
            recoveredBlock23PC := 46.
        ].
        recoveredBlock23Step = 46 ifTrue: [
            (recoveredBlock23Stack1) ifTrue: [recoveredBlock23PC := 50] ifFalse: [recoveredBlock23PC := 60].
        ].
        recoveredBlock23Step = 50 ifTrue: [
            recoveredBlock23Stack1 := recoveredArg2.
            recoveredBlock23PC := 53.
        ].
        recoveredBlock23Step = 53 ifTrue: [
            recoveredBlock23Stack2 := recoveredArg3.
            recoveredBlock23PC := 56.
        ].
        recoveredBlock23Step = 56 ifTrue: [
            recoveredBlock23Stack2 := (recoveredBlock23Stack2) tagName.
            recoveredBlock23PC := 58.
        ].
        recoveredBlock23Step = 58 ifTrue: [
            (recoveredBlock23Stack1) openTag: (recoveredBlock23Stack2).
            recoveredBlock23PC := 60.
        ].
        recoveredBlock23Step = 60 ifTrue: [
            recoveredBlock23Stack1 := recoveredBlock23Arg1.
            recoveredBlock23PC := 61.
        ].
        recoveredBlock23Step = 61 ifTrue: [
            recoveredBlock23Stack2 := recoveredArg2.
            recoveredBlock23PC := 64.
        ].
        recoveredBlock23Step = 64 ifTrue: [
            recoveredBlock23Stack3 := recoveredArg4.
            recoveredBlock23PC := 67.
        ].
        recoveredBlock23Step = 67 ifTrue: [
            (recoveredBlock23Stack0) primXmlPrintObject: (recoveredBlock23Stack1) on: (recoveredBlock23Stack2) context: (recoveredBlock23Stack3).
            recoveredBlock23PC := 70.
        ].
        recoveredBlock23Step = 70 ifTrue: [
            recoveredBlock23Stack0 := nil.
            recoveredBlock23PC := 71.
        ].
        recoveredBlock23Step = 71 ifTrue: [
            recoveredBlock23Stack1 := recoveredBlock23Local1.
            recoveredBlock23PC := 72.
        ].
        recoveredBlock23Step = 72 ifTrue: [
            (recoveredBlock23Stack1) ifTrue: [recoveredBlock23PC := 76] ifFalse: [recoveredBlock23PC := 87].
        ].
        recoveredBlock23Step = 76 ifTrue: [
            recoveredBlock23PC := 77.
        ].
        recoveredBlock23Step = 77 ifTrue: [
            recoveredBlock23Stack0 := recoveredArg2.
            recoveredBlock23PC := 80.
        ].
        recoveredBlock23Step = 80 ifTrue: [
            recoveredBlock23Stack1 := recoveredArg3.
            recoveredBlock23PC := 83.
        ].
        recoveredBlock23Step = 83 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) tagName.
            recoveredBlock23PC := 85.
        ].
        recoveredBlock23Step = 85 ifTrue: [
            recoveredBlock23Stack0 := (recoveredBlock23Stack0) closeTag: (recoveredBlock23Stack1).
            recoveredBlock23PC := 87.
        ].
        recoveredBlock23Step = 87 ifTrue: [
            recoveredBlock23Result := recoveredBlock23Stack0.
            recoveredBlock23Done := true.
        ].
    ].
    recoveredBlock23Result
].
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2042b934; bytecode file offset 0xd2821c"
!AbtXmlOutputSerializer methodsFor: 'recovered'!
printFromObject: recoveredArg1 on: recoveredArg2 mapping: recoveredArg3 context: recoveredArg4
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) objectToStringConversionMethod.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) objectToStringConversionMethod.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) asSymbol.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) perform: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) required.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) abtImplementsCollectionMapping.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 55].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack5 := recoveredArg4.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) printFromCollection: (recoveredStack2) on: (recoveredStack3) mapping: (recoveredStack4) context: (recoveredStack5).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSubElement.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack1 == recoveredStack2) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) tagName.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := (recoveredStack1) primXmlPrintObject: (recoveredStack2) on: (recoveredStack3) context: (recoveredStack4).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := (recoveredStack2) tagName.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack1) openTag: (recoveredStack2).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack3 := recoveredArg4.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack0) primXmlPrintObject: (recoveredStack1) on: (recoveredStack2) context: (recoveredStack3).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := (recoveredStack1) tagName.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack0) closeTag: (recoveredStack1).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20441640; bytecode file offset 0xd3df20"
!AbtXmlOutputSerializer methodsFor: 'recovered'!
printSubElementsFor: recoveredArg1 on: recoveredArg2 mapping: recoveredArg3 context: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := Set.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal3 := recoveredValue1.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    recoveredValue4 := (self) selectXmlElementsFrom: (recoveredValue2) context: (recoveredValue3).
    recoveredLocal4 := recoveredValue4.
    recoveredValue5 := recoveredLocal4.
    recoveredValue6 := [:recoveredBlock24Arg1 | 
    | recoveredBlock24Stack0 recoveredBlock24Stack1 recoveredBlock24Stack2 recoveredBlock24Stack3 recoveredBlock24Stack4 recoveredBlock24Stack5 recoveredBlock24Stack6 recoveredBlock24Stack7 recoveredBlock24PC recoveredBlock24Step recoveredBlock24Done recoveredBlock24Result |
    recoveredBlock24Stack0 := self.
    recoveredBlock24PC := 30.
    recoveredBlock24Done := false.
    [recoveredBlock24Done not] whileTrue: [
        recoveredBlock24Step := recoveredBlock24PC.
        recoveredBlock24Step = 30 ifTrue: [
            recoveredBlock24Stack1 := recoveredBlock24Arg1.
            recoveredBlock24PC := 31.
        ].
        recoveredBlock24Step = 31 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) isSubElementAttribute.
            recoveredBlock24PC := 32.
        ].
        recoveredBlock24Step = 32 ifTrue: [
            (recoveredBlock24Stack1) ifTrue: [recoveredBlock24PC := 36] ifFalse: [recoveredBlock24PC := 80].
        ].
        recoveredBlock24Step = 36 ifTrue: [
            recoveredBlock24Stack1 := nil.
            recoveredBlock24PC := 37.
        ].
        recoveredBlock24Step = 37 ifTrue: [
            recoveredBlock24Stack2 := recoveredLocal3.
            recoveredBlock24PC := 40.
        ].
        recoveredBlock24Step = 40 ifTrue: [
            recoveredBlock24Stack3 := recoveredBlock24Arg1.
            recoveredBlock24PC := 41.
        ].
        recoveredBlock24Step = 41 ifTrue: [
            recoveredBlock24Stack3 := (recoveredBlock24Stack3) subElement.
            recoveredBlock24PC := 43.
        ].
        recoveredBlock24Step = 43 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) includes: (recoveredBlock24Stack3).
            recoveredBlock24PC := 45.
        ].
        recoveredBlock24Step = 45 ifTrue: [
            (recoveredBlock24Stack2) ifTrue: [recoveredBlock24PC := 76] ifFalse: [recoveredBlock24PC := 48].
        ].
        recoveredBlock24Step = 48 ifTrue: [
            recoveredBlock24PC := 49.
        ].
        recoveredBlock24Step = 49 ifTrue: [
            recoveredBlock24Stack1 := self.
            recoveredBlock24PC := 50.
        ].
        recoveredBlock24Step = 50 ifTrue: [
            recoveredBlock24Stack2 := recoveredBlock24Arg1.
            recoveredBlock24PC := 51.
        ].
        recoveredBlock24Step = 51 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) subElement.
            recoveredBlock24PC := 53.
        ].
        recoveredBlock24Step = 53 ifTrue: [
            recoveredBlock24Stack3 := recoveredArg1.
            recoveredBlock24PC := 56.
        ].
        recoveredBlock24Step = 56 ifTrue: [
            recoveredBlock24Stack4 := recoveredArg2.
            recoveredBlock24PC := 59.
        ].
        recoveredBlock24Step = 59 ifTrue: [
            recoveredBlock24Stack5 := recoveredArg3.
            recoveredBlock24PC := 62.
        ].
        recoveredBlock24Step = 62 ifTrue: [
            recoveredBlock24Stack6 := recoveredArg4.
            recoveredBlock24PC := 65.
        ].
        recoveredBlock24Step = 65 ifTrue: [
            (recoveredBlock24Stack1) printSubElementAttributesFrom: (recoveredBlock24Stack2) for: (recoveredBlock24Stack3) on: (recoveredBlock24Stack4) mapping: (recoveredBlock24Stack5) context: (recoveredBlock24Stack6).
            recoveredBlock24PC := 68.
        ].
        recoveredBlock24Step = 68 ifTrue: [
            recoveredBlock24Stack1 := recoveredLocal3.
            recoveredBlock24PC := 71.
        ].
        recoveredBlock24Step = 71 ifTrue: [
            recoveredBlock24Stack2 := recoveredBlock24Arg1.
            recoveredBlock24PC := 72.
        ].
        recoveredBlock24Step = 72 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) subElement.
            recoveredBlock24PC := 74.
        ].
        recoveredBlock24Step = 74 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) add: (recoveredBlock24Stack2).
            recoveredBlock24PC := 76.
        ].
        recoveredBlock24Step = 76 ifTrue: [
            recoveredBlock24PC := 104.
        ].
        recoveredBlock24Step = 80 ifTrue: [
            recoveredBlock24Stack1 := self.
            recoveredBlock24PC := 81.
        ].
        recoveredBlock24Step = 81 ifTrue: [
            recoveredBlock24Stack2 := recoveredArg1.
            recoveredBlock24PC := 84.
        ].
        recoveredBlock24Step = 84 ifTrue: [
            recoveredBlock24Stack3 := recoveredBlock24Arg1.
            recoveredBlock24PC := 85.
        ].
        recoveredBlock24Step = 85 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) getAttributeValueFrom: (recoveredBlock24Stack2) attributeMapping: (recoveredBlock24Stack3).
            recoveredBlock24PC := 87.
        ].
        recoveredBlock24Step = 87 ifTrue: [
            recoveredLocal2 := recoveredBlock24Stack1.
            recoveredBlock24PC := 90.
        ].
        recoveredBlock24Step = 90 ifTrue: [
            recoveredBlock24Stack1 := self.
            recoveredBlock24PC := 91.
        ].
        recoveredBlock24Step = 91 ifTrue: [
            recoveredBlock24Stack2 := recoveredLocal2.
            recoveredBlock24PC := 94.
        ].
        recoveredBlock24Step = 94 ifTrue: [
            recoveredBlock24Stack3 := recoveredArg2.
            recoveredBlock24PC := 97.
        ].
        recoveredBlock24Step = 97 ifTrue: [
            recoveredBlock24Stack4 := recoveredBlock24Arg1.
            recoveredBlock24PC := 98.
        ].
        recoveredBlock24Step = 98 ifTrue: [
            recoveredBlock24Stack5 := recoveredArg4.
            recoveredBlock24PC := 101.
        ].
        recoveredBlock24Step = 101 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) printFromObject: (recoveredBlock24Stack2) on: (recoveredBlock24Stack3) mapping: (recoveredBlock24Stack4) context: (recoveredBlock24Stack5).
            recoveredBlock24PC := 104.
        ].
        recoveredBlock24Step = 104 ifTrue: [
            recoveredBlock24Result := recoveredBlock24Stack1.
            recoveredBlock24Done := true.
        ].
    ].
    recoveredBlock24Result
].
    (recoveredValue5) do: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x204a526c; bytecode file offset 0xda1b54"
!AbtXmlOutputSerializer methodsFor: 'recovered'!
primXmlBasicPrint: recoveredArg1 on: recoveredArg2 context: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
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
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) openTag: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := AbtXmlUtility.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) abtXmlAttributesFor: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack5 := recoveredArg3.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) abtXmlPrintFeatures: (recoveredStack2) for: (recoveredStack3) on: (recoveredStack4) context: (recoveredStack5).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredPC := 130.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) allInstVarNames.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack1) printOn: (recoveredStack2).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredPC := 130.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := (recoveredStack1) allInstVarNames.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := [:recoveredBlock82Arg1 :recoveredBlock82Arg2 | 
    | recoveredBlock82Stack0 recoveredBlock82Stack1 recoveredBlock82Stack2 recoveredBlock82Stack3 recoveredBlock82Stack4 recoveredBlock82Stack5 recoveredBlock82PC recoveredBlock82Step recoveredBlock82Done recoveredBlock82Result |
    recoveredBlock82Stack0 := self.
    recoveredBlock82PC := 88.
    recoveredBlock82Done := false.
    [recoveredBlock82Done not] whileTrue: [
        recoveredBlock82Step := recoveredBlock82PC.
        recoveredBlock82Step = 88 ifTrue: [
            recoveredBlock82Stack1 := nil.
            recoveredBlock82PC := 89.
        ].
        recoveredBlock82Step = 89 ifTrue: [
            recoveredBlock82Stack2 := recoveredArg1.
            recoveredBlock82PC := 92.
        ].
        recoveredBlock82Step = 92 ifTrue: [
            recoveredBlock82Stack3 := recoveredBlock82Arg2.
            recoveredBlock82PC := 93.
        ].
        recoveredBlock82Step = 93 ifTrue: [
            recoveredBlock82Stack2 := (recoveredBlock82Stack2) instVarAt: (recoveredBlock82Stack3).
            recoveredBlock82PC := 95.
        ].
        recoveredBlock82Step = 95 ifTrue: [
            (recoveredBlock82Stack2 == nil) ifTrue: [recoveredBlock82PC := 127] ifFalse: [recoveredBlock82PC := 98].
        ].
        recoveredBlock82Step = 98 ifTrue: [
            recoveredBlock82PC := 99.
        ].
        recoveredBlock82Step = 99 ifTrue: [
            recoveredBlock82Stack1 := recoveredArg2.
            recoveredBlock82PC := 102.
        ].
        recoveredBlock82Step = 102 ifTrue: [
            recoveredBlock82Stack2 := recoveredBlock82Arg1.
            recoveredBlock82PC := 103.
        ].
        recoveredBlock82Step = 103 ifTrue: [
            (recoveredBlock82Stack1) openTag: (recoveredBlock82Stack2).
            recoveredBlock82PC := 105.
        ].
        recoveredBlock82Step = 105 ifTrue: [
            recoveredBlock82Stack1 := self.
            recoveredBlock82PC := 106.
        ].
        recoveredBlock82Step = 106 ifTrue: [
            recoveredBlock82Stack2 := recoveredArg1.
            recoveredBlock82PC := 109.
        ].
        recoveredBlock82Step = 109 ifTrue: [
            recoveredBlock82Stack3 := recoveredBlock82Arg2.
            recoveredBlock82PC := 110.
        ].
        recoveredBlock82Step = 110 ifTrue: [
            recoveredBlock82Stack2 := (recoveredBlock82Stack2) instVarAt: (recoveredBlock82Stack3).
            recoveredBlock82PC := 112.
        ].
        recoveredBlock82Step = 112 ifTrue: [
            recoveredBlock82Stack3 := recoveredArg2.
            recoveredBlock82PC := 115.
        ].
        recoveredBlock82Step = 115 ifTrue: [
            recoveredBlock82Stack4 := recoveredArg3.
            recoveredBlock82PC := 118.
        ].
        recoveredBlock82Step = 118 ifTrue: [
            (recoveredBlock82Stack1) primXmlPrintObject: (recoveredBlock82Stack2) on: (recoveredBlock82Stack3) context: (recoveredBlock82Stack4).
            recoveredBlock82PC := 121.
        ].
        recoveredBlock82Step = 121 ifTrue: [
            recoveredBlock82Stack1 := recoveredArg2.
            recoveredBlock82PC := 124.
        ].
        recoveredBlock82Step = 124 ifTrue: [
            recoveredBlock82Stack2 := recoveredBlock82Arg1.
            recoveredBlock82PC := 125.
        ].
        recoveredBlock82Step = 125 ifTrue: [
            recoveredBlock82Stack1 := (recoveredBlock82Stack1) closeTag: (recoveredBlock82Stack2).
            recoveredBlock82PC := 127.
        ].
        recoveredBlock82Step = 127 ifTrue: [
            recoveredBlock82Result := recoveredBlock82Stack1.
            recoveredBlock82Done := true.
        ].
    ].
    recoveredBlock82Result
].
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            (recoveredStack1) doWithIndex: (recoveredStack2).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            (recoveredStack1) closeTag: (recoveredStack2).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204ce2c4; bytecode file offset 0xdcabd0"
!AbtXmlOutputSerializer methodsFor: 'recovered'!
abtXmlPrintFeatures: recoveredArg1 for: recoveredArg2 on: recoveredArg3 context: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := AbtXmlStream.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Stack0 recoveredBlock13Stack1 recoveredBlock13Stack2 recoveredBlock13Stack3 recoveredBlock13Stack4 recoveredBlock13Stack5 recoveredBlock13Stack6 recoveredBlock13PC recoveredBlock13Step recoveredBlock13Done recoveredBlock13Result |
    recoveredBlock13Stack0 := self.
    recoveredBlock13PC := 20.
    recoveredBlock13Done := false.
    [recoveredBlock13Done not] whileTrue: [
        recoveredBlock13Step := recoveredBlock13PC.
        recoveredBlock13Step = 20 ifTrue: [
            recoveredBlock13Stack1 := nil.
            recoveredBlock13PC := 21.
        ].
        recoveredBlock13Step = 21 ifTrue: [
            recoveredBlock13Stack2 := AbtXmlUtility.
            recoveredBlock13PC := 23.
        ].
        recoveredBlock13Step = 23 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Arg1.
            recoveredBlock13PC := 24.
        ].
        recoveredBlock13Step = 24 ifTrue: [
            recoveredBlock13Stack4 := recoveredArg2.
            recoveredBlock13PC := 27.
        ].
        recoveredBlock13Step = 27 ifTrue: [
            recoveredBlock13Stack5 := nil.
            recoveredBlock13PC := 28.
        ].
        recoveredBlock13Step = 28 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) valueOfAttributeNamed: (recoveredBlock13Stack3) inObject: (recoveredBlock13Stack4) mapping: (recoveredBlock13Stack5).
            recoveredBlock13PC := 31.
        ].
        recoveredBlock13Step = 31 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Stack2.
            recoveredBlock13PC := 32.
        ].
        recoveredBlock13Step = 32 ifTrue: [
            recoveredLocal4 := recoveredBlock13Stack3.
            recoveredBlock13PC := 35.
        ].
        recoveredBlock13Step = 35 ifTrue: [
            (recoveredBlock13Stack2 == nil) ifTrue: [recoveredBlock13PC := 150] ifFalse: [recoveredBlock13PC := 38].
        ].
        recoveredBlock13Step = 38 ifTrue: [
            recoveredBlock13PC := 39.
        ].
        recoveredBlock13Step = 39 ifTrue: [
            recoveredBlock13Stack1 := recoveredLocal2.
            recoveredBlock13PC := 42.
        ].
        recoveredBlock13Step = 42 ifTrue: [
            recoveredBlock13Stack2 := WriteStream.
            recoveredBlock13PC := 44.
        ].
        recoveredBlock13Step = 44 ifTrue: [
            recoveredBlock13Stack3 := Locale.
            recoveredBlock13PC := 46.
        ].
        recoveredBlock13Step = 46 ifTrue: [
            recoveredBlock13Stack3 := (recoveredBlock13Stack3) current.
            recoveredBlock13PC := 48.
        ].
        recoveredBlock13Step = 48 ifTrue: [
            recoveredBlock13Stack3 := (recoveredBlock13Stack3) preferredStringClass.
            recoveredBlock13PC := 50.
        ].
        recoveredBlock13Step = 50 ifTrue: [
            recoveredBlock13Stack4 := 10.
            recoveredBlock13PC := 52.
        ].
        recoveredBlock13Step = 52 ifTrue: [
            recoveredBlock13Stack3 := (recoveredBlock13Stack3) new: (recoveredBlock13Stack4).
            recoveredBlock13PC := 54.
        ].
        recoveredBlock13Step = 54 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) on: (recoveredBlock13Stack3).
            recoveredBlock13PC := 56.
        ].
        recoveredBlock13Step = 56 ifTrue: [
            (recoveredBlock13Stack1) stream: (recoveredBlock13Stack2).
            recoveredBlock13PC := 58.
        ].
        recoveredBlock13Step = 58 ifTrue: [
            recoveredBlock13Stack1 := self.
            recoveredBlock13PC := 59.
        ].
        recoveredBlock13Step = 59 ifTrue: [
            recoveredBlock13Stack2 := recoveredLocal4.
            recoveredBlock13PC := 62.
        ].
        recoveredBlock13Step = 62 ifTrue: [
            recoveredBlock13Stack3 := recoveredLocal2.
            recoveredBlock13PC := 65.
        ].
        recoveredBlock13Step = 65 ifTrue: [
            recoveredBlock13Stack4 := recoveredArg4.
            recoveredBlock13PC := 68.
        ].
        recoveredBlock13Step = 68 ifTrue: [
            (recoveredBlock13Stack1) primXmlPrintObject: (recoveredBlock13Stack2) on: (recoveredBlock13Stack3) context: (recoveredBlock13Stack4).
            recoveredBlock13PC := 71.
        ].
        recoveredBlock13Step = 71 ifTrue: [
            recoveredBlock13Stack1 := recoveredLocal2.
            recoveredBlock13PC := 74.
        ].
        recoveredBlock13Step = 74 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) contents.
            recoveredBlock13PC := 76.
        ].
        recoveredBlock13Step = 76 ifTrue: [
            recoveredLocal3 := recoveredBlock13Stack1.
            recoveredBlock13PC := 79.
        ].
        recoveredBlock13Step = 79 ifTrue: [
            recoveredBlock13Stack1 := nil.
            recoveredBlock13PC := 80.
        ].
        recoveredBlock13Step = 80 ifTrue: [
            recoveredBlock13Stack2 := recoveredLocal3.
            recoveredBlock13PC := 83.
        ].
        recoveredBlock13Step = 83 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) notEmpty.
            recoveredBlock13PC := 85.
        ].
        recoveredBlock13Step = 85 ifTrue: [
            (recoveredBlock13Stack2) ifTrue: [recoveredBlock13PC := 88] ifFalse: [recoveredBlock13PC := 150].
        ].
        recoveredBlock13Step = 88 ifTrue: [
            recoveredBlock13PC := 89.
        ].
        recoveredBlock13Step = 89 ifTrue: [
            recoveredBlock13Stack1 := recoveredLocal3.
            recoveredBlock13PC := 92.
        ].
        recoveredBlock13Step = 92 ifTrue: [
            recoveredBlock13Stack2 := [:block281071acArg1 | 
    | block281071acValue0 block281071acValue1 block281071acValue2 |
    block281071acValue0 := block281071acArg1.
    block281071acValue1 := (block281071acValue0) isSeparator.
    block281071acValue2 := (block281071acValue1) not.
    block281071acValue2
].
            recoveredBlock13PC := 94.
        ].
        recoveredBlock13Step = 94 ifTrue: [
            recoveredBlock13PC := 103.
        ].
        recoveredBlock13Step = 103 ifTrue: [
            recoveredBlock13Stack3 := [].
            recoveredBlock13PC := 105.
        ].
        recoveredBlock13Step = 105 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) detect: (recoveredBlock13Stack2) ifNone: (recoveredBlock13Stack3).
            recoveredBlock13PC := 107.
        ].
        recoveredBlock13Step = 107 ifTrue: [
            recoveredLocal1 := recoveredBlock13Stack1.
            recoveredBlock13PC := 110.
        ].
        recoveredBlock13Step = 110 ifTrue: [
            recoveredBlock13Stack1 := recoveredLocal1.
            recoveredBlock13PC := 113.
        ].
        recoveredBlock13Step = 113 ifTrue: [
            recoveredBlock13Stack2 := $<.
            recoveredBlock13PC := 116.
        ].
        recoveredBlock13Step = 116 ifTrue: [
            (recoveredBlock13Stack1 ~~ recoveredBlock13Stack2) ifTrue: [recoveredBlock13PC := 134] ifFalse: [recoveredBlock13PC := 120].
        ].
        recoveredBlock13Step = 120 ifTrue: [
            recoveredBlock13Stack1 := recoveredArg3.
            recoveredBlock13PC := 123.
        ].
        recoveredBlock13Step = 123 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Stack1.
            recoveredBlock13PC := 124.
        ].
        recoveredBlock13Step = 124 ifTrue: [
            (recoveredBlock13Stack2) cr.
            recoveredBlock13PC := 126.
        ].
        recoveredBlock13Step = 126 ifTrue: [
            recoveredBlock13Stack2 := recoveredLocal3.
            recoveredBlock13PC := 129.
        ].
        recoveredBlock13Step = 129 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) nextPutAll: (recoveredBlock13Stack2).
            recoveredBlock13PC := 131.
        ].
        recoveredBlock13Step = 131 ifTrue: [
            recoveredBlock13PC := 150.
        ].
        recoveredBlock13Step = 134 ifTrue: [
            recoveredBlock13Stack1 := recoveredArg3.
            recoveredBlock13PC := 137.
        ].
        recoveredBlock13Step = 137 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 138.
        ].
        recoveredBlock13Step = 138 ifTrue: [
            recoveredBlock13Stack3 := [
    | recoveredBlock13Block138Value0 |
    recoveredBlock13Block138Value0 := recoveredLocal3.
    recoveredBlock13Block138Value0
].
            recoveredBlock13PC := 148.
        ].
        recoveredBlock13Step = 148 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) writeTag: (recoveredBlock13Stack2) value: (recoveredBlock13Stack3).
            recoveredBlock13PC := 150.
        ].
        recoveredBlock13Step = 150 ifTrue: [
            recoveredBlock13Result := recoveredBlock13Stack1.
            recoveredBlock13Done := true.
        ].
    ].
    recoveredBlock13Result
].
    (recoveredValue2) keysDo: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x204ec618; bytecode file offset 0xde8f14"
!AbtXmlOutputSerializer methodsFor: 'recovered'!
printSubElementAttributesFrom: recoveredArg1 for: recoveredArg2 on: recoveredArg3 mapping: recoveredArg4 context: recoveredArg5
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) attributeMappings.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Stack0 recoveredBlock8Stack1 recoveredBlock8Stack2 recoveredBlock8Stack3 recoveredBlock8PC recoveredBlock8Step recoveredBlock8Done recoveredBlock8Result |
    recoveredBlock8Stack0 := self.
    recoveredBlock8PC := 14.
    recoveredBlock8Done := false.
    [recoveredBlock8Done not] whileTrue: [
        recoveredBlock8Step := recoveredBlock8PC.
        recoveredBlock8Step = 14 ifTrue: [
            recoveredBlock8Stack1 := false.
            recoveredBlock8PC := 15.
        ].
        recoveredBlock8Step = 15 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Arg1.
            recoveredBlock8PC := 16.
        ].
        recoveredBlock8Step = 16 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) isSubElementAttribute.
            recoveredBlock8PC := 17.
        ].
        recoveredBlock8Step = 17 ifTrue: [
            (recoveredBlock8Stack2) ifTrue: [recoveredBlock8PC := 20] ifFalse: [recoveredBlock8PC := 27].
        ].
        recoveredBlock8Step = 20 ifTrue: [
            recoveredBlock8PC := 21.
        ].
        recoveredBlock8Step = 21 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Arg1.
            recoveredBlock8PC := 22.
        ].
        recoveredBlock8Step = 22 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) subElement.
            recoveredBlock8PC := 23.
        ].
        recoveredBlock8Step = 23 ifTrue: [
            recoveredBlock8Stack2 := recoveredArg1.
            recoveredBlock8PC := 26.
        ].
        recoveredBlock8Step = 26 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) = (recoveredBlock8Stack2).
            recoveredBlock8PC := 27.
        ].
        recoveredBlock8Step = 27 ifTrue: [
            recoveredBlock8Result := recoveredBlock8Stack1.
            recoveredBlock8Done := true.
        ].
    ].
    recoveredBlock8Result
].
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := recoveredArg5.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectXmlAttributesFor: (recoveredStack1) from: (recoveredStack2) context: (recoveredStack3).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := [:recoveredBlock50Arg1 | 
    | recoveredBlock50Value0 recoveredBlock50Value1 recoveredBlock50Value2 |
    recoveredBlock50Value0 := recoveredLocal4.
    recoveredBlock50Value1 := recoveredBlock50Arg1.
    recoveredBlock50Value2 := (recoveredBlock50Value0) remove: (recoveredBlock50Value1).
    recoveredBlock50Value2
].
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack0) startOpenTag: (recoveredStack1).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := [:recoveredBlock76Arg1 | 
    | recoveredBlock76Value0 recoveredBlock76Value1 recoveredBlock76Value2 recoveredBlock76Value3 recoveredBlock76Value4 recoveredBlock76Value5 recoveredBlock76Value6 |
    recoveredBlock76Value0 := recoveredBlock76Arg1.
    recoveredBlock76Value1 := (recoveredBlock76Value0) attribute.
    recoveredBlock76Value2 := recoveredArg2.
    recoveredBlock76Value3 := recoveredBlock76Arg1.
    recoveredBlock76Value4 := (self) getAttributePrintValueFrom: (recoveredBlock76Value2) attributeMapping: (recoveredBlock76Value3).
    recoveredBlock76Value5 := recoveredArg3.
    recoveredBlock76Value6 := (self) printAttribute: (recoveredBlock76Value1) value: (recoveredBlock76Value4) on: (recoveredBlock76Value5).
    recoveredBlock76Value6
].
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 110] ifFalse: [recoveredPC := 120].
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := '/>'.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredPC := 164.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack0) endOpenTag.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := [:recoveredBlock128Arg1 | 
    | recoveredBlock128Local1 recoveredBlock128Value0 recoveredBlock128Value1 recoveredBlock128Value2 recoveredBlock128Value3 recoveredBlock128Value4 recoveredBlock128Value5 recoveredBlock128Value6 recoveredBlock128Value7 |
    recoveredBlock128Value0 := recoveredArg2.
    recoveredBlock128Value1 := recoveredBlock128Arg1.
    recoveredBlock128Value2 := (self) getAttributeValueFrom: (recoveredBlock128Value0) attributeMapping: (recoveredBlock128Value1).
    recoveredBlock128Local1 := recoveredBlock128Value2.
    recoveredBlock128Value3 := recoveredBlock128Local1.
    recoveredBlock128Value4 := recoveredArg3.
    recoveredBlock128Value5 := recoveredBlock128Arg1.
    recoveredBlock128Value6 := recoveredArg5.
    recoveredBlock128Value7 := (self) printFromObject: (recoveredBlock128Value3) on: (recoveredBlock128Value4) mapping: (recoveredBlock128Value5) context: (recoveredBlock128Value6).
    recoveredBlock128Value7
].
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            (recoveredStack0) closeTagOnNewLine: (recoveredStack1).
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

