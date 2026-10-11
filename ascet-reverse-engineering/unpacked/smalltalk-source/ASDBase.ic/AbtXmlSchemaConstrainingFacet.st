"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000d284; bytecode file offset 0x909e08"
!AbtXmlSchemaConstrainingFacet methodsFor: 'recovered'!
isValid: recoveredArg1
    ^true
! !

"ASDBase.ic method 0x20030ee4; bytecode file offset 0x934580"
!AbtXmlSchemaConstrainingFacet methodsFor: 'recovered'!
name
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) facetName.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006b6b0; bytecode file offset 0x96873c"
!AbtXmlSchemaConstrainingFacet methodsFor: 'recovered'!
fixed
    | recoveredValue0 |
    recoveredValue0 := fixed.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006c8a4; bytecode file offset 0x9692b0"
!AbtXmlSchemaConstrainingFacet methodsFor: 'recovered'!
value
    | recoveredValue0 |
    recoveredValue0 := value.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200789ec; bytecode file offset 0x9757c8"
!AbtXmlSchemaConstrainingFacet methodsFor: 'recovered'!
isFacet
    ^true
! !

"ASDBase.ic method 0x2007a3ec; bytecode file offset 0x97c330"
!AbtXmlSchemaConstrainingFacet methodsFor: 'recovered'!
isEnumeration
    ^false
! !

"ASDBase.ic method 0x200a8b64; bytecode file offset 0x9a5418"
!AbtXmlSchemaConstrainingFacet methodsFor: 'recovered'!
value: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    value := recoveredValue0.
    valueObject := nil.
    ^self
! !

"ASDBase.ic method 0x200c2768; bytecode file offset 0x9bf474"
!AbtXmlSchemaConstrainingFacet methodsFor: 'recovered'!
fixed: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    fixed := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2013b2d4; bytecode file offset 0xa37b90"
!AbtXmlSchemaConstrainingFacet methodsFor: 'recovered'!
valueObject
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := valueObject.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) convertValue: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            valueObject := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := valueObject.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20143724; bytecode file offset 0xa3fff0"
!AbtXmlSchemaConstrainingFacet methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) name.
    recoveredValue4 := (recoveredValue3) asString.
    (recoveredValue1) nextPutAll: (recoveredValue4).
    (recoveredValue0) space.
    recoveredValue5 := recoveredArg1.
    (self) printValueExpressionOn: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x201b7844; bytecode file offset 0xab411c"
!AbtXmlSchemaConstrainingFacet methodsFor: 'recovered'!
valueString
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := WriteStream.
    recoveredValue1 := Locale.
    recoveredValue2 := (recoveredValue1) current.
    recoveredValue3 := (recoveredValue2) preferredStringClass.
    recoveredValue4 := (recoveredValue3) new: (10).
    recoveredValue5 := (recoveredValue0) on: (recoveredValue4).
    recoveredValue6 := recoveredValue5.
    recoveredLocal1 := recoveredValue6.
    (self) printValueExpressionOn: (recoveredValue5).
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (recoveredValue7) contents.
    recoveredValue9 := (recoveredValue8) asReducedString.
    ^recoveredValue9
! !

"ASDBase.ic method 0x2022e5dc; bytecode file offset 0xb2aea8"
!AbtXmlSchemaConstrainingFacet methodsFor: 'recovered'!
convertValue: recoveredArg1
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
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := AbtXmlMappedObjectCreationContext.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentElement: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) objectFromString: (recoveredStack2) context: (recoveredStack3).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202a10cc; bytecode file offset 0xb9d99c"
!AbtXmlSchemaConstrainingFacet methodsFor: 'recovered'!
printValueExpressionOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) nextPut: ($().
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := (self) class.
    recoveredValue4 := (recoveredValue3) facetName.
    (recoveredValue2) nextPutAll: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    (recoveredValue5) space.
    recoveredValue6 := recoveredValue0.
    (recoveredValue6) nextPut: ($=).
    recoveredValue7 := recoveredValue0.
    (recoveredValue7) space.
    recoveredValue8 := recoveredValue0.
    recoveredValue9 := (self) value.
    recoveredValue10 := (recoveredValue9) printString.
    (recoveredValue8) nextPutAll: (recoveredValue10).
    (recoveredValue0) nextPut: ($)).
    ^self
! !

