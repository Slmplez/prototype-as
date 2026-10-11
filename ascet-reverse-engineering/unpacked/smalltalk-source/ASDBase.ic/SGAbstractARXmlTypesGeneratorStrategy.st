"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000ff0; bytecode file offset 0x8ffcfc"
!SGAbstractARXmlTypesGeneratorStrategy methodsFor: 'recovered'!
autosarTypesStrategy
    ^self
! !

"ASDBase.ic method 0x20003ae0; bytecode file offset 0x90206c"
!SGAbstractARXmlTypesGeneratorStrategy methodsFor: 'recovered'!
createARXmlRecordLayouts: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20004d60; bytecode file offset 0x90206c"
!SGAbstractARXmlTypesGeneratorStrategy methodsFor: 'recovered'!
createARXmlDistributionTypes: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x2001b9e0; bytecode file offset 0x92209c"
!SGAbstractARXmlTypesGeneratorStrategy methodsFor: 'recovered'!
emptyUnitName
    ^'ASCET_empty_unit'
! !

"ASDBase.ic method 0x20037374; bytecode file offset 0x934580"
!SGAbstractARXmlTypesGeneratorStrategy methodsFor: 'recovered'!
arArrayReferencePassing
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) settings.
    recoveredValue1 := (recoveredValue0) arSettingArrayReferencePassing.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20039e90; bytecode file offset 0x938608"
!SGAbstractARXmlTypesGeneratorStrategy methodsFor: 'recovered'!
cGenNameForType: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) arXmlShortNameType: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003b69c; bytecode file offset 0x938608"
!SGAbstractARXmlTypesGeneratorStrategy methodsFor: 'recovered'!
cGenNameForRecordType: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) arXmlShortNameType: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004f044; bytecode file offset 0x94d048"
!SGAbstractARXmlTypesGeneratorStrategy methodsFor: 'recovered'!
prepareARXmlTypesGeneration
    (self) resetDocFragmentList.
    ^self
! !

"ASDBase.ic method 0x2009715c; bytecode file offset 0x993b34"
!SGAbstractARXmlTypesGeneratorStrategy methodsFor: 'recovered'!
arXmlNamespacePhysicalUnit: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) settings.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) arXmlPackagePhysicalUnit: (recoveredValue1).
    recoveredValue3 := (recoveredValue0) arNamespaceFromPackage: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20097184; bytecode file offset 0x993b34"
!SGAbstractARXmlTypesGeneratorStrategy methodsFor: 'recovered'!
createARXmlShortNameForPhysicalUnit: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) settings.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) arXmlPackagePhysicalUnit: (recoveredValue1).
    recoveredValue3 := (recoveredValue0) arShortNameFromPackage: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200b96e0; bytecode file offset 0x9b5fb4"
!SGAbstractARXmlTypesGeneratorStrategy methodsFor: 'recovered'!
arXmlAttributesForModeGroupType: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) arXmlShortNameType: (recoveredValue0).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) uuid.
    recoveredValue4 := (self) arAttributesShortName: (recoveredValue1) uuid: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200c85cc; bytecode file offset 0x9c4f88"
!SGAbstractARXmlTypesGeneratorStrategy methodsFor: 'recovered'!
writeARXmlIntegerTypeTo: recoveredArg1 attributes: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) writeARXmlShortNameTo: (recoveredValue0) element: ('INTEGER-TYPE') attributes: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200c85dc; bytecode file offset 0x9c4f88"
!SGAbstractARXmlTypesGeneratorStrategy methodsFor: 'recovered'!
writeARXmlRealTypeTo: recoveredArg1 attributes: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) writeARXmlShortNameTo: (recoveredValue0) element: ('REAL-TYPE') attributes: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200c9f14; bytecode file offset 0x9c67d0"
!SGAbstractARXmlTypesGeneratorStrategy methodsFor: 'recovered'!
writeARXmlRecordTypeTo: recoveredArg1 mdlInterface: recoveredArg2 attributes: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) tagRecordType.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (self) writeARXmlShortNameTo: (recoveredValue0) element: (recoveredValue1) attributes: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200ccdf0; bytecode file offset 0x9c96b4"
!SGAbstractARXmlTypesGeneratorStrategy methodsFor: 'recovered'!
emptyUnitDescription
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := RBDataDescription.
    recoveredValue1 := (recoveredValue0) createDefault.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) emptyUnitName.
    (recoveredValue2) unit: (recoveredValue3).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2010de64; bytecode file offset 0xa0a728"
!SGAbstractARXmlTypesGeneratorStrategy methodsFor: 'recovered'!
arXmlAttributesForScalarType: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asBaseClassType.
    recoveredValue3 := (self) arXmlBaseType: (recoveredValue2).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (self) arXmlShortNameType: (recoveredValue4).
    recoveredValue6 := (self) arXmlAttributesForScalarType: (recoveredValue0) typeNameDerivedType: (recoveredValue3) typeNameScalar: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x201969d0; bytecode file offset 0xa932ac"
!SGAbstractARXmlTypesGeneratorStrategy methodsFor: 'recovered'!
arXmlPackagePhysicalUnit: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) arXmlPackageNameTable.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) cgUniqueUnitIdentifier: (recoveredValue1).
    recoveredValue3 := [
    | recoveredBlock10Value0 recoveredBlock10Value1 |
    recoveredBlock10Value0 := recoveredArg1.
    recoveredBlock10Value1 := (self) createARXmlPackageNameForPhysicalUnit: (recoveredBlock10Value0).
    recoveredBlock10Value1
].
    recoveredValue4 := (recoveredValue0) at: (recoveredValue2) ifAbsentPut: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x201969e8; bytecode file offset 0xa932ac"
!SGAbstractARXmlTypesGeneratorStrategy methodsFor: 'recovered'!
arXmlShortNamePhysicalUnit: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) arXmlShortNameTable.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) cgUniqueUnitIdentifier: (recoveredValue1).
    recoveredValue3 := [
    | recoveredBlock10Value0 recoveredBlock10Value1 |
    recoveredBlock10Value0 := recoveredArg1.
    recoveredBlock10Value1 := (self) createARXmlShortNameForPhysicalUnit: (recoveredBlock10Value0).
    recoveredBlock10Value1
].
    recoveredValue4 := (recoveredValue0) at: (recoveredValue2) ifAbsentPut: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x201ac904; bytecode file offset 0xaa91d0"
!SGAbstractARXmlTypesGeneratorStrategy methodsFor: 'recovered'!
writeARXmlRecordTypeTo: recoveredArg1 mdlInterface: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue2) mdlClassType.
    recoveredValue4 := (self) arXmlShortNameType: (recoveredValue3).
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := (recoveredValue5) uuid.
    recoveredValue7 := (self) arAttributesShortName: (recoveredValue4) uuid: (recoveredValue6).
    recoveredValue8 := (self) writeARXmlRecordTypeTo: (recoveredValue0) mdlInterface: (recoveredValue1) attributes: (recoveredValue7).
    recoveredLocal1 := recoveredValue8.
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := recoveredArg2.
    recoveredValue11 := (self) writeARXmlRecordFiledsTo: (recoveredValue9) mdlInterface: (recoveredValue10).
    ^recoveredValue11
! !

"ASDBase.ic method 0x201d4e94; bytecode file offset 0xad1758"
!SGAbstractARXmlTypesGeneratorStrategy methodsFor: 'recovered'!
writeARXmlIntegerTypeTo: recoveredArg1 attributes: recoveredArg2 compuMethodReference: recoveredArg3 interval: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) writeARXmlIntegerTypeTo: (recoveredValue0) attributes: (recoveredValue1).
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := recoveredLocal2.
    recoveredValue4 := (self) writeARXmlDataDefPropsTo: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := recoveredArg3.
    (self) writeARXmlCompuMethodRefTo: (recoveredValue5) reference: (recoveredValue6).
    recoveredValue7 := recoveredLocal2.
    recoveredValue8 := recoveredArg4.
    (self) writeARXmlLimitsTo: (recoveredValue7) interval: (recoveredValue8).
    recoveredValue9 := recoveredLocal2.
    ^recoveredValue9
! !

"ASDBase.ic method 0x201e0448; bytecode file offset 0xadcd18"
!SGAbstractARXmlTypesGeneratorStrategy methodsFor: 'recovered'!
writeARXmlRecordElementTo: recoveredArg1 varDecl: recoveredArg2 type: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
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
    recoveredValue11 := recoveredArg3.
    (self) writeARXmlTypeRefTo: (recoveredValue10) type: (recoveredValue11).
    recoveredValue12 := recoveredLocal1.
    ^recoveredValue12
! !

"ASDBase.ic method 0x202347d0; bytecode file offset 0xb310ac"
!SGAbstractARXmlTypesGeneratorStrategy methodsFor: 'recovered'!
writeARXmlEnumerationTypeTo: recoveredArg1 mdlInterface: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := SGAutosarAttributes.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue2) mdlClassType.
    recoveredValue4 := (self) arXmlShortNameType: (recoveredValue3).
    recoveredValue5 := (recoveredValue1) shortName: (recoveredValue4) uuid: (nil).
    recoveredValue6 := recoveredValue5.
    recoveredValue7 := recoveredArg2.
    recoveredValue8 := (recoveredValue7) mdlClassType.
    recoveredValue9 := (recoveredValue8) arDescription.
    (recoveredValue6) comment: (recoveredValue9).
    recoveredValue10 := recoveredArg2.
    recoveredValue11 := (recoveredValue10) mdlLabel.
    recoveredValue12 := (self) arXmlPackageEnumCompuMethod: (recoveredValue11).
    recoveredValue13 := recoveredArg2.
    recoveredValue14 := (recoveredValue13) mdlClassType.
    recoveredValue15 := (recoveredValue14) getImplInterval.
    recoveredValue16 := (self) writeARXmlIntegerTypeTo: (recoveredValue0) attributes: (recoveredValue5) compuMethodReference: (recoveredValue12) interval: (recoveredValue15).
    ^recoveredValue16
