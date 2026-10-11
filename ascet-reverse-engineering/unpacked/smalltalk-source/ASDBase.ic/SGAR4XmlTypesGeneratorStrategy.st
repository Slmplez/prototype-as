"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20016418; bytecode file offset 0x92209c"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
tagDataTypeMappingSet
    ^'DATA-TYPE-MAPPING-SET'
! !

"ASDBase.ic method 0x20018050; bytecode file offset 0x92209c"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
tagModeDeclarationGroup
    ^'MODE-DECLARATION-GROUP'
! !

"ASDBase.ic method 0x20019160; bytecode file offset 0x92209c"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
tagRecordElement
    ^'APPLICATION-RECORD-ELEMENT'
! !

"ASDBase.ic method 0x20019a24; bytecode file offset 0x92209c"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
tagCategoryStructure
    ^'STRUCTURE'
! !

"ASDBase.ic method 0x2001a594; bytecode file offset 0x92209c"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
tagImplementationDataType
    ^'IMPLEMENTATION-DATA-TYPE'
! !

"ASDBase.ic method 0x2001adbc; bytecode file offset 0x92209c"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
tagCategoryTypeReference
    ^'TYPE_REFERENCE'
! !

"ASDBase.ic method 0x2001c28c; bytecode file offset 0x92209c"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
tagApplicationPrimitiveDataType
    ^'APPLICATION-PRIMITIVE-DATA-TYPE'
! !

"ASDBase.ic method 0x2001d7ec; bytecode file offset 0x92209c"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
tagApplicationArrayType
    ^'APPLICATION-ARRAY-DATA-TYPE'
! !

"ASDBase.ic method 0x2001e1b8; bytecode file offset 0x92209c"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
tagCategoryBoolean
    ^'BOOLEAN'
! !

"ASDBase.ic method 0x2001ecf8; bytecode file offset 0x92209c"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
tagCategoryValue
    ^'VALUE'
! !

"ASDBase.ic method 0x2001f6d0; bytecode file offset 0x92209c"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
tagModeGroup
    ^'MODE-GROUP'
! !

"ASDBase.ic method 0x20020f84; bytecode file offset 0x92209c"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
tagApplicationRecordType
    ^'APPLICATION-RECORD-DATA-TYPE'
! !

"ASDBase.ic method 0x20023264; bytecode file offset 0x92209c"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
tagDataConstr
    ^'DATA-CONSTR'
! !

"ASDBase.ic method 0x2002486c; bytecode file offset 0x92209c"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
tagCategoryDistribution
    ^'COM_AXIS'
! !

"ASDBase.ic method 0x20025eac; bytecode file offset 0x923928"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
tagCategoryArray
    ^'ARRAY'
! !

"ASDBase.ic method 0x20038154; bytecode file offset 0x934b68"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
arXmlDestinationAttributeImplementationDataType: recoveredArg1
    ^'IMPLEMENTATION-DATA-TYPE'
! !

"ASDBase.ic method 0x20039878; bytecode file offset 0x938608"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
arXmlInternalContraintType: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) arXmlShortNameImplementationDataType: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003ad18; bytecode file offset 0x938608"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
cGenNameForRecordType: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) arXmlShortNameImplementationDataType: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003bd20; bytecode file offset 0x938608"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
arXmlPhysicalContraintType: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) arXmlShortNameApplicationDataType: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003cdd8; bytecode file offset 0x93bf94"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
createARXmlShortNameTable
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003cf78; bytecode file offset 0x93bf94"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
createARXmlPackageNameTable
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006dec8; bytecode file offset 0x96a9dc"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
physicalConstraints
    | recoveredValue0 |
    recoveredValue0 := physicalConstraints.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006e4ec; bytecode file offset 0x96af48"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
internalConstraints
    | recoveredValue0 |
    recoveredValue0 := internalConstraints.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006ea50; bytecode file offset 0x96b41c"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
rootElementDataTypeMaps
    | recoveredValue0 |
    recoveredValue0 := rootElementDataTypeMaps.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006ec4c; bytecode file offset 0x96b8a0"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
rootElementModeRequestMaps
    | recoveredValue0 |
    recoveredValue0 := rootElementModeRequestMaps.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200971c0; bytecode file offset 0x993b34"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
arXmlShortNameApplicationDataType: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) settings.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) arXmlPackageNameApplicationDataType: (recoveredValue1).
    recoveredValue3 := (recoveredValue0) arShortNameFromPackage: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20097210; bytecode file offset 0x993b34"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
arXmlShortNameImplementationDataType: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) settings.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) arXmlPackageNameImplementationDataType: (recoveredValue1).
    recoveredValue3 := (recoveredValue0) arShortNameFromPackage: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20097224; bytecode file offset 0x993b34"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
arXmlShortNameRecordLayout: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) settings.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) arXmlPackageNameRecordLayout: (recoveredValue1).
    recoveredValue3 := (recoveredValue0) arShortNameFromPackage: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200a9844; bytecode file offset 0x9a6780"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
writeARXmlCategoryValueTo: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) tagCategoryValue.
    (self) writeARXmlCategoryTo: (recoveredValue0) text: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a99e4; bytecode file offset 0x9a6780"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
writeARXmlCategoryArrayTo: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) tagCategoryArray.
    (self) writeARXmlCategoryTo: (recoveredValue0) text: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a9d84; bytecode file offset 0x9a6780"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
writeARXmlCategoryTypeReferenceTo: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) tagCategoryTypeReference.
    (self) writeARXmlCategoryTo: (recoveredValue0) text: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a9d94; bytecode file offset 0x9a6780"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
writeARXmlCategoryStructureTo: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) tagCategoryStructure.
    (self) writeARXmlCategoryTo: (recoveredValue0) text: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a9df4; bytecode file offset 0x9a6780"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
writeARXmlCategoryBooleanTo: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) tagCategoryBoolean.
    (self) writeARXmlCategoryTo: (recoveredValue0) text: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200b96f4; bytecode file offset 0x9b5fb4"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
arXmlAttributesForModeGroupType: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) arXmlShortNameApplicationDataType: (recoveredValue0).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) uuid.
    recoveredValue4 := (self) arAttributesShortName: (recoveredValue1) uuid: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200f01bc; bytecode file offset 0x9eca78"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
resetDataConstraints
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    physicalConstraints := recoveredValue1.
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    internalConstraints := recoveredValue3.
    ^self
! !

"ASDBase.ic method 0x20100c38; bytecode file offset 0x9fd4fc"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
writeARXmlRecordElementImplementationDataTypeTo: recoveredArg1 varDecl: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue1) mdlName.
    recoveredValue3 := (recoveredValue2) label.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue4) mdlClass.
    (self) writeARXmlStructureElementImplementationDataTypeTo: (recoveredValue0) shortName: (recoveredValue3) type: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x2010becc; bytecode file offset 0xa08928"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
prepareARXmlTypesGeneration
    super prepareARXmlTypesGeneration.
    (self) resetDataConstraints.
    (self) createARXmlDataTypeMappingSet.
    ^self
! !

"ASDBase.ic method 0x20110958; bytecode file offset 0xa0d21c"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
writeARXmlRecordLayoutRefTo: recoveredArg1 type: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) arXmlPackageNameRecordLayout: (recoveredValue1).
    recoveredValue3 := (self) writeARXmlDestinationTo: (recoveredValue0) element: ('SW-RECORD-LAYOUT-REF') attribute: ('SW-RECORD-LAYOUT') value: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20122410; bytecode file offset 0xa1ecec"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
writeARXmlTypeRefTo: recoveredArg1 type: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) arXmlDestinationAttributeApplicationDataType: (recoveredValue1).
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (self) arXmlPackageNameApplicationDataType: (recoveredValue3).
    recoveredValue5 := (self) writeARXmlDestinationTo: (recoveredValue0) element: ('TYPE-TREF') attribute: (recoveredValue2) value: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x20122428; bytecode file offset 0xa1ecec"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
writeARXmlApplicationDataTypeRefTo: recoveredArg1 type: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) arXmlDestinationAttributeApplicationDataType: (recoveredValue1).
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (self) arXmlPackageNameApplicationDataType: (recoveredValue3).
    recoveredValue5 := (self) writeARXmlDestinationTo: (recoveredValue0) element: ('APPLICATION-DATA-TYPE-REF') attribute: (recoveredValue2) value: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x20122484; bytecode file offset 0xa1ed48"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
writeARXmlModeGroupRefTo: recoveredArg1 type: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) tagModeDeclarationGroup.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (self) arXmlPackageNameApplicationDataType: (recoveredValue2).
    (self) writeARXmlDestinationTo: (recoveredValue0) element: ('MODE-GROUP-REF') attribute: (recoveredValue1) value: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20127c0c; bytecode file offset 0xa244cc"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
writeARXmlInvalidValueTo: recoveredArg1 value: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) writeARXmlTo: (recoveredValue0) element: ('INVALID-VALUE').
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := recoveredLocal2.
    recoveredValue3 := recoveredArg2.
    (self) writeARXmlNumericalValueTo: (recoveredValue2) value: (recoveredValue3).
    recoveredValue4 := recoveredLocal2.
    ^recoveredValue4
! !

"ASDBase.ic method 0x2012a7a4; bytecode file offset 0xa270b0"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
arXmlPackageNameImplementationTypesTable
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := arXmlPackageNameImplementationTypesTable.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            arXmlPackageNameImplementationTypesTable := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := arXmlPackageNameImplementationTypesTable.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2012a8d4; bytecode file offset 0xa271a0"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
arXmlPackageNameApplicationTypesTable
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := arXmlPackageNameApplicationTypesTable.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            arXmlPackageNameApplicationTypesTable := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := arXmlPackageNameApplicationTypesTable.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2012a980; bytecode file offset 0xa2724c"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
arXmlPackageNameRecordLayoutTable
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := arXmlPackageNameRecordLayoutTable.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            arXmlPackageNameRecordLayoutTable := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := arXmlPackageNameRecordLayoutTable.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20134b4c; bytecode file offset 0xa31410"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
writeARXmlImplementationDataTypeRefTo: recoveredArg1 type: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) arXmlDestinationAttributeImplementationDataType: (recoveredValue1).
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (self) arXmlPackageNameImplementationDataType: (recoveredValue3).
    (self) writeARXmlDestinationTo: (recoveredValue0) element: ('IMPLEMENTATION-DATA-TYPE-REF') attribute: (recoveredValue2) value: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20147380; bytecode file offset 0xa43c40"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
writeARXmlDataConstrRulesTo: recoveredArg1 element: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) writeARXmlTo: (recoveredValue0) element: ('DATA-CONSTR-RULES').
    recoveredValue2 := (self) writeARXmlTo: (recoveredValue1) element: ('DATA-CONSTR-RULE').
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (self) writeARXmlTo: (recoveredValue2) element: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x2014b3a4; bytecode file offset 0xa47c6c"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
writeARXmlApplicationDataDefPropsTo: recoveredArg1 type: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) writeARXmlDataDefPropsTo: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := SGCgVarAttributes.
    recoveredValue4 := (recoveredValue3) create.
    recoveredValue5 := recoveredValue4.
    (recoveredValue5) swCalibrationSetReadOnly.
    (self) writeARXmlCalibrationAccessTo: (recoveredValue2) mdlAttributes: (recoveredValue4).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x20151654; bytecode file offset 0xa4df24"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
allSupportedPrimitiveTypes
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := super allSupportedPrimitiveTypes.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := SGCgTypeFactory.
    recoveredValue3 := RBInt8Unsigned.
    recoveredValue4 := (recoveredValue3) createDefault.
    recoveredValue5 := (recoveredValue2) createLogImpl: (recoveredValue4).
    (recoveredValue1) add: (recoveredValue5).
    ^recoveredValue0
! !

"ASDBase.ic method 0x201535c8; bytecode file offset 0xa4fe90"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
writeARXmlDataDefPropsTo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super writeARXmlDataDefPropsTo: (recoveredValue0).
    recoveredValue2 := (self) writeARXmlTo: (recoveredValue1) element: ('SW-DATA-DEF-PROPS-VARIANTS').
    recoveredValue3 := (self) writeARXmlTo: (recoveredValue2) element: ('SW-DATA-DEF-PROPS-CONDITIONAL').
    ^recoveredValue3
! !

"ASDBase.ic method 0x2015af64; bytecode file offset 0xa57828"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
writeARXmlAliasImplementationDataTypeTo: recoveredArg1 attributes: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) tagImplementationDataType.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (self) writeARXmlShortNameTo: (recoveredValue0) element: (recoveredValue1) attributes: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    (self) writeARXmlCategoryTypeReferenceTo: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (self) writeARXmlDataDefPropsTo: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x2015b6c0; bytecode file offset 0xa57f80"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
writeARXmlInitValueTo: recoveredArg1 value: recoveredArg2 type: recoveredArg3 categoryInitValue: recoveredArg4
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) writeARXmlTo: (recoveredValue0) element: ('INIT-VALUE').
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := recoveredArg4.
    recoveredValue6 := (self) writeARXmlValueTo: (recoveredValue2) value: (recoveredValue3) type: (recoveredValue4) categoryInitValue: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x201678b0; bytecode file offset 0xa64174"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
cGenNameForType: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) arXmlPackageNameImplementationTypesTable.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) cgUniqueTypeIdentifier.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) includesKey: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 16].
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
            recoveredStack0 := (recoveredStack0) arXmlShortNameImplementationDataType: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) cgUniqueTypeIdentifier.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2016ce4c; bytecode file offset 0xa69714"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
writeARXmlNumericalValueTo: recoveredArg1 value: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) writeARXmlTo: (recoveredValue0) element: ('NUMERICAL-VALUE-SPECIFICATION').
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue3) asString.
    (self) writeARXmlTo: (recoveredValue2) element: ('VALUE') text: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x201766f8; bytecode file offset 0xa72fc4"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
mdlProjectInterface: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    super mdlProjectInterface: (recoveredValue0).
    recoveredValue1 := (self) physicalConstraints.
    (self) createARXmlPhysicalConstraints: (recoveredValue1).
    recoveredValue2 := (self) internalConstraints.
    (self) createARXmlInternalConstraints: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2017d40c; bytecode file offset 0xa79cd0"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
