"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20060850; bytecode file offset 0x95d1bc"
!AbtXmlSchema methodsFor: 'recovered'!
qualifyElementNames
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) elementFormDefault.
    recoveredValue1 := AbtXmlSchemaQualifiedString.
    recoveredValue2 := (recoveredValue0) = (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200608e0; bytecode file offset 0x95d1bc"
!AbtXmlSchema methodsFor: 'recovered'!
qualifyAttributeNames
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) attributeFormDefault.
    recoveredValue1 := AbtXmlSchemaQualifiedString.
    recoveredValue2 := (recoveredValue0) = (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2006b740; bytecode file offset 0x96873c"
!AbtXmlSchema methodsFor: 'recovered'!
attributeFormDefault
    | recoveredValue0 |
    recoveredValue0 := attributeFormDefault.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006c944; bytecode file offset 0x9692b0"
!AbtXmlSchema methodsFor: 'recovered'!
blockDefault
    | recoveredValue0 |
    recoveredValue0 := blockDefault.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d0d8; bytecode file offset 0x969c04"
!AbtXmlSchema methodsFor: 'recovered'!
elementFormDefault
    | recoveredValue0 |
    recoveredValue0 := elementFormDefault.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d874; bytecode file offset 0x96a390"
!AbtXmlSchema methodsFor: 'recovered'!
finalDefault
    | recoveredValue0 |
    recoveredValue0 := finalDefault.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006daf8; bytecode file offset 0x96a9dc"
!AbtXmlSchema methodsFor: 'recovered'!
targetNamespace
    | recoveredValue0 |
    recoveredValue0 := targetNamespace.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006e19c; bytecode file offset 0x96af48"
!AbtXmlSchema methodsFor: 'recovered'!
version
    | recoveredValue0 |
    recoveredValue0 := version.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006e9b0; bytecode file offset 0x96b41c"
!AbtXmlSchema methodsFor: 'recovered'!
xmlLang
    | recoveredValue0 |
    recoveredValue0 := xmlLang.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006ec04; bytecode file offset 0x96b8a0"
!AbtXmlSchema methodsFor: 'recovered'!
imports
    | recoveredValue0 |
    recoveredValue0 := imports.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20078edc; bytecode file offset 0x9757c8"
!AbtXmlSchema methodsFor: 'recovered'!
isSchema
    ^true
! !

"ASDBase.ic method 0x20084d08; bytecode file offset 0x981ca4"
!AbtXmlSchema methodsFor: 'recovered'!
addType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) addContent: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a8de0; bytecode file offset 0x9a57cc"
!AbtXmlSchema methodsFor: 'recovered'!
typeNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := AbtXmlObjectCache.
    recoveredValue2 := (recoveredValue1) current.
    recoveredValue3 := (self) typeNamed: (recoveredValue0) cache: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200b8020; bytecode file offset 0x9b4908"
!AbtXmlSchema methodsFor: 'recovered'!
addToXmlObjectCacheWithName: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := AbtXmlObjectCache.
    recoveredValue1 := (recoveredValue0) current.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) addSchema: (self) named: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200c2900; bytecode file offset 0x9bf474"
!AbtXmlSchema methodsFor: 'recovered'!
attributeFormDefault: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    attributeFormDefault := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c30cc; bytecode file offset 0x9bfde0"
!AbtXmlSchema methodsFor: 'recovered'!
blockDefault: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    blockDefault := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3cc0; bytecode file offset 0x9c058c"
!AbtXmlSchema methodsFor: 'recovered'!
elementFormDefault: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    elementFormDefault := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3d2c; bytecode file offset 0x9c0bf0"
!AbtXmlSchema methodsFor: 'recovered'!
finalDefault: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    finalDefault := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4698; bytecode file offset 0x9c11bc"
!AbtXmlSchema methodsFor: 'recovered'!
targetNamespace: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    targetNamespace := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4da4; bytecode file offset 0x9c16b0"
!AbtXmlSchema methodsFor: 'recovered'!
version: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    version := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4e58; bytecode file offset 0x9c1afc"
!AbtXmlSchema methodsFor: 'recovered'!
xmlLang: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    xmlLang := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c54e8; bytecode file offset 0x9c1f64"
!AbtXmlSchema methodsFor: 'recovered'!
imports: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    imports := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200cd04c; bytecode file offset 0x9c9910"
!AbtXmlSchema methodsFor: 'recovered'!
addToXmlObjectCache
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := AbtXmlObjectCache.
    recoveredValue1 := (recoveredValue0) current.
    recoveredValue2 := (self) targetNamespace.
    (recoveredValue1) addSchema: (self) named: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200dc76c; bytecode file offset 0x9d902c"
