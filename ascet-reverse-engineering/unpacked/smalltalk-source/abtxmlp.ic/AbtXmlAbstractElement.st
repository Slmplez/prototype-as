"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtxmlp.ic method 0x200000d8; bytecode file offset 0x18938"
!AbtXmlAbstractElement methodsFor: 'recovered'!
abtXmlPrintValueOn: recoveredArg1
    ^self
! !

"abtxmlp.ic method 0x2000022c; bytecode file offset 0x18bb0"
!AbtXmlAbstractElement methodsFor: 'recovered'!
tagName
    | recoveredValue0 |
    recoveredValue0 := (self) name.
    ^recoveredValue0
! !

"abtxmlp.ic method 0x20000304; bytecode file offset 0x18bb0"
!AbtXmlAbstractElement methodsFor: 'recovered'!
nameSpaceURI
    | recoveredValue0 |
    recoveredValue0 := (self) namespaceUri.
    ^recoveredValue0
! !

"abtxmlp.ic method 0x200008bc; bytecode file offset 0x190ac"
!AbtXmlAbstractElement methodsFor: 'recovered'!
localName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) name.
    recoveredValue1 := (self) localNameFor: (recoveredValue0).
    ^recoveredValue1
! !

"abtxmlp.ic method 0x20000d1c; bytecode file offset 0x19564"
!AbtXmlAbstractElement methodsFor: 'recovered'!
name
    | recoveredValue0 |
    recoveredValue0 := name.
    ^recoveredValue0
! !

"abtxmlp.ic method 0x20000d98; bytecode file offset 0x19600"
!AbtXmlAbstractElement methodsFor: 'recovered'!
type
    | recoveredValue0 |
    recoveredValue0 := type.
    ^recoveredValue0
! !

"abtxmlp.ic method 0x20000e4c; bytecode file offset 0x1967c"
!AbtXmlAbstractElement methodsFor: 'recovered'!
parent
    | recoveredValue0 |
    recoveredValue0 := parent.
    ^recoveredValue0
! !

"abtxmlp.ic method 0x20000ee8; bytecode file offset 0x19700"
!AbtXmlAbstractElement methodsFor: 'recovered'!
elements
    | recoveredValue0 |
    recoveredValue0 := elements.
    ^recoveredValue0
! !

"abtxmlp.ic method 0x20000f44; bytecode file offset 0x19774"
!AbtXmlAbstractElement methodsFor: 'recovered'!
attributes
    | recoveredValue0 |
    recoveredValue0 := attributes.
    ^recoveredValue0
! !

"abtxmlp.ic method 0x20000fa8; bytecode file offset 0x197d8"
!AbtXmlAbstractElement methodsFor: 'recovered'!
nameSpaceMappings
    | recoveredValue0 |
    recoveredValue0 := namespaceMappings.
    ^recoveredValue0
! !

"abtxmlp.ic method 0x20001024; bytecode file offset 0x19834"
!AbtXmlAbstractElement methodsFor: 'recovered'!
namespaceUri
    | recoveredValue0 |
    recoveredValue0 := namespaceUri.
    ^recoveredValue0
! !

"abtxmlp.ic method 0x20001590; bytecode file offset 0x19d7c"
!AbtXmlAbstractElement methodsFor: 'recovered'!
nameSpaceURI: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) namespaceUri: (recoveredValue0).
    ^self
! !

"abtxmlp.ic method 0x20001cac; bytecode file offset 0x1a4a0"
!AbtXmlAbstractElement methodsFor: 'recovered'!
qualifiedName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) name.
    recoveredValue1 := (self) namespaceUri.
    recoveredValue2 := (self) fullNameFor: (recoveredValue0) nameSpaceURI: (recoveredValue1).
    ^recoveredValue2
! !

"abtxmlp.ic method 0x20001f0c; bytecode file offset 0x1a7a0"
!AbtXmlAbstractElement methodsFor: 'recovered'!
prefixForURI: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) nameSpaceMappings.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"abtxmlp.ic method 0x20001f48; bytecode file offset 0x1a7a0"
!AbtXmlAbstractElement methodsFor: 'recovered'!
attributeNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) attributes.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"abtxmlp.ic method 0x20001f70; bytecode file offset 0x1a7a0"
!AbtXmlAbstractElement methodsFor: 'recovered'!
elementAtIndex: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) elements.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) atIndex: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"abtxmlp.ic method 0x20002068; bytecode file offset 0x1a858"
!AbtXmlAbstractElement methodsFor: 'recovered'!
declarePrefix: recoveredArg1 uri: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) nameSpaceMappings.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg1.
    (recoveredValue0) at: (recoveredValue1) put: (recoveredValue2).
    ^self
! !