writeARXmlDataTypeMapTo: recoveredArg1 type: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) writeARXmlTo: (recoveredValue0) element: ('DATA-TYPE-MAP').
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg2.
    (self) writeARXmlApplicationDataTypeRefTo: (recoveredValue2) type: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredArg2.
    (self) writeARXmlImplementationDataTypeRefTo: (recoveredValue4) type: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x2018ba34; bytecode file offset 0xa882fc"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
writeARXmlModeRequestTypeMapTo: recoveredArg1 type: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) writeARXmlTo: (recoveredValue0) element: ('MODE-REQUEST-TYPE-MAP').
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue3) getImplType.
    (self) writeARXmlImplementationDataTypeRefTo: (recoveredValue2) type: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := recoveredArg2.
    (self) writeARXmlModeGroupRefTo: (recoveredValue5) type: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    ^recoveredValue7
! !

"ASDBase.ic method 0x2018c094; bytecode file offset 0xa88958"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
writeARXmlStructureElementImplementationDataTypeTo: recoveredArg1 shortName: recoveredArg2 type: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    (self) writeARXmlTo: (recoveredValue0) shortName: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (self) writeARXmlCategoryTypeReferenceTo: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (self) writeARXmlDataDefPropsTo: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := recoveredArg3.
    (self) writeARXmlImplementationDataTypeRefTo: (recoveredValue5) type: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x20196928; bytecode file offset 0xa93264"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
arXmlPackageNameRecordLayout: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) arXmlPackageNameRecordLayoutTable.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) cgUniqueTypeIdentifier.
    recoveredValue3 := [
    | recoveredBlock9Value0 recoveredBlock9Value1 |
    recoveredBlock9Value0 := recoveredArg1.
    recoveredBlock9Value1 := (self) createARXmlPackageNameForRecordLayout: (recoveredBlock9Value0).
    recoveredBlock9Value1
].
    recoveredValue4 := (recoveredValue0) at: (recoveredValue2) ifAbsentPut: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20196958; bytecode file offset 0xa93264"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
arXmlPackageNameImplementationDataType: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) arXmlPackageNameImplementationTypesTable.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) cgUniqueTypeIdentifier.
    recoveredValue3 := [
    | recoveredBlock9Value0 recoveredBlock9Value1 |
    recoveredBlock9Value0 := recoveredArg1.
    recoveredBlock9Value1 := (self) createARXmlPackageNameForImplementationDataType: (recoveredBlock9Value0).
    recoveredBlock9Value1
].
    recoveredValue4 := (recoveredValue0) at: (recoveredValue2) ifAbsentPut: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20196970; bytecode file offset 0xa93264"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
arXmlPackageNameApplicationDataType: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) arXmlPackageNameApplicationTypesTable.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) cgUniqueTypeIdentifier.
    recoveredValue3 := [
    | recoveredBlock9Value0 recoveredBlock9Value1 |
    recoveredBlock9Value0 := recoveredArg1.
    recoveredBlock9Value1 := (self) createARXmlPackageNameForApplicationDataType: (recoveredBlock9Value0).
    recoveredBlock9Value1
].
    recoveredValue4 := (recoveredValue0) at: (recoveredValue2) ifAbsentPut: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x2019cd24; bytecode file offset 0xa995ec"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
writeARXmlInitValueTo: recoveredArg1 value: recoveredArg2 type: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) categoryPhysInitNumericalValue.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) settings.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) arSettingGenerateApplicationInitValue.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) categoryPhysInitApplicationValue.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) writeARXmlInitValueTo: (recoveredStack1) value: (recoveredStack2) type: (recoveredStack3) categoryInitValue: (recoveredStack4).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201ab740; bytecode file offset 0xaa8014"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
arXmlPackageNameForPlatformType: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) settings.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (self) arXmlNativeDeclarationType: (recoveredValue4).
    (recoveredValue2) arTemplateParameter: (recoveredValue3) typeName: (recoveredValue5).
    recoveredValue6 := (self) settings.
    recoveredValue7 := SGCgAutosarSettings.
    recoveredValue8 := (recoveredValue7) categoryPlatformImplementationType.
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := (recoveredValue6) arPackageKey: (recoveredValue8) binding: (recoveredValue9).
    ^recoveredValue10
! !

"ASDBase.ic method 0x201cccf0; bytecode file offset 0xac95b8"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
arXmlPackageType: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isCgComplexClassType.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgRecordType.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := super arXmlPackageType: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) arXmlPackageNameApplicationDataType: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201e9194; bytecode file offset 0xae5a64"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
writeARXmlPhysConstraintsRefTo: recoveredArg1 type: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleBooleanType.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := 'DATA-CONSTR-REF'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack4 := (recoveredStack4) tagDataConstr.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack6 := recoveredArg2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack5 := (recoveredStack5) arXmlPackagePhysicalConstraint: (recoveredStack6).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) writeARXmlDestinationTo: (recoveredStack2) element: (recoveredStack3) attribute: (recoveredStack4) value: (recoveredStack5).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) physicalConstraints.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201eecbc; bytecode file offset 0xaeb584"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
writeARXmlScalarTypeTo: recoveredArg1 type: recoveredArg2 attributes: recoveredArg3
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
            recoveredStack2 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) writeARXmlPrimitiveApplicationDataTypeTo: (recoveredStack1) type: (recoveredStack2) attributes: (recoveredStack3).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleBooleanType.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 27] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileFormulaName.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) writeARXmlArithmeticFormulaRefTo: (recoveredStack1) name: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) writeARXmlPhysConstraintsRefTo: (recoveredStack1) type: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201fc974; bytecode file offset 0xaf9240"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
writeARXmlIntegerTypeTo: recoveredArg1 attributes: recoveredArg2 compuMethodReference: recoveredArg3 interval: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) writeARXmlIntegerTypeTo: (recoveredValue0) attributes: (recoveredValue1).
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := recoveredLocal2.
    (self) writeARXmlCategoryValueTo: (recoveredValue3).
    recoveredValue4 := recoveredLocal2.
    recoveredValue5 := (self) writeARXmlDataDefPropsTo: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredLocal1.
    (self) writeARXmlTo: (recoveredValue6) element: ('SW-CALIBRATION-ACCESS') text: ('READ-ONLY').
    recoveredValue7 := recoveredLocal2.
    ^recoveredValue7
! !

"ASDBase.ic method 0x20215f80; bytecode file offset 0xb12854"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
writeARXmlRecordElementTo: recoveredArg1 varDecl: recoveredArg2 type: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) tagRecordElement.
    recoveredValue2 := SGAutosarAttributes.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue3) mdlLabel.
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := (recoveredValue5) uuid.
    recoveredValue7 := recoveredArg2.
    recoveredValue8 := (recoveredValue2) shortName: (recoveredValue4) uuid: (recoveredValue6) varDecl: (recoveredValue7).
    recoveredValue9 := (self) writeARXmlShortNameTo: (recoveredValue0) element: (recoveredValue1) attributes: (recoveredValue8).
    recoveredLocal1 := recoveredValue9.
    recoveredValue10 := recoveredLocal1.
    (self) writeARXmlCategoryValueTo: (recoveredValue10).
    recoveredValue11 := recoveredLocal1.
    recoveredValue12 := recoveredArg3.
    (self) writeARXmlTypeRefTo: (recoveredValue11) type: (recoveredValue12).
    recoveredValue13 := recoveredLocal1.
    ^recoveredValue13
! !

"ASDBase.ic method 0x202223e0; bytecode file offset 0xb1ecb0"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
writeARXmlLimitTo: recoveredArg1 element: recoveredArg2 value: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isInfinite.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) writeARXmlTo: (recoveredStack2) element: (recoveredStack3).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := 'INTERVAL-TYPE'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := 'INFINITE'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) setAttribute: (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := super writeARXmlLimitTo: (recoveredStack1) element: (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20238b00; bytecode file offset 0xb353ec"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
createARXmlRecordImplementationTypes: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := SGCgAutosarSettings.
    recoveredValue1 := (recoveredValue0) categoryImplementationDataType.
    recoveredValue2 := (self) createARXmlFragment: ('RecordTypes') category: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Value0 recoveredBlock17Value1 recoveredBlock17Value2 |
    recoveredBlock17Value0 := recoveredLocal1.
    recoveredBlock17Value1 := recoveredBlock17Arg1.
    recoveredBlock17Value2 := (self) writeARXmlRecordImplementatationTypeTo: (recoveredBlock17Value0) mdlInterface: (recoveredBlock17Value1).
    recoveredBlock17Value2
].
    (recoveredValue3) do: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20238b20; bytecode file offset 0xb353ec"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
createARXmlRecordApplicationTypes: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := SGCgAutosarSettings.
    recoveredValue1 := (recoveredValue0) categoryApplicationDataType.
    recoveredValue2 := (self) createARXmlFragment: ('RecordTypes') category: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Value0 recoveredBlock17Value1 recoveredBlock17Value2 |
    recoveredBlock17Value0 := recoveredLocal1.
    recoveredBlock17Value1 := recoveredBlock17Arg1.
    recoveredBlock17Value2 := (self) writeARXmlRecordApplicationTypeTo: (recoveredBlock17Value0) mdlInterface: (recoveredBlock17Value1).
    recoveredBlock17Value2
].
    (recoveredValue3) do: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20239134; bytecode file offset 0xb35a0c"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
writeARXmlRecordApplicationTypeTo: recoveredArg1 mdlInterface: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) tagApplicationRecordType.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue2) mdlClassType.
    recoveredValue4 := (self) arXmlShortNameApplicationDataType: (recoveredValue3).
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := (recoveredValue5) uuid.
    recoveredValue7 := (self) arAttributesShortName: (recoveredValue4) uuid: (recoveredValue6).
    recoveredValue8 := (self) writeARXmlShortNameTo: (recoveredValue0) element: (recoveredValue1) attributes: (recoveredValue7).
    recoveredLocal1 := recoveredValue8.
    recoveredValue9 := recoveredLocal1.
    (self) writeARXmlCategoryStructureTo: (recoveredValue9).
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := recoveredArg2.
    (self) writeARXmlApplicationDataDefPropsTo: (recoveredValue10) type: (recoveredValue11).
    recoveredValue12 := recoveredLocal1.
    recoveredValue13 := recoveredArg2.
    recoveredValue14 := (self) writeARXmlRecordFiledsTo: (recoveredValue12) mdlInterface: (recoveredValue13).
    ^recoveredValue14
! !

"ASDBase.ic method 0x2023e434; bytecode file offset 0xb3ad40"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
createARXmlMatrixTypes: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) createARXmlArrayApplicationTypes: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) createARXmlArrayImplementationTypes: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Value0 recoveredBlock20Value1 recoveredBlock20Value2 |
    recoveredBlock20Value0 := (self) rootElementDataTypeMaps.
    recoveredBlock20Value1 := recoveredBlock20Arg1.
    recoveredBlock20Value2 := (self) writeARXmlDataTypeMapTo: (recoveredBlock20Value0) type: (recoveredBlock20Value1).
    recoveredBlock20Value2
].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2023e454; bytecode file offset 0xb3ad40"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
createARXmlArrayTypes: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) createARXmlArrayApplicationTypes: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) createARXmlArrayImplementationTypes: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Value0 recoveredBlock20Value1 recoveredBlock20Value2 |
    recoveredBlock20Value0 := (self) rootElementDataTypeMaps.
    recoveredBlock20Value1 := recoveredBlock20Arg1.
    recoveredBlock20Value2 := (self) writeARXmlDataTypeMapTo: (recoveredBlock20Value0) type: (recoveredBlock20Value1).
    recoveredBlock20Value2
].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2023e474; bytecode file offset 0xb3ad40"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
createARXmlScalarTypes: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) createARXmlScalarApplicationDataTypes: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) createARXmlScalarImplementationDataTypes: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Value0 recoveredBlock20Value1 recoveredBlock20Value2 |
    recoveredBlock20Value0 := (self) rootElementDataTypeMaps.
    recoveredBlock20Value1 := recoveredBlock20Arg1.
    recoveredBlock20Value2 := (self) writeARXmlDataTypeMapTo: (recoveredBlock20Value0) type: (recoveredBlock20Value1).
    recoveredBlock20Value2
].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2023e4b8; bytecode file offset 0xb3ad88"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
createARXmlModeGroupTypes: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            super createARXmlModeGroupTypes: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Value0 recoveredBlock18Value1 recoveredBlock18Value2 recoveredBlock18Value3 |
    recoveredBlock18Value0 := (self) rootElementModeRequestMaps.
    recoveredBlock18Value1 := recoveredBlock18Arg1.
    recoveredBlock18Value2 := (recoveredBlock18Value1) mdlClassType.
    recoveredBlock18Value3 := (self) writeARXmlModeRequestTypeMapTo: (recoveredBlock18Value0) type: (recoveredBlock18Value2).
    recoveredBlock18Value3
].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2024070c; bytecode file offset 0xb3cfe0"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
writeARXmlInternalConstraintsRefTo: recoveredArg1 type: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleBooleanType.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 35] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleFloatType.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 35] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := 'DATA-CONSTR-REF'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack4 := (recoveredStack4) tagDataConstr.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack6 := recoveredArg2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack5 := (recoveredStack5) arXmlPackageInternalConstraint: (recoveredStack6).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) writeARXmlDestinationTo: (recoveredStack2) element: (recoveredStack3) attribute: (recoveredStack4) value: (recoveredStack5).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) internalConstraints.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20243bd4; bytecode file offset 0xb404a0"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
createARXmlImplTemplates: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) createARXmlImplTemplatesApplicationDataTypes: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) createARXmlImplTemplatesImplementationDataTypes: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Value0 recoveredBlock20Value1 recoveredBlock20Value2 |
    recoveredBlock20Value0 := (self) rootElementDataTypeMaps.
    recoveredBlock20Value1 := recoveredBlock20Arg1.
    recoveredBlock20Value2 := (self) writeARXmlDataTypeMapTo: (recoveredBlock20Value0) type: (recoveredBlock20Value1).
    recoveredBlock20Value2
].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20245230; bytecode file offset 0xb41afc"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
writeARXmlPrimitiveApplicationDataTypeTo: recoveredArg1 type: recoveredArg2 attributes: recoveredArg3
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
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) tagApplicationPrimitiveDataType.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) writeARXmlShortNameTo: (recoveredStack1) element: (recoveredStack2) attributes: (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleBooleanType.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) writeARXmlCategoryBooleanTo: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) writeARXmlCategoryValueTo: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) writeARXmlApplicationDataDefPropsTo: (recoveredStack1) type: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2024b000; bytecode file offset 0xb478d0"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
createARXmlRecordTypes: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) createARXmlRecordApplicationTypes: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) createARXmlRecordImplementationTypes: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Value0 recoveredBlock19Value1 recoveredBlock19Value2 recoveredBlock19Value3 |
    recoveredBlock19Value0 := (self) rootElementDataTypeMaps.
    recoveredBlock19Value1 := recoveredBlock19Arg1.
    recoveredBlock19Value2 := (recoveredBlock19Value1) mdlClassType.
    recoveredBlock19Value3 := (self) writeARXmlDataTypeMapTo: (recoveredBlock19Value0) type: (recoveredBlock19Value2).
    recoveredBlock19Value3
].
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20255e68; bytecode file offset 0xb52738"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
createARXmlEnumerationTypes: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) createARXmlEnumerationApplicationTypes: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) createARXmlEnumerationImplementationTypes: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Value0 recoveredBlock20Value1 recoveredBlock20Value2 recoveredBlock20Value3 |
    recoveredBlock20Value0 := (self) rootElementDataTypeMaps.
    recoveredBlock20Value1 := recoveredBlock20Arg1.
    recoveredBlock20Value2 := (recoveredBlock20Value1) mdlClassType.
    recoveredBlock20Value3 := (self) writeARXmlDataTypeMapTo: (recoveredBlock20Value0) type: (recoveredBlock20Value2).
    recoveredBlock20Value3
].
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2028ab18; bytecode file offset 0xb873ec"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
writeARXmlDataConstrTo: recoveredArg1 childTag: recoveredArg2 attributes: recoveredArg3 interval: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := (self) writeARXmlShortNameTo: (recoveredValue0) element: ('DATA-CONSTR') attributes: (recoveredValue1).
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := recoveredLocal2.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (self) writeARXmlDataConstrRulesTo: (recoveredValue3) element: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := recoveredArg4.
    recoveredValue8 := (recoveredValue7) left.
    (self) writeARXmlLimitTo: (recoveredValue6) element: ('LOWER-LIMIT') value: (recoveredValue8).
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := recoveredArg4.
    recoveredValue11 := (recoveredValue10) right.
    (self) writeARXmlLimitTo: (recoveredValue9) element: ('UPPER-LIMIT') value: (recoveredValue11).
    ^self