! !

"ASDBase.ic method 0x2024fc08; bytecode file offset 0xb4c4e4"
!SGAbstractARXmlTypesGeneratorStrategy methodsFor: 'recovered'!
arXmlAttributesForArrayType: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlComponentClassType.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) arXmlBaseType: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlComponentClassType.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) cgUniqueTypeIdentifier.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := RBDataBoolean.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) cgUniqueTypeLogUIntIdentifier.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := ' (changed to Boolean) '.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal1 := recoveredStack0.
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
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := (recoveredStack3) arXmlShortNameType: (recoveredStack4).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) arXmlAttributesForArrayType: (recoveredStack1) typeNameComponent: (recoveredStack2) typeNameArray: (recoveredStack3).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2025027c; bytecode file offset 0xb4cb4c"
!SGAbstractARXmlTypesGeneratorStrategy methodsFor: 'recovered'!
createARXmlRecordTypes: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SGCgAutosarSettings.
    recoveredValue1 := (recoveredValue0) categoryRecordType.
    recoveredValue2 := (self) createARXmlFragment: ('RecordTypes') category: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (self) sortedList: (recoveredValue3).
    recoveredValue5 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Value0 recoveredBlock20Value1 recoveredBlock20Value2 |
    recoveredBlock20Value0 := recoveredLocal1.
    recoveredBlock20Value1 := recoveredBlock20Arg1.
    recoveredBlock20Value2 := (self) writeARXmlRecordTypeTo: (recoveredBlock20Value0) mdlInterface: (recoveredBlock20Value1).
    recoveredBlock20Value2
].
    (recoveredValue4) do: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x2025193c; bytecode file offset 0xb4e214"
!SGAbstractARXmlTypesGeneratorStrategy methodsFor: 'recovered'!
arXmlAttributesForImplTemplateType: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := (self) reserveTempStream.
    recoveredLocal2 := recoveredValue0.
    recoveredValue1 := recoveredLocal2.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) nextPutAll: ('type derived from ASCET implementation type "').
    recoveredValue3 := recoveredValue1.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) implTemplateName.
    (recoveredValue3) nextPutAll: (recoveredValue5).
    (recoveredValue1) nextPutAll: ('"').
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (self) arAttributesForType: (recoveredValue6).
    recoveredLocal1 := recoveredValue7.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := recoveredLocal2.
    recoveredValue10 := (recoveredValue9) contents.
    (recoveredValue8) comment: (recoveredValue10).
    recoveredValue11 := recoveredLocal2.
    (recoveredValue11) releaseTempStream.
    recoveredValue12 := recoveredLocal1.
    ^recoveredValue12
! !

"ASDBase.ic method 0x20251a68; bytecode file offset 0xb4e344"
!SGAbstractARXmlTypesGeneratorStrategy methodsFor: 'recovered'!
writeARXmlUnitTo: recoveredArg1 description: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (self) arXmlShortNamePhysicalUnit: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := SGAutosarAttributes.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := (recoveredValue5) artificialUUID.
    recoveredValue7 := (recoveredValue3) shortName: (recoveredValue4) uuid: (recoveredValue6).
    recoveredValue8 := (self) writeARXmlShortNameTo: (recoveredValue2) element: ('UNIT') attributes: (recoveredValue7).
    recoveredLocal2 := recoveredValue8.
    recoveredValue9 := recoveredLocal2.
    recoveredValue10 := recoveredArg2.
    recoveredValue11 := (recoveredValue10) unit.
    recoveredValue12 := (self) arXmlDisplayString: (recoveredValue11).
    (self) writeARXmlTo: (recoveredValue9) element: ('DISPLAY-NAME') text: (recoveredValue12).
    recoveredValue13 := recoveredLocal2.
    ^recoveredValue13
! !

"ASDBase.ic method 0x2027acfc; bytecode file offset 0xb775d0"
!SGAbstractARXmlTypesGeneratorStrategy methodsFor: 'recovered'!
arXmlNativeDeclarationType: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) getImplType.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleFloatType.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRBFloat32.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := 'float32'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := 'float64'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleBooleanType.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 37].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := 'boolean'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) asCType.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2028a760; bytecode file offset 0xb87030"
!SGAbstractARXmlTypesGeneratorStrategy methodsFor: 'recovered'!
createARXmlImplTemplates: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 41].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 'ImplTemplates'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := SGCgAutosarSettings.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := (recoveredStack3) categoryApplicationDataType.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) createARXmlFragment: (recoveredStack2) category: (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := [:recoveredBlock26Arg1 | 
    | recoveredBlock26Value0 recoveredBlock26Value1 recoveredBlock26Value2 |
    recoveredBlock26Value0 := recoveredLocal2.
    recoveredBlock26Value1 := recoveredBlock26Arg1.
    recoveredBlock26Value2 := (self) writeARXmlImplTemplateTo: (recoveredBlock26Value0) type: (recoveredBlock26Value1).
    recoveredBlock26Value2
].
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202a61a4; bytecode file offset 0xba2a70"
!SGAbstractARXmlTypesGeneratorStrategy methodsFor: 'recovered'!
writeARXmlRecordFiledsTo: recoveredArg1 mdlInterface: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) tagElements.
    recoveredValue2 := (self) writeARXmlTo: (recoveredValue0) element: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue3) sortedInstVars.
    recoveredValue5 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Value0 recoveredBlock18Value1 recoveredBlock18Value2 recoveredBlock18Value3 recoveredBlock18Value4 recoveredBlock18Value5 |
    recoveredBlock18Value0 := recoveredLocal1.
    recoveredBlock18Value1 := recoveredBlock18Arg1.
    recoveredBlock18Value2 := recoveredBlock18Arg1.
    recoveredBlock18Value3 := recoveredArg2.
    recoveredBlock18Value4 := (self) arXmlTypeFromASCETElement: (recoveredBlock18Value2) scope: (recoveredBlock18Value3).
    recoveredBlock18Value5 := (self) writeARXmlRecordElementTo: (recoveredBlock18Value0) varDecl: (recoveredBlock18Value1) type: (recoveredBlock18Value4).
    recoveredBlock18Value5
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x202dd4f8; bytecode file offset 0xbd9dcc"
!SGAbstractARXmlTypesGeneratorStrategy methodsFor: 'recovered'!
createARXmlScalarTypes: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            recoveredStack1 := 'ScalarType'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := SGCgAutosarSettings.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) categoryScalarType.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) createARXmlFragment: (recoveredStack1) category: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := [:recoveredBlock27Arg1 | 
    | recoveredBlock27Value0 recoveredBlock27Value1 recoveredBlock27Value2 recoveredBlock27Value3 recoveredBlock27Value4 |
    recoveredBlock27Value0 := recoveredLocal1.
    recoveredBlock27Value1 := recoveredBlock27Arg1.
    recoveredBlock27Value2 := recoveredBlock27Arg1.
    recoveredBlock27Value3 := (self) arXmlAttributesForScalarType: (recoveredBlock27Value2).
    recoveredBlock27Value4 := (self) writeARXmlScalarTypeTo: (recoveredBlock27Value0) type: (recoveredBlock27Value1) attributes: (recoveredBlock27Value3).
    recoveredBlock27Value4
].
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202dfb50; bytecode file offset 0xbdc424"
!SGAbstractARXmlTypesGeneratorStrategy methodsFor: 'recovered'!
createARXmlModeGroupTypes: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 49].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 'ModeGroupTypes'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := SGCgAutosarSettings.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := (recoveredStack3) categoryModeGroupType.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) createARXmlFragment: (recoveredStack2) category: (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) sortedList: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := [:recoveredBlock33Arg1 | 
    | recoveredBlock33Value0 recoveredBlock33Value1 recoveredBlock33Value2 |
    recoveredBlock33Value0 := recoveredLocal2.
    recoveredBlock33Value1 := recoveredBlock33Arg1.
    recoveredBlock33Value2 := (self) writeARXmlModeGroupTypeTo: (recoveredBlock33Value0) mdlInterface: (recoveredBlock33Value1).
    recoveredBlock33Value2
].
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202ee4c0; bytecode file offset 0xbeada0"
!SGAbstractARXmlTypesGeneratorStrategy methodsFor: 'recovered'!
allAUTOSARPlatformTypes
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := SGTypeDefinitions.
    recoveredValue3 := (recoveredValue2) allArithmeticImplTypeClasses.
    recoveredValue4 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 recoveredBlock13Value3 recoveredBlock13Value4 recoveredBlock13Value5 |
    recoveredBlock13Value0 := recoveredLocal1.
    recoveredBlock13Value1 := SGCgTypeFactory.
    recoveredBlock13Value2 := recoveredBlock13Arg1.
    recoveredBlock13Value3 := (recoveredBlock13Value2) createDefault.
    recoveredBlock13Value4 := (recoveredBlock13Value1) createContImpl: (recoveredBlock13Value3).
    recoveredBlock13Value5 := (recoveredBlock13Value0) add: (recoveredBlock13Value4).
    recoveredBlock13Value5
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := SGCgTypeFactory.
    recoveredValue7 := RBImplBoolean.
    recoveredValue8 := (recoveredValue7) createDefault.
    recoveredValue9 := (recoveredValue6) createLogImpl: (recoveredValue8).
    (recoveredValue5) add: (recoveredValue9).
    recoveredValue10 := recoveredLocal1.
    ^recoveredValue10