!AbtXmlSchema methodsFor: 'recovered'!
typeNamed: recoveredArg1 inNamespace: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := AbtXmlObjectCache.
    recoveredValue3 := (recoveredValue2) current.
    recoveredValue4 := (self) typeNamed: (recoveredValue0) inNamespace: (recoveredValue1) cache: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x2012dd1c; bytecode file offset 0xa2a5dc"
!AbtXmlSchema methodsFor: 'recovered'!
namespaceUri
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) targetNamespace.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) targetNamespace.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultNamespace.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2015b0c4; bytecode file offset 0xa57980"
!AbtXmlSchema methodsFor: 'recovered'!
getSchemaNamed: recoveredArg1 cache: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) getImportedSchema: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) schemaNamed: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201bf914; bytecode file offset 0xabc1f8"
!AbtXmlSchema methodsFor: 'recovered'!
attributeNamed: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := AbtXmlUtility.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) splitQName: (recoveredValue1).
    recoveredLocal3 := recoveredValue2.
    recoveredValue3 := recoveredLocal3.
    recoveredValue4 := (recoveredValue3) at: (1).
    recoveredLocal2 := recoveredValue4.
    recoveredValue5 := recoveredLocal3.
    recoveredValue6 := (recoveredValue5) at: (2).
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := recoveredLocal2.
    recoveredValue9 := (self) uriForPrefix: (recoveredValue8).
    recoveredValue10 := (self) attributeNamed: (recoveredValue7) inNamespace: (recoveredValue9).
    ^recoveredValue10
! !

"ASDBase.ic method 0x201bf930; bytecode file offset 0xabc1f8"
!AbtXmlSchema methodsFor: 'recovered'!
elementNamed: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := AbtXmlUtility.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) splitQName: (recoveredValue1).
    recoveredLocal3 := recoveredValue2.
    recoveredValue3 := recoveredLocal3.
    recoveredValue4 := (recoveredValue3) at: (1).
    recoveredLocal2 := recoveredValue4.
    recoveredValue5 := recoveredLocal3.
    recoveredValue6 := (recoveredValue5) at: (2).
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := recoveredLocal2.
    recoveredValue9 := (self) uriForPrefix: (recoveredValue8).
    recoveredValue10 := (self) elementNamed: (recoveredValue7) inNamespace: (recoveredValue9).
    ^recoveredValue10
! !

"ASDBase.ic method 0x201ca9c4; bytecode file offset 0xac729c"
!AbtXmlSchema methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    (self) attributeFormDefault: ('unqualified').
    (self) elementFormDefault: ('unqualified').
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    (self) imports: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x201ccbec; bytecode file offset 0xac94b4"
!AbtXmlSchema methodsFor: 'recovered'!
addImport: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) abtIsSequenceableCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) imports.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) addAll: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) imports.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) addContent: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201fcd08; bytecode file offset 0xaf95d0"
!AbtXmlSchema methodsFor: 'recovered'!
groupNamed: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := AbtXmlUtility.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) splitQName: (recoveredValue1).
    recoveredLocal5 := recoveredValue2.
    recoveredValue3 := recoveredLocal5.
    recoveredValue4 := (recoveredValue3) at: (1).
    recoveredLocal4 := recoveredValue4.
    recoveredValue5 := recoveredLocal5.
    recoveredValue6 := (recoveredValue5) at: (2).
    recoveredLocal2 := recoveredValue6.
    recoveredValue7 := recoveredLocal2.
    recoveredValue8 := recoveredLocal4.
    recoveredValue9 := (self) uriForPrefix: (recoveredValue8).
    recoveredValue10 := (self) groupNamed: (recoveredValue7) inNamespace: (recoveredValue9).
    ^recoveredValue10
! !