"abtxmlp.ic method 0x20002084; bytecode file offset 0x1a8b4"
!AbtXmlAbstractElement methodsFor: 'recovered'!
setAttribute: recoveredArg1 value: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) attributes.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (recoveredValue0) at: (recoveredValue1) put: (recoveredValue2).
    ^self
! !

"abtxmlp.ic method 0x2000245c; bytecode file offset 0x1ac8c"
!AbtXmlAbstractElement methodsFor: 'recovered'!
name: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    name := recoveredValue0.
    ^self
! !

"abtxmlp.ic method 0x200024c8; bytecode file offset 0x1ad18"
!AbtXmlAbstractElement methodsFor: 'recovered'!
type: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    type := recoveredValue0.
    ^self
! !

"abtxmlp.ic method 0x2000257c; bytecode file offset 0x1ad9c"
!AbtXmlAbstractElement methodsFor: 'recovered'!
parent: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    parent := recoveredValue0.
    ^self
! !

"abtxmlp.ic method 0x20002610; bytecode file offset 0x1ae20"
!AbtXmlAbstractElement methodsFor: 'recovered'!
elements: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    elements := recoveredValue0.
    ^self
! !

"abtxmlp.ic method 0x200026a4; bytecode file offset 0x1ae94"
!AbtXmlAbstractElement methodsFor: 'recovered'!
attributes: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    attributes := recoveredValue0.
    ^self
! !

"abtxmlp.ic method 0x200026e8; bytecode file offset 0x1aef0"
!AbtXmlAbstractElement methodsFor: 'recovered'!
nameSpaceMappings: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    namespaceMappings := recoveredValue0.
    ^self
! !

"abtxmlp.ic method 0x2000274c; bytecode file offset 0x1af34"
!AbtXmlAbstractElement methodsFor: 'recovered'!
namespaceUri: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    namespaceUri := recoveredValue0.
    ^self
! !

"abtxmlp.ic method 0x20002fdc; bytecode file offset 0x1b7cc"
!AbtXmlAbstractElement methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SystemExceptions.
    recoveredValue1 := (recoveredValue0) new.
    attributes := recoveredValue1.
    recoveredValue2 := SystemExceptions.
    recoveredValue3 := (recoveredValue2) new.
    namespaceMappings := recoveredValue3.
    ^self
! !

"abtxmlp.ic method 0x200045b8; bytecode file offset 0x1cdac"
!AbtXmlAbstractElement methodsFor: 'recovered'!
abtXmlPrintElementsOn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) elements.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := (recoveredBlock5Value0) abtXmlPrintOn: (recoveredBlock5Value1).
    recoveredBlock5Value2
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"abtxmlp.ic method 0x200056e0; bytecode file offset 0x1dee8"
!AbtXmlAbstractElement methodsFor: 'recovered'!
localNameFor: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := $:.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexOf: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (-1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) memcpyStringFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"abtxmlp.ic method 0x200063f4; bytecode file offset 0x1ebf8"
!AbtXmlAbstractElement methodsFor: 'recovered'!
abtXmlPrintAttributesOn: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := EsPoolAssociation.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) attributes.
    recoveredValue3 := [:recoveredBlock11Arg1 :recoveredBlock11Arg2 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 recoveredBlock11Value4 |
    recoveredBlock11Value0 := recoveredLocal1.
    recoveredBlock11Value1 := recoveredBlock11Arg1.
    recoveredBlock11Value2 := recoveredBlock11Arg2.
    recoveredBlock11Value3 := (recoveredBlock11Value2) abtXmlMappedObject.
    recoveredBlock11Value4 := (recoveredBlock11Value0) at: (recoveredBlock11Value1) put: (recoveredBlock11Value3).
    recoveredBlock11Value4
].
    (recoveredValue2) keysAndValuesDo: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredLocal1.
    (recoveredValue4) addTagAttributes: (recoveredValue5).
    ^self
! !

"abtxmlp.ic method 0x20007750; bytecode file offset 0x1ff68"
!AbtXmlAbstractElement methodsFor: 'recovered'!
abtXmlPrintOn: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) abtAsXmlStream.
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
            recoveredStack2 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) tagName.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) startOpenTag: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) abtXmlPrintAttributesOn: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) abtXmlPrintNamespacesOn: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) endOpenTag.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) elements.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) abtXmlPrintValueOn: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) closeTag: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredPC := 52.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) abtXmlPrintElementsOn: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) closeTagOnNewLine: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"abtxmlp.ic method 0x2000791c; bytecode file offset 0x20118"
