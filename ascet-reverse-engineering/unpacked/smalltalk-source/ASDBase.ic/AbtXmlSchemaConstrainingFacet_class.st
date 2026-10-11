"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20048e40; bytecode file offset 0x945728"
!AbtXmlSchemaConstrainingFacet class methodsFor: 'recovered'!
reset
    FacetMappings := nil.
    ^self
! !

"ASDBase.ic method 0x200a1318; bytecode file offset 0x99dbd8"
!AbtXmlSchemaConstrainingFacet class methodsFor: 'recovered'!
facetName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) facetMappings.
    recoveredValue1 := [].
    recoveredValue2 := (recoveredValue0) keyAtValue: (self) ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200ab738; bytecode file offset 0x9a8250"
!AbtXmlSchemaConstrainingFacet class methodsFor: 'recovered'!
facetClassNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) facetMappings.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200ae5b8; bytecode file offset 0x9ab034"
!AbtXmlSchemaConstrainingFacet class methodsFor: 'recovered'!
facetClassNamed: recoveredArg1 put: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) facetMappings.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (recoveredValue0) at: (recoveredValue1) put: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20114f70; bytecode file offset 0xa1183c"
!AbtXmlSchemaConstrainingFacet class methodsFor: 'recovered'!
facetMappings
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := FacetMappings.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultFacetMappings.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            FacetMappings := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := FacetMappings.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2015ae50; bytecode file offset 0xa57710"
!AbtXmlSchemaConstrainingFacet class methodsFor: 'recovered'!
newWithName: recoveredArg1 value: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) facetClassNamed: (recoveredStack3).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2044d0bc; bytecode file offset 0xd499f4"
!AbtXmlSchemaConstrainingFacet class methodsFor: 'recovered'!
defaultFacetMappings
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := AbtXmlSchemaDuration.
    (recoveredValue2) at: ('duration') put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := AbtXmlSchemaEncoding.
    (recoveredValue4) at: ('encoding') put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := AbtXmlSchemaEnumeration.
    (recoveredValue6) at: ('enumeration') put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := AbtXmlSchemaLength.
    (recoveredValue8) at: ('length') put: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := AbtXmlSchemaMaxExclusive.
    (recoveredValue10) at: ('maxExclusive') put: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := AbtXmlSchemaMaxInclusive.
    (recoveredValue12) at: ('maxInclusive') put: (recoveredValue13).
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := AbtXmlSchemaMaxLength.
    (recoveredValue14) at: ('maxLength') put: (recoveredValue15).
    recoveredValue16 := recoveredValue1.
    recoveredValue17 := AbtXmlSchemaMinInclusive.
    (recoveredValue16) at: ('minInclusive') put: (recoveredValue17).
    recoveredValue18 := recoveredValue1.
    recoveredValue19 := AbtXmlSchemaMinExclusive.
    (recoveredValue18) at: ('minExclusive') put: (recoveredValue19).
    recoveredValue20 := recoveredValue1.
    recoveredValue21 := AbtXmlSchemaMinLength.
    (recoveredValue20) at: ('minLength') put: (recoveredValue21).
    recoveredValue22 := recoveredValue1.
    recoveredValue23 := AbtXmlSchemaPattern.
    (recoveredValue22) at: ('pattern') put: (recoveredValue23).
    recoveredValue24 := recoveredValue1.
    recoveredValue25 := AbtXmlSchemaPeriod.
    (recoveredValue24) at: ('period') put: (recoveredValue25).
    recoveredValue26 := recoveredValue1.
    recoveredValue27 := AbtXmlSchemaPrecision.
    (recoveredValue26) at: ('precision') put: (recoveredValue27).
    recoveredValue28 := recoveredValue1.
    recoveredValue29 := AbtXmlSchemaScale.
    (recoveredValue28) at: ('scale') put: (recoveredValue29).
    recoveredValue30 := recoveredValue1.
    recoveredValue31 := AbtXmlSchemaWhiteSpace.
    (recoveredValue30) at: ('whiteSpace') put: (recoveredValue31).
    ^recoveredValue1
! !