"ASDBase.ic method 0x20201f04; bytecode file offset 0xafe7c4"
!AbtXmlSchema methodsFor: 'recovered'!
addSchema: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) abtIsSequenceableCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 |
    recoveredBlock11Value0 := recoveredBlock11Arg1.
    recoveredBlock11Value1 := (self) primAddSchema: (recoveredBlock11Value0).
    recoveredBlock11Value1
].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) primAddSchema: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2021ba94; bytecode file offset 0xb18358"
!AbtXmlSchema methodsFor: 'recovered'!
primAddSchema: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) targetNamespace.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) targetNamespace.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) content.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Value0 recoveredBlock14Value1 |
    recoveredBlock14Value0 := recoveredBlock14Arg1.
    recoveredBlock14Value1 := (self) addContent: (recoveredBlock14Value0).
    recoveredBlock14Value1
].
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) addContent: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20257498; bytecode file offset 0xb53dd0"
!AbtXmlSchema methodsFor: 'recovered'!
primTypeNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super primTypeNamed: (recoveredValue0).
    recoveredValue2 := [
    | recoveredBlock11Local1 recoveredBlock11Stack0 recoveredBlock11Stack1 recoveredBlock11Stack2 recoveredBlock11Stack3 recoveredBlock11Stack4 recoveredBlock11PC recoveredBlock11Step recoveredBlock11Done recoveredBlock11Result |
    recoveredBlock11Stack0 := self.
    recoveredBlock11PC := 18.
    recoveredBlock11Done := false.
    [recoveredBlock11Done not] whileTrue: [
        recoveredBlock11Step := recoveredBlock11PC.
        recoveredBlock11Step = 18 ifTrue: [
            recoveredBlock11Stack1 := nil.
            recoveredBlock11PC := 19.
        ].
        recoveredBlock11Step = 19 ifTrue: [
            recoveredBlock11Stack2 := self.
            recoveredBlock11PC := 20.
        ].
        recoveredBlock11Step = 20 ifTrue: [
            recoveredBlock11Stack3 := self.
            recoveredBlock11PC := 21.
        ].
        recoveredBlock11Step = 21 ifTrue: [
            recoveredBlock11Stack3 := (recoveredBlock11Stack3) targetNamespace.
            recoveredBlock11PC := 22.
        ].
        recoveredBlock11Step = 22 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) getImportedSchema: (recoveredBlock11Stack3).
            recoveredBlock11PC := 23.
        ].
        recoveredBlock11Step = 23 ifTrue: [
            recoveredBlock11Stack3 := recoveredBlock11Stack2.
            recoveredBlock11PC := 24.
        ].
        recoveredBlock11Step = 24 ifTrue: [
            recoveredBlock11Local1 := recoveredBlock11Stack3.
            recoveredBlock11PC := 25.
        ].
        recoveredBlock11Step = 25 ifTrue: [
            (recoveredBlock11Stack2 == nil) ifTrue: [recoveredBlock11PC := 34] ifFalse: [recoveredBlock11PC := 28].
        ].
        recoveredBlock11Step = 28 ifTrue: [
            recoveredBlock11PC := 29.
        ].
        recoveredBlock11Step = 29 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Local1.
            recoveredBlock11PC := 30.
        ].
        recoveredBlock11Step = 30 ifTrue: [
            recoveredBlock11Stack2 := recoveredArg1.
            recoveredBlock11PC := 33.
        ].
        recoveredBlock11Step = 33 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) primTypeNamed: (recoveredBlock11Stack2).
            recoveredBlock11PC := 34.
        ].
        recoveredBlock11Step = 34 ifTrue: [
            recoveredBlock11Result := recoveredBlock11Stack1.
            recoveredBlock11Done := true.
        ].
    ].
    recoveredBlock11Result
].
    recoveredValue3 := (recoveredValue1) ifNil: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x202574b4; bytecode file offset 0xb53dd0"