!AbtXmlAbstractElement methodsFor: 'recovered'!
fullNameFor: recoveredArg1 nameSpaceURI: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := $:.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexOf: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) prefixForURI: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredPC := 56.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := ':'.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"abtxmlp.ic method 0x20008990; bytecode file offset 0x211ac"
!AbtXmlAbstractElement methodsFor: 'recovered'!
abtXmlPrintNamespacesOn: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) abtAsXmlStream.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    (recoveredValue2) increaseTabLevel.
    recoveredValue3 := (self) nameSpaceMappings.
    recoveredValue4 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Local1 recoveredBlock17Stack0 recoveredBlock17Stack1 recoveredBlock17Stack2 recoveredBlock17Stack3 recoveredBlock17Stack4 recoveredBlock17PC recoveredBlock17Step recoveredBlock17Done recoveredBlock17Result |
    recoveredBlock17Stack0 := self.
    recoveredBlock17PC := 24.
    recoveredBlock17Done := false.
    [recoveredBlock17Done not] whileTrue: [
        recoveredBlock17Step := recoveredBlock17PC.
        recoveredBlock17Step = 24 ifTrue: [
            recoveredBlock17Stack1 := recoveredBlock17Arg1.
            recoveredBlock17PC := 25.
        ].
        recoveredBlock17Step = 25 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) value.
            recoveredBlock17PC := 26.
        ].
        recoveredBlock17Step = 26 ifTrue: [
            (recoveredBlock17Stack1 == nil) ifTrue: [recoveredBlock17PC := 38] ifFalse: [recoveredBlock17PC := 30].
        ].
        recoveredBlock17Step = 30 ifTrue: [
            recoveredBlock17Stack1 := recoveredBlock17Arg1.
            recoveredBlock17PC := 31.
        ].
        recoveredBlock17Step = 31 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) value.
            recoveredBlock17PC := 32.
        ].
        recoveredBlock17Step = 32 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) isEmpty.
            recoveredBlock17PC := 34.
        ].
        recoveredBlock17Step = 34 ifTrue: [
            (recoveredBlock17Stack1) ifTrue: [recoveredBlock17PC := 38] ifFalse: [recoveredBlock17PC := 44].
        ].
        recoveredBlock17Step = 38 ifTrue: [
            recoveredBlock17Stack1 := 'xmlns'.
            recoveredBlock17PC := 40.
        ].
        recoveredBlock17Step = 40 ifTrue: [
            recoveredBlock17Local1 := recoveredBlock17Stack1.
            recoveredBlock17PC := 41.
        ].
        recoveredBlock17Step = 41 ifTrue: [
            recoveredBlock17PC := 51.
        ].
        recoveredBlock17Step = 44 ifTrue: [
            recoveredBlock17Stack1 := 'xmlns:'.
            recoveredBlock17PC := 46.
        ].
        recoveredBlock17Step = 46 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Arg1.
            recoveredBlock17PC := 47.
        ].
        recoveredBlock17Step = 47 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) value.
            recoveredBlock17PC := 48.
        ].
        recoveredBlock17Step = 48 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) , (recoveredBlock17Stack2).
            recoveredBlock17PC := 50.
        ].
        recoveredBlock17Step = 50 ifTrue: [
            recoveredBlock17Local1 := recoveredBlock17Stack1.
            recoveredBlock17PC := 51.
        ].
        recoveredBlock17Step = 51 ifTrue: [
            recoveredBlock17Stack1 := recoveredLocal1.
            recoveredBlock17PC := 54.
        ].
        recoveredBlock17Step = 54 ifTrue: [
            (recoveredBlock17Stack1) positionStreamOnNewLine.
            recoveredBlock17PC := 56.
        ].
        recoveredBlock17Step = 56 ifTrue: [
            recoveredBlock17Stack1 := recoveredLocal1.
            recoveredBlock17PC := 59.
        ].
        recoveredBlock17Step = 59 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Local1.
            recoveredBlock17PC := 60.
        ].
        recoveredBlock17Step = 60 ifTrue: [
            recoveredBlock17Stack3 := recoveredBlock17Arg1.
            recoveredBlock17PC := 61.
        ].
        recoveredBlock17Step = 61 ifTrue: [
            recoveredBlock17Stack3 := (recoveredBlock17Stack3) key.
            recoveredBlock17PC := 63.
        ].
        recoveredBlock17Step = 63 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) addTagAttributeNamed: (recoveredBlock17Stack2) value: (recoveredBlock17Stack3).
            recoveredBlock17PC := 65.
        ].
        recoveredBlock17Step = 65 ifTrue: [
            recoveredBlock17Result := recoveredBlock17Stack1.
            recoveredBlock17Done := true.
        ].
    ].
    recoveredBlock17Result
].
    (recoveredValue3) associationsDo: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    (recoveredValue5) decreaseTabLevel.
    ^self
! !

