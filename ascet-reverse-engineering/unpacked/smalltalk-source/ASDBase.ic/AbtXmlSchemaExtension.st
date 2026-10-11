"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200655e8; bytecode file offset 0x962104"
!AbtXmlSchemaExtension methodsFor: 'recovered'!
ownedElements
    | recoveredValue0 |
    recoveredValue0 := super elements.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20065728; bytecode file offset 0x962104"
!AbtXmlSchemaExtension methodsFor: 'recovered'!
ownedAttributes
    | recoveredValue0 |
    recoveredValue0 := super attributes.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20078d44; bytecode file offset 0x9757c8"
!AbtXmlSchemaExtension methodsFor: 'recovered'!
isExtension
    ^true
! !

"ASDBase.ic method 0x200dc1ac; bytecode file offset 0x9d8a98"
!AbtXmlSchemaExtension methodsFor: 'recovered'!
initializeObjectFor: recoveredArg1 context: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (recoveredValue0) deserializer.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue1) initializeObjectFor: (recoveredValue2) extension: (self) context: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200ecccc; bytecode file offset 0x9e95c8"
!AbtXmlSchemaExtension methodsFor: 'recovered'!
abtXmlPrint: recoveredArg1 on: recoveredArg2 context: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := (recoveredValue0) serializer.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    (recoveredValue1) abtXmlPrint: (recoveredValue2) on: (recoveredValue3) extension: (self) context: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x2019b610; bytecode file offset 0xa97ed0"
!AbtXmlSchemaExtension methodsFor: 'recovered'!
elementNamed: recoveredArg1
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
            recoveredStack0 := super elementNamed: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) baseType.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) elementNamed: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202702b0; bytecode file offset 0xb6cba4"
!AbtXmlSchemaExtension methodsFor: 'recovered'!
attributes
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) baseType.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 |
    recoveredBlock11Value0 := recoveredLocal1.
    recoveredBlock11Value1 := recoveredBlock11Arg1.
    recoveredBlock11Value2 := (recoveredBlock11Value1) attributes.
    recoveredBlock11Value3 := (recoveredBlock11Value0) addAll: (recoveredBlock11Value2).
    recoveredBlock11Value3
].
    (recoveredValue2) ifNotNil: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (self) ownedAttributes.
    (recoveredValue4) addAll: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x202702d4; bytecode file offset 0xb6cba4"
!AbtXmlSchemaExtension methodsFor: 'recovered'!
elements
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) baseType.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 |
    recoveredBlock11Value0 := recoveredLocal1.
    recoveredBlock11Value1 := recoveredBlock11Arg1.
    recoveredBlock11Value2 := (recoveredBlock11Value1) elements.
    recoveredBlock11Value3 := (recoveredBlock11Value0) addAll: (recoveredBlock11Value2).
    recoveredBlock11Value3
].
    (recoveredValue2) ifNotNil: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (self) ownedElements.
    (recoveredValue4) addAll: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

