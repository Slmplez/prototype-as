"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001407c; bytecode file offset 0x912098"
!SGDistribution methodsFor: 'recovered'!
dataElementClass
    | recoveredValue0 |
    recoveredValue0 := RBDiscreteDistribution.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20019154; bytecode file offset 0x92209c"
!SGDistribution methodsFor: 'recovered'!
dataElementEditType
    ^'GSt'
! !

"ASDBase.ic method 0x2001bcf8; bytecode file offset 0x92209c"
!SGDistribution methodsFor: 'recovered'!
typeForView
    ^'Distribution'
! !

"ASDBase.ic method 0x2001d7bc; bytecode file offset 0x92209c"
!SGDistribution methodsFor: 'recovered'!
dimensionLabel
    ^'Distribution'
! !

"ASDBase.ic method 0x2001e47c; bytecode file offset 0x92209c"
!SGDistribution methodsFor: 'recovered'!
iconName
    ^'ElementTypeDistribution'
! !

"ASDBase.ic method 0x20021050; bytecode file offset 0x92209c"
!SGDistribution methodsFor: 'recovered'!
graphicName
    ^'Distribution'
! !

"ASDBase.ic method 0x20021884; bytecode file offset 0x92209c"
!SGDistribution methodsFor: 'recovered'!
getXMLImplTag
    ^'DistributionImplementation'
! !

"ASDBase.ic method 0x20022694; bytecode file offset 0x92209c"
!SGDistribution methodsFor: 'recovered'!
getModelType
    ^'distribution'
! !

"ASDBase.ic method 0x200258c4; bytecode file offset 0x923928"
!SGDistribution methodsFor: 'recovered'!
getXMLType
    ^'Distribution'
! !

"ASDBase.ic method 0x2005ee84; bytecode file offset 0x95b7f0"
!SGDistribution methodsFor: 'recovered'!
resetSourceAlias
    (self) sourceAlias: (nil).
    ^self
! !

"ASDBase.ic method 0x20069fd8; bytecode file offset 0x966bdc"
!SGDistribution methodsFor: 'recovered'!
sourceAlias
    | recoveredValue0 |
    recoveredValue0 := sourceAlias.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20072cd0; bytecode file offset 0x96f6d4"
!SGDistribution methodsFor: 'recovered'!
defaultMaxSize
    ^4
! !

"ASDBase.ic method 0x20073da8; bytecode file offset 0x970b34"
!SGDistribution methodsFor: 'recovered'!
checkBasicBooleanAllowed
    ^nil
! !

"ASDBase.ic method 0x200786ec; bytecode file offset 0x9757c8"
!SGDistribution methodsFor: 'recovered'!
isSGDistribution
    ^true
! !

"ASDBase.ic method 0x2007ada4; bytecode file offset 0x97c330"
!SGDistribution methodsFor: 'recovered'!
isSGVector
    ^false
! !

"ASDBase.ic method 0x2007b3e4; bytecode file offset 0x97c330"
!SGDistribution methodsFor: 'recovered'!
isIndexable
    ^false
! !

"ASDBase.ic method 0x2007c72c; bytecode file offset 0x97c330"
!SGDistribution methodsFor: 'recovered'!
supportsNewIntegerType
    ^false
! !

"ASDBase.ic method 0x2007d8bc; bytecode file offset 0x97c330"
!SGDistribution methodsFor: 'recovered'!
isComplexMessageCandidateType
    ^false
! !

"ASDBase.ic method 0x2007e684; bytecode file offset 0x97c330"
!SGDistribution methodsFor: 'recovered'!
supportVariantSizeX
    ^false
! !

"ASDBase.ic method 0x200884a8; bytecode file offset 0x985628"
!SGDistribution methodsFor: 'recovered'!
methods
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Array.
    recoveredValue1 := (self) searchMethod.
    recoveredValue2 := (recoveredValue0) with: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200c0b78; bytecode file offset 0x9bdf14"
!SGDistribution methodsFor: 'recovered'!
sourceAlias: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    sourceAlias := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200e1f20; bytecode file offset 0x9de890"
!SGDistribution methodsFor: 'recovered'!
label
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) basicType.
    recoveredValue1 := (recoveredValue0) label.
    recoveredValue2 := ('distrib[') , (recoveredValue1).
    recoveredValue3 := (recoveredValue2) , (']').
    ^recoveredValue3
! !

