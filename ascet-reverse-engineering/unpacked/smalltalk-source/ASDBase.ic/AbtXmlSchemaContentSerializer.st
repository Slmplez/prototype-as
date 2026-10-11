"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20065c0c; bytecode file offset 0x963428"
!AbtXmlSchemaContentSerializer methodsFor: 'recovered'!
defaults
    | recoveredValue0 |
    recoveredValue0 := defaults.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008946c; bytecode file offset 0x985ef8"
!AbtXmlSchemaContentSerializer methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    defaults := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x200ffed0; bytecode file offset 0x9fc794"
!AbtXmlSchemaContentSerializer methodsFor: 'recovered'!
qualifiedNameFor: recoveredArg1 in: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := AbtXmlUtility.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := AbtXmlSchema.
    recoveredValue3 := (recoveredValue2) defaultNamespace.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue0) qualifiedNameFor: (recoveredValue1) uri: (recoveredValue3) inObject: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x202509b0; bytecode file offset 0xb4d278"
!AbtXmlSchemaContentSerializer methodsFor: 'recovered'!
defaultValueFor: recoveredArg1 in: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) defaults.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue1) class.
    recoveredValue3 := [
    | recoveredBlock9Value0 recoveredBlock9Value1 recoveredBlock9Value2 |
    recoveredBlock9Value0 := recoveredArg2.
    recoveredBlock9Value1 := (recoveredBlock9Value0) class.
    recoveredBlock9Value2 := (recoveredBlock9Value1) new.
    recoveredBlock9Value2
].
    recoveredValue4 := (recoveredValue0) at: (recoveredValue2) ifAbsentPut: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (self) getAttributeValueFrom: (recoveredValue5) attributeMapping: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x202894b8; bytecode file offset 0xb85d8c"
!AbtXmlSchemaContentSerializer methodsFor: 'recovered'!
printEndTagFor: recoveredArg1 on: recoveredArg2 mapping: recoveredArg3 context: recoveredArg4
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasContent.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 41].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) elementTagName.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) qualifiedNameFor: (recoveredStack2) in: (recoveredStack3).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) content.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) last.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) closeTag: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredPC := 41.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) printEndTagFor: (recoveredStack2) on: (recoveredStack3).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20290914; bytecode file offset 0xb8d1e8"
!AbtXmlSchemaContentSerializer methodsFor: 'recovered'!
printStartTagFor: recoveredArg1 on: recoveredArg2 mapping: recoveredArg3 context: recoveredArg4
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := (recoveredStack3) elementTagName.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) qualifiedNameFor: (recoveredStack3) in: (recoveredStack4).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) startOpenTag: (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) printAttributesFor: (recoveredStack1) on: (recoveredStack2) mapping: (recoveredStack3) context: (recoveredStack4).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) printNamespaceMappingsFor: (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasContent.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) endOpenTag.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredPC := 41.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) endNoContentTag.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2034eedc; bytecode file offset 0xc4b7ac"
!AbtXmlSchemaContentSerializer methodsFor: 'recovered'!
printAttributesFor: recoveredArg1 on: recoveredArg2 mapping: recoveredArg3 context: recoveredArg4
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
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
            (recoveredBlock8Stack2) ifTrue: [recoveredBlock8PC := 20] ifFalse: [recoveredBlock8PC := 60].
        ].
        recoveredBlock8Step = 20 ifTrue: [
            recoveredBlock8PC := 21.
        ].
        recoveredBlock8Step = 21 ifTrue: [
            recoveredBlock8Stack1 := self.
            recoveredBlock8PC := 22.
        ].
        recoveredBlock8Step = 22 ifTrue: [
            recoveredBlock8Stack2 := recoveredArg1.
            recoveredBlock8PC := 25.
        ].
        recoveredBlock8Step = 25 ifTrue: [
            recoveredBlock8Stack3 := recoveredBlock8Arg1.
            recoveredBlock8PC := 26.
        ].
        recoveredBlock8Step = 26 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) getAttributeValueFrom: (recoveredBlock8Stack2) attributeMapping: (recoveredBlock8Stack3).
            recoveredBlock8PC := 28.
        ].
        recoveredBlock8Step = 28 ifTrue: [
            recoveredLocal1 := recoveredBlock8Stack1.
            recoveredBlock8PC := 31.
        ].
        recoveredBlock8Step = 31 ifTrue: [
            recoveredBlock8Stack1 := nil.
            recoveredBlock8PC := 32.
        ].
        recoveredBlock8Step = 32 ifTrue: [
            recoveredBlock8Stack2 := recoveredLocal1.
            recoveredBlock8PC := 35.
        ].
        recoveredBlock8Step = 35 ifTrue: [
            recoveredBlock8Stack3 := self.
            recoveredBlock8PC := 36.
        ].
        recoveredBlock8Step = 36 ifTrue: [
            recoveredBlock8Stack4 := recoveredBlock8Arg1.
            recoveredBlock8PC := 37.
        ].
        recoveredBlock8Step = 37 ifTrue: [
            recoveredBlock8Stack5 := recoveredArg1.
            recoveredBlock8PC := 40.
        ].
        recoveredBlock8Step = 40 ifTrue: [
            recoveredBlock8Stack3 := (recoveredBlock8Stack3) defaultValueFor: (recoveredBlock8Stack4) in: (recoveredBlock8Stack5).
            recoveredBlock8PC := 42.
        ].
        recoveredBlock8Step = 42 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) = (recoveredBlock8Stack3).
            recoveredBlock8PC := 43.
        ].
        recoveredBlock8Step = 43 ifTrue: [
            (recoveredBlock8Stack2) ifTrue: [recoveredBlock8PC := 60] ifFalse: [recoveredBlock8PC := 46].
        ].
        recoveredBlock8Step = 46 ifTrue: [
            recoveredBlock8PC := 47.
        ].
        recoveredBlock8Step = 47 ifTrue: [
            recoveredBlock8Stack1 := self.
            recoveredBlock8PC := 48.
        ].
        recoveredBlock8Step = 48 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Arg1.
            recoveredBlock8PC := 49.
        ].
        recoveredBlock8Step = 49 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) attribute.
            recoveredBlock8PC := 51.
        ].
        recoveredBlock8Step = 51 ifTrue: [
            recoveredBlock8Stack3 := recoveredLocal1.
            recoveredBlock8PC := 54.
        ].
        recoveredBlock8Step = 54 ifTrue: [
            recoveredBlock8Stack4 := recoveredArg2.
            recoveredBlock8PC := 57.
        ].
        recoveredBlock8Step = 57 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) printAttribute: (recoveredBlock8Stack2) value: (recoveredBlock8Stack3) on: (recoveredBlock8Stack4).
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