! !

"ASDBase.ic method 0x2036ebd4; bytecode file offset 0xc6b4b4"
!SGAbstractARXmlTypesGeneratorStrategy methodsFor: 'recovered'!
writeARXmlBaseTypeTo: recoveredArg1 type: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) getImplType.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) arAttributesForType: (recoveredStack1) uuid: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal2 := recoveredStack0.
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
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) writeARXmlBooleanTypeTo: (recoveredStack1) attributes: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 66.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleFloatType.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) writeARXmlRealTypeTo: (recoveredStack1) attributes: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := (recoveredStack2) asRTEEncoding.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) writeARXmlEncodingTo: (recoveredStack1) text: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredPC := 66.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) writeARXmlIntegerTypeTo: (recoveredStack1) attributes: (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := (recoveredStack2) getImplInterval.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0) writeARXmlLimitsTo: (recoveredStack1) interval: (recoveredStack2).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203855f8; bytecode file offset 0xc81ed4"
!SGAbstractARXmlTypesGeneratorStrategy methodsFor: 'recovered'!
createARXmlEnumerationTypes: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 71].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 'EnumerationTypes'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := SGCgAutosarSettings.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := (recoveredStack3) categoryEnumType.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) createARXmlFragment: (recoveredStack2) category: (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := [:recoveredBlock26Arg1 | 
    | recoveredBlock26Value0 recoveredBlock26Value1 recoveredBlock26Value2 |
    recoveredBlock26Value0 := recoveredLocal1.
    recoveredBlock26Value1 := recoveredBlock26Arg1.
    recoveredBlock26Value2 := (self) writeARXmlEnumerationTypeTo: (recoveredBlock26Value0) mdlInterface: (recoveredBlock26Value1).
    recoveredBlock26Value2
].
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := 'EnumerationFormulas'.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := SGCgAutosarSettings.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := (recoveredStack3) categoryEnumFormula.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) createARXmlFragment: (recoveredStack2) category: (recoveredStack3).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := [:recoveredBlock56Arg1 | 
    | recoveredBlock56Value0 recoveredBlock56Value1 recoveredBlock56Value2 |
    recoveredBlock56Value0 := recoveredLocal1.
    recoveredBlock56Value1 := recoveredBlock56Arg1.
    recoveredBlock56Value2 := (self) writeARXmlEnumFormulaTo: (recoveredBlock56Value0) mdlInterface: (recoveredBlock56Value1).
    recoveredBlock56Value2
].
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2038d2c8; bytecode file offset 0xc89bb8"
!SGAbstractARXmlTypesGeneratorStrategy methodsFor: 'recovered'!
arXmlAttributesForArrayType: recoveredArg1 typeNameComponent: recoveredArg2 typeNameArray: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) reserveTempStream.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlMatrix.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := 'matrix'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := 'array'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := ' of '.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlMaxSize.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := ' "'.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := '" values'.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := (recoveredStack2) uuid.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) arAttributesShortName: (recoveredStack1) uuid: (recoveredStack2).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) contents.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0) comment: (recoveredStack1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0) releaseTempStream.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20399220; bytecode file offset 0xc95b08"
!SGAbstractARXmlTypesGeneratorStrategy methodsFor: 'recovered'!
writeARXmlScalarTypeTo: recoveredArg1 type: recoveredArg2 attributes: recoveredArg3
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
            recoveredStack1 := (recoveredStack1) isIleFloatType.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) writeARXmlRealTypeTo: (recoveredStack2) attributes: (recoveredStack3).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) writeARXmlIntegerTypeTo: (recoveredStack2) attributes: (recoveredStack3).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) writeARXmlDataDefPropsTo: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal1 := recoveredStack0.
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
            recoveredStack2 := (recoveredStack2) ileFormulaName.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) writeARXmlArithmeticFormulaRefTo: (recoveredStack1) name: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleFloatType.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := (recoveredStack2) getImplInterval.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) writeARXmlLimitsTo: (recoveredStack1) interval: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := (recoveredStack2) asBaseClassType.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := (recoveredStack2) getImplType.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := (recoveredStack2) asRTEEncoding.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) writeARXmlEncodingTo: (recoveredStack1) text: (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredPC := 73.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := (recoveredStack2) getImplInterval.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := (recoveredStack2) asInteger.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack0) writeARXmlLimitsTo: (recoveredStack1) interval: (recoveredStack2).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203aca24; bytecode file offset 0xca9340"
!SGAbstractARXmlTypesGeneratorStrategy methodsFor: 'recovered'!
createARXmlMatrixTypes: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 77].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := 'MatrixTypes'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := SGCgAutosarSettings.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := (recoveredStack3) categoryArrayType.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) createARXmlFragment: (recoveredStack2) category: (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := [:recoveredBlock33Arg1 | 
    | recoveredBlock33Value0 recoveredBlock33Value1 recoveredBlock33Value2 recoveredBlock33Value3 recoveredBlock33Value4 |
    recoveredBlock33Value0 := recoveredLocal1.
    recoveredBlock33Value1 := recoveredBlock33Arg1.
    recoveredBlock33Value2 := (self) arXmlShortNameType: (recoveredBlock33Value1).
    recoveredBlock33Value3 := [
    | recoveredBlock33Block49Value0 recoveredBlock33Block49Value1 recoveredBlock33Block49Value2 recoveredBlock33Block49Value3 recoveredBlock33Block49Value4 |
    recoveredBlock33Block49Value0 := recoveredLocal2.
    recoveredBlock33Block49Value1 := recoveredBlock33Arg1.
    recoveredBlock33Block49Value2 := recoveredBlock33Arg1.
    recoveredBlock33Block49Value3 := (self) arXmlAttributesForArrayType: (recoveredBlock33Block49Value2).
    recoveredBlock33Block49Value4 := (self) writeARXmlArrayTypeTo: (recoveredBlock33Block49Value0) complexType: (recoveredBlock33Block49Value1) attributes: (recoveredBlock33Block49Value3).
    recoveredBlock33Block49Value4
].
    recoveredBlock33Value4 := (recoveredBlock33Value0) at: (recoveredBlock33Value2) ifAbsentPut: (recoveredBlock33Value3).
    recoveredBlock33Value4
].
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203aca5c; bytecode file offset 0xca9340"
!SGAbstractARXmlTypesGeneratorStrategy methodsFor: 'recovered'!
createARXmlArrayTypes: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 77].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := 'ArrayTypes'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := SGCgAutosarSettings.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := (recoveredStack3) categoryArrayType.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) createARXmlFragment: (recoveredStack2) category: (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := [:recoveredBlock33Arg1 | 
    | recoveredBlock33Value0 recoveredBlock33Value1 recoveredBlock33Value2 recoveredBlock33Value3 recoveredBlock33Value4 |
    recoveredBlock33Value0 := recoveredLocal1.
    recoveredBlock33Value1 := recoveredBlock33Arg1.
    recoveredBlock33Value2 := (self) arXmlShortNameType: (recoveredBlock33Value1).
    recoveredBlock33Value3 := [
    | recoveredBlock33Block49Value0 recoveredBlock33Block49Value1 recoveredBlock33Block49Value2 recoveredBlock33Block49Value3 recoveredBlock33Block49Value4 |
    recoveredBlock33Block49Value0 := recoveredLocal2.
    recoveredBlock33Block49Value1 := recoveredBlock33Arg1.
    recoveredBlock33Block49Value2 := recoveredBlock33Arg1.
    recoveredBlock33Block49Value3 := (self) arXmlAttributesForArrayType: (recoveredBlock33Block49Value2).
    recoveredBlock33Block49Value4 := (self) writeARXmlArrayTypeTo: (recoveredBlock33Block49Value0) complexType: (recoveredBlock33Block49Value1) attributes: (recoveredBlock33Block49Value3).
    recoveredBlock33Block49Value4
].
    recoveredBlock33Value4 := (recoveredBlock33Value0) at: (recoveredBlock33Value2) ifAbsentPut: (recoveredBlock33Value3).
    recoveredBlock33Value4
].
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203ae76c; bytecode file offset 0xcab068"
!SGAbstractARXmlTypesGeneratorStrategy methodsFor: 'recovered'!
createDestinationAttributesTable
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := SGCgAutosarSettings.
    recoveredValue4 := (recoveredValue3) categoryBooleanType.
    (recoveredValue2) at: (recoveredValue4) put: ('BOOLEAN-TYPE').
    recoveredValue5 := recoveredValue1.
    recoveredValue6 := SGCgAutosarSettings.
    recoveredValue7 := (recoveredValue6) categoryIntegerType.
    (recoveredValue5) at: (recoveredValue7) put: ('INTEGER-TYPE').
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := SGCgAutosarSettings.
    recoveredValue10 := (recoveredValue9) categoryFloatType.
    (recoveredValue8) at: (recoveredValue10) put: ('REAL-TYPE').
    recoveredValue11 := recoveredValue1.
    recoveredValue12 := SGCgAutosarSettings.
    recoveredValue13 := (recoveredValue12) categoryArrayType.
    (recoveredValue11) at: (recoveredValue13) put: ('ARRAY-TYPE').
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := SGCgAutosarSettings.
    recoveredValue16 := (recoveredValue15) categoryMatrixType.
    (recoveredValue14) at: (recoveredValue16) put: ('ARRAY-TYPE').
    recoveredValue17 := recoveredValue1.
    recoveredValue18 := SGCgAutosarSettings.
    recoveredValue19 := (recoveredValue18) categoryModeGroupType.
    (recoveredValue17) at: (recoveredValue19) put: ('MODE-DECLARATION-GROUP').
    recoveredValue20 := recoveredValue1.
    recoveredValue21 := SGCgAutosarSettings.
    recoveredValue22 := (recoveredValue21) categoryEnumType.
    (recoveredValue20) at: (recoveredValue22) put: ('INTEGER-TYPE').
    recoveredValue23 := recoveredValue1.
    recoveredValue24 := SGCgAutosarSettings.
    recoveredValue25 := (recoveredValue24) categoryRecordType.
    (recoveredValue23) at: (recoveredValue25) put: ('RECORD-TYPE').
    ^recoveredValue1
! !

"ASDBase.ic method 0x203b38ec; bytecode file offset 0xcb01e8"
!SGAbstractARXmlTypesGeneratorStrategy methodsFor: 'recovered'!
writeARXmlImplTemplateTo: recoveredArg1 type: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredStack2 := (recoveredStack2) settings.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := (recoveredStack3) implTemplateName.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) arShortNameImplTemplate: (recoveredStack3).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) shortName: (recoveredStack2) uuid: (recoveredStack3).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleFloatType.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) writeARXmlRealTypeTo: (recoveredStack2) attributes: (recoveredStack3).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := (recoveredStack3) asRTEEncoding.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) writeARXmlEncodingTo: (recoveredStack2) text: (recoveredStack3).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredPC := 77.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := 'type derived from ASCET implementation type ""'.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := (recoveredStack3) shortName.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := '""'.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack1) comment: (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack5 := recoveredArg2.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack5 := (recoveredStack5) ileFormulaName.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack4 := (recoveredStack4) arXmlPackageArithmeticCompuMethod: (recoveredStack5).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack5 := recoveredArg2.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack5 := (recoveredStack5) getImplInterval.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) writeARXmlIntegerTypeTo: (recoveredStack2) attributes: (recoveredStack3) compuMethodReference: (recoveredStack4) interval: (recoveredStack5).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203c3790; bytecode file offset 0xcc007c"
!SGAbstractARXmlTypesGeneratorStrategy methodsFor: 'recovered'!
writeARXmlModeGroupTypeTo: recoveredArg1 mdlInterface: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue1) mdlClassType.
    recoveredValue3 := (self) arXmlAttributesForModeGroupType: (recoveredValue2).
    recoveredValue4 := (self) writeARXmlShortNameTo: (recoveredValue0) element: ('MODE-DECLARATION-GROUP') attributes: (recoveredValue3).
    recoveredLocal2 := recoveredValue4.
    recoveredValue5 := recoveredLocal2.
    recoveredValue6 := recoveredArg2.
    recoveredValue7 := (recoveredValue6) enumLabels.
    recoveredValue8 := (recoveredValue7) first.
    (self) writeARXmlModeRefTo: (recoveredValue5) element: ('INITIAL-MODE-REF') mode: (recoveredValue8).
    recoveredValue9 := recoveredLocal2.
    recoveredValue10 := (self) writeARXmlTo: (recoveredValue9) element: ('MODE-DECLARATIONS').
    recoveredLocal1 := recoveredValue10.
    recoveredValue11 := recoveredArg2.
    recoveredValue12 := (recoveredValue11) enumLabels.
    recoveredValue13 := [:recoveredBlock53Arg1 | 
    | recoveredBlock53Value0 recoveredBlock53Value1 recoveredBlock53Value2 recoveredBlock53Value3 recoveredBlock53Value4 |
    recoveredBlock53Value0 := recoveredLocal1.
    recoveredBlock53Value1 := recoveredBlock53Arg1.
    recoveredBlock53Value2 := (recoveredBlock53Value1) mdlLabel.
    recoveredBlock53Value3 := (self) arAttributesShortName: (recoveredBlock53Value2) uuid: (nil).
    recoveredBlock53Value4 := (self) writeARXmlShortNameTo: (recoveredBlock53Value0) element: ('MODE-DECLARATION') attributes: (recoveredBlock53Value3).
    recoveredBlock53Value4
].
    (recoveredValue12) do: (recoveredValue13).
    recoveredValue14 := recoveredLocal2.
    ^recoveredValue14
