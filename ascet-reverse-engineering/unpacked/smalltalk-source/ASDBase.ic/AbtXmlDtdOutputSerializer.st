"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20056404; bytecode file offset 0x952cc8"
!AbtXmlDtdOutputSerializer methodsFor: 'recovered'!
supportsContext: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) dtd.
    recoveredValue2 := (recoveredValue1) notNil.
    ^recoveredValue2
! !

"ASDBase.ic method 0x202a67e8; bytecode file offset 0xba30b4"
!AbtXmlDtdOutputSerializer methodsFor: 'recovered'!
selectXmlAttributesFor: recoveredArg1 from: recoveredArg2 context: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) dtd.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) elementNamed: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := [:recoveredBlock23Arg1 | 
    | recoveredBlock23Value0 recoveredBlock23Value1 recoveredBlock23Value2 recoveredBlock23Value3 |
    recoveredBlock23Value0 := recoveredLocal1.
    recoveredBlock23Value1 := recoveredBlock23Arg1.
    recoveredBlock23Value2 := (recoveredBlock23Value1) attribute.
    recoveredBlock23Value3 := (recoveredBlock23Value0) hasAttributeNamed: (recoveredBlock23Value2).
    recoveredBlock23Value3
].
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredPC := 44.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202d4200; bytecode file offset 0xbd0ad4"
!AbtXmlDtdOutputSerializer methodsFor: 'recovered'!
selectXmlElementsFrom: recoveredArg1 context: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) dtd.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) elementTagName.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) elementNamed: (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) attributeMappings.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := [:recoveredBlock24Arg1 | 
    | recoveredBlock24Value0 recoveredBlock24Value1 recoveredBlock24Value2 recoveredBlock24Value3 recoveredBlock24Value4 |
    recoveredBlock24Value0 := recoveredLocal1.
    recoveredBlock24Value1 := recoveredBlock24Arg1.
    recoveredBlock24Value2 := (recoveredBlock24Value1) attribute.
    recoveredBlock24Value3 := (recoveredBlock24Value0) hasAttributeNamed: (recoveredBlock24Value2).
    recoveredBlock24Value4 := (recoveredBlock24Value3) not.
    recoveredBlock24Value4
].
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredPC := 48.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2046c340; bytecode file offset 0xd68c28"
!AbtXmlDtdOutputSerializer methodsFor: 'recovered'!
printAttributesFor: recoveredArg1 on: recoveredArg2 mapping: recoveredArg3 context: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg4.
    recoveredValue1 := (recoveredValue0) dtd.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue3) elementTagName.
    recoveredValue5 := (recoveredValue2) elementNamed: (recoveredValue4).
    recoveredLocal5 := recoveredValue5.
    recoveredValue6 := recoveredLocal5.
    recoveredValue7 := (recoveredValue6) attributes.
    recoveredValue8 := [:recoveredBlock26Arg1 :recoveredBlock26Arg2 | 
    | recoveredBlock26Stack0 recoveredBlock26Stack1 recoveredBlock26Stack2 recoveredBlock26Stack3 recoveredBlock26Stack4 recoveredBlock26Stack5 recoveredBlock26PC recoveredBlock26Step recoveredBlock26Done recoveredBlock26Result |
    recoveredBlock26Stack0 := self.
    recoveredBlock26PC := 32.
    recoveredBlock26Done := false.
    [recoveredBlock26Done not] whileTrue: [
        recoveredBlock26Step := recoveredBlock26PC.
        recoveredBlock26Step = 32 ifTrue: [
            recoveredBlock26Stack1 := recoveredArg3.
            recoveredBlock26PC := 35.
        ].
        recoveredBlock26Step = 35 ifTrue: [
            recoveredBlock26Stack2 := recoveredBlock26Arg1.
            recoveredBlock26PC := 38.
        ].
        recoveredBlock26Step = 38 ifTrue: [
            recoveredBlock26Stack1 := (recoveredBlock26Stack1) attributeMappingNamed: (recoveredBlock26Stack2).
            recoveredBlock26PC := 40.
        ].
        recoveredBlock26Step = 40 ifTrue: [
            recoveredLocal3 := recoveredBlock26Stack1.
            recoveredBlock26PC := 43.
        ].
        recoveredBlock26Step = 43 ifTrue: [
            recoveredBlock26Stack1 := nil.
            recoveredBlock26PC := 44.
        ].
        recoveredBlock26Step = 44 ifTrue: [
            recoveredBlock26Stack2 := recoveredLocal3.
            recoveredBlock26PC := 47.
        ].
        recoveredBlock26Step = 47 ifTrue: [
            (recoveredBlock26Stack2 == nil) ifTrue: [recoveredBlock26PC := 117] ifFalse: [recoveredBlock26PC := 50].
        ].
        recoveredBlock26Step = 50 ifTrue: [
            recoveredBlock26PC := 51.
        ].
        recoveredBlock26Step = 51 ifTrue: [
            recoveredBlock26Stack1 := nil.
            recoveredBlock26PC := 52.
        ].
        recoveredBlock26Step = 52 ifTrue: [
            recoveredBlock26Stack2 := recoveredLocal3.
            recoveredBlock26PC := 55.
        ].
        recoveredBlock26Step = 55 ifTrue: [
            recoveredBlock26Stack2 := (recoveredBlock26Stack2) isAttribute.
            recoveredBlock26PC := 57.
        ].
        recoveredBlock26Step = 57 ifTrue: [
            (recoveredBlock26Stack2) ifTrue: [recoveredBlock26PC := 60] ifFalse: [recoveredBlock26PC := 117].
        ].
        recoveredBlock26Step = 60 ifTrue: [
            recoveredBlock26PC := 61.
        ].
        recoveredBlock26Step = 61 ifTrue: [
            recoveredBlock26Stack1 := self.
            recoveredBlock26PC := 62.
        ].
        recoveredBlock26Step = 62 ifTrue: [
            recoveredBlock26Stack2 := recoveredArg1.
            recoveredBlock26PC := 65.
        ].
        recoveredBlock26Step = 65 ifTrue: [
            recoveredBlock26Stack3 := recoveredLocal3.
            recoveredBlock26PC := 68.
        ].
        recoveredBlock26Step = 68 ifTrue: [
            recoveredBlock26Stack1 := (recoveredBlock26Stack1) getAttributePrintValueFrom: (recoveredBlock26Stack2) attributeMapping: (recoveredBlock26Stack3).
            recoveredBlock26PC := 70.
        ].
        recoveredBlock26Step = 70 ifTrue: [
            recoveredLocal2 := recoveredBlock26Stack1.
            recoveredBlock26PC := 73.
        ].
        recoveredBlock26Step = 73 ifTrue: [
            recoveredBlock26Stack1 := recoveredLocal2.
            recoveredBlock26PC := 76.
        ].
        recoveredBlock26Step = 76 ifTrue: [
            recoveredBlock26Stack2 := [
    | recoveredBlock26Block76Stack0 recoveredBlock26Block76Stack1 recoveredBlock26Block76Stack2 recoveredBlock26Block76Stack3 recoveredBlock26Block76PC recoveredBlock26Block76Step recoveredBlock26Block76Done recoveredBlock26Block76Result |
    recoveredBlock26Block76Stack0 := nil.
    recoveredBlock26Block76PC := 82.
    recoveredBlock26Block76Done := false.
    [recoveredBlock26Block76Done not] whileTrue: [
        recoveredBlock26Block76Step := recoveredBlock26Block76PC.
        recoveredBlock26Block76Step = 82 ifTrue: [
            recoveredBlock26Block76Stack1 := nil.
            recoveredBlock26Block76PC := 83.
        ].
        recoveredBlock26Block76Step = 83 ifTrue: [
            recoveredBlock26Block76Stack2 := recoveredBlock26Arg2.
            recoveredBlock26Block76PC := 86.
        ].
        recoveredBlock26Block76Step = 86 ifTrue: [
            recoveredBlock26Block76Stack2 := (recoveredBlock26Block76Stack2) isRequired.
            recoveredBlock26Block76PC := 88.
        ].
        recoveredBlock26Block76Step = 88 ifTrue: [
            (recoveredBlock26Block76Stack2) ifTrue: [recoveredBlock26Block76PC := 92] ifFalse: [recoveredBlock26Block76PC := 99].
        ].
        recoveredBlock26Block76Step = 92 ifTrue: [
            recoveredBlock26Block76PC := 93.
        ].
        recoveredBlock26Block76Step = 93 ifTrue: [
            recoveredBlock26Block76Stack1 := ''.
            recoveredBlock26Block76PC := 95.
        ].
        recoveredBlock26Block76Step = 95 ifTrue: [
            recoveredBlock26Block76Stack2 := recoveredBlock26Block76Stack1.
            recoveredBlock26Block76PC := 96.
        ].
        recoveredBlock26Block76Step = 96 ifTrue: [
            recoveredLocal2 := recoveredBlock26Block76Stack2.
            recoveredBlock26Block76PC := 99.
        ].
        recoveredBlock26Block76Step = 99 ifTrue: [
            recoveredBlock26Block76Result := recoveredBlock26Block76Stack1.
            recoveredBlock26Block76Done := true.
        ].
    ].
    recoveredBlock26Block76Result
].
            recoveredBlock26PC := 100.
        ].
        recoveredBlock26Step = 100 ifTrue: [
            (recoveredBlock26Stack1) ifNil: (recoveredBlock26Stack2).
            recoveredBlock26PC := 102.
        ].
        recoveredBlock26Step = 102 ifTrue: [
            recoveredBlock26Stack1 := self.
            recoveredBlock26PC := 103.
        ].
        recoveredBlock26Step = 103 ifTrue: [
            recoveredBlock26Stack2 := recoveredLocal3.
            recoveredBlock26PC := 106.
        ].
        recoveredBlock26Step = 106 ifTrue: [
            recoveredBlock26Stack2 := (recoveredBlock26Stack2) attribute.
            recoveredBlock26PC := 108.
        ].
        recoveredBlock26Step = 108 ifTrue: [
            recoveredBlock26Stack3 := recoveredLocal2.
            recoveredBlock26PC := 111.
        ].
        recoveredBlock26Step = 111 ifTrue: [
            recoveredBlock26Stack4 := recoveredArg2.
            recoveredBlock26PC := 114.
        ].
        recoveredBlock26Step = 114 ifTrue: [
            recoveredBlock26Stack1 := (recoveredBlock26Stack1) printAttribute: (recoveredBlock26Stack2) value: (recoveredBlock26Stack3) on: (recoveredBlock26Stack4).
            recoveredBlock26PC := 117.
        ].
        recoveredBlock26Step = 117 ifTrue: [
            recoveredBlock26Result := recoveredBlock26Stack1.
            recoveredBlock26Done := true.
        ].
    ].
    recoveredBlock26Result
].
    (recoveredValue7) keysAndValuesDo: (recoveredValue8).
    ^self
! !

