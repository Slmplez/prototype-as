"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2002d0e4; bytecode file offset 0x934580"
!AbtXmlSchemaElement methodsFor: 'recovered'!
maxOccursInteger
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) maxOccurs.
    recoveredValue1 := (recoveredValue0) abtAsInteger.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006e860; bytecode file offset 0x96b41c"
!AbtXmlSchemaElement methodsFor: 'recovered'!
abstract
    | recoveredValue0 |
    recoveredValue0 := abstract.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006ee3c; bytecode file offset 0x96b8a0"
!AbtXmlSchemaElement methodsFor: 'recovered'!
block
    | recoveredValue0 |
    recoveredValue0 := block.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006f0e8; bytecode file offset 0x96bc1c"
!AbtXmlSchemaElement methodsFor: 'recovered'!
final
    | recoveredValue0 |
    recoveredValue0 := final.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006f3c0; bytecode file offset 0x96bf7c"
!AbtXmlSchemaElement methodsFor: 'recovered'!
fixed
    | recoveredValue0 |
    recoveredValue0 := fixed.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006f778; bytecode file offset 0x96c1f4"
!AbtXmlSchemaElement methodsFor: 'recovered'!
maxOccurs
    | recoveredValue0 |
    recoveredValue0 := maxOccurs.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006f9a8; bytecode file offset 0x96c42c"
!AbtXmlSchemaElement methodsFor: 'recovered'!
minOccurs
    | recoveredValue0 |
    recoveredValue0 := minOccurs.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006fdd8; bytecode file offset 0x96c6ac"
!AbtXmlSchemaElement methodsFor: 'recovered'!
nillable
    | recoveredValue0 |
    recoveredValue0 := nillable.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006ff8c; bytecode file offset 0x96c850"
!AbtXmlSchemaElement methodsFor: 'recovered'!
substitutionGroup
    | recoveredValue0 |
    recoveredValue0 := substitutionGroup.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20076c9c; bytecode file offset 0x9757c8"
!AbtXmlSchemaElement methodsFor: 'recovered'!
isElement
    ^true
! !

"ASDBase.ic method 0x200907b4; bytecode file offset 0x98d090"
!AbtXmlSchemaElement methodsFor: 'recovered'!
isRequired
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) minOccurs.
    recoveredValue1 := (recoveredValue0) abtAsInteger.
    recoveredValue2 := (recoveredValue1) > (0).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009666c; bytecode file offset 0x992f24"
!AbtXmlSchemaElement methodsFor: 'recovered'!
abstract: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) convertToBoolean: (recoveredValue0).
    abstract := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x20096684; bytecode file offset 0x992f3c"
!AbtXmlSchemaElement methodsFor: 'recovered'!
maxOccurs: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) convertMaxOccurs: (recoveredValue0).
    maxOccurs := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x2009669c; bytecode file offset 0x992f54"
!AbtXmlSchemaElement methodsFor: 'recovered'!
minOccurs: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) convertToInteger: (recoveredValue0).
    minOccurs := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x200966b4; bytecode file offset 0x992f6c"
!AbtXmlSchemaElement methodsFor: 'recovered'!
nillable: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) convertToBoolean: (recoveredValue0).
    nillable := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x200c54e0; bytecode file offset 0x9c1f64"
!AbtXmlSchemaElement methodsFor: 'recovered'!
block: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    block := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5924; bytecode file offset 0x9c22c8"
!AbtXmlSchemaElement methodsFor: 'recovered'!
final: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    final := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5a50; bytecode file offset 0x9c25bc"
!AbtXmlSchemaElement methodsFor: 'recovered'!
fixed: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    fixed := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c63f4; bytecode file offset 0x9c2dd0"
!AbtXmlSchemaElement methodsFor: 'recovered'!
substitutionGroup: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    substitutionGroup := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200eccfc; bytecode file offset 0x9e95c8"
!AbtXmlSchemaElement methodsFor: 'recovered'!
abtXmlPrint: recoveredArg1 on: recoveredArg2 context: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := (recoveredValue0) serializer.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    (recoveredValue1) abtXmlPrint: (recoveredValue2) on: (recoveredValue3) element: (self) context: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20102520; bytecode file offset 0x9fedfc"
!AbtXmlSchemaElement methodsFor: 'recovered'!
abtXmlPrint: recoveredArg1 on: recoveredArg2 tagName: recoveredArg3 context: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg4.
    recoveredValue1 := (recoveredValue0) serializer.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := recoveredArg4.
    (recoveredValue1) abtXmlPrint: (recoveredValue2) on: (recoveredValue3) tagName: (recoveredValue4) element: (self) context: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x201189d4; bytecode file offset 0xa15290"
!AbtXmlSchemaElement methodsFor: 'recovered'!
isCollection
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) isUnbounded.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) maxOccursInteger.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201a7134; bytecode file offset 0xaa39f8"
!AbtXmlSchemaElement methodsFor: 'recovered'!
abtXmlMappedObjectFor: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) nillable.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) isNilElement.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := super abtXmlMappedObjectFor: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201d7dbc; bytecode file offset 0xad4688"
!AbtXmlSchemaElement methodsFor: 'recovered'!
initialize
    super initialize.
    (self) nillable: (false).
    (self) maxOccurs: (1).
    (self) minOccurs: (1).
    (self) abstract: (false).
    ^self
! !

"ASDBase.ic method 0x201e2db0; bytecode file offset 0xadf674"
!AbtXmlSchemaElement methodsFor: 'recovered'!
isUnbounded
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) maxOccurs.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) isString.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) maxOccurs.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := AbtXmlSchemaStringUnbounded.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := maxOccurs.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := '*'.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202740ec; bytecode file offset 0xb709c0"
!AbtXmlSchemaElement methodsFor: 'recovered'!
executePrintBlock: recoveredArg1 context: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentMapping.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentElement.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) currentElement: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) type.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) isComplexType.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) classMappingFor: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) currentMapping: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) value.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) currentMapping: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) currentElement: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202c8254; bytecode file offset 0xbc4b20"
!AbtXmlSchemaElement methodsFor: 'recovered'!
qualifyName
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) form.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := AbtXmlSchemaQualifiedString.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 47.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSchema.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 47.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) schema.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) qualifyElementNames.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredPC := 47.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202e7d4c; bytecode file offset 0xbe4618"
!AbtXmlSchemaElement methodsFor: 'recovered'!
abtXmlPrintValue: recoveredArg1 on: recoveredArg2 context: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) name.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := (self) printableNameFor: (recoveredValue0) context: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := [
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 recoveredBlock15Value3 recoveredBlock15Value4 recoveredBlock15Value5 recoveredBlock15Value6 recoveredBlock15Value7 |
    recoveredBlock15Value0 := recoveredArg3.
    recoveredBlock15Value1 := (recoveredBlock15Value0) serializer.
    recoveredBlock15Value2 := recoveredArg1.
    recoveredBlock15Value3 := recoveredArg2.
    recoveredBlock15Value4 := recoveredLocal1.
    recoveredBlock15Value5 := (self) type.
    recoveredBlock15Value6 := recoveredArg3.
    recoveredBlock15Value7 := (recoveredBlock15Value1) abtXmlPrint: (recoveredBlock15Value2) on: (recoveredBlock15Value3) tagName: (recoveredBlock15Value4) type: (recoveredBlock15Value5) context: (recoveredBlock15Value6).
    recoveredBlock15Value7
].
    recoveredValue4 := recoveredArg3.
    (self) executePrintBlock: (recoveredValue3) context: (recoveredValue4).
    ^self
! !