! !

"ASDBase.ic method 0x204281d0; bytecode file offset 0xd24ac8"
!SGAbstractARXmlTypesGeneratorStrategy methodsFor: 'recovered'!
createARXmlUnits: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 102].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := [:recoveredBlock21Arg1 | 
    | recoveredBlock21Stack0 recoveredBlock21Stack1 recoveredBlock21Stack2 recoveredBlock21Stack3 recoveredBlock21Stack4 recoveredBlock21PC recoveredBlock21Step recoveredBlock21Done recoveredBlock21Result |
    recoveredBlock21Stack0 := self.
    recoveredBlock21PC := 28.
    recoveredBlock21Done := false.
    [recoveredBlock21Done not] whileTrue: [
        recoveredBlock21Step := recoveredBlock21PC.
        recoveredBlock21Step = 28 ifTrue: [
            recoveredBlock21Stack1 := recoveredLocal1.
            recoveredBlock21PC := 31.
        ].
        recoveredBlock21Step = 31 ifTrue: [
            recoveredBlock21Stack2 := self.
            recoveredBlock21PC := 32.
        ].
        recoveredBlock21Step = 32 ifTrue: [
            recoveredBlock21Stack3 := recoveredBlock21Arg1.
            recoveredBlock21PC := 33.
        ].
        recoveredBlock21Step = 33 ifTrue: [
            recoveredBlock21Stack2 := (recoveredBlock21Stack2) arXmlNamespacePhysicalUnit: (recoveredBlock21Stack3).
            recoveredBlock21PC := 34.
        ].
        recoveredBlock21Step = 34 ifTrue: [
            recoveredBlock21Stack3 := [
    | block280fcfc0Value0 block280fcfc0Value1 |
    block280fcfc0Value0 := OrderedCollection.
    block280fcfc0Value1 := (block280fcfc0Value0) new.
    block280fcfc0Value1
].
            recoveredBlock21PC := 36.
        ].
        recoveredBlock21Step = 36 ifTrue: [
            recoveredBlock21PC := 44.
        ].
        recoveredBlock21Step = 44 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) at: (recoveredBlock21Stack2) ifAbsentPut: (recoveredBlock21Stack3).
            recoveredBlock21PC := 46.
        ].
        recoveredBlock21Step = 46 ifTrue: [
            recoveredBlock21Stack2 := recoveredBlock21Arg1.
            recoveredBlock21PC := 47.
        ].
        recoveredBlock21Step = 47 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) add: (recoveredBlock21Stack2).
            recoveredBlock21PC := 49.
        ].
        recoveredBlock21Step = 49 ifTrue: [
            recoveredBlock21Result := recoveredBlock21Stack1.
            recoveredBlock21Done := true.
        ].
    ].
    recoveredBlock21Result
].
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := [:recoveredBlock55Arg1 :recoveredBlock55Arg2 | 
    | recoveredBlock55Value0 recoveredBlock55Value1 recoveredBlock55Value2 recoveredBlock55Value3 recoveredBlock55Value4 recoveredBlock55Value5 recoveredBlock55Value6 recoveredBlock55Value7 recoveredBlock55Value8 recoveredBlock55Value9 recoveredBlock55Value10 |
    recoveredBlock55Value0 := recoveredBlock55Arg1.
    recoveredBlock55Value1 := (recoveredBlock55Value0) asString.
    recoveredBlock55Value2 := ('Units_') , (recoveredBlock55Value1).
    recoveredBlock55Value3 := (self) settings.
    recoveredBlock55Value4 := recoveredBlock55Arg1.
    recoveredBlock55Value5 := (recoveredBlock55Value3) arXmlCategoryPhysicalUnit: (recoveredBlock55Value4).
    recoveredBlock55Value6 := recoveredBlock55Arg1.
    recoveredBlock55Value7 := (self) createARXmlFragment: (recoveredBlock55Value2) category: (recoveredBlock55Value5) namespace: (recoveredBlock55Value6).
    recoveredLocal2 := recoveredBlock55Value7.
    recoveredBlock55Value8 := recoveredBlock55Arg2.
    recoveredBlock55Value9 := [:recoveredBlock55Block83Arg1 | 
    | recoveredBlock55Block83Value0 recoveredBlock55Block83Value1 recoveredBlock55Block83Value2 |
    recoveredBlock55Block83Value0 := recoveredLocal2.
    recoveredBlock55Block83Value1 := recoveredBlock55Block83Arg1.
    recoveredBlock55Block83Value2 := (self) writeARXmlUnitTo: (recoveredBlock55Block83Value0) description: (recoveredBlock55Block83Value1).
    recoveredBlock55Block83Value2
].
    recoveredBlock55Value10 := (recoveredBlock55Value8) do: (recoveredBlock55Value9).
    recoveredBlock55Value10
].
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack1) keysAndValuesDo: (recoveredStack2).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2042f7a4; bytecode file offset 0xd2c0a4"
!SGAbstractARXmlTypesGeneratorStrategy methodsFor: 'recovered'!
createARXmlPackageNameTable
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := ASDDataTypeNameMappingOptions.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionCustomizedDataTypesActive.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := SGCgAutosarSettings.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) categoryCustomType.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := SGCgAutosarSettings.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) categoryAUTOSARType.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) allSupportedPrimitiveTypes.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := [:recoveredBlock37Arg1 | 
    | recoveredBlock37Value0 recoveredBlock37Value1 recoveredBlock37Value2 recoveredBlock37Value3 recoveredBlock37Value4 recoveredBlock37Value5 recoveredBlock37Value6 recoveredBlock37Value7 |
    recoveredBlock37Value0 := recoveredLocal2.
    recoveredBlock37Value1 := recoveredBlock37Arg1.
    recoveredBlock37Value2 := (recoveredBlock37Value1) cgUniqueTypeIdentifier.
    recoveredBlock37Value3 := recoveredBlock37Arg1.
    recoveredBlock37Value4 := (self) arXmlShortNameType: (recoveredBlock37Value3).
    recoveredBlock37Value5 := recoveredLocal1.
    recoveredBlock37Value6 := (self) createARXmlPackageNameForBaseType: (recoveredBlock37Value4) packageKey: (recoveredBlock37Value5).
    recoveredBlock37Value7 := (recoveredBlock37Value0) at: (recoveredBlock37Value2) put: (recoveredBlock37Value6).
    recoveredBlock37Value7
].
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := RBDataBoolean.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) cgUniqueTypeLogUIntIdentifier.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack3 := RBImplBoolean.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack3 := (recoveredStack3) cgUniqueTypeIdentifier.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := RBBit.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := (recoveredStack1) cgUniqueTypeIdentifier.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack3 := RBImplBoolean.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack3 := (recoveredStack3) cgUniqueTypeIdentifier.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204363a8; bytecode file offset 0xd32c9c"
!SGAbstractARXmlTypesGeneratorStrategy methodsFor: 'recovered'!
allSupportedPrimitiveTypes
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := SGCgTypeFactory.
    recoveredValue4 := RBImplBoolean.
    recoveredValue5 := (recoveredValue4) createDefault.
    recoveredValue6 := (recoveredValue3) createLogImpl: (recoveredValue5).
    (recoveredValue2) add: (recoveredValue6).
    recoveredValue7 := recoveredValue1.
    recoveredValue8 := SGCgTypeFactory.
    recoveredValue9 := RBInt8Unsigned.
    recoveredValue10 := (recoveredValue9) createDefault.
    recoveredValue11 := (recoveredValue8) createContImpl: (recoveredValue10).
    (recoveredValue7) add: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := SGCgTypeFactory.
    recoveredValue14 := RBInt8Signed.
    recoveredValue15 := (recoveredValue14) createDefault.
    recoveredValue16 := (recoveredValue13) createContImpl: (recoveredValue15).
    (recoveredValue12) add: (recoveredValue16).
    recoveredValue17 := recoveredValue1.
    recoveredValue18 := SGCgTypeFactory.
    recoveredValue19 := RBInt16Unsigned.
    recoveredValue20 := (recoveredValue19) createDefault.
    recoveredValue21 := (recoveredValue18) createContImpl: (recoveredValue20).
    (recoveredValue17) add: (recoveredValue21).
    recoveredValue22 := recoveredValue1.
    recoveredValue23 := SGCgTypeFactory.
    recoveredValue24 := RBInt16Signed.
    recoveredValue25 := (recoveredValue24) createDefault.
    recoveredValue26 := (recoveredValue23) createContImpl: (recoveredValue25).
    (recoveredValue22) add: (recoveredValue26).
    recoveredValue27 := recoveredValue1.
    recoveredValue28 := SGCgTypeFactory.
    recoveredValue29 := RBInt32Unsigned.
    recoveredValue30 := (recoveredValue29) createDefault.
    recoveredValue31 := (recoveredValue28) createContImpl: (recoveredValue30).
    (recoveredValue27) add: (recoveredValue31).
    recoveredValue32 := recoveredValue1.
    recoveredValue33 := SGCgTypeFactory.
    recoveredValue34 := RBInt32Signed.
    recoveredValue35 := (recoveredValue34) createDefault.
    recoveredValue36 := (recoveredValue33) createContImpl: (recoveredValue35).
    (recoveredValue32) add: (recoveredValue36).
    recoveredValue37 := recoveredValue1.
    recoveredValue38 := SGCgTypeFactory.
    recoveredValue39 := RBFloat32.
    recoveredValue40 := (recoveredValue39) createDefault.
    recoveredValue41 := (recoveredValue38) createContImpl: (recoveredValue40).
    (recoveredValue37) add: (recoveredValue41).
    recoveredValue42 := recoveredValue1.
    recoveredValue43 := SGCgTypeFactory.
    recoveredValue44 := RBFloat.
    recoveredValue45 := (recoveredValue44) createDefault.
    recoveredValue46 := (recoveredValue43) createContImpl: (recoveredValue45).
    (recoveredValue42) add: (recoveredValue46).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2045998c; bytecode file offset 0xd56290"