!AbtXmlSchema methodsFor: 'recovered'!
primAttributeNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super primAttributeNamed: (recoveredValue0).
    recoveredValue2 := [
    | recoveredBlock11Local1 recoveredBlock11Stack0 recoveredBlock11Stack1 recoveredBlock11Stack2 recoveredBlock11Stack3 recoveredBlock11Stack4 recoveredBlock11PC recoveredBlock11Step recoveredBlock11Done recoveredBlock11Result |
    recoveredBlock11Stack0 := self.
    recoveredBlock11PC := 18.
    recoveredBlock11Done := false.
    [recoveredBlock11Done not] whileTrue: [
        recoveredBlock11Step := recoveredBlock11PC.
        recoveredBlock11Step = 18 ifTrue: [
            recoveredBlock11Stack1 := nil.
            recoveredBlock11PC := 19.
        ].
        recoveredBlock11Step = 19 ifTrue: [
            recoveredBlock11Stack2 := self.
            recoveredBlock11PC := 20.
        ].
        recoveredBlock11Step = 20 ifTrue: [
            recoveredBlock11Stack3 := self.
            recoveredBlock11PC := 21.
        ].
        recoveredBlock11Step = 21 ifTrue: [
            recoveredBlock11Stack3 := (recoveredBlock11Stack3) targetNamespace.
            recoveredBlock11PC := 22.
        ].
        recoveredBlock11Step = 22 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) getImportedSchema: (recoveredBlock11Stack3).
            recoveredBlock11PC := 23.
        ].
        recoveredBlock11Step = 23 ifTrue: [
            recoveredBlock11Stack3 := recoveredBlock11Stack2.
            recoveredBlock11PC := 24.
        ].
        recoveredBlock11Step = 24 ifTrue: [
            recoveredBlock11Local1 := recoveredBlock11Stack3.
            recoveredBlock11PC := 25.
        ].
        recoveredBlock11Step = 25 ifTrue: [
            (recoveredBlock11Stack2 == nil) ifTrue: [recoveredBlock11PC := 34] ifFalse: [recoveredBlock11PC := 28].
        ].
        recoveredBlock11Step = 28 ifTrue: [
            recoveredBlock11PC := 29.
        ].
        recoveredBlock11Step = 29 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Local1.
            recoveredBlock11PC := 30.
        ].
        recoveredBlock11Step = 30 ifTrue: [
            recoveredBlock11Stack2 := recoveredArg1.
            recoveredBlock11PC := 33.
        ].
        recoveredBlock11Step = 33 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) primAttributeNamed: (recoveredBlock11Stack2).
            recoveredBlock11PC := 34.
        ].
        recoveredBlock11Step = 34 ifTrue: [
            recoveredBlock11Result := recoveredBlock11Stack1.
            recoveredBlock11Done := true.
        ].
    ].
    recoveredBlock11Result
].
    recoveredValue3 := (recoveredValue1) ifNil: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x202574d0; bytecode file offset 0xb53dd0"
!AbtXmlSchema methodsFor: 'recovered'!
primDeclarationNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super primDeclarationNamed: (recoveredValue0).
    recoveredValue2 := [
    | recoveredBlock11Local1 recoveredBlock11Stack0 recoveredBlock11Stack1 recoveredBlock11Stack2 recoveredBlock11Stack3 recoveredBlock11Stack4 recoveredBlock11PC recoveredBlock11Step recoveredBlock11Done recoveredBlock11Result |
    recoveredBlock11Stack0 := self.
    recoveredBlock11PC := 18.
    recoveredBlock11Done := false.
    [recoveredBlock11Done not] whileTrue: [
        recoveredBlock11Step := recoveredBlock11PC.
        recoveredBlock11Step = 18 ifTrue: [
            recoveredBlock11Stack1 := nil.
            recoveredBlock11PC := 19.
        ].
        recoveredBlock11Step = 19 ifTrue: [
            recoveredBlock11Stack2 := self.
            recoveredBlock11PC := 20.
        ].
        recoveredBlock11Step = 20 ifTrue: [
            recoveredBlock11Stack3 := self.
            recoveredBlock11PC := 21.
        ].
        recoveredBlock11Step = 21 ifTrue: [
            recoveredBlock11Stack3 := (recoveredBlock11Stack3) targetNamespace.
            recoveredBlock11PC := 22.
        ].
        recoveredBlock11Step = 22 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) getImportedSchema: (recoveredBlock11Stack3).
            recoveredBlock11PC := 23.
        ].
        recoveredBlock11Step = 23 ifTrue: [
            recoveredBlock11Stack3 := recoveredBlock11Stack2.
            recoveredBlock11PC := 24.
        ].
        recoveredBlock11Step = 24 ifTrue: [
            recoveredBlock11Local1 := recoveredBlock11Stack3.
            recoveredBlock11PC := 25.
        ].
        recoveredBlock11Step = 25 ifTrue: [
            (recoveredBlock11Stack2 == nil) ifTrue: [recoveredBlock11PC := 34] ifFalse: [recoveredBlock11PC := 28].
        ].
        recoveredBlock11Step = 28 ifTrue: [
            recoveredBlock11PC := 29.
        ].
        recoveredBlock11Step = 29 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Local1.
            recoveredBlock11PC := 30.
        ].
        recoveredBlock11Step = 30 ifTrue: [
            recoveredBlock11Stack2 := recoveredArg1.
            recoveredBlock11PC := 33.
        ].
        recoveredBlock11Step = 33 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) primDeclarationNamed: (recoveredBlock11Stack2).
            recoveredBlock11PC := 34.
        ].
        recoveredBlock11Step = 34 ifTrue: [
            recoveredBlock11Result := recoveredBlock11Stack1.
            recoveredBlock11Done := true.
        ].
    ].
    recoveredBlock11Result
].
    recoveredValue3 := (recoveredValue1) ifNil: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x202574ec; bytecode file offset 0xb53dd0"