"ASDBase.ic method 0x2010537c; bytecode file offset 0xa01c88"
!SGDistribution methodsFor: 'recovered'!
methodPositions
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := SGReservedNames.
    recoveredValue4 := (recoveredValue3) searchMethod.
    (recoveredValue2) at: (recoveredValue4) put: (#(350)).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2011e974; bytecode file offset 0xa1b248"
!SGDistribution methodsFor: 'recovered'!
conformsWith: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) isSGDistribution.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) basicType.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) basicType.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) conformsWith: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201677c4; bytecode file offset 0xa64084"
!SGDistribution methodsFor: 'recovered'!
setSourceAlias: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) sourceAlias.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) sourceAlias: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2016df2c; bytecode file offset 0xa6a7fc"
!SGDistribution methodsFor: 'recovered'!
possibleTypes
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := SGBoolean.
    recoveredValue2 := (recoveredValue1) createDefault.
    recoveredValue3 := SGReal.
    recoveredValue4 := (recoveredValue3) createDefault.
    recoveredValue5 := SGSignedInteger.
    recoveredValue6 := (recoveredValue5) createDefault.
    recoveredValue7 := SGUnsignedInteger.
    recoveredValue8 := (recoveredValue7) createDefault.
    recoveredValue9 := (recoveredValue0) with: (recoveredValue2) with: (recoveredValue4) with: (recoveredValue6) with: (recoveredValue8).
    ^recoveredValue9
! !

"ASDBase.ic method 0x201bfcd0; bytecode file offset 0xabc5a8"
!SGDistribution methodsFor: 'recovered'!
searchMethod
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := SGAliasMethod.
    recoveredValue1 := SGReservedNames.
    recoveredValue2 := (recoveredValue1) searchMethod.
    recoveredValue3 := Array.
    recoveredValue4 := (recoveredValue3) with: ('x').
    recoveredValue5 := Array.
    recoveredValue6 := SGModelDataType.
    recoveredValue7 := (recoveredValue6) createScalar.
    recoveredValue8 := (recoveredValue5) with: (recoveredValue7).
    recoveredValue9 := (recoveredValue0) createWithName: (recoveredValue2) inputArguments: (recoveredValue4) inputTemplates: (recoveredValue8).
    ^recoveredValue9
! !

"ASDBase.ic method 0x201d045c; bytecode file offset 0xaccd30"
!SGDistribution methodsFor: 'recovered'!
createData
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := SGVectorData.
    recoveredValue1 := (self) basicType.
    recoveredValue2 := (recoveredValue1) defaultPhysType.
    recoveredValue3 := (recoveredValue0) createForType: (recoveredValue2).
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := (self) maxSize.
    (recoveredValue4) maxSize: (recoveredValue5).
    recoveredValue6 := recoveredValue3.
    recoveredValue7 := (self) maxSize.
    (recoveredValue6) changeXSizeTo: (recoveredValue7).
    recoveredLocal1 := recoveredValue3.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := (self) convertAdequateData: (recoveredValue8).
    ^recoveredValue9
! !