"ASDBase.ic method 0x2041539c; bytecode file offset 0xd11c78"
!AbtXmlSchemaContentSerializer methodsFor: 'recovered'!
printSubElementsFor: recoveredArg1 on: recoveredArg2 mapping: recoveredArg3 context: recoveredArg4
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) content.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) abtImplementsCollectionMapping.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) content.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Value0 recoveredBlock18Value1 recoveredBlock18Value2 recoveredBlock18Value3 |
    recoveredBlock18Value0 := recoveredBlock18Arg1.
    recoveredBlock18Value1 := recoveredArg2.
    recoveredBlock18Value2 := recoveredArg4.
    recoveredBlock18Value3 := (recoveredBlock18Value0) abtXmlPrintOn: (recoveredBlock18Value1) context: (recoveredBlock18Value2).
    recoveredBlock18Value3
].
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredPC := 98.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) content.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := [:recoveredBlock44Arg1 :recoveredBlock44Arg2 | 
    | recoveredBlock44Local1 recoveredBlock44Stack0 recoveredBlock44Stack1 recoveredBlock44Stack2 recoveredBlock44Stack3 recoveredBlock44Stack4 recoveredBlock44PC recoveredBlock44Step recoveredBlock44Done recoveredBlock44Result |
    recoveredBlock44Stack0 := self.
    recoveredBlock44PC := 50.
    recoveredBlock44Done := false.
    [recoveredBlock44Done not] whileTrue: [
        recoveredBlock44Step := recoveredBlock44PC.
        recoveredBlock44Step = 50 ifTrue: [
            recoveredBlock44Stack1 := false.
            recoveredBlock44PC := 51.
        ].
        recoveredBlock44Step = 51 ifTrue: [
            recoveredBlock44Stack2 := recoveredBlock44Arg2.
            recoveredBlock44PC := 52.
        ].
        recoveredBlock44Step = 52 ifTrue: [
            recoveredBlock44Stack2 := (recoveredBlock44Stack2) isString.
            recoveredBlock44PC := 54.
        ].
        recoveredBlock44Step = 54 ifTrue: [
            (recoveredBlock44Stack2) ifTrue: [recoveredBlock44PC := 58] ifFalse: [recoveredBlock44PC := 62].
        ].
        recoveredBlock44Step = 58 ifTrue: [
            recoveredBlock44PC := 59.
        ].
        recoveredBlock44Step = 59 ifTrue: [
            recoveredBlock44Stack1 := recoveredBlock44Arg1.
            recoveredBlock44PC := 60.
        ].
        recoveredBlock44Step = 60 ifTrue: [
            recoveredBlock44Stack1 := (recoveredBlock44Stack1) notEmpty.
            recoveredBlock44PC := 62.
        ].
        recoveredBlock44Step = 62 ifTrue: [
            recoveredBlock44Local1 := recoveredBlock44Stack1.
            recoveredBlock44PC := 63.
        ].
        recoveredBlock44Step = 63 ifTrue: [
            recoveredBlock44Stack1 := recoveredBlock44Local1.
            recoveredBlock44PC := 64.
        ].
        recoveredBlock44Step = 64 ifTrue: [
            (recoveredBlock44Stack1) ifTrue: [recoveredBlock44PC := 68] ifFalse: [recoveredBlock44PC := 74].
        ].
        recoveredBlock44Step = 68 ifTrue: [
            recoveredBlock44Stack1 := recoveredArg2.
            recoveredBlock44PC := 71.
        ].
        recoveredBlock44Step = 71 ifTrue: [
            recoveredBlock44Stack2 := recoveredBlock44Arg1.
            recoveredBlock44PC := 72.
        ].
        recoveredBlock44Step = 72 ifTrue: [
            (recoveredBlock44Stack1) openTag: (recoveredBlock44Stack2).
            recoveredBlock44PC := 74.
        ].
        recoveredBlock44Step = 74 ifTrue: [
            recoveredBlock44Stack1 := recoveredBlock44Arg2.
            recoveredBlock44PC := 75.
        ].
        recoveredBlock44Step = 75 ifTrue: [
            recoveredBlock44Stack2 := recoveredArg2.
            recoveredBlock44PC := 78.
        ].
        recoveredBlock44Step = 78 ifTrue: [
            recoveredBlock44Stack3 := recoveredArg4.
            recoveredBlock44PC := 81.
        ].
        recoveredBlock44Step = 81 ifTrue: [
            (recoveredBlock44Stack1) abtXmlPrintOn: (recoveredBlock44Stack2) context: (recoveredBlock44Stack3).
            recoveredBlock44PC := 83.
        ].
        recoveredBlock44Step = 83 ifTrue: [
            recoveredBlock44Stack1 := nil.
            recoveredBlock44PC := 84.
        ].
        recoveredBlock44Step = 84 ifTrue: [
            recoveredBlock44Stack2 := recoveredBlock44Local1.
            recoveredBlock44PC := 85.
        ].
        recoveredBlock44Step = 85 ifTrue: [
            (recoveredBlock44Stack2) ifTrue: [recoveredBlock44PC := 88] ifFalse: [recoveredBlock44PC := 95].
        ].
        recoveredBlock44Step = 88 ifTrue: [
            recoveredBlock44PC := 89.
        ].
        recoveredBlock44Step = 89 ifTrue: [
            recoveredBlock44Stack1 := recoveredArg2.
            recoveredBlock44PC := 92.
        ].
        recoveredBlock44Step = 92 ifTrue: [
            recoveredBlock44Stack2 := recoveredBlock44Arg1.
            recoveredBlock44PC := 93.
        ].
        recoveredBlock44Step = 93 ifTrue: [
            recoveredBlock44Stack1 := (recoveredBlock44Stack1) closeTag: (recoveredBlock44Stack2).
            recoveredBlock44PC := 95.
        ].
        recoveredBlock44Step = 95 ifTrue: [
            recoveredBlock44Result := recoveredBlock44Stack1.
            recoveredBlock44Done := true.
        ].
    ].
    recoveredBlock44Result
].
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack1) keysAndValuesDo: (recoveredStack2).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