!AbtXmlSchema methodsFor: 'recovered'!
primElementNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super primElementNamed: (recoveredValue0).
    recoveredValue2 := [
    | recoveredBlock11Local1 recoveredBlock11Stack0 recoveredBlock11Stack1 recoveredBlock11Stack2 recoveredBlock11Stack3 recoveredBlock11Stack4 recoveredBlock11PC recoveredBlock11Step recoveredBlock11Done recoveredBlock11Result |
    recoveredBlock11Stack0 := self.
    recoveredBlock11PC := 18.
    recoveredBlock11Done := false.
    [recoveredBlock11Done not] whileTrue: [
        recoveredBlock11Step := recoveredBlock11PC.
        recoveredBlock11Step = 18 ifTrue: [
            recoveredBlock11Stack1 := nil.
            recoveredBlock11PC := 19.
        ].
        recoveredBlock11Step = 19 ifTrue: [
            recoveredBlock11Stack2 := self.
            recoveredBlock11PC := 20.
        ].
        recoveredBlock11Step = 20 ifTrue: [
            recoveredBlock11Stack3 := self.
            recoveredBlock11PC := 21.
        ].
        recoveredBlock11Step = 21 ifTrue: [
            recoveredBlock11Stack3 := (recoveredBlock11Stack3) targetNamespace.
            recoveredBlock11PC := 22.
        ].
        recoveredBlock11Step = 22 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) getImportedSchema: (recoveredBlock11Stack3).
            recoveredBlock11PC := 23.
        ].
        recoveredBlock11Step = 23 ifTrue: [
            recoveredBlock11Stack3 := recoveredBlock11Stack2.
            recoveredBlock11PC := 24.
        ].
        recoveredBlock11Step = 24 ifTrue: [
            recoveredBlock11Local1 := recoveredBlock11Stack3.
            recoveredBlock11PC := 25.
        ].
        recoveredBlock11Step = 25 ifTrue: [
            (recoveredBlock11Stack2 == nil) ifTrue: [recoveredBlock11PC := 34] ifFalse: [recoveredBlock11PC := 28].
        ].
        recoveredBlock11Step = 28 ifTrue: [
            recoveredBlock11PC := 29.
        ].
        recoveredBlock11Step = 29 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Local1.
            recoveredBlock11PC := 30.
        ].
        recoveredBlock11Step = 30 ifTrue: [
            recoveredBlock11Stack2 := recoveredArg1.
            recoveredBlock11PC := 33.
        ].
        recoveredBlock11Step = 33 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) primElementNamed: (recoveredBlock11Stack2).
            recoveredBlock11PC := 34.
        ].
        recoveredBlock11Step = 34 ifTrue: [
            recoveredBlock11Result := recoveredBlock11Stack1.
            recoveredBlock11Done := true.
        ].
    ].
    recoveredBlock11Result
].
    recoveredValue3 := (recoveredValue1) ifNil: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20257508; bytecode file offset 0xb53dd0"