! !

"ASDBase.ic method 0x20297dfc; bytecode file offset 0xb946d0"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
arXmlDestinationAttributeApplicationDataType: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgRecordType.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) tagApplicationRecordType.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) isVectoredType.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) tagApplicationArrayType.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgModeGroupType.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) tagModeDeclarationGroup.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgDistributionType.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 41].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) tagApplicationArrayType.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) tagApplicationPrimitiveDataType.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202a6c54; bytecode file offset 0xba3540"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
createARXmlModeRequestTypeMaps
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := SGCgAutosarSettings.
    recoveredValue1 := (recoveredValue0) categoryDataTypeMappingSet.
    recoveredValue2 := (self) createARXmlFragment: ('ModeRequestTypeMaps') category: (recoveredValue1).
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := recoveredLocal2.
    recoveredValue4 := (self) tagDataTypeMappingSet.
    recoveredValue5 := SGAutosarAttributes.
    recoveredValue6 := (self) settings.
    recoveredValue7 := (self) settings.
    recoveredValue8 := (recoveredValue7) arPackageDataTypeMappingSet: ('').
    recoveredValue9 := (recoveredValue6) arShortNameFromPackage: (recoveredValue8).
    recoveredValue10 := (recoveredValue5) shortName: (recoveredValue9) uuid: (nil).
    recoveredValue11 := (self) writeARXmlShortNameTo: (recoveredValue3) element: (recoveredValue4) attributes: (recoveredValue10).
    recoveredLocal1 := recoveredValue11.
    recoveredValue12 := recoveredLocal1.
    recoveredValue13 := (self) writeARXmlTo: (recoveredValue12) element: ('MODE-REQUEST-TYPE-MAPS').
    ^recoveredValue13
! !

"ASDBase.ic method 0x202d5a90; bytecode file offset 0xbd2378"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
writeARXmlEnumerationImplementationTypeTo: recoveredArg1 mdlInterface: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) tagImplementationDataType.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue2) mdlClassType.
    recoveredValue4 := (self) arXmlShortNameImplementationDataType: (recoveredValue3).
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := (recoveredValue5) uuid.
    recoveredValue7 := (self) arAttributesShortName: (recoveredValue4) uuid: (recoveredValue6).
    recoveredValue8 := (self) writeARXmlShortNameTo: (recoveredValue0) element: (recoveredValue1) attributes: (recoveredValue7).
    recoveredLocal2 := recoveredValue8.
    recoveredValue9 := recoveredLocal2.
    (self) writeARXmlCategoryTypeReferenceTo: (recoveredValue9).
    recoveredValue10 := recoveredLocal2.
    recoveredValue11 := (self) writeARXmlDataDefPropsTo: (recoveredValue10).
    recoveredLocal1 := recoveredValue11.
    recoveredValue12 := recoveredLocal1.
    recoveredValue13 := recoveredArg2.
    recoveredValue14 := (recoveredValue13) mdlLabel.
    recoveredValue15 := (self) arXmlPackageEnumCompuMethod: (recoveredValue14).
    (self) writeARXmlCompuMethodRefTo: (recoveredValue12) reference: (recoveredValue15).
    recoveredValue16 := recoveredLocal1.
    recoveredValue17 := recoveredArg2.
    recoveredValue18 := (recoveredValue17) mdlClassType.
    recoveredValue19 := (recoveredValue18) getImplType.
    (self) writeARXmlImplementationDataTypeRefTo: (recoveredValue16) type: (recoveredValue19).
    recoveredValue20 := recoveredLocal2.
    ^recoveredValue20
! !

"ASDBase.ic method 0x202d5d98; bytecode file offset 0xbd2668"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
writeARXmlApplicationValueTo: recoveredArg1 value: recoveredArg2 type: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgBooleanType.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) formula.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) description.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) unit.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) emptyUnitDescription.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) writeARXmlApplicationValueTo: (recoveredStack1) value: (recoveredStack2) unitDescription: (recoveredStack3).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202e67ec; bytecode file offset 0xbe30f0"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
createARXmlScalarApplicationDataTypes: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := SGCgAutosarSettings.
    recoveredValue1 := (recoveredValue0) categoryApplicationDataType.
    recoveredValue2 := (self) createARXmlFragment: ('ScalarType') category: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Value0 recoveredBlock17Value1 recoveredBlock17Value2 recoveredBlock17Value3 recoveredBlock17Value4 recoveredBlock17Value5 recoveredBlock17Value6 recoveredBlock17Value7 recoveredBlock17Value8 recoveredBlock17Value9 |
    recoveredBlock17Value0 := recoveredLocal1.
    recoveredBlock17Value1 := recoveredBlock17Arg1.
    recoveredBlock17Value2 := recoveredBlock17Arg1.
    recoveredBlock17Value3 := recoveredBlock17Arg1.
    recoveredBlock17Value4 := (recoveredBlock17Value3) asBaseClassType.
    recoveredBlock17Value5 := (self) arXmlShortNameApplicationDataType: (recoveredBlock17Value4).
    recoveredBlock17Value6 := recoveredBlock17Arg1.
    recoveredBlock17Value7 := (self) arXmlShortNameApplicationDataType: (recoveredBlock17Value6).
    recoveredBlock17Value8 := (self) arXmlAttributesForScalarType: (recoveredBlock17Value2) typeNameDerivedType: (recoveredBlock17Value5) typeNameScalar: (recoveredBlock17Value7).
    recoveredBlock17Value9 := (self) writeARXmlScalarTypeTo: (recoveredBlock17Value0) type: (recoveredBlock17Value1) attributes: (recoveredBlock17Value8).
    recoveredBlock17Value9
].
    (recoveredValue3) do: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x202e6818; bytecode file offset 0xbe30f0"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
createARXmlImplTemplatesApplicationDataTypes: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := SGCgAutosarSettings.
    recoveredValue1 := (recoveredValue0) categoryApplicationDataType.
    recoveredValue2 := (self) createARXmlFragment: ('ImplTemplates') category: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Value0 recoveredBlock17Value1 recoveredBlock17Value2 recoveredBlock17Value3 recoveredBlock17Value4 recoveredBlock17Value5 recoveredBlock17Value6 recoveredBlock17Value7 recoveredBlock17Value8 recoveredBlock17Value9 |
    recoveredBlock17Value0 := recoveredLocal1.
    recoveredBlock17Value1 := recoveredBlock17Arg1.
    recoveredBlock17Value2 := recoveredBlock17Arg1.
    recoveredBlock17Value3 := recoveredBlock17Arg1.
    recoveredBlock17Value4 := (recoveredBlock17Value3) asBaseClassType.
    recoveredBlock17Value5 := (self) arXmlShortNameApplicationDataType: (recoveredBlock17Value4).
    recoveredBlock17Value6 := recoveredBlock17Arg1.
    recoveredBlock17Value7 := (self) arXmlShortNameApplicationDataType: (recoveredBlock17Value6).
    recoveredBlock17Value8 := (self) arXmlAttributesForScalarType: (recoveredBlock17Value2) typeNameDerivedType: (recoveredBlock17Value5) typeNameScalar: (recoveredBlock17Value7).
    recoveredBlock17Value9 := (self) writeARXmlScalarTypeTo: (recoveredBlock17Value0) type: (recoveredBlock17Value1) attributes: (recoveredBlock17Value8).
    recoveredBlock17Value9
].
    (recoveredValue3) do: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20308ba0; bytecode file offset 0xc0547c"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
createARXmlRecordLayouts: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) autosarSettings.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) supportsARGenerateConstantMemory.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 51].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := 'RecordLayouts'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := SGCgAutosarSettings.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) categoryRecordLayout.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) createARXmlFragment: (recoveredStack1) category: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := [:recoveredBlock35Arg1 | 
    | recoveredBlock35Value0 recoveredBlock35Value1 recoveredBlock35Value2 |
    recoveredBlock35Value0 := recoveredLocal1.
    recoveredBlock35Value1 := recoveredBlock35Arg1.
    recoveredBlock35Value2 := (self) writeARXmlRecordLayoutTo: (recoveredBlock35Value0) type: (recoveredBlock35Value1).
    recoveredBlock35Value2
].
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20309810; bytecode file offset 0xc060dc"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
writeARXmlArrayValueTo: recoveredArg1 value: recoveredArg2 type: recoveredArg3 categoryInitValue: recoveredArg4
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) writeARXmlTo: (recoveredValue0) element: ('ARRAY-VALUE-SPECIFICATION').
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (self) writeARXmlTo: (recoveredValue2) element: ('ELEMENTS').
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := [:recoveredBlock28Arg1 | 
    | recoveredBlock28Value0 recoveredBlock28Value1 recoveredBlock28Value2 recoveredBlock28Value3 recoveredBlock28Value4 recoveredBlock28Value5 |
    recoveredBlock28Value0 := recoveredLocal1.
    recoveredBlock28Value1 := recoveredBlock28Arg1.
    recoveredBlock28Value2 := recoveredArg3.
    recoveredBlock28Value3 := (recoveredBlock28Value2) componentType.
    recoveredBlock28Value4 := recoveredArg4.
    recoveredBlock28Value5 := (self) writeARXmlValueTo: (recoveredBlock28Value0) value: (recoveredBlock28Value1) type: (recoveredBlock28Value3) categoryInitValue: (recoveredBlock28Value4).
    recoveredBlock28Value5
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x2031144c; bytecode file offset 0xc0dd3c"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
createARXmlDataTypeMappingSet
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := SGCgAutosarSettings.
    recoveredValue1 := (recoveredValue0) categoryDataTypeMappingSet.
    recoveredValue2 := (self) createARXmlFragment: ('DataTypeMappingSet') category: (recoveredValue1).
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := recoveredLocal2.
    recoveredValue4 := (self) tagDataTypeMappingSet.
    recoveredValue5 := SGAutosarAttributes.
    recoveredValue6 := (self) settings.
    recoveredValue7 := (self) settings.
    recoveredValue8 := (recoveredValue7) arPackageDataTypeMappingSet: ('').
    recoveredValue9 := (recoveredValue6) arShortNameFromPackage: (recoveredValue8).
    recoveredValue10 := (recoveredValue5) shortName: (recoveredValue9) uuid: (nil).
    recoveredValue11 := (self) writeARXmlShortNameTo: (recoveredValue3) element: (recoveredValue4) attributes: (recoveredValue10).
    recoveredLocal1 := recoveredValue11.
    recoveredValue12 := recoveredLocal1.
    recoveredValue13 := (self) writeARXmlTo: (recoveredValue12) element: ('DATA-TYPE-MAPS').
    rootElementDataTypeMaps := recoveredValue13.
    recoveredValue14 := recoveredLocal1.
    recoveredValue15 := (self) writeARXmlTo: (recoveredValue14) element: ('MODE-REQUEST-TYPE-MAPS').
    rootElementModeRequestMaps := recoveredValue15.
    ^self
! !

"ASDBase.ic method 0x203226a4; bytecode file offset 0xc1ef88"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
writeARXmlApplicationValueTo: recoveredArg1 value: recoveredArg2 unitDescription: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'APPLICATION-VALUE-SPECIFICATION'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) writeARXmlTo: (recoveredStack1) element: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) writeARXmlCategoryValueTo: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := 'SW-VALUE-CONT'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) writeARXmlTo: (recoveredStack1) element: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) unit.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) arXmlPackagePhysicalUnit: (recoveredStack3).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) writeARXmlUnitRefTo: (recoveredStack1) reference: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := 'SW-VALUES-PHYS'.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) writeARXmlTo: (recoveredStack1) element: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := 'V'.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) writeARXmlTo: (recoveredStack1) element: (recoveredStack2) text: (recoveredStack3).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20328f48; bytecode file offset 0xc25834"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
createARXmlPackageNameForRecordLayout: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'UnkownRecordLayout'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleComplexBaseType.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 53].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgDistributionType.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 53].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) settings.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack4 := (recoveredStack4) componentType.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := (recoveredStack3) arXmlShortNameApplicationDataType: (recoveredStack4).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) arTemplateParameter: (recoveredStack2) typeName: (recoveredStack3).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) settings.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileMaxSize.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) arTemplateParameter: (recoveredStack2) maxSize: (recoveredStack3).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) settings.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := (recoveredStack2) arCategory.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) arShortNameKey: (recoveredStack2) binding: (recoveredStack3).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) settings.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) arPackageRecordLayout: (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20332cb4; bytecode file offset 0xc2f594"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
writeARXmlDistributionApplicationTypeTo: recoveredArg1 complexType: recoveredArg2 attributes: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) tagApplicationArrayType.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (self) writeARXmlShortNameTo: (recoveredValue0) element: (recoveredValue1) attributes: (recoveredValue2).
    recoveredLocal3 := recoveredValue3.
    recoveredValue4 := recoveredLocal3.
    recoveredValue5 := (self) tagCategoryDistribution.
    (self) writeARXmlCategoryTo: (recoveredValue4) text: (recoveredValue5).
    recoveredValue6 := recoveredLocal3.
    recoveredValue7 := recoveredArg2.
    recoveredValue8 := (self) writeARXmlApplicationDataDefPropsTo: (recoveredValue6) type: (recoveredValue7).
    recoveredLocal2 := recoveredValue8.
    recoveredValue9 := recoveredLocal2.
    recoveredValue10 := (self) writeARXmlTo: (recoveredValue9) element: ('SW-CALPRM-AXIS-SET').
    recoveredLocal1 := recoveredValue10.
    recoveredValue11 := recoveredLocal1.
    recoveredValue12 := (self) writeARXmlTo: (recoveredValue11) element: ('SW-CALPRM-AXIS').
    recoveredLocal1 := recoveredValue12.
    recoveredValue13 := recoveredLocal1.
    (self) writeARXmlCategoryTo: (recoveredValue13) text: ('COM-AXIS').
    recoveredValue14 := recoveredLocal1.
    (self) writeARXmlTo: (recoveredValue14) element: ('SW-AXIS-INDIVIDUAL').
    recoveredValue15 := recoveredLocal2.
    recoveredValue16 := recoveredArg2.
    (self) writeARXmlRecordLayoutRefTo: (recoveredValue15) type: (recoveredValue16).
    recoveredValue17 := recoveredLocal3.
    ^recoveredValue17