!SGAbstractARXmlTypesGeneratorStrategy methodsFor: 'recovered'!
createARXmlFormulas: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := 'Formulas'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := SGCgAutosarSettings.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := (recoveredStack3) categoryArithmeticFormula.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) createARXmlFragment: (recoveredStack2) category: (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := [:recoveredBlock33Arg1 | 
    | recoveredBlock33Local1 recoveredBlock33Stack0 recoveredBlock33Stack1 recoveredBlock33Stack2 recoveredBlock33Stack3 recoveredBlock33Stack4 recoveredBlock33PC recoveredBlock33Step recoveredBlock33Done recoveredBlock33Result |
    recoveredBlock33Stack0 := self.
    recoveredBlock33PC := 40.
    recoveredBlock33Done := false.
    [recoveredBlock33Done not] whileTrue: [
        recoveredBlock33Step := recoveredBlock33PC.
        recoveredBlock33Step = 40 ifTrue: [
            recoveredBlock33Stack1 := recoveredBlock33Arg1.
            recoveredBlock33PC := 41.
        ].
        recoveredBlock33Step = 41 ifTrue: [
            recoveredBlock33Stack1 := (recoveredBlock33Stack1) description.
            recoveredBlock33PC := 43.
        ].
        recoveredBlock33Step = 43 ifTrue: [
            recoveredBlock33Stack1 := (recoveredBlock33Stack1) unit.
            recoveredBlock33PC := 45.
        ].
        recoveredBlock33Step = 45 ifTrue: [
            recoveredBlock33Stack2 := recoveredBlock33Stack1.
            recoveredBlock33PC := 46.
        ].
        recoveredBlock33Step = 46 ifTrue: [
            recoveredBlock33Local1 := recoveredBlock33Stack2.
            recoveredBlock33PC := 47.
        ].
        recoveredBlock33Step = 47 ifTrue: [
            recoveredBlock33Stack1 := (recoveredBlock33Stack1) notEmpty.
            recoveredBlock33PC := 48.
        ].
        recoveredBlock33Step = 48 ifTrue: [
            (recoveredBlock33Stack1) ifTrue: [recoveredBlock33PC := 52] ifFalse: [recoveredBlock33PC := 61].
        ].
        recoveredBlock33Step = 52 ifTrue: [
            recoveredBlock33Stack1 := recoveredLocal1.
            recoveredBlock33PC := 55.
        ].
        recoveredBlock33Step = 55 ifTrue: [
            recoveredBlock33Stack2 := recoveredBlock33Local1.
            recoveredBlock33PC := 56.
        ].
        recoveredBlock33Step = 56 ifTrue: [
            recoveredBlock33Stack3 := recoveredBlock33Arg1.
            recoveredBlock33PC := 57.
        ].
        recoveredBlock33Step = 57 ifTrue: [
            recoveredBlock33Stack3 := (recoveredBlock33Stack3) description.
            recoveredBlock33PC := 59.
        ].
        recoveredBlock33Step = 59 ifTrue: [
            (recoveredBlock33Stack1) at: (recoveredBlock33Stack2) put: (recoveredBlock33Stack3).
            recoveredBlock33PC := 61.
        ].
        recoveredBlock33Step = 61 ifTrue: [
            recoveredBlock33Stack1 := recoveredLocal2.
            recoveredBlock33PC := 64.
        ].
        recoveredBlock33Step = 64 ifTrue: [
            recoveredBlock33Stack2 := recoveredBlock33Arg1.
            recoveredBlock33PC := 65.
        ].
        recoveredBlock33Step = 65 ifTrue: [
            recoveredBlock33Stack0 := (recoveredBlock33Stack0) writeARXmlArithFormulaTo: (recoveredBlock33Stack1) formula: (recoveredBlock33Stack2).
            recoveredBlock33PC := 67.
        ].
        recoveredBlock33Step = 67 ifTrue: [
            recoveredBlock33Result := recoveredBlock33Stack0.
            recoveredBlock33Done := true.
        ].
    ].
    recoveredBlock33Result
].
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) settings.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) arSettingGenerateApplicationInitValue.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 89].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) emptyUnitName.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := (recoveredStack2) emptyUnitDescription.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := (recoveredStack1) values.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := [:block281000e4Arg1 :block281000e4Arg2 | 
    | block281000e4Value0 block281000e4Value1 block281000e4Value2 block281000e4Value3 block281000e4Value4 |
    block281000e4Value0 := block281000e4Arg1.
    block281000e4Value1 := (block281000e4Value0) unit.
    block281000e4Value2 := block281000e4Arg2.
    block281000e4Value3 := (block281000e4Value2) unit.
    block281000e4Value4 := (block281000e4Value1) < (block281000e4Value3).
    block281000e4Value4
].
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection: (recoveredStack2).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack0) createARXmlUnits: (recoveredStack1).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2046a6e4; bytecode file offset 0xd66fe4"
!SGAbstractARXmlTypesGeneratorStrategy methodsFor: 'recovered'!
createARXmlPrimitiveTypes: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) typeDefinitions.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isUsingCustomScalarTypes.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := 'CustomTypes'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := SGCgAutosarSettings.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) categoryCustomType.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) createARXmlFragment: (recoveredStack1) category: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) allSupportedPrimitiveTypes.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := [:recoveredBlock25Arg1 | 
    | recoveredBlock25Local1 recoveredBlock25Stack0 recoveredBlock25Stack1 recoveredBlock25Stack2 recoveredBlock25Stack3 recoveredBlock25Stack4 recoveredBlock25Stack5 recoveredBlock25Stack6 recoveredBlock25Stack7 recoveredBlock25PC recoveredBlock25Step recoveredBlock25Done recoveredBlock25Result |
    recoveredBlock25Stack0 := self.
    recoveredBlock25PC := 32.
    recoveredBlock25Done := false.
    [recoveredBlock25Done not] whileTrue: [
        recoveredBlock25Step := recoveredBlock25PC.
        recoveredBlock25Step = 32 ifTrue: [
            recoveredBlock25Stack1 := recoveredBlock25Arg1.
            recoveredBlock25PC := 33.
        ].
        recoveredBlock25Step = 33 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) getImplType.
            recoveredBlock25PC := 35.
        ].
        recoveredBlock25Step = 35 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) getDisplayLabel.
            recoveredBlock25PC := 37.
        ].
        recoveredBlock25Step = 37 ifTrue: [
            recoveredBlock25Stack2 := recoveredBlock25Stack1.
            recoveredBlock25PC := 38.
        ].
        recoveredBlock25Step = 38 ifTrue: [
            recoveredBlock25Local1 := recoveredBlock25Stack2.
            recoveredBlock25PC := 39.
        ].
        recoveredBlock25Step = 39 ifTrue: [
            recoveredBlock25Stack2 := self.
            recoveredBlock25PC := 40.
        ].
        recoveredBlock25Step = 40 ifTrue: [
            recoveredBlock25Stack3 := recoveredBlock25Arg1.
            recoveredBlock25PC := 41.
        ].
        recoveredBlock25Step = 41 ifTrue: [
            recoveredBlock25Stack2 := (recoveredBlock25Stack2) arXmlNativeDeclarationType: (recoveredBlock25Stack3).
            recoveredBlock25PC := 43.
        ].
        recoveredBlock25Step = 43 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) equals: (recoveredBlock25Stack2).
            recoveredBlock25PC := 45.
        ].
        recoveredBlock25Step = 45 ifTrue: [
            (recoveredBlock25Stack1) ifTrue: [recoveredBlock25PC := 48] ifFalse: [recoveredBlock25PC := 70].
        ].
        recoveredBlock25Step = 48 ifTrue: [
            recoveredBlock25Stack1 := self.
            recoveredBlock25PC := 49.
        ].
        recoveredBlock25Step = 49 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) settings.
            recoveredBlock25PC := 51.
        ].
        recoveredBlock25Step = 51 ifTrue: [
            recoveredBlock25Stack2 := 342.
            recoveredBlock25PC := 54.
        ].
        recoveredBlock25Step = 54 ifTrue: [
            recoveredBlock25Stack3 := 'custom type'.
            recoveredBlock25PC := 56.
        ].
        recoveredBlock25Step = 56 ifTrue: [
            recoveredBlock25Stack4 := recoveredBlock25Arg1.
            recoveredBlock25PC := 57.
        ].
        recoveredBlock25Step = 57 ifTrue: [
            recoveredBlock25Stack4 := (recoveredBlock25Stack4) getImplType.
            recoveredBlock25PC := 59.
        ].
        recoveredBlock25Step = 59 ifTrue: [
            recoveredBlock25Stack4 := (recoveredBlock25Stack4) getDisplayLabel.
            recoveredBlock25PC := 61.
        ].
        recoveredBlock25Step = 61 ifTrue: [
            recoveredBlock25Stack5 := 'AUTOSAR reserved type name'.
            recoveredBlock25PC := 63.
        ].
        recoveredBlock25Step = 63 ifTrue: [
            recoveredBlock25Stack6 := nil.
            recoveredBlock25PC := 64.
        ].
        recoveredBlock25Step = 64 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) mdlSemErrNo: (recoveredBlock25Stack2) with: (recoveredBlock25Stack3) with: (recoveredBlock25Stack4) with: (recoveredBlock25Stack5) source: (recoveredBlock25Stack6).
            recoveredBlock25PC := 67.
        ].
        recoveredBlock25Step = 67 ifTrue: [
            recoveredBlock25PC := 77.
        ].
        recoveredBlock25Step = 70 ifTrue: [
            recoveredBlock25Stack1 := self.
            recoveredBlock25PC := 71.
        ].
        recoveredBlock25Step = 71 ifTrue: [
            recoveredBlock25Stack2 := recoveredLocal1.
            recoveredBlock25PC := 74.
        ].
        recoveredBlock25Step = 74 ifTrue: [
            recoveredBlock25Stack3 := recoveredBlock25Arg1.
            recoveredBlock25PC := 75.
        ].
        recoveredBlock25Step = 75 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) writeARXmlBaseTypeTo: (recoveredBlock25Stack2) type: (recoveredBlock25Stack3).
            recoveredBlock25PC := 77.
        ].
        recoveredBlock25Step = 77 ifTrue: [
            recoveredBlock25Result := recoveredBlock25Stack1.
            recoveredBlock25Done := true.
        ].
    ].
    recoveredBlock25Result
].
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := 'AUTOSARTypes'.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := SGCgAutosarSettings.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := (recoveredStack2) categoryAUTOSARType.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) createARXmlFragment: (recoveredStack1) category: (recoveredStack2).
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
            recoveredStack0 := (recoveredStack0) allSupportedPrimitiveTypes.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := [:recoveredBlock99Arg1 | 
    | recoveredBlock99Value0 recoveredBlock99Value1 recoveredBlock99Value2 |
    recoveredBlock99Value0 := recoveredLocal1.
    recoveredBlock99Value1 := recoveredBlock99Arg1.
    recoveredBlock99Value2 := (self) writeARXmlBaseTypeTo: (recoveredBlock99Value0) type: (recoveredBlock99Value1).
    recoveredBlock99Value2
].
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204a603c; bytecode file offset 0xda294c"
!SGAbstractARXmlTypesGeneratorStrategy methodsFor: 'recovered'!
writeARXmlArithFormulaTo: recoveredArg1 formula: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) arDescription.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) description.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) unit.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := ' with unit: '.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := SGAutosarAttributes.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := (recoveredStack3) name.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) arXmlShortNameArithmeticCompuMethod: (recoveredStack3).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := (recoveredStack3) artificialUUID.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) shortName: (recoveredStack2) uuid: (recoveredStack3).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) comment: (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIdentityFormula.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := 'IDENTICAL'.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) writeARXmlCompuMethodTo: (recoveredStack2) category: (recoveredStack3) attributes: (recoveredStack4).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredPC := 100.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) isLinearAndInvertible.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack3 := 'LINEAR'.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) writeARXmlCompuMethodTo: (recoveredStack2) category: (recoveredStack3) attributes: (recoveredStack4).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredPC := 100.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack3 := 'RAT_FUNC'.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := (recoveredStack1) writeARXmlCompuMethodTo: (recoveredStack2) category: (recoveredStack3) attributes: (recoveredStack4).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 106] ifFalse: [recoveredPC := 116].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack4 := (recoveredStack4) description.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack3 := (recoveredStack3) arXmlPackagePhysicalUnit: (recoveredStack4).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack1) writeARXmlUnitRefTo: (recoveredStack2) reference: (recoveredStack3).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIdentityFormula.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 137] ifFalse: [recoveredPC := 124].
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack3 := (recoveredStack3) arCompuNumeratorCoeffs.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack4 := (recoveredStack4) arCompuDenominatorCoeffs.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            (recoveredStack1) writeARXmlCompuPhysTo: (recoveredStack2) numeratorCoeffs: (recoveredStack3) denominatorCoeffs: (recoveredStack4).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x204c3e24; bytecode file offset 0xdc075c"
!SGAbstractARXmlTypesGeneratorStrategy methodsFor: 'recovered'!
mdlProjectInterface: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) prepareARXmlTypesGeneration.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) usedTypesTable.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) allPrimitiveBaseTypes.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) sortedListById: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) createARXmlPrimitiveTypes: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) usedTypesTable.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) allEnumerationTypeInterfaces.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := [:block28106a38Arg1 | 
    | block28106a38Value0 block28106a38Value1 |
    block28106a38Value0 := block28106a38Arg1.
    block28106a38Value1 := (block28106a38Value0) isMdlAUTOSARReturnType.
    block28106a38Value1
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) reject: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack4 := [:block28106a5cArg1 | 
    | block28106a5cValue0 block28106a5cValue1 |
    block28106a5cValue0 := block28106a5cArg1.
    block28106a5cValue1 := (block28106a5cValue0) isMdlAREnumType.
    block28106a5cValue1
].
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := (recoveredStack3) select: (recoveredStack4).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := (recoveredStack2) sortedList: (recoveredStack3).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) checkEnumerationValues: (recoveredStack2) project: (recoveredStack3).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) createARXmlEnumerationTypes: (recoveredStack1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := [:block28106a80Arg1 | 
    | block28106a80Value0 block28106a80Value1 |
    block28106a80Value0 := block28106a80Arg1.
    block28106a80Value1 := (block28106a80Value0) isMdlModeGroupType.
    block28106a80Value1
].
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := (recoveredStack2) select: (recoveredStack3).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) sortedList: (recoveredStack2).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) createARXmlModeGroupTypes: (recoveredStack1).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := (recoveredStack2) usedTypesTable.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := (recoveredStack2) allArtificialTypes.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) sortedListById: (recoveredStack2).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0) createARXmlScalarTypes: (recoveredStack1).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := (recoveredStack2) usedTypesTable.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := (recoveredStack2) allImplTemplates.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) sortedList: (recoveredStack2).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack0) createARXmlImplTemplates: (recoveredStack1).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := (recoveredStack2) usedTypesTable.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := (recoveredStack2) allArrayTypes.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := (recoveredStack1) sortedListById: (recoveredStack2).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack0) createARXmlArrayTypes: (recoveredStack1).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := (recoveredStack2) usedTypesTable.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := (recoveredStack2) allDistributionTypes.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := (recoveredStack1) sortedListById: (recoveredStack2).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack0) createARXmlDistributionTypes: (recoveredStack1).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 110.
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
            recoveredStack2 := (recoveredStack2) usedTypesTable.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := (recoveredStack2) allRecordTypeInterfaces.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack3 := [:block28106aa4Arg1 | 
    | block28106aa4Value0 block28106aa4Value1 |
    block28106aa4Value0 := block28106aa4Arg1.
    block28106aa4Value1 := (block28106aa4Value0) isMdlARRecordType.
    block28106aa4Value1
].
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack2 := (recoveredStack2) select: (recoveredStack3).
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := (recoveredStack1) sortedList: (recoveredStack2).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            (recoveredStack0) createARXmlRecordTypes: (recoveredStack1).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack2 := (recoveredStack2) usedTypesTable.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack2 := (recoveredStack2) allFormulas.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := (recoveredStack1) sortedList: (recoveredStack2).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            (recoveredStack0) createARXmlFormulas: (recoveredStack1).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack2 := (recoveredStack2) usedTypesTable.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack2 := (recoveredStack2) allDistributionTypes.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := (recoveredStack1) sortedListById: (recoveredStack2).
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            (recoveredStack0) createARXmlRecordLayouts: (recoveredStack1).
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204eedcc; bytecode file offset 0xdeb6c0"
!SGAbstractARXmlTypesGeneratorStrategy methodsFor: 'recovered'!
checkEnumerationValues: recoveredArg1 project: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := SGCgUsedTypeTable.
    recoveredValue1 := (recoveredValue0) create.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 recoveredBlock13Value3 recoveredBlock13Value4 |
    recoveredBlock13Value0 := recoveredBlock13Arg1.
    recoveredBlock13Value1 := (recoveredBlock13Value0) mdlClassType.
    recoveredBlock13Value2 := (recoveredBlock13Value1) enumerationMap.
    recoveredBlock13Value3 := [:recoveredBlock13Block25Arg1 | 
    | recoveredBlock13Block25Value0 recoveredBlock13Block25Value1 recoveredBlock13Block25Value2 recoveredBlock13Block25Value3 recoveredBlock13Block25Value4 recoveredBlock13Block25Value5 |
    recoveredBlock13Block25Value0 := recoveredLocal1.
    recoveredBlock13Block25Value1 := recoveredBlock13Block25Arg1.
    recoveredBlock13Block25Value2 := (recoveredBlock13Block25Value1) enumeratorName.
    recoveredBlock13Block25Value3 := [
    | recoveredBlock13Block25Block40Value0 recoveredBlock13Block25Block40Value1 recoveredBlock13Block25Block40Value2 recoveredBlock13Block25Block40Value3 |
    recoveredBlock13Block25Block40Value0 := Array.
    recoveredBlock13Block25Block40Value1 := recoveredBlock13Block25Arg1.
    recoveredBlock13Block25Block40Value2 := recoveredBlock13Arg1.
    recoveredBlock13Block25Block40Value3 := (recoveredBlock13Block25Block40Value0) with: (recoveredBlock13Block25Block40Value1) with: (recoveredBlock13Block25Block40Value2).
    recoveredBlock13Block25Block40Value3
].
    recoveredBlock13Block25Value4 := [:recoveredBlock13Block25Block57Arg1 | 
    | recoveredBlock13Block25Block57Local1 recoveredBlock13Block25Block57Local2 recoveredBlock13Block25Block57Local3 recoveredBlock13Block25Block57Local4 recoveredBlock13Block25Block57Value0 recoveredBlock13Block25Block57Value1 recoveredBlock13Block25Block57Value2 recoveredBlock13Block25Block57Value3 recoveredBlock13Block25Block57Value4 recoveredBlock13Block25Block57Value5 recoveredBlock13Block25Block57Value6 recoveredBlock13Block25Block57Value7 recoveredBlock13Block25Block57Value8 recoveredBlock13Block25Block57Value9 recoveredBlock13Block25Block57Value10 recoveredBlock13Block25Block57Value11 recoveredBlock13Block25Block57Value12 recoveredBlock13Block25Block57Value13 recoveredBlock13Block25Block57Value14 recoveredBlock13Block25Block57Value15 recoveredBlock13Block25Block57Value16 recoveredBlock13Block25Block57Value17 recoveredBlock13Block25Block57Value18 recoveredBlock13Block25Block57Value19 recoveredBlock13Block25Block57Value20 recoveredBlock13Block25Block57Value21 recoveredBlock13Block25Block57Value22 recoveredBlock13Block25Block57Value23 recoveredBlock13Block25Block57Value24 recoveredBlock13Block25Block57Value25 recoveredBlock13Block25Block57Value26 recoveredBlock13Block25Block57Value27 recoveredBlock13Block25Block57Value28 recoveredBlock13Block25Block57Value29 recoveredBlock13Block25Block57Value30 recoveredBlock13Block25Block57Value31 recoveredBlock13Block25Block57Value32 recoveredBlock13Block25Block57Value33 recoveredBlock13Block25Block57Value34 recoveredBlock13Block25Block57Value35 recoveredBlock13Block25Block57Value36 recoveredBlock13Block25Block57Value37 recoveredBlock13Block25Block57Value38 |
    recoveredBlock13Block25Block57Value0 := recoveredBlock13Block25Block57Arg1.
    recoveredBlock13Block25Block57Value1 := (recoveredBlock13Block25Block57Value0) at: (1).
    recoveredBlock13Block25Block57Value2 := (recoveredBlock13Block25Block57Value1) enumeratorCode.
    recoveredBlock13Block25Block57Local3 := recoveredBlock13Block25Block57Value2.
    recoveredBlock13Block25Block57Value3 := recoveredBlock13Block25Block57Arg1.
    recoveredBlock13Block25Block57Value4 := (recoveredBlock13Block25Block57Value3) at: (2).
    recoveredBlock13Block25Block57Local4 := recoveredBlock13Block25Block57Value4.
    recoveredBlock13Block25Block57Value5 := Array.
    recoveredBlock13Block25Block57Value6 := recoveredBlock13Block25Block57Local4.
    recoveredBlock13Block25Block57Value7 := (recoveredBlock13Block25Block57Value6) source.
    recoveredBlock13Block25Block57Value8 := recoveredBlock13Arg1.
    recoveredBlock13Block25Block57Value9 := (recoveredBlock13Block25Block57Value8) source.
    recoveredBlock13Block25Block57Value10 := (recoveredBlock13Block25Block57Value5) with: (recoveredBlock13Block25Block57Value7) with: (recoveredBlock13Block25Block57Value9).
    recoveredBlock13Block25Block57Local2 := recoveredBlock13Block25Block57Value10.
    recoveredBlock13Block25Block57Value11 := Array.
    recoveredBlock13Block25Block57Value12 := recoveredBlock13Block25Block57Local4.
    recoveredBlock13Block25Block57Value13 := recoveredBlock13Block25Block57Local3.
    recoveredBlock13Block25Block57Value14 := recoveredBlock13Block25Arg1.
    recoveredBlock13Block25Block57Value15 := (recoveredBlock13Block25Block57Value14) enumeratorName.
    recoveredBlock13Block25Block57Value16 := (recoveredBlock13Block25Block57Value12) errLabelEnumValue: (recoveredBlock13Block25Block57Value13) label: (recoveredBlock13Block25Block57Value15).
    recoveredBlock13Block25Block57Value17 := recoveredBlock13Arg1.
    recoveredBlock13Block25Block57Value18 := recoveredBlock13Block25Arg1.
    recoveredBlock13Block25Block57Value19 := (recoveredBlock13Block25Block57Value18) enumeratorCode.
    recoveredBlock13Block25Block57Value20 := recoveredBlock13Block25Arg1.
    recoveredBlock13Block25Block57Value21 := (recoveredBlock13Block25Block57Value20) enumeratorName.
    recoveredBlock13Block25Block57Value22 := (recoveredBlock13Block25Block57Value17) errLabelEnumValue: (recoveredBlock13Block25Block57Value19) label: (recoveredBlock13Block25Block57Value21).
    recoveredBlock13Block25Block57Value23 := (recoveredBlock13Block25Block57Value11) with: (recoveredBlock13Block25Block57Value16) with: (recoveredBlock13Block25Block57Value22).
    recoveredBlock13Block25Block57Local1 := recoveredBlock13Block25Block57Value23.
    recoveredBlock13Block25Block57Value24 := recoveredArg2.
    recoveredBlock13Block25Block57Value25 := recoveredBlock13Block25Arg1.
    recoveredBlock13Block25Block57Value26 := (recoveredBlock13Block25Block57Value25) enumeratorName.
    recoveredBlock13Block25Block57Value27 := recoveredBlock13Arg1.
    recoveredBlock13Block25Block57Value28 := (recoveredBlock13Block25Block57Value27) mdlClassType.
    recoveredBlock13Block25Block57Value29 := (recoveredBlock13Block25Block57Value28) errLabel.
    recoveredBlock13Block25Block57Value30 := recoveredBlock13Block25Block57Local4.
    recoveredBlock13Block25Block57Value31 := (recoveredBlock13Block25Block57Value30) mdlClassType.
    recoveredBlock13Block25Block57Value32 := (recoveredBlock13Block25Block57Value31) errLabel.
    recoveredBlock13Block25Block57Value33 := recoveredArg2.
    recoveredBlock13Block25Block57Value34 := (recoveredBlock13Block25Block57Value33) source.
    recoveredBlock13Block25Block57Value35 := recoveredBlock13Block25Block57Local2.
    recoveredBlock13Block25Block57Value36 := recoveredBlock13Block25Block57Local1.
    recoveredBlock13Block25Block57Value37 := (recoveredBlock13Block25Block57Value34) createMultiSource: (recoveredBlock13Block25Block57Value35) labels: (recoveredBlock13Block25Block57Value36).
    recoveredBlock13Block25Block57Value38 := (recoveredBlock13Block25Block57Value24) mdlSemErrNo: (19) with: (recoveredBlock13Block25Block57Value26) with: (recoveredBlock13Block25Block57Value29) with: (recoveredBlock13Block25Block57Value32) source: (recoveredBlock13Block25Block57Value37).
    recoveredBlock13Block25Block57Value38
].
    recoveredBlock13Block25Value5 := (recoveredBlock13Block25Value0) lookupEnumValue: (recoveredBlock13Block25Value2) ifAbsentPut: (recoveredBlock13Block25Value3) ifPresent: (recoveredBlock13Block25Value4).
    recoveredBlock13Block25Value5
].
    recoveredBlock13Value4 := (recoveredBlock13Value2) do: (recoveredBlock13Value3).
    recoveredBlock13Value4
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x204fff34; bytecode file offset 0xdfc850"
!SGAbstractARXmlTypesGeneratorStrategy methodsFor: 'recovered'!
arXmlAttributesForScalarType: recoveredArg1 typeNameDerivedType: recoveredArg2 typeNameScalar: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) reserveTempStream.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := 'zero included'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := ''.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) extraImplInfo.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) isZeroNotIncluded.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 33].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := 'zero not included'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileFormula.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := [:recoveredBlock38Arg1 | 
    | recoveredBlock38Value0 recoveredBlock38Value1 recoveredBlock38Value2 recoveredBlock38Value3 |
    recoveredBlock38Value0 := recoveredBlock38Arg1.
    recoveredBlock38Value1 := (recoveredBlock38Value0) unit.
    recoveredBlock38Value2 := [:recoveredBlock38Block47Arg1 | 
    | recoveredBlock38Block47Stack0 recoveredBlock38Block47Stack1 recoveredBlock38Block47Stack2 recoveredBlock38Block47Stack3 recoveredBlock38Block47PC recoveredBlock38Block47Step recoveredBlock38Block47Done recoveredBlock38Block47Result |
    recoveredBlock38Block47Stack0 := nil.
    recoveredBlock38Block47PC := 54.
    recoveredBlock38Block47Done := false.
    [recoveredBlock38Block47Done not] whileTrue: [
        recoveredBlock38Block47Step := recoveredBlock38Block47PC.
        recoveredBlock38Block47Step = 54 ifTrue: [
            recoveredBlock38Block47Stack1 := nil.
            recoveredBlock38Block47PC := 55.
        ].
        recoveredBlock38Block47Step = 55 ifTrue: [
            recoveredBlock38Block47Stack2 := recoveredBlock38Block47Arg1.
            recoveredBlock38Block47PC := 56.
        ].
        recoveredBlock38Block47Step = 56 ifTrue: [
            recoveredBlock38Block47Stack2 := (recoveredBlock38Block47Stack2) isEmpty.
            recoveredBlock38Block47PC := 58.
        ].
        recoveredBlock38Block47Step = 58 ifTrue: [
            (recoveredBlock38Block47Stack2) ifTrue: [recoveredBlock38Block47PC := 69] ifFalse: [recoveredBlock38Block47PC := 62].
        ].
        recoveredBlock38Block47Step = 62 ifTrue: [
            recoveredBlock38Block47PC := 63.
        ].
        recoveredBlock38Block47Step = 63 ifTrue: [
            recoveredBlock38Block47Stack1 := 'with unit'.
            recoveredBlock38Block47PC := 65.
        ].
        recoveredBlock38Block47Step = 65 ifTrue: [
            recoveredBlock38Block47Stack2 := recoveredBlock38Block47Stack1.
            recoveredBlock38Block47PC := 66.
        ].
        recoveredBlock38Block47Step = 66 ifTrue: [
            recoveredLocal2 := recoveredBlock38Block47Stack2.
            recoveredBlock38Block47PC := 69.
        ].
        recoveredBlock38Block47Step = 69 ifTrue: [
            recoveredBlock38Block47Result := recoveredBlock38Block47Stack1.
            recoveredBlock38Block47Done := true.
        ].
    ].
    recoveredBlock38Block47Result
].
    recoveredBlock38Value3 := (recoveredBlock38Value1) ifNotNil: (recoveredBlock38Value2).
    recoveredBlock38Value3
].
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := 'type derived from implementation type "'.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := '", formula "'.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileFormulaName.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := '" '.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := ' and implementation interval '.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack2 := (recoveredStack2) getImplInterval.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack2 := '('.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := ')'.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack2 := (recoveredStack2) uuid.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := (recoveredStack0) arAttributesShortName: (recoveredStack1) uuid: (recoveredStack2).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack1 := (recoveredStack1) contents.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            (recoveredStack0) comment: (recoveredStack1).
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            (recoveredStack0) releaseTempStream.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2052a48c; bytecode file offset 0xe26da0"
!SGAbstractARXmlTypesGeneratorStrategy methodsFor: 'recovered'!
createARXmlPackageNameForPhysicalUnit: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) settings.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) unit.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) encodePhysicalUnit: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) text.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) arPhysicalUnitNameFromComment: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 179].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) settings.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) arNamespaceSeparator.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) subStrings: (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 118] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) trimBlanks.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) settings.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := [:recoveredBlock75Arg1 | 
    | recoveredBlock75Value0 recoveredBlock75Value1 recoveredBlock75Value2 recoveredBlock75Value3 recoveredBlock75Value4 recoveredBlock75Value5 recoveredBlock75Value6 recoveredBlock75Value7 recoveredBlock75Value8 recoveredBlock75Value9 |
    recoveredBlock75Value0 := (self) settings.
    recoveredBlock75Value1 := recoveredBlock75Arg1.
    recoveredBlock75Value2 := recoveredLocal3.
    recoveredBlock75Value3 := ('correct AUTOSAR short name "') , (recoveredBlock75Value2).
    recoveredBlock75Value4 := (recoveredBlock75Value3) , ('" in formula "').
    recoveredBlock75Value5 := recoveredArg1.
    recoveredBlock75Value6 := (recoveredBlock75Value5) name.
    recoveredBlock75Value7 := (recoveredBlock75Value4) , (recoveredBlock75Value6).
    recoveredBlock75Value8 := (recoveredBlock75Value7) , ('"').
    recoveredBlock75Value9 := (recoveredBlock75Value0) mdlSemErrNo: (10) with: (recoveredBlock75Value1) with: (recoveredBlock75Value8) source: (nil).
    recoveredBlock75Value9
].
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack0) checkARXmlShortName: (recoveredStack1) ifFail: (recoveredStack2).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredPC := 179.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 130] ifFalse: [recoveredPC := 179].
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack0 := (recoveredStack0) settings.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack2 := [:recoveredBlock135Arg1 | 
    | recoveredBlock135Value0 recoveredBlock135Value1 recoveredBlock135Value2 recoveredBlock135Value3 recoveredBlock135Value4 recoveredBlock135Value5 recoveredBlock135Value6 recoveredBlock135Value7 recoveredBlock135Value8 recoveredBlock135Value9 |
    recoveredBlock135Value0 := (self) settings.
    recoveredBlock135Value1 := recoveredBlock135Arg1.
    recoveredBlock135Value2 := recoveredLocal2.
    recoveredBlock135Value3 := ('correct AUTOSAR package name "') , (recoveredBlock135Value2).
    recoveredBlock135Value4 := (recoveredBlock135Value3) , ('" in formula "').
    recoveredBlock135Value5 := recoveredArg1.
    recoveredBlock135Value6 := (recoveredBlock135Value5) name.
    recoveredBlock135Value7 := (recoveredBlock135Value4) , (recoveredBlock135Value6).
    recoveredBlock135Value8 := (recoveredBlock135Value7) , ('"').
    recoveredBlock135Value9 := (recoveredBlock135Value0) mdlSemErrNo: (10) with: (recoveredBlock135Value1) with: (recoveredBlock135Value8) source: (nil).
    recoveredBlock135Value9
].
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            (recoveredStack0) checkARXmlPackageName: (recoveredStack1) ifFail: (recoveredStack2).
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack0 := (recoveredStack0) settings.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack2 := (recoveredStack2) trimBlanks.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            (recoveredStack0) arTemplateParameter: (recoveredStack1) physicalUnit: (recoveredStack2).
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack0 := (recoveredStack0) settings.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack0 := (recoveredStack0) arPackagePhysicalUnit: (recoveredStack1).
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