!AbtXmlSchema methodsFor: 'recovered'!
primGroupNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super primGroupNamed: (recoveredValue0).
    recoveredValue2 := [
    | recoveredBlock11Local1 recoveredBlock11Stack0 recoveredBlock11Stack1 recoveredBlock11Stack2 recoveredBlock11Stack3 recoveredBlock11Stack4 recoveredBlock11PC recoveredBlock11Step recoveredBlock11Done recoveredBlock11Result |
    recoveredBlock11Stack0 := self.
    recoveredBlock11PC := 18.
    recoveredBlock11Done := false.
    [recoveredBlock11Done not] whileTrue: [
        recoveredBlock11Step := recoveredBlock11PC.
        recoveredBlock11Step = 18 ifTrue: [
            recoveredBlock11Stack1 := nil.
            recoveredBlock11PC := 19.
        ].
        recoveredBlock11Step = 19 ifTrue: [
            recoveredBlock11Stack2 := self.
            recoveredBlock11PC := 20.
        ].
        recoveredBlock11Step = 20 ifTrue: [
            recoveredBlock11Stack3 := self.
            recoveredBlock11PC := 21.
        ].
        recoveredBlock11Step = 21 ifTrue: [
            recoveredBlock11Stack3 := (recoveredBlock11Stack3) targetNamespace.
            recoveredBlock11PC := 22.
        ].
        recoveredBlock11Step = 22 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) getImportedSchema: (recoveredBlock11Stack3).
            recoveredBlock11PC := 23.
        ].
        recoveredBlock11Step = 23 ifTrue: [
            recoveredBlock11Stack3 := recoveredBlock11Stack2.
            recoveredBlock11PC := 24.
        ].
        recoveredBlock11Step = 24 ifTrue: [
            recoveredBlock11Local1 := recoveredBlock11Stack3.
            recoveredBlock11PC := 25.
        ].
        recoveredBlock11Step = 25 ifTrue: [
            (recoveredBlock11Stack2 == nil) ifTrue: [recoveredBlock11PC := 34] ifFalse: [recoveredBlock11PC := 28].
        ].
        recoveredBlock11Step = 28 ifTrue: [
            recoveredBlock11PC := 29.
        ].
        recoveredBlock11Step = 29 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Local1.
            recoveredBlock11PC := 30.
        ].
        recoveredBlock11Step = 30 ifTrue: [
            recoveredBlock11Stack2 := recoveredArg1.
            recoveredBlock11PC := 33.
        ].
        recoveredBlock11Step = 33 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) primGroupNamed: (recoveredBlock11Stack2).
            recoveredBlock11PC := 34.
        ].
        recoveredBlock11Step = 34 ifTrue: [
            recoveredBlock11Result := recoveredBlock11Stack1.
            recoveredBlock11Done := true.
        ].
    ].
    recoveredBlock11Result
].
    recoveredValue3 := (recoveredValue1) ifNil: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x202885a4; bytecode file offset 0xb84e6c"