! !

"ASDBase.ic method 0x203342ac; bytecode file offset 0xc30b94"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
createARXmlDistributionTypes: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) autosarSettings.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) supportsARGenerateConstantMemory.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 59].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) createARXmlDistributionApplicationTypes: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) createARXmlDistributionImplementationTypes: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := [:block280ed1c8Arg1 | 
    | block280ed1c8Value0 block280ed1c8Value1 |
    block280ed1c8Value0 := block280ed1c8Arg1.
    block280ed1c8Value1 := (block280ed1c8Value0) asCgArrayType.
    block280ed1c8Value1
].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) createARXmlArrayImplementationTypes: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := [:recoveredBlock43Arg1 | 
    | recoveredBlock43Value0 recoveredBlock43Value1 recoveredBlock43Value2 |
    recoveredBlock43Value0 := (self) rootElementDataTypeMaps.
    recoveredBlock43Value1 := recoveredBlock43Arg1.
    recoveredBlock43Value2 := (self) writeARXmlDataTypeMapTo: (recoveredBlock43Value0) type: (recoveredBlock43Value1).
    recoveredBlock43Value2
].
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20350530; bytecode file offset 0xc4ce14"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
createARXmlDistributionImplementationTypes: recoveredArg1 complexType: recoveredArg2 attributes: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) tagImplementationDataType.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (self) writeARXmlShortNameTo: (recoveredValue0) element: (recoveredValue1) attributes: (recoveredValue2).
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := recoveredLocal2.
    (self) writeARXmlCategoryStructureTo: (recoveredValue4).
    recoveredValue5 := recoveredLocal2.
    recoveredValue6 := (self) writeARXmlTo: (recoveredValue5) element: ('SUB-ELEMENTS').
    recoveredLocal2 := recoveredValue6.
    recoveredValue7 := recoveredLocal2.
    recoveredValue8 := (self) writeARXmlTo: (recoveredValue7) element: ('IMPLEMENTATION-DATA-TYPE-ELEMENT').
    recoveredLocal1 := recoveredValue8.
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := SGCgTypeFactory.
    recoveredValue11 := (recoveredValue10) mdlUIntType: (255).
    (self) writeARXmlStructureElementImplementationDataTypeTo: (recoveredValue9) shortName: ('size') type: (recoveredValue11).
    recoveredValue12 := recoveredLocal2.
    recoveredValue13 := (self) writeARXmlTo: (recoveredValue12) element: ('IMPLEMENTATION-DATA-TYPE-ELEMENT').
    recoveredLocal1 := recoveredValue13.
    recoveredValue14 := recoveredLocal1.
    recoveredValue15 := recoveredArg2.
    recoveredValue16 := (recoveredValue15) asCgArrayType.
    (self) writeARXmlStructureElementImplementationDataTypeTo: (recoveredValue14) shortName: ('distr') type: (recoveredValue16).
    ^self
! !

"ASDBase.ic method 0x203559c8; bytecode file offset 0xc522a0"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
createARXmlEnumerationImplementationTypes: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := SGCgAutosarSettings.
    recoveredValue1 := (recoveredValue0) categoryImplementationDataType.
    recoveredValue2 := (self) createARXmlFragment: ('EnumerationTypes') category: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Value0 recoveredBlock17Value1 recoveredBlock17Value2 |
    recoveredBlock17Value0 := recoveredLocal1.
    recoveredBlock17Value1 := recoveredBlock17Arg1.
    recoveredBlock17Value2 := (self) writeARXmlEnumerationImplementationTypeTo: (recoveredBlock17Value0) mdlInterface: (recoveredBlock17Value1).
    recoveredBlock17Value2
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := SGCgAutosarSettings.
    recoveredValue6 := (recoveredValue5) categoryEnumFormula.
    recoveredValue7 := (self) createARXmlFragment: ('EnumerationFormulas') category: (recoveredValue6).
    recoveredLocal1 := recoveredValue7.
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := [:recoveredBlock48Arg1 | 
    | recoveredBlock48Value0 recoveredBlock48Value1 recoveredBlock48Value2 |
    recoveredBlock48Value0 := recoveredLocal1.
    recoveredBlock48Value1 := recoveredBlock48Arg1.
    recoveredBlock48Value2 := (self) writeARXmlEnumFormulaTo: (recoveredBlock48Value0) mdlInterface: (recoveredBlock48Value1).
    recoveredBlock48Value2
].
    (recoveredValue8) do: (recoveredValue9).
    ^self
! !

"ASDBase.ic method 0x20378e10; bytecode file offset 0xc756fc"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
createARXmlEnumerationApplicationTypes: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := SGCgAutosarSettings.
    recoveredValue1 := (recoveredValue0) categoryApplicationDataType.
    recoveredValue2 := (self) createARXmlFragment: ('EnumerationTypes') category: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Local1 recoveredBlock17Value0 recoveredBlock17Value1 recoveredBlock17Value2 recoveredBlock17Value3 recoveredBlock17Value4 recoveredBlock17Value5 recoveredBlock17Value6 recoveredBlock17Value7 recoveredBlock17Value8 recoveredBlock17Value9 recoveredBlock17Value10 recoveredBlock17Value11 recoveredBlock17Value12 recoveredBlock17Value13 recoveredBlock17Value14 recoveredBlock17Value15 recoveredBlock17Value16 recoveredBlock17Value17 recoveredBlock17Value18 |
    recoveredBlock17Value0 := recoveredLocal1.
    recoveredBlock17Value1 := recoveredBlock17Arg1.
    recoveredBlock17Value2 := (recoveredBlock17Value1) mdlClassType.
    recoveredBlock17Value3 := recoveredBlock17Arg1.
    recoveredBlock17Value4 := (recoveredBlock17Value3) mdlClassType.
    recoveredBlock17Value5 := (self) arXmlShortNameApplicationDataType: (recoveredBlock17Value4).
    recoveredBlock17Value6 := recoveredBlock17Arg1.
    recoveredBlock17Value7 := (recoveredBlock17Value6) mdlClassType.
    recoveredBlock17Value8 := (recoveredBlock17Value7) uuid.
    recoveredBlock17Value9 := (self) arAttributesShortName: (recoveredBlock17Value5) uuid: (recoveredBlock17Value8).
    recoveredBlock17Value10 := (self) writeARXmlPrimitiveApplicationDataTypeTo: (recoveredBlock17Value0) type: (recoveredBlock17Value2) attributes: (recoveredBlock17Value9).
    recoveredBlock17Local1 := recoveredBlock17Value10.
    recoveredBlock17Value11 := recoveredBlock17Local1.
    recoveredBlock17Value12 := recoveredBlock17Arg1.
    recoveredBlock17Value13 := (recoveredBlock17Value12) mdlLabel.
    recoveredBlock17Value14 := (self) arXmlPackageEnumCompuMethod: (recoveredBlock17Value13).
    (self) writeARXmlCompuMethodRefTo: (recoveredBlock17Value11) reference: (recoveredBlock17Value14).
    recoveredBlock17Value15 := recoveredBlock17Local1.
    recoveredBlock17Value16 := recoveredBlock17Arg1.
    recoveredBlock17Value17 := (recoveredBlock17Value16) mdlClassType.
    recoveredBlock17Value18 := (self) writeARXmlPhysConstraintsRefTo: (recoveredBlock17Value15) type: (recoveredBlock17Value17).
    recoveredBlock17Value18
].
    (recoveredValue3) do: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20379614; bytecode file offset 0xc75ee8"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
getPhysInitValueFor: recoveredArg1 valueTable: recoveredArg2
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
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) initValue.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 45.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlKey.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock27Value0 recoveredBlock27Value1 recoveredBlock27Value2 |
    recoveredBlock27Value0 := recoveredArg1.
    recoveredBlock27Value1 := (recoveredBlock27Value0) mdlClass.
    recoveredBlock27Value2 := (recoveredBlock27Value1) createDefaultValue.
    recoveredBlock27Value2
].
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) genIleInitValue.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlDataSetInitValue.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlNativeInitValue.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203ad238; bytecode file offset 0xca9b20"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
writeARXmlRecordImplementatationTypeTo: recoveredArg1 mdlInterface: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) tagImplementationDataType.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue2) mdlClassType.
    recoveredValue4 := (self) arXmlShortNameImplementationDataType: (recoveredValue3).
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := (recoveredValue5) uuid.
    recoveredValue7 := (self) arAttributesShortName: (recoveredValue4) uuid: (recoveredValue6).
    recoveredValue8 := (self) writeARXmlShortNameTo: (recoveredValue0) element: (recoveredValue1) attributes: (recoveredValue7).
    recoveredLocal2 := recoveredValue8.
    recoveredValue9 := recoveredLocal2.
    (self) writeARXmlCategoryStructureTo: (recoveredValue9).
    recoveredValue10 := recoveredLocal2.
    recoveredValue11 := (self) writeARXmlTo: (recoveredValue10) element: ('SUB-ELEMENTS').
    recoveredLocal2 := recoveredValue11.
    recoveredValue12 := recoveredArg2.
    recoveredValue13 := (recoveredValue12) sortedInstVars.
    recoveredValue14 := [:recoveredBlock50Arg1 | 
    | recoveredBlock50Value0 recoveredBlock50Value1 recoveredBlock50Value2 recoveredBlock50Value3 recoveredBlock50Value4 |
    recoveredBlock50Value0 := recoveredLocal2.
    recoveredBlock50Value1 := (self) writeARXmlTo: (recoveredBlock50Value0) element: ('IMPLEMENTATION-DATA-TYPE-ELEMENT').
    recoveredLocal1 := recoveredBlock50Value1.
    recoveredBlock50Value2 := recoveredLocal1.
    recoveredBlock50Value3 := recoveredBlock50Arg1.
    recoveredBlock50Value4 := (self) writeARXmlRecordElementImplementationDataTypeTo: (recoveredBlock50Value2) varDecl: (recoveredBlock50Value3).
    recoveredBlock50Value4
].
    (recoveredValue13) do: (recoveredValue14).
    ^self
! !