"ASDBase.ic method 0x204fdc80; bytecode file offset 0xdfa590"
!SGDistribution methodsFor: 'recovered'!
editValueConfig: recoveredArg1 elementName: recoveredArg2 context: recoveredArg3 parentValueConfig: recoveredArg4 mainController: recoveredArg5
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) createDataElement.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) name: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) maxSize.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) maxSize.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) maxSize: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) maxSize.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) maxSize: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredPC := 49.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) maxSize.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) maxSize: (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) getPhysValue.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) setPhysValue: (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := [:recoveredBlock62Arg1 | 
    ^nil
].
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClassIfUndefined: (recoveredStack1).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) sourceAlias.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) elementAliasName: (recoveredStack1).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := [:recoveredBlock83Arg1 | 
    | recoveredBlock83Local1 recoveredBlock83Stack0 recoveredBlock83Stack1 recoveredBlock83Stack2 recoveredBlock83Stack3 recoveredBlock83Stack4 recoveredBlock83PC recoveredBlock83Step recoveredBlock83Done recoveredBlock83Result |
    recoveredBlock83Stack0 := self.
    recoveredBlock83PC := 90.
    recoveredBlock83Done := false.
    [recoveredBlock83Done not] whileTrue: [
        recoveredBlock83Step := recoveredBlock83PC.
        recoveredBlock83Step = 90 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Arg1.
            recoveredBlock83PC := 91.
        ].
        recoveredBlock83Step = 91 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) isImported.
            recoveredBlock83PC := 93.
        ].
        recoveredBlock83Step = 93 ifTrue: [
            (recoveredBlock83Stack1) ifTrue: [recoveredBlock83PC := 96] ifFalse: [recoveredBlock83PC := 122].
        ].
        recoveredBlock83Step = 96 ifTrue: [
            recoveredBlock83Stack1 := recoveredArg3.
            recoveredBlock83PC := 99.
        ].
        recoveredBlock83Step = 99 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) project.
            recoveredBlock83PC := 101.
        ].
        recoveredBlock83Step = 101 ifTrue: [
            recoveredBlock83Stack2 := recoveredBlock83Arg1.
            recoveredBlock83PC := 102.
        ].
        recoveredBlock83Step = 102 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) mappedClassVarFor: (recoveredBlock83Stack2).
            recoveredBlock83PC := 104.
        ].
        recoveredBlock83Step = 104 ifTrue: [
            recoveredBlock83Stack2 := [:block2810a3e0Arg1 | 
    | block2810a3e0Value0 block2810a3e0Value1 block2810a3e0Value2 |
    block2810a3e0Value0 := block2810a3e0Arg1.
    block2810a3e0Value1 := (block2810a3e0Value0) sgClass.
    block2810a3e0Value2 := (block2810a3e0Value1) unit.
    block2810a3e0Value2
].
            recoveredBlock83PC := 106.
        ].
        recoveredBlock83Step = 106 ifTrue: [
            recoveredBlock83PC := 116.
        ].
        recoveredBlock83Step = 116 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) ifNotNil: (recoveredBlock83Stack2).
            recoveredBlock83PC := 118.
        ].
        recoveredBlock83Step = 118 ifTrue: [
            recoveredBlock83PC := 127.
        ].
        recoveredBlock83Step = 122 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Arg1.
            recoveredBlock83PC := 123.
        ].
        recoveredBlock83Step = 123 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) sgClass.
            recoveredBlock83PC := 125.
        ].
        recoveredBlock83Step = 125 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) unit.
            recoveredBlock83PC := 127.
        ].
        recoveredBlock83Step = 127 ifTrue: [
            recoveredBlock83Local1 := recoveredBlock83Stack1.
            recoveredBlock83PC := 128.
        ].
        recoveredBlock83Step = 128 ifTrue: [
            recoveredBlock83Stack1 := recoveredLocal2.
            recoveredBlock83PC := 131.
        ].
        recoveredBlock83Step = 131 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) description.
            recoveredBlock83PC := 133.
        ].
        recoveredBlock83Step = 133 ifTrue: [
            recoveredBlock83Stack2 := recoveredBlock83Stack1.
            recoveredBlock83PC := 134.
        ].
        recoveredBlock83Step = 134 ifTrue: [
            recoveredBlock83Stack3 := recoveredBlock83Arg1.
            recoveredBlock83PC := 135.
        ].
        recoveredBlock83Step = 135 ifTrue: [
            recoveredBlock83Stack3 := (recoveredBlock83Stack3) elementName.
            recoveredBlock83PC := 137.
        ].
        recoveredBlock83Step = 137 ifTrue: [
            (recoveredBlock83Stack2) source: (recoveredBlock83Stack3).
            recoveredBlock83PC := 139.
        ].
        recoveredBlock83Step = 139 ifTrue: [
            recoveredBlock83Stack2 := recoveredBlock83Local1.
            recoveredBlock83PC := 140.
        ].
        recoveredBlock83Step = 140 ifTrue: [
            recoveredBlock83Stack2 := (recoveredBlock83Stack2) asString.
            recoveredBlock83PC := 142.
        ].
        recoveredBlock83Step = 142 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) unit: (recoveredBlock83Stack2).
            recoveredBlock83PC := 144.
        ].
        recoveredBlock83Step = 144 ifTrue: [
            recoveredBlock83Result := recoveredBlock83Stack1.
            recoveredBlock83Done := true.
        ].
    ].
    recoveredBlock83Result
].
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClass.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := (recoveredStack1) modifiable.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack0 := (recoveredStack0) editValueConfigWithPermission: (recoveredStack1).
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := [:recoveredBlock159Arg1 | 
    | recoveredBlock159Value0 recoveredBlock159Value1 recoveredBlock159Value2 |
    recoveredBlock159Value0 := recoveredBlock159Arg1.
    recoveredBlock159Value1 := (recoveredBlock159Value0) maxSize.
    (self) maxSize: (recoveredBlock159Value1).
    recoveredBlock159Value2 := recoveredBlock159Arg1.
    recoveredBlock159Value2
].
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack0 := (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