!AbtXmlSchema methodsFor: 'recovered'!
getImportedSchema: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) imports.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) namespace.
    recoveredBlock5Value2 := recoveredArg1.
    recoveredBlock5Value3 := (recoveredBlock5Value1) = (recoveredBlock5Value2).
    recoveredBlock5Value3
].
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) schema.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredPC := 41.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20334e58; bytecode file offset 0xc3172c"
!AbtXmlSchema methodsFor: 'recovered'!
declarationNamed: recoveredArg1 inNamespace: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) targetNamespace.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) primDeclarationNamed: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 35] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) declarationNamed: (recoveredStack1) inNamespace: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := AbtXmlObjectCache.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := (recoveredStack2) current.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) getSchemaNamed: (recoveredStack1) cache: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := [:recoveredBlock45Arg1 | 
    | recoveredBlock45Value0 recoveredBlock45Value1 recoveredBlock45Value2 |
    recoveredBlock45Value0 := recoveredBlock45Arg1.
    recoveredBlock45Value1 := recoveredArg1.
    recoveredBlock45Value2 := (recoveredBlock45Value0) primDeclarationNamed: (recoveredBlock45Value1).
    recoveredBlock45Value2
].
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20347b98; bytecode file offset 0xc4446c"
!AbtXmlSchema methodsFor: 'recovered'!
attributeNamed: recoveredArg1 inNamespace: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultNamespace.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) targetNamespace.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) primAttributeNamed: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredPC := 62.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := AbtXmlObjectCache.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := (recoveredStack3) current.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) getSchemaNamed: (recoveredStack2) cache: (recoveredStack3).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := [:recoveredBlock48Arg1 | 
    | recoveredBlock48Value0 recoveredBlock48Value1 recoveredBlock48Value2 |
    recoveredBlock48Value0 := recoveredBlock48Arg1.
    recoveredBlock48Value1 := recoveredArg1.
    recoveredBlock48Value2 := (recoveredBlock48Value0) primAttributeNamed: (recoveredBlock48Value1).
    recoveredBlock48Value2
].
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203ce16c; bytecode file offset 0xccaa70"
!AbtXmlSchema methodsFor: 'recovered'!
groupNamed: recoveredArg1 inNamespace: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) primGroupNamed: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Value0 |
    recoveredBlock19Value0 := recoveredBlock19Arg1.
    ^recoveredBlock19Value0
].
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultNamespace.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := (recoveredStack2) targetNamespace.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) primGroupNamed: (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredPC := 83.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := AbtXmlObjectCache.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack3 := (recoveredStack3) current.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) getSchemaNamed: (recoveredStack2) cache: (recoveredStack3).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := [
    self
].
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) ifNil: (recoveredStack2).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) primGroupNamed: (recoveredStack2).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203ce198; bytecode file offset 0xccaa70"
!AbtXmlSchema methodsFor: 'recovered'!
elementNamed: recoveredArg1 inNamespace: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) primElementNamed: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Value0 |
    recoveredBlock19Value0 := recoveredBlock19Arg1.
    ^recoveredBlock19Value0
].
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultNamespace.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := (recoveredStack2) targetNamespace.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) primElementNamed: (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredPC := 83.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := AbtXmlObjectCache.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack3 := (recoveredStack3) current.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) getSchemaNamed: (recoveredStack2) cache: (recoveredStack3).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := [
    self
].
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) ifNil: (recoveredStack2).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) primElementNamed: (recoveredStack2).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20409ebc; bytecode file offset 0xd0678c"
!AbtXmlSchema methodsFor: 'recovered'!
typeNamed: recoveredArg1 inNamespace: recoveredArg2 cache: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) targetNamespace.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) primTypeNamed: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := [:block280fab54Arg1 | 
    | block280fab54Value0 |
    block280fab54Value0 := block280fab54Arg1.
    block280fab54Value0
].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) primTypeNamed: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := [:recoveredBlock39Arg1 | 
    | recoveredBlock39Value0 |
    recoveredBlock39Value0 := recoveredBlock39Arg1.
    ^recoveredBlock39Value0
].
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) getSchemaNamed: (recoveredStack1) cache: (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) primTypeNamed: (recoveredStack1).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) typeNamed: (recoveredStack1) inNamespace: (recoveredStack2).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredPC := 95.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20445804; bytecode file offset 0xd420e4"
!AbtXmlSchema methodsFor: 'recovered'!
typeNamed: recoveredArg1 cache: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := AbtXmlUtility.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) splitQName: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) primTypeNamed: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := [:recoveredBlock44Arg1 | 
    | recoveredBlock44Value0 |
    recoveredBlock44Value0 := recoveredBlock44Arg1.
    ^recoveredBlock44Value0
].
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) namespaceMappings.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := [:recoveredBlock56Arg1 | 
    | recoveredBlock56Value0 recoveredBlock56Value1 recoveredBlock56Value2 recoveredBlock56Value3 |
    recoveredBlock56Value0 := recoveredBlock56Arg1.
    recoveredBlock56Value1 := recoveredLocal4.
    recoveredBlock56Value2 := [].
    recoveredBlock56Value3 := (recoveredBlock56Value0) at: (recoveredBlock56Value1) ifAbsent: (recoveredBlock56Value2).
    recoveredBlock56Value3
].
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) targetNamespace.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := (recoveredStack0) typeNamed: (recoveredStack1) inNamespace: (recoveredStack2) cache: (recoveredStack3).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