"ASDBase.ic method 0x203ad3b0; bytecode file offset 0xca9cac"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
writeARXmlArrayImplementationDataTypeTo: recoveredArg1 complexType: recoveredArg2 attributes: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) tagImplementationDataType.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (self) writeARXmlShortNameTo: (recoveredValue0) element: (recoveredValue1) attributes: (recoveredValue2).
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := recoveredLocal2.
    (self) writeARXmlCategoryArrayTo: (recoveredValue4).
    recoveredValue5 := recoveredLocal2.
    recoveredValue6 := (self) writeARXmlTo: (recoveredValue5) element: ('SUB-ELEMENTS').
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (self) writeARXmlTo: (recoveredValue7) element: ('IMPLEMENTATION-DATA-TYPE-ELEMENT').
    recoveredLocal1 := recoveredValue8.
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := recoveredArg2.
    recoveredValue11 := (self) arXmlShortNameArrayElement: (recoveredValue10).
    (self) writeARXmlTo: (recoveredValue9) shortName: (recoveredValue11).
    recoveredValue12 := recoveredLocal1.
    (self) writeARXmlCategoryTypeReferenceTo: (recoveredValue12).
    recoveredValue13 := recoveredLocal1.
    recoveredValue14 := recoveredArg2.
    recoveredValue15 := (recoveredValue14) mdlMaxSize.
    recoveredValue16 := (recoveredValue15) asString.
    (self) writeARXmlTo: (recoveredValue13) element: ('ARRAY-SIZE') text: (recoveredValue16).
    recoveredValue17 := recoveredLocal1.
    (self) writeARXmlTo: (recoveredValue17) element: ('ARRAY-SIZE-SEMANTICS') text: ('FIXED-SIZE').
    recoveredValue18 := recoveredLocal1.
    recoveredValue19 := (self) writeARXmlDataDefPropsTo: (recoveredValue18).
    recoveredLocal1 := recoveredValue19.
    recoveredValue20 := recoveredLocal1.
    recoveredValue21 := recoveredArg2.
    recoveredValue22 := (recoveredValue21) componentType.
    (self) writeARXmlImplementationDataTypeRefTo: (recoveredValue20) type: (recoveredValue22).
    ^self
! !

"ASDBase.ic method 0x203c2ea8; bytecode file offset 0xcbf7cc"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
createARXmlDistributionApplicationTypes: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := SGCgAutosarSettings.
    recoveredValue3 := (recoveredValue2) categoryApplicationDataType.
    recoveredValue4 := (self) createARXmlFragment: ('DistributionTypes') category: (recoveredValue3).
    recoveredLocal2 := recoveredValue4.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := [:recoveredBlock24Arg1 | 
    | recoveredBlock24Value0 recoveredBlock24Value1 recoveredBlock24Value2 recoveredBlock24Value3 recoveredBlock24Value4 |
    recoveredBlock24Value0 := recoveredLocal1.
    recoveredBlock24Value1 := recoveredBlock24Arg1.
    recoveredBlock24Value2 := (recoveredBlock24Value1) cgUniqueTypeIdentifier.
    recoveredBlock24Value3 := [
    | recoveredBlock24Block38Value0 recoveredBlock24Block38Value1 recoveredBlock24Block38Value2 recoveredBlock24Block38Value3 recoveredBlock24Block38Value4 recoveredBlock24Block38Value5 recoveredBlock24Block38Value6 recoveredBlock24Block38Value7 recoveredBlock24Block38Value8 recoveredBlock24Block38Value9 |
    recoveredBlock24Block38Value0 := recoveredLocal2.
    recoveredBlock24Block38Value1 := recoveredBlock24Arg1.
    recoveredBlock24Block38Value2 := recoveredBlock24Arg1.
    recoveredBlock24Block38Value3 := recoveredBlock24Arg1.
    recoveredBlock24Block38Value4 := (recoveredBlock24Block38Value3) componentType.
    recoveredBlock24Block38Value5 := (self) arXmlShortNameApplicationDataType: (recoveredBlock24Block38Value4).
    recoveredBlock24Block38Value6 := recoveredBlock24Arg1.
    recoveredBlock24Block38Value7 := (self) arXmlShortNameApplicationDataType: (recoveredBlock24Block38Value6).
    recoveredBlock24Block38Value8 := (self) arXmlAttributesForArrayType: (recoveredBlock24Block38Value2) typeNameComponent: (recoveredBlock24Block38Value5) typeNameArray: (recoveredBlock24Block38Value7).
    recoveredBlock24Block38Value9 := (self) writeARXmlDistributionApplicationTypeTo: (recoveredBlock24Block38Value0) complexType: (recoveredBlock24Block38Value1) attributes: (recoveredBlock24Block38Value8).
    recoveredBlock24Block38Value9
].
    recoveredBlock24Value4 := (recoveredBlock24Value0) at: (recoveredBlock24Value2) ifAbsentPut: (recoveredBlock24Value3).
    recoveredBlock24Value4
].
    (recoveredValue5) do: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x203c2ee4; bytecode file offset 0xcbf7cc"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
createARXmlArrayApplicationTypes: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := SGCgAutosarSettings.
    recoveredValue3 := (recoveredValue2) categoryApplicationDataType.
    recoveredValue4 := (self) createARXmlFragment: ('ArrayTypes') category: (recoveredValue3).
    recoveredLocal2 := recoveredValue4.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := [:recoveredBlock24Arg1 | 
    | recoveredBlock24Value0 recoveredBlock24Value1 recoveredBlock24Value2 recoveredBlock24Value3 recoveredBlock24Value4 |
    recoveredBlock24Value0 := recoveredLocal1.
    recoveredBlock24Value1 := recoveredBlock24Arg1.
    recoveredBlock24Value2 := (recoveredBlock24Value1) cgUniqueTypeIdentifier.
    recoveredBlock24Value3 := [
    | recoveredBlock24Block38Value0 recoveredBlock24Block38Value1 recoveredBlock24Block38Value2 recoveredBlock24Block38Value3 recoveredBlock24Block38Value4 recoveredBlock24Block38Value5 recoveredBlock24Block38Value6 recoveredBlock24Block38Value7 recoveredBlock24Block38Value8 recoveredBlock24Block38Value9 |
    recoveredBlock24Block38Value0 := recoveredLocal2.
    recoveredBlock24Block38Value1 := recoveredBlock24Arg1.
    recoveredBlock24Block38Value2 := recoveredBlock24Arg1.
    recoveredBlock24Block38Value3 := recoveredBlock24Arg1.
    recoveredBlock24Block38Value4 := (recoveredBlock24Block38Value3) componentType.
    recoveredBlock24Block38Value5 := (self) arXmlShortNameApplicationDataType: (recoveredBlock24Block38Value4).
    recoveredBlock24Block38Value6 := recoveredBlock24Arg1.
    recoveredBlock24Block38Value7 := (self) arXmlShortNameApplicationDataType: (recoveredBlock24Block38Value6).
    recoveredBlock24Block38Value8 := (self) arXmlAttributesForArrayType: (recoveredBlock24Block38Value2) typeNameComponent: (recoveredBlock24Block38Value5) typeNameArray: (recoveredBlock24Block38Value7).
    recoveredBlock24Block38Value9 := (self) writeARXmlArrayApplicationTypeTo: (recoveredBlock24Block38Value0) complexType: (recoveredBlock24Block38Value1) attributes: (recoveredBlock24Block38Value8).
    recoveredBlock24Block38Value9
].
    recoveredBlock24Value4 := (recoveredBlock24Value0) at: (recoveredBlock24Value2) ifAbsentPut: (recoveredBlock24Value3).
    recoveredBlock24Value4
].
    (recoveredValue5) do: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x203cdcd4; bytecode file offset 0xcca5f8"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
createARXmlArrayImplementationTypes: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := SGCgAutosarSettings.
    recoveredValue3 := (recoveredValue2) categoryImplementationDataType.
    recoveredValue4 := (self) createARXmlFragment: ('ArrayTypes') category: (recoveredValue3).
    recoveredLocal2 := recoveredValue4.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := [:recoveredBlock24Arg1 | 
    | recoveredBlock24Value0 recoveredBlock24Value1 recoveredBlock24Value2 recoveredBlock24Value3 recoveredBlock24Value4 |
    recoveredBlock24Value0 := recoveredLocal1.
    recoveredBlock24Value1 := recoveredBlock24Arg1.
    recoveredBlock24Value2 := (self) arXmlPackageNameImplementationDataType: (recoveredBlock24Value1).
    recoveredBlock24Value3 := [
    | recoveredBlock24Block39Value0 recoveredBlock24Block39Value1 recoveredBlock24Block39Value2 recoveredBlock24Block39Value3 recoveredBlock24Block39Value4 recoveredBlock24Block39Value5 recoveredBlock24Block39Value6 recoveredBlock24Block39Value7 recoveredBlock24Block39Value8 recoveredBlock24Block39Value9 |
    recoveredBlock24Block39Value0 := recoveredLocal2.
    recoveredBlock24Block39Value1 := recoveredBlock24Arg1.
    recoveredBlock24Block39Value2 := recoveredBlock24Arg1.
    recoveredBlock24Block39Value3 := recoveredBlock24Arg1.
    recoveredBlock24Block39Value4 := (recoveredBlock24Block39Value3) componentType.
    recoveredBlock24Block39Value5 := (self) arXmlShortNameImplementationDataType: (recoveredBlock24Block39Value4).
    recoveredBlock24Block39Value6 := recoveredBlock24Arg1.
    recoveredBlock24Block39Value7 := (self) arXmlShortNameImplementationDataType: (recoveredBlock24Block39Value6).
    recoveredBlock24Block39Value8 := (self) arXmlAttributesForArrayType: (recoveredBlock24Block39Value2) typeNameComponent: (recoveredBlock24Block39Value5) typeNameArray: (recoveredBlock24Block39Value7).
    recoveredBlock24Block39Value9 := (self) writeARXmlArrayImplementationDataTypeTo: (recoveredBlock24Block39Value0) complexType: (recoveredBlock24Block39Value1) attributes: (recoveredBlock24Block39Value8).
    recoveredBlock24Block39Value9
].
    recoveredBlock24Value4 := (recoveredBlock24Value0) at: (recoveredBlock24Value2) ifAbsentPut: (recoveredBlock24Value3).
    recoveredBlock24Value4
].
    (recoveredValue5) do: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x203cdd10; bytecode file offset 0xcca5f8"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
createARXmlDistributionImplementationTypes: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := SGCgAutosarSettings.
    recoveredValue3 := (recoveredValue2) categoryImplementationDataType.
    recoveredValue4 := (self) createARXmlFragment: ('DistributionTypes') category: (recoveredValue3).
    recoveredLocal2 := recoveredValue4.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := [:recoveredBlock24Arg1 | 
    | recoveredBlock24Value0 recoveredBlock24Value1 recoveredBlock24Value2 recoveredBlock24Value3 recoveredBlock24Value4 |
    recoveredBlock24Value0 := recoveredLocal1.
    recoveredBlock24Value1 := recoveredBlock24Arg1.
    recoveredBlock24Value2 := (self) arXmlPackageNameImplementationDataType: (recoveredBlock24Value1).
    recoveredBlock24Value3 := [
    | recoveredBlock24Block39Value0 recoveredBlock24Block39Value1 recoveredBlock24Block39Value2 recoveredBlock24Block39Value3 recoveredBlock24Block39Value4 recoveredBlock24Block39Value5 recoveredBlock24Block39Value6 recoveredBlock24Block39Value7 recoveredBlock24Block39Value8 recoveredBlock24Block39Value9 |
    recoveredBlock24Block39Value0 := recoveredLocal2.
    recoveredBlock24Block39Value1 := recoveredBlock24Arg1.
    recoveredBlock24Block39Value2 := recoveredBlock24Arg1.
    recoveredBlock24Block39Value3 := recoveredBlock24Arg1.
    recoveredBlock24Block39Value4 := (recoveredBlock24Block39Value3) componentType.
    recoveredBlock24Block39Value5 := (self) arXmlShortNameImplementationDataType: (recoveredBlock24Block39Value4).
    recoveredBlock24Block39Value6 := recoveredBlock24Arg1.
    recoveredBlock24Block39Value7 := (self) arXmlShortNameImplementationDataType: (recoveredBlock24Block39Value6).
    recoveredBlock24Block39Value8 := (self) arXmlAttributesForArrayType: (recoveredBlock24Block39Value2) typeNameComponent: (recoveredBlock24Block39Value5) typeNameArray: (recoveredBlock24Block39Value7).
    recoveredBlock24Block39Value9 := (self) createARXmlDistributionImplementationTypes: (recoveredBlock24Block39Value0) complexType: (recoveredBlock24Block39Value1) attributes: (recoveredBlock24Block39Value8).
    recoveredBlock24Block39Value9
].
    recoveredBlock24Value4 := (recoveredBlock24Value0) at: (recoveredBlock24Value2) ifAbsentPut: (recoveredBlock24Value3).
    recoveredBlock24Value4
].
    (recoveredValue5) do: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x203daed4; bytecode file offset 0xcd77d4"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
createARXmlPrimitiveTypes: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allAUTOSARPlatformTypes.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 |
    recoveredBlock5Value0 := (self) arXmlPackageNameImplementationTypesTable.
    recoveredBlock5Value1 := recoveredBlock5Arg1.
    recoveredBlock5Value2 := (recoveredBlock5Value1) cgUniqueTypeIdentifier.
    recoveredBlock5Value3 := recoveredBlock5Arg1.
    recoveredBlock5Value4 := (self) arXmlPackageNameForPlatformType: (recoveredBlock5Value3).
    recoveredBlock5Value5 := (recoveredBlock5Value0) at: (recoveredBlock5Value2) put: (recoveredBlock5Value4).
    recoveredBlock5Value5
].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) typeDefinitions.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) isUsingCustomScalarTypes.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) createARXmlCustomImplementationDataTypes.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 85].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) createARXmlPlatformApplicationDataTypes: (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) arXmlPackageNameImplementationTypesTable.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := RBDataBoolean.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) cgUniqueTypeLogUIntIdentifier.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := (recoveredStack2) arXmlPackageNameImplementationTypesTable.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := RBInt8Unsigned.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := (recoveredStack3) cgUniqueTypeIdentifier.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack4 := [
    'unknown_type'
].
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3) ifAbsent: (recoveredStack4).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := [:recoveredBlock70Arg1 | 
    | recoveredBlock70Value0 recoveredBlock70Value1 recoveredBlock70Value2 |
    recoveredBlock70Value0 := (self) rootElementDataTypeMaps.
    recoveredBlock70Value1 := recoveredBlock70Arg1.
    recoveredBlock70Value2 := (self) writeARXmlDataTypeMapTo: (recoveredBlock70Value0) type: (recoveredBlock70Value1).
    recoveredBlock70Value2
].
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203e3048; bytecode file offset 0xcdf948"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
writeARXmlArrayApplicationTypeTo: recoveredArg1 complexType: recoveredArg2 attributes: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) tagApplicationArrayType.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) writeARXmlShortNameTo: (recoveredStack1) element: (recoveredStack2) attributes: (recoveredStack3).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) writeARXmlCategoryArrayTo: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) writeARXmlApplicationDataDefPropsTo: (recoveredStack1) type: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := 'ELEMENT'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) writeARXmlTo: (recoveredStack1) element: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) arXmlShortNameArrayElement: (recoveredStack3).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) writeARXmlTo: (recoveredStack1) shortName: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) componentType.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleBooleanType.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) writeARXmlCategoryBooleanTo: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredPC := 58.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) writeARXmlCategoryValueTo: (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := (recoveredStack2) componentType.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) writeARXmlTypeRefTo: (recoveredStack1) type: (recoveredStack2).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := 'ARRAY-SIZE-SEMANTICS'.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack3 := 'FIXED-SIZE'.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack0) writeARXmlTo: (recoveredStack1) element: (recoveredStack2) text: (recoveredStack3).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := 'MAX-NUMBER-OF-ELEMENTS'.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack3 := (recoveredStack3) mdlMaxSize.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack0) writeARXmlTo: (recoveredStack1) element: (recoveredStack2) text: (recoveredStack3).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203e425c; bytecode file offset 0xce0b50"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
writeARXmlRecordLayoutTo: recoveredArg1 type: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SGAutosarAttributes.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) arXmlShortNameRecordLayout: (recoveredStack3).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := (recoveredStack3) artificialUUID.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) shortName: (recoveredStack2) uuid: (recoveredStack3).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := 'ASCET'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) writeARXmlRecordLayoutTo: (recoveredStack1) category: (recoveredStack2) attributes: (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := 'SW-RECORD-LAYOUT-GROUP'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) writeARXmlTo: (recoveredStack1) element: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgDistributionType.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 85].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := 'SW-RECORD-LAYOUT-V'.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) writeARXmlTo: (recoveredStack1) element: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := 'SHORT-LABEL'.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := 'size'.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) writeARXmlTo: (recoveredStack1) element: (recoveredStack2) text: (recoveredStack3).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := 'SW-RECORD-LAYOUT-V'.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) writeARXmlTo: (recoveredStack1) element: (recoveredStack2).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := 'SHORT-LABEL'.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack3 := 'dist'.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack0) writeARXmlTo: (recoveredStack1) element: (recoveredStack2) text: (recoveredStack3).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := 'SW-RECORD-LAYOUT-V-AXIS'.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack3 := '0'.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack0) writeARXmlTo: (recoveredStack1) element: (recoveredStack2) text: (recoveredStack3).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203f0b78; bytecode file offset 0xced460"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
writeARXmlRecordValueTo: recoveredArg1 value: recoveredArg2 type: recoveredArg3 categoryInitValue: recoveredArg4
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) writeARXmlTo: (recoveredValue0) element: ('RECORD-VALUE-SPECIFICATION').
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (self) writeARXmlTo: (recoveredValue2) element: ('FIELDS').
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := (self) usedTypesTable.
    recoveredValue5 := recoveredArg3.
    recoveredValue6 := (recoveredValue4) componentInterface: (recoveredValue5).
    recoveredValue7 := [:recoveredBlock32Arg1 | 
    | recoveredBlock32Local1 recoveredBlock32Value0 recoveredBlock32Value1 recoveredBlock32Value2 recoveredBlock32Value3 recoveredBlock32Value4 recoveredBlock32Value5 recoveredBlock32Value6 recoveredBlock32Value7 |
    recoveredBlock32Value0 := recoveredBlock32Arg1.
    recoveredBlock32Value1 := recoveredArg2.
    recoveredBlock32Value2 := (recoveredBlock32Value1) initName.
    recoveredBlock32Value3 := (recoveredBlock32Value0) selectedDataSet: (recoveredBlock32Value2).
    recoveredBlock32Local1 := recoveredBlock32Value3.
    recoveredBlock32Value4 := recoveredBlock32Arg1.
    recoveredBlock32Value5 := (recoveredBlock32Value4) sortedInstVars.
    recoveredBlock32Value6 := [:recoveredBlock32Block56Arg1 | 
    | recoveredBlock32Block56Value0 recoveredBlock32Block56Value1 recoveredBlock32Block56Value2 recoveredBlock32Block56Value3 recoveredBlock32Block56Value4 recoveredBlock32Block56Value5 recoveredBlock32Block56Value6 recoveredBlock32Block56Value7 |
    recoveredBlock32Block56Value0 := recoveredLocal1.
    recoveredBlock32Block56Value1 := recoveredBlock32Block56Arg1.
    recoveredBlock32Block56Value2 := recoveredBlock32Local1.
    recoveredBlock32Block56Value3 := (self) getPhysInitValueFor: (recoveredBlock32Block56Value1) valueTable: (recoveredBlock32Block56Value2).
    recoveredBlock32Block56Value4 := recoveredBlock32Block56Arg1.
    recoveredBlock32Block56Value5 := (recoveredBlock32Block56Value4) mdlClass.
    recoveredBlock32Block56Value6 := recoveredArg4.
    recoveredBlock32Block56Value7 := (self) writeARXmlValueTo: (recoveredBlock32Block56Value0) value: (recoveredBlock32Block56Value3) type: (recoveredBlock32Block56Value5) categoryInitValue: (recoveredBlock32Block56Value6).
    recoveredBlock32Block56Value7
].
    recoveredBlock32Value7 := (recoveredBlock32Value5) do: (recoveredBlock32Value6).
    recoveredBlock32Value7
].
    (recoveredValue6) ifNotNil: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !

"ASDBase.ic method 0x203f973c; bytecode file offset 0xcf6080"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
createARXmlScalarImplementationDataTypes: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) settings.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) arSettingRestrictToPlatformTypes.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 recoveredBlock13Value3 recoveredBlock13Value4 recoveredBlock13Value5 recoveredBlock13Value6 |
    recoveredBlock13Value0 := (self) arXmlPackageNameImplementationTypesTable.
    recoveredBlock13Value1 := recoveredBlock13Arg1.
    recoveredBlock13Value2 := (recoveredBlock13Value1) cgUniqueTypeIdentifier.
    recoveredBlock13Value3 := recoveredBlock13Arg1.
    recoveredBlock13Value4 := (recoveredBlock13Value3) getImplType.
    recoveredBlock13Value5 := (self) arXmlPackageNameImplementationDataType: (recoveredBlock13Value4).
    recoveredBlock13Value6 := (recoveredBlock13Value0) at: (recoveredBlock13Value2) put: (recoveredBlock13Value5).
    recoveredBlock13Value6
].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredPC := 91.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := 'ScalarType'.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := SGCgAutosarSettings.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := (recoveredStack2) categoryImplementationDataType.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) createARXmlFragment: (recoveredStack1) category: (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := [:recoveredBlock53Arg1 | 
    | recoveredBlock53Local1 recoveredBlock53Value0 recoveredBlock53Value1 recoveredBlock53Value2 recoveredBlock53Value3 recoveredBlock53Value4 recoveredBlock53Value5 recoveredBlock53Value6 recoveredBlock53Value7 recoveredBlock53Value8 recoveredBlock53Value9 recoveredBlock53Value10 recoveredBlock53Value11 recoveredBlock53Value12 |
    recoveredBlock53Value0 := recoveredLocal1.
    recoveredBlock53Value1 := recoveredBlock53Arg1.
    recoveredBlock53Value2 := recoveredBlock53Arg1.
    recoveredBlock53Value3 := (recoveredBlock53Value2) asBaseClassType.
    recoveredBlock53Value4 := (self) arXmlShortNameImplementationDataType: (recoveredBlock53Value3).
    recoveredBlock53Value5 := recoveredBlock53Arg1.
    recoveredBlock53Value6 := (self) arXmlShortNameImplementationDataType: (recoveredBlock53Value5).
    recoveredBlock53Value7 := (self) arXmlAttributesForScalarType: (recoveredBlock53Value1) typeNameDerivedType: (recoveredBlock53Value4) typeNameScalar: (recoveredBlock53Value6).
    recoveredBlock53Value8 := (self) writeARXmlAliasImplementationDataTypeTo: (recoveredBlock53Value0) attributes: (recoveredBlock53Value7).
    recoveredBlock53Local1 := recoveredBlock53Value8.
    recoveredBlock53Value9 := recoveredBlock53Local1.
    recoveredBlock53Value10 := recoveredBlock53Arg1.
    recoveredBlock53Value11 := (recoveredBlock53Value10) asBaseClassType.
    recoveredBlock53Value12 := (self) writeARXmlImplementationDataTypeRefTo: (recoveredBlock53Value9) type: (recoveredBlock53Value11).
    recoveredBlock53Value12
].
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203f9788; bytecode file offset 0xcf6080"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
createARXmlImplTemplatesImplementationDataTypes: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) settings.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) arSettingRestrictToPlatformTypes.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 recoveredBlock13Value3 recoveredBlock13Value4 recoveredBlock13Value5 recoveredBlock13Value6 |
    recoveredBlock13Value0 := (self) arXmlPackageNameImplementationTypesTable.
    recoveredBlock13Value1 := recoveredBlock13Arg1.
    recoveredBlock13Value2 := (recoveredBlock13Value1) cgUniqueTypeIdentifier.
    recoveredBlock13Value3 := recoveredBlock13Arg1.
    recoveredBlock13Value4 := (recoveredBlock13Value3) getImplType.
    recoveredBlock13Value5 := (self) arXmlPackageNameImplementationDataType: (recoveredBlock13Value4).
    recoveredBlock13Value6 := (recoveredBlock13Value0) at: (recoveredBlock13Value2) put: (recoveredBlock13Value5).
    recoveredBlock13Value6
].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredPC := 91.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := 'ImplTemplates'.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := SGCgAutosarSettings.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := (recoveredStack2) categoryImplementationDataType.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) createARXmlFragment: (recoveredStack1) category: (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := [:recoveredBlock53Arg1 | 
    | recoveredBlock53Local1 recoveredBlock53Value0 recoveredBlock53Value1 recoveredBlock53Value2 recoveredBlock53Value3 recoveredBlock53Value4 recoveredBlock53Value5 recoveredBlock53Value6 recoveredBlock53Value7 recoveredBlock53Value8 recoveredBlock53Value9 recoveredBlock53Value10 recoveredBlock53Value11 recoveredBlock53Value12 |
    recoveredBlock53Value0 := recoveredLocal1.
    recoveredBlock53Value1 := recoveredBlock53Arg1.
    recoveredBlock53Value2 := recoveredBlock53Arg1.
    recoveredBlock53Value3 := (recoveredBlock53Value2) asBaseClassType.
    recoveredBlock53Value4 := (self) arXmlShortNameImplementationDataType: (recoveredBlock53Value3).
    recoveredBlock53Value5 := recoveredBlock53Arg1.
    recoveredBlock53Value6 := (self) arXmlShortNameImplementationDataType: (recoveredBlock53Value5).
    recoveredBlock53Value7 := (self) arXmlAttributesForScalarType: (recoveredBlock53Value1) typeNameDerivedType: (recoveredBlock53Value4) typeNameScalar: (recoveredBlock53Value6).
    recoveredBlock53Value8 := (self) writeARXmlAliasImplementationDataTypeTo: (recoveredBlock53Value0) attributes: (recoveredBlock53Value7).
    recoveredBlock53Local1 := recoveredBlock53Value8.
    recoveredBlock53Value9 := recoveredBlock53Local1.
    recoveredBlock53Value10 := recoveredBlock53Arg1.
    recoveredBlock53Value11 := (recoveredBlock53Value10) asBaseClassType.
    recoveredBlock53Value12 := (self) writeARXmlImplementationDataTypeRefTo: (recoveredBlock53Value9) type: (recoveredBlock53Value11).
    recoveredBlock53Value12
].
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203fad90; bytecode file offset 0xcf7684"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
createARXmlInternalConstraints: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := 'InternalConstraints'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := SGCgAutosarSettings.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) categoryInternalConstraint.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) createARXmlFragment: (recoveredStack1) category: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := LookupTable.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := [:recoveredBlock34Arg1 | 
    | recoveredBlock34Local1 recoveredBlock34Value0 recoveredBlock34Value1 recoveredBlock34Value2 recoveredBlock34Value3 recoveredBlock34Value4 recoveredBlock34Value5 |
    recoveredBlock34Value0 := recoveredBlock34Arg1.
    recoveredBlock34Value1 := (self) arXmlShortNameInternalConstraint: (recoveredBlock34Value0).
    recoveredBlock34Local1 := recoveredBlock34Value1.
    recoveredBlock34Value2 := recoveredLocal1.
    recoveredBlock34Value3 := recoveredBlock34Local1.
    recoveredBlock34Value4 := [
    | recoveredBlock34Block54Value0 recoveredBlock34Block54Value1 recoveredBlock34Block54Value2 recoveredBlock34Block54Value3 recoveredBlock34Block54Value4 recoveredBlock34Block54Value5 recoveredBlock34Block54Value6 recoveredBlock34Block54Value7 recoveredBlock34Block54Value8 |
    recoveredBlock34Block54Value0 := recoveredLocal2.
    recoveredBlock34Block54Value1 := SGAutosarAttributes.
    recoveredBlock34Block54Value2 := recoveredBlock34Local1.
    recoveredBlock34Block54Value3 := recoveredBlock34Arg1.
    recoveredBlock34Block54Value4 := (recoveredBlock34Block54Value3) artificialUUID.
    recoveredBlock34Block54Value5 := (recoveredBlock34Block54Value1) shortName: (recoveredBlock34Block54Value2) uuid: (recoveredBlock34Block54Value4).
    recoveredBlock34Block54Value6 := recoveredBlock34Arg1.
    recoveredBlock34Block54Value7 := (recoveredBlock34Block54Value6) getImplInterval.
    recoveredBlock34Block54Value8 := (self) writeARXmlDataConstrTo: (recoveredBlock34Block54Value0) childTag: ('INTERNAL-CONSTRS') attributes: (recoveredBlock34Block54Value5) interval: (recoveredBlock34Block54Value7).
    recoveredBlock34Block54Value8
].
    recoveredBlock34Value5 := (recoveredBlock34Value2) at: (recoveredBlock34Value3) ifAbsentPut: (recoveredBlock34Value4).
    recoveredBlock34Value5
].
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203ff0e8; bytecode file offset 0xcfb9cc"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
writeARXmlValueTo: recoveredArg1 value: recoveredArg2 type: recoveredArg3 categoryInitValue: recoveredArg4
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := SGMdInitValueAssign.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isKindOf: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlDataSetInitValue.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack5 := recoveredArg4.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) writeARXmlRecordValueTo: (recoveredStack2) value: (recoveredStack3) type: (recoveredStack4) categoryInitValue: (recoveredStack5).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleComplexBaseType.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack5 := recoveredArg4.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) writeARXmlArrayValueTo: (recoveredStack2) value: (recoveredStack3) type: (recoveredStack4) categoryInitValue: (recoveredStack5).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := (recoveredStack2) categoryPhysInitApplicationValue.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 61] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) writeARXmlApplicationValueTo: (recoveredStack2) value: (recoveredStack3) type: (recoveredStack4).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgBooleanType.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 87].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack3 := 'TRUE'.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredPC := 84.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack3 := 'FALSE'.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) writeARXmlNumericalValueTo: (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack0) writeARXmlNumericalValueTo: (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204061a0; bytecode file offset 0xd02a9c"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
createDestinationAttributesTable
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := SGCgAutosarSettings.
    recoveredValue4 := (recoveredValue3) categoryBooleanType.
    recoveredValue5 := (self) tagApplicationPrimitiveDataType.
    (recoveredValue2) at: (recoveredValue4) put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := SGCgAutosarSettings.
    recoveredValue8 := (recoveredValue7) categoryIntegerType.
    recoveredValue9 := (self) tagApplicationPrimitiveDataType.
    (recoveredValue6) at: (recoveredValue8) put: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := SGCgAutosarSettings.
    recoveredValue12 := (recoveredValue11) categoryFloatType.
    recoveredValue13 := (self) tagApplicationPrimitiveDataType.
    (recoveredValue10) at: (recoveredValue12) put: (recoveredValue13).
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := SGCgAutosarSettings.
    recoveredValue16 := (recoveredValue15) categoryArrayType.
    recoveredValue17 := (self) tagApplicationArrayType.
    (recoveredValue14) at: (recoveredValue16) put: (recoveredValue17).
    recoveredValue18 := recoveredValue1.
    recoveredValue19 := SGCgAutosarSettings.
    recoveredValue20 := (recoveredValue19) categoryMatrixType.
    recoveredValue21 := (self) tagApplicationArrayType.
    (recoveredValue18) at: (recoveredValue20) put: (recoveredValue21).
    recoveredValue22 := recoveredValue1.
    recoveredValue23 := SGCgAutosarSettings.
    recoveredValue24 := (recoveredValue23) categoryModeGroupType.
    recoveredValue25 := (self) tagModeDeclarationGroup.
    (recoveredValue22) at: (recoveredValue24) put: (recoveredValue25).
    recoveredValue26 := recoveredValue1.
    recoveredValue27 := SGCgAutosarSettings.
    recoveredValue28 := (recoveredValue27) categoryEnumType.
    recoveredValue29 := (self) tagApplicationPrimitiveDataType.
    (recoveredValue26) at: (recoveredValue28) put: (recoveredValue29).
    recoveredValue30 := recoveredValue1.
    recoveredValue31 := SGCgAutosarSettings.
    recoveredValue32 := (recoveredValue31) categoryRecordType.
    recoveredValue33 := (self) tagApplicationRecordType.
    (recoveredValue30) at: (recoveredValue32) put: (recoveredValue33).
    recoveredValue34 := recoveredValue1.
    recoveredValue35 := SGCgAutosarSettings.
    recoveredValue36 := (recoveredValue35) categoryDataTypeMapping.
    (recoveredValue34) at: (recoveredValue36) put: ('DATA-TYPE-MAPPING-SET').
    ^recoveredValue1
! !

"ASDBase.ic method 0x2041ee78; bytecode file offset 0xd1b778"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
createARXmlCustomImplementationDataTypes
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := SGCgAutosarSettings.
    recoveredValue1 := (recoveredValue0) categoryCustomType.
    recoveredValue2 := (self) createARXmlFragment: ('CustomTypes') category: (recoveredValue1).
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := (self) allAUTOSARPlatformTypes.
    recoveredValue4 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Local1 recoveredBlock17Stack0 recoveredBlock17Stack1 recoveredBlock17Stack2 recoveredBlock17Stack3 recoveredBlock17Stack4 recoveredBlock17Stack5 recoveredBlock17Stack6 recoveredBlock17PC recoveredBlock17Step recoveredBlock17Done recoveredBlock17Result |
    recoveredBlock17Stack0 := self.
    recoveredBlock17PC := 24.
    recoveredBlock17Done := false.
    [recoveredBlock17Done not] whileTrue: [
        recoveredBlock17Step := recoveredBlock17PC.
        recoveredBlock17Step = 24 ifTrue: [
            recoveredBlock17Stack1 := nil.
            recoveredBlock17PC := 25.
        ].
        recoveredBlock17Step = 25 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Arg1.
            recoveredBlock17PC := 26.
        ].
        recoveredBlock17Step = 26 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) getImplType.
            recoveredBlock17PC := 28.
        ].
        recoveredBlock17Step = 28 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) getDisplayLabel.
            recoveredBlock17PC := 30.
        ].
        recoveredBlock17Step = 30 ifTrue: [
            recoveredBlock17Stack3 := recoveredBlock17Stack2.
            recoveredBlock17PC := 31.
        ].
        recoveredBlock17Step = 31 ifTrue: [
            recoveredBlock17Local1 := recoveredBlock17Stack3.
            recoveredBlock17PC := 32.
        ].
        recoveredBlock17Step = 32 ifTrue: [
            recoveredBlock17Stack3 := self.
            recoveredBlock17PC := 33.
        ].
        recoveredBlock17Step = 33 ifTrue: [
            recoveredBlock17Stack4 := recoveredBlock17Arg1.
            recoveredBlock17PC := 34.
        ].
        recoveredBlock17Step = 34 ifTrue: [
            recoveredBlock17Stack3 := (recoveredBlock17Stack3) arXmlNativeDeclarationType: (recoveredBlock17Stack4).
            recoveredBlock17PC := 36.
        ].
        recoveredBlock17Step = 36 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) equals: (recoveredBlock17Stack3).
            recoveredBlock17PC := 38.
        ].
        recoveredBlock17Step = 38 ifTrue: [
            (recoveredBlock17Stack2) ifTrue: [recoveredBlock17PC := 78] ifFalse: [recoveredBlock17PC := 42].
        ].
        recoveredBlock17Step = 42 ifTrue: [
            recoveredBlock17PC := 43.
        ].
        recoveredBlock17Step = 43 ifTrue: [
            recoveredBlock17Stack1 := self.
            recoveredBlock17PC := 44.
        ].
        recoveredBlock17Step = 44 ifTrue: [
            recoveredBlock17Stack2 := recoveredLocal2.
            recoveredBlock17PC := 47.
        ].
        recoveredBlock17Step = 47 ifTrue: [
            recoveredBlock17Stack3 := self.
            recoveredBlock17PC := 48.
        ].
        recoveredBlock17Step = 48 ifTrue: [
            recoveredBlock17Stack4 := recoveredBlock17Local1.
            recoveredBlock17PC := 49.
        ].
        recoveredBlock17Step = 49 ifTrue: [
            recoveredBlock17Stack5 := nil.
            recoveredBlock17PC := 50.
        ].
        recoveredBlock17Step = 50 ifTrue: [
            recoveredBlock17Stack3 := (recoveredBlock17Stack3) arAttributesShortName: (recoveredBlock17Stack4) uuid: (recoveredBlock17Stack5).
            recoveredBlock17PC := 52.
        ].
        recoveredBlock17Step = 52 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) writeARXmlAliasImplementationDataTypeTo: (recoveredBlock17Stack2) attributes: (recoveredBlock17Stack3).
            recoveredBlock17PC := 54.
        ].
        recoveredBlock17Step = 54 ifTrue: [
            recoveredLocal1 := recoveredBlock17Stack1.
            recoveredBlock17PC := 57.
        ].
        recoveredBlock17Step = 57 ifTrue: [
            recoveredBlock17Stack1 := self.
            recoveredBlock17PC := 58.
        ].
        recoveredBlock17Step = 58 ifTrue: [
            recoveredBlock17Stack2 := recoveredLocal1.
            recoveredBlock17PC := 61.
        ].
        recoveredBlock17Step = 61 ifTrue: [
            recoveredBlock17Stack3 := recoveredBlock17Arg1.
            recoveredBlock17PC := 62.
        ].
        recoveredBlock17Step = 62 ifTrue: [
            (recoveredBlock17Stack1) writeARXmlImplementationDataTypeRefTo: (recoveredBlock17Stack2) type: (recoveredBlock17Stack3).
            recoveredBlock17PC := 64.
        ].
        recoveredBlock17Step = 64 ifTrue: [
            recoveredBlock17Stack1 := self.
            recoveredBlock17PC := 65.
        ].
        recoveredBlock17Step = 65 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) arXmlPackageNameImplementationTypesTable.
            recoveredBlock17PC := 67.
        ].
        recoveredBlock17Step = 67 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Arg1.
            recoveredBlock17PC := 68.
        ].
        recoveredBlock17Step = 68 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) cgUniqueTypeIdentifier.
            recoveredBlock17PC := 70.
        ].
        recoveredBlock17Step = 70 ifTrue: [
            recoveredBlock17Stack3 := self.
            recoveredBlock17PC := 71.
        ].
        recoveredBlock17Step = 71 ifTrue: [
            recoveredBlock17Stack3 := (recoveredBlock17Stack3) settings.
            recoveredBlock17PC := 73.
        ].
        recoveredBlock17Step = 73 ifTrue: [
            recoveredBlock17Stack4 := recoveredBlock17Local1.
            recoveredBlock17PC := 74.
        ].
        recoveredBlock17Step = 74 ifTrue: [
            recoveredBlock17Stack3 := (recoveredBlock17Stack3) arPackageCustomDataType: (recoveredBlock17Stack4).
            recoveredBlock17PC := 76.
        ].
        recoveredBlock17Step = 76 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) at: (recoveredBlock17Stack2) put: (recoveredBlock17Stack3).
            recoveredBlock17PC := 78.
        ].
        recoveredBlock17Step = 78 ifTrue: [
            recoveredBlock17Result := recoveredBlock17Stack1.
            recoveredBlock17Done := true.
        ].
    ].
    recoveredBlock17Result
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := (self) arXmlPackageNameImplementationTypesTable.
    recoveredValue6 := RBBit.
    recoveredValue7 := (recoveredValue6) cgUniqueTypeIdentifier.
    recoveredValue8 := (self) settings.
    recoveredValue9 := RBBit.
    recoveredValue10 := (recoveredValue9) getDisplayLabel.
    recoveredValue11 := (recoveredValue8) arPackageCustomDataType: (recoveredValue10).
    (recoveredValue5) at: (recoveredValue7) put: (recoveredValue11).
    ^self
! !

"ASDBase.ic method 0x20498ae8; bytecode file offset 0xd953fc"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
createARXmlShortNameForType: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleComplexBaseType.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) settings.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack4 := (recoveredStack4) mdlComponentClassType.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := (recoveredStack3) arXmlBaseType: (recoveredStack4).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) arTemplateParameter: (recoveredStack2) typeName: (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) settings.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileMaxSize.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) arTemplateParameter: (recoveredStack2) maxSize: (recoveredStack3).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) settings.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := (recoveredStack2) arCategory.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) arShortNameKey: (recoveredStack2) binding: (recoveredStack3).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgBaseType.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 109].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlArtificialType.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 69].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) settings.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := (recoveredStack3) arXmlBaseType: (recoveredStack4).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack1) arTemplateParameter: (recoveredStack2) typeName: (recoveredStack3).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) settings.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) arShortNameScalarType: (recoveredStack2).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlImplementationType.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) implTemplateName.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgEnumType.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 92] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgModeGroupType.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 92] ifFalse: [recoveredPC := 109].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := (recoveredStack1) settings.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack3 := (recoveredStack3) className.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack1) arTemplateParameter: (recoveredStack2) typeName: (recoveredStack3).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := (recoveredStack1) settings.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := (recoveredStack2) arCategory.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := (recoveredStack1) arShortNameKey: (recoveredStack2) binding: (recoveredStack3).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlRecordType.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 116] ifFalse: [recoveredPC := 129].
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := (recoveredStack1) settings.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := (recoveredStack2) arCategory.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack3 := (recoveredStack3) componentInfo.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack3 := (recoveredStack3) bannerInfos.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := (recoveredStack1) arShortNameKey: (recoveredStack2) binding: (recoveredStack3).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := super createARXmlShortNameForType: (recoveredStack1).
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204b8a14; bytecode file offset 0xdb532c"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
createARXmlPackageNameForImplementationDataType: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'UnkownImplementationDataType'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgBaseType.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlArtificialType.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 39].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) settings.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := (recoveredStack3) arXmlBaseType: (recoveredStack4).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) arTemplateParameter: (recoveredStack2) typeName: (recoveredStack3).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) settings.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) arShortNameScalarType: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlImplementationType.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) implTemplateName.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgEnumType.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgModeGroupType.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 81].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) settings.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack3 := (recoveredStack3) className.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack1) arTemplateParameter: (recoveredStack2) typeName: (recoveredStack3).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) settings.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := (recoveredStack2) arCategory.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) arShortNameKey: (recoveredStack2) binding: (recoveredStack3).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredPC := 140.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleComplexBaseType.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 126].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := (recoveredStack1) settings.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack4 := (recoveredStack4) mdlComponentClassType.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack4 := (recoveredStack4) asBaseClassType.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack3 := (recoveredStack3) arXmlShortNameImplementationDataType: (recoveredStack4).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack1) arTemplateParameter: (recoveredStack2) typeName: (recoveredStack3).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := (recoveredStack1) settings.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileMaxSize.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack1) arTemplateParameter: (recoveredStack2) maxSize: (recoveredStack3).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := (recoveredStack1) settings.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack2 := (recoveredStack2) arCategory.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := (recoveredStack1) arShortNameKey: (recoveredStack2) binding: (recoveredStack3).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredPC := 140.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := (recoveredStack1) settings.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack2 := (recoveredStack2) arCategory.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack3 := (recoveredStack3) componentInfo.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack3 := (recoveredStack3) bannerInfos.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := (recoveredStack1) arShortNameKey: (recoveredStack2) binding: (recoveredStack3).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := (recoveredStack0) settings.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack0 := (recoveredStack0) arPackageImplementationDataType: (recoveredStack1).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204ebf7c; bytecode file offset 0xde889c"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
createARXmlPhysicalConstraints: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := 'PhysicalConstraints'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := SGCgAutosarSettings.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) categoryPhysicalConstraint.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) createARXmlFragment: (recoveredStack1) category: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := LookupTable.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := [:recoveredBlock34Arg1 | 
    | recoveredBlock34Local1 recoveredBlock34Value0 recoveredBlock34Value1 recoveredBlock34Value2 recoveredBlock34Value3 recoveredBlock34Value4 recoveredBlock34Value5 |
    recoveredBlock34Value0 := recoveredBlock34Arg1.
    recoveredBlock34Value1 := (self) arXmlShortNamePhysicalConstraint: (recoveredBlock34Value0).
    recoveredBlock34Local1 := recoveredBlock34Value1.
    recoveredBlock34Value2 := recoveredLocal2.
    recoveredBlock34Value3 := recoveredBlock34Local1.
    recoveredBlock34Value4 := [
    | recoveredBlock34Block54Value0 |
    recoveredBlock34Block54Value0 := recoveredBlock34Arg1.
    recoveredBlock34Block54Value0
].
    recoveredBlock34Value5 := (recoveredBlock34Value2) at: (recoveredBlock34Value3) ifAbsentPut: (recoveredBlock34Value4).
    recoveredBlock34Value5
].
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) new: (recoveredStack1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := [:recoveredBlock84Arg1 :recoveredBlock84Arg2 | 
    | recoveredBlock84Value0 recoveredBlock84Value1 recoveredBlock84Value2 recoveredBlock84Value3 recoveredBlock84Value4 recoveredBlock84Value5 |
    recoveredBlock84Value0 := recoveredLocal1.
    recoveredBlock84Value1 := Array.
    recoveredBlock84Value2 := recoveredBlock84Arg1.
    recoveredBlock84Value3 := recoveredBlock84Arg2.
    recoveredBlock84Value4 := (recoveredBlock84Value1) with: (recoveredBlock84Value2) with: (recoveredBlock84Value3).
    recoveredBlock84Value5 := (recoveredBlock84Value0) add: (recoveredBlock84Value4).
    recoveredBlock84Value5
].
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack0) keysAndValuesDo: (recoveredStack1).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := [:block281092dcArg1 :block281092dcArg2 | 
    | block281092dcValue0 block281092dcValue1 block281092dcValue2 block281092dcValue3 block281092dcValue4 |
    block281092dcValue0 := block281092dcArg1.
    block281092dcValue1 := (block281092dcValue0) first.
    block281092dcValue2 := block281092dcArg2.
    block281092dcValue3 := (block281092dcValue2) first.
    block281092dcValue4 := (block281092dcValue1) < (block281092dcValue3).
    block281092dcValue4
].
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := [:recoveredBlock128Arg1 | 
    | recoveredBlock128Local1 recoveredBlock128Local2 recoveredBlock128Value0 recoveredBlock128Value1 recoveredBlock128Value2 recoveredBlock128Value3 recoveredBlock128Value4 recoveredBlock128Value5 recoveredBlock128Value6 recoveredBlock128Value7 recoveredBlock128Value8 recoveredBlock128Value9 recoveredBlock128Value10 recoveredBlock128Value11 recoveredBlock128Value12 |
    recoveredBlock128Value0 := recoveredBlock128Arg1.
    recoveredBlock128Value1 := (recoveredBlock128Value0) first.
    recoveredBlock128Local2 := recoveredBlock128Value1.
    recoveredBlock128Value2 := recoveredBlock128Arg1.
    recoveredBlock128Value3 := (recoveredBlock128Value2) second.
    recoveredBlock128Local1 := recoveredBlock128Value3.
    recoveredBlock128Value4 := recoveredLocal3.
    recoveredBlock128Value5 := SGAutosarAttributes.
    recoveredBlock128Value6 := recoveredBlock128Local2.
    recoveredBlock128Value7 := recoveredBlock128Local1.
    recoveredBlock128Value8 := (recoveredBlock128Value7) artificialUUID.
    recoveredBlock128Value9 := (recoveredBlock128Value5) shortName: (recoveredBlock128Value6) uuid: (recoveredBlock128Value8).
    recoveredBlock128Value10 := recoveredBlock128Local1.
    recoveredBlock128Value11 := (recoveredBlock128Value10) getPhysInterval.
    recoveredBlock128Value12 := (self) writeARXmlDataConstrTo: (recoveredBlock128Value4) childTag: ('PHYS-CONSTRS') attributes: (recoveredBlock128Value9) interval: (recoveredBlock128Value11).
    recoveredBlock128Value12
].
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
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

"ASDBase.ic method 0x204f3cd8; bytecode file offset 0xdf05ec"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
createARXmlPlatformApplicationDataTypes: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := LookupTable.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal5 := recoveredValue3.
    recoveredValue4 := OrderedCollection.
    recoveredValue5 := (recoveredValue4) new.
    recoveredLocal4 := recoveredValue5.
    recoveredValue6 := (self) allAUTOSARPlatformTypes.
    recoveredValue7 := [:recoveredBlock23Arg1 | 
    | recoveredBlock23Value0 recoveredBlock23Value1 recoveredBlock23Value2 recoveredBlock23Value3 recoveredBlock23Value4 |
    recoveredBlock23Value0 := recoveredLocal5.
    recoveredBlock23Value1 := recoveredBlock23Arg1.
    recoveredBlock23Value2 := (recoveredBlock23Value1) cgUniqueTypeIdentifier.
    recoveredBlock23Value3 := recoveredBlock23Arg1.
    recoveredBlock23Value4 := (recoveredBlock23Value0) at: (recoveredBlock23Value2) put: (recoveredBlock23Value3).
    recoveredBlock23Value4
].
    (recoveredValue6) do: (recoveredValue7).
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := [:recoveredBlock45Arg1 | 
    | recoveredBlock45Value0 recoveredBlock45Value1 recoveredBlock45Value2 recoveredBlock45Value3 recoveredBlock45Value4 recoveredBlock45Value5 recoveredBlock45Value6 |
    recoveredBlock45Value0 := recoveredLocal4.
    recoveredBlock45Value1 := recoveredLocal5.
    recoveredBlock45Value2 := recoveredBlock45Arg1.
    recoveredBlock45Value3 := (recoveredBlock45Value2) cgUniqueTypeIdentifier.
    recoveredBlock45Value4 := [
    | recoveredBlock45Block63Value0 |
    recoveredBlock45Block63Value0 := recoveredBlock45Arg1.
    recoveredBlock45Block63Value0
].
    recoveredBlock45Value5 := (recoveredBlock45Value1) at: (recoveredBlock45Value3) ifAbsent: (recoveredBlock45Value4).
    recoveredBlock45Value6 := (recoveredBlock45Value0) add: (recoveredBlock45Value5).
    recoveredBlock45Value6
].
    (recoveredValue8) do: (recoveredValue9).
    recoveredValue10 := SGCgAutosarSettings.
    recoveredValue11 := (recoveredValue10) categoryApplicationDataType.
    recoveredValue12 := (self) createARXmlFragment: ('PlatformTypes') category: (recoveredValue11).
    recoveredLocal3 := recoveredValue12.
    recoveredValue13 := recoveredLocal4.
    recoveredValue14 := [:recoveredBlock96Arg1 | 
    | recoveredBlock96Value0 recoveredBlock96Value1 recoveredBlock96Value2 recoveredBlock96Value3 recoveredBlock96Value4 |
    recoveredBlock96Value0 := recoveredLocal2.
    recoveredBlock96Value1 := recoveredBlock96Arg1.
    recoveredBlock96Value2 := (self) arXmlPackageNameApplicationDataType: (recoveredBlock96Value1).
    recoveredBlock96Value3 := [
    | recoveredBlock96Block111Value0 recoveredBlock96Block111Value1 recoveredBlock96Block111Value2 recoveredBlock96Block111Value3 recoveredBlock96Block111Value4 recoveredBlock96Block111Value5 recoveredBlock96Block111Value6 recoveredBlock96Block111Value7 recoveredBlock96Block111Value8 recoveredBlock96Block111Value9 recoveredBlock96Block111Value10 recoveredBlock96Block111Value11 recoveredBlock96Block111Value12 recoveredBlock96Block111Value13 |
    recoveredBlock96Block111Value0 := recoveredLocal3.
    recoveredBlock96Block111Value1 := recoveredBlock96Arg1.
    recoveredBlock96Block111Value2 := recoveredBlock96Arg1.
    recoveredBlock96Block111Value3 := (self) arXmlShortNameApplicationDataType: (recoveredBlock96Block111Value2).
    recoveredBlock96Block111Value4 := (self) arAttributesShortName: (recoveredBlock96Block111Value3) uuid: (nil).
    recoveredBlock96Block111Value5 := (self) writeARXmlPrimitiveApplicationDataTypeTo: (recoveredBlock96Block111Value0) type: (recoveredBlock96Block111Value1) attributes: (recoveredBlock96Block111Value4).
    recoveredLocal1 := recoveredBlock96Block111Value5.
    recoveredBlock96Block111Value6 := recoveredLocal1.
    recoveredBlock96Block111Value7 := recoveredBlock96Arg1.
    (self) writeARXmlPhysConstraintsRefTo: (recoveredBlock96Block111Value6) type: (recoveredBlock96Block111Value7).
    recoveredBlock96Block111Value8 := SGCgTypeFactory.
    recoveredBlock96Block111Value9 := recoveredBlock96Arg1.
    recoveredBlock96Block111Value10 := (recoveredBlock96Block111Value9) getImplType.
    recoveredBlock96Block111Value11 := (recoveredBlock96Block111Value10) class.
    recoveredBlock96Block111Value12 := (recoveredBlock96Block111Value11) createDefault.
    recoveredBlock96Block111Value13 := (recoveredBlock96Block111Value8) createContImpl: (recoveredBlock96Block111Value12).
    recoveredBlock96Block111Value13
].
    recoveredBlock96Value4 := (recoveredBlock96Value0) at: (recoveredBlock96Value2) ifAbsentPut: (recoveredBlock96Value3).
    recoveredBlock96Value4
].
    (recoveredValue13) do: (recoveredValue14).
    ^self
! !

"ASDBase.ic method 0x20525834; bytecode file offset 0xe2216c"
!SGAR4XmlTypesGeneratorStrategy methodsFor: 'recovered'!
createARXmlPackageNameForApplicationDataType: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'UnkownApplicationDataType'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) cgUniqueTypeIdentifier.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := RBDataBoolean.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) cgUniqueTypeLogUIntIdentifier.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := 'BooleanUInt8'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 191.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgBaseType.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 120].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlArtificialType.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := (recoveredStack3) asBaseClassType.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := (recoveredStack3) cgUniqueTypeIdentifier.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := (recoveredStack2) arType: (recoveredStack3).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack3 := (recoveredStack3) settings.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := (recoveredStack3) arTemplateArtificialType.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) asBaseType: (recoveredStack2) template: (recoveredStack3).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredPC := 116.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlImplementationType.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) implTemplateName.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredPC := 116.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgEnumType.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgModeGroupType.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 110].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := (recoveredStack1) settings.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack3 := (recoveredStack3) className.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack1) arTemplateParameter: (recoveredStack2) typeName: (recoveredStack3).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := (recoveredStack1) settings.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := (recoveredStack2) arCategory.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := (recoveredStack1) arShortNameKey: (recoveredStack2) binding: (recoveredStack3).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredPC := 116.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := (recoveredStack2) cgUniqueTypeIdentifier.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := (recoveredStack1) arType: (recoveredStack2).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredPC := 189.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleComplexBaseType.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 126] ifFalse: [recoveredPC := 160].
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := (recoveredStack1) settings.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack4 := (recoveredStack4) componentType.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack3 := (recoveredStack3) arXmlShortNameApplicationDataType: (recoveredStack4).
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            (recoveredStack1) arTemplateParameter: (recoveredStack2) typeName: (recoveredStack3).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := (recoveredStack1) settings.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileMaxSize.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            (recoveredStack1) arTemplateParameter: (recoveredStack2) maxSize: (recoveredStack3).
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := (recoveredStack1) settings.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack2 := (recoveredStack2) arCategory.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := (recoveredStack1) arShortNameKey: (recoveredStack2) binding: (recoveredStack3).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredPC := 189.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgRecordType.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 166] ifFalse: [recoveredPC := 184].
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := (recoveredStack1) settings.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack2 := (recoveredStack2) arCategory.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack3 := (recoveredStack3) componentInfo.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack3 := (recoveredStack3) bannerInfos.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack1 := (recoveredStack1) arShortNameKey: (recoveredStack2) binding: (recoveredStack3).
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredPC := 189.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack1 := (recoveredStack1) createARXmlPackageNameForType: (recoveredStack2).
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack0 := (recoveredStack0) settings.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack0 := (recoveredStack0) arPackageApplicationDataType: (recoveredStack1).
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

