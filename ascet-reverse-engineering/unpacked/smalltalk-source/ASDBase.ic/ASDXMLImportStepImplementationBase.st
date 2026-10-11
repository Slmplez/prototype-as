"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20019b44; bytecode file offset 0x92209c"
!ASDXMLImportStepImplementationBase methodsFor: 'recovered'!
type
    ^'implementation'
! !

"ASDBase.ic method 0x2001ccac; bytecode file offset 0x92209c"
!ASDXMLImportStepImplementationBase methodsFor: 'recovered'!
description
    ^'Importing implementation'
! !

"ASDBase.ic method 0x2005b54c; bytecode file offset 0x957e10"
!ASDXMLImportStepImplementationBase methodsFor: 'recovered'!
saveSet: recoveredArg1 name: recoveredArg2 oid: recoveredArg3 isClassConfig: recoveredArg4 isDefault: recoveredArg5 notes: recoveredArg6
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x200c7f44; bytecode file offset 0x9c4800"
!ASDXMLImportStepImplementationBase methodsFor: 'recovered'!
setRescalingFormula: recoveredArg1 forElement: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := rescalingFormulas.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue1) xmlOID.
    recoveredValue3 := recoveredArg1.
    (recoveredValue0) at: (recoveredValue2) put: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x200eec60; bytecode file offset 0x9eb520"
!ASDXMLImportStepImplementationBase methodsFor: 'recovered'!
readEnumerationImplementationT: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := RBDataEnumeration.
    recoveredValue1 := (recoveredValue0) createDefault.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredLocal1.
    (self) readPrimitiveImplementationT: (recoveredValue2) impl: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x2011de08; bytecode file offset 0xa1a6d0"
!ASDXMLImportStepImplementationBase methodsFor: 'recovered'!
readIntervalT: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := RBInterval.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) getNZQR: ('min').
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) getNZQR: ('max').
    recoveredValue5 := (recoveredValue0) left: (recoveredValue2) right: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x20127b44; bytecode file offset 0xa2440c"
!ASDXMLImportStepImplementationBase methodsFor: 'recovered'!
readDimensionalReferenceImplementationT: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) readDimensionalImplementationT: (recoveredValue0).
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := recoveredLocal2.
    recoveredValue3 := (recoveredValue2) extraImplInfo.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) getString: ('memoryLocationReference').
    (recoveredValue3) memoryLocationReference: (recoveredValue5).
    recoveredValue6 := recoveredLocal2.
    ^recoveredValue6
! !

"ASDBase.ic method 0x2017bebc; bytecode file offset 0xa78788"
!ASDXMLImportStepImplementationBase methodsFor: 'recovered'!
readResourceImplementationT: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := RBDataEnumeration.
    recoveredValue1 := (recoveredValue0) createDefault.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredLocal1.
    (self) readPrimitiveImplementationT: (recoveredValue2) impl: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) getNMToken: ('name').
    (recoveredValue4) setPhysValue: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    ^recoveredValue7
! !

"ASDBase.ic method 0x20184340; bytecode file offset 0xa80c0c"
!ASDXMLImportStepImplementationBase methodsFor: 'recovered'!
addImplInfoFor: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := addImplInfos.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) xmlOID.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := [
    | block280d0584Value0 block280d0584Value1 block280d0584Value2 |
    block280d0584Value0 := ASDAdditionalImplInfo.
    block280d0584Value1 := (block280d0584Value0) new.
    block280d0584Value2 := (block280d0584Value1) initialize.
    block280d0584Value2
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsentPut: (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201cffd4; bytecode file offset 0xacc894"
!ASDXMLImportStepImplementationBase methodsFor: 'recovered'!
initOn: recoveredArg1 component: recoveredArg2 item: recoveredArg3 importPath: recoveredArg4 ext: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    recoveredValue4 := recoveredArg5.
    super initOn: (recoveredValue0) sgClass: (recoveredValue1) item: (recoveredValue2) importPath: (recoveredValue3) ext: (recoveredValue4).
    recoveredValue5 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Value0 recoveredBlock14Value1 |
    recoveredBlock14Value0 := recoveredBlock14Arg1.
    recoveredBlock14Value1 := (self) unexpectedElement: (recoveredBlock14Value0).
    recoveredBlock14Value1
].
    handler := recoveredValue5.
    ^self
! !

"ASDBase.ic method 0x202032b0; bytecode file offset 0xaffb7c"
!ASDXMLImportStepImplementationBase methodsFor: 'recovered'!
implTypeByName: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := ('Kli') == ('Call_71024').
    recoveredValue1 := (LookupTable new) elementCount: (10); keyArray: (#(nil nil 'real64' 'uint8' nil nil nil nil 'uint32' nil 'uint16' 'real32' 'bit' nil 'sint8' nil nil 'bool' nil 'sint32' nil 'sint16')); valueArray: (#(nil nil RBFloat RBInt8Unsigned nil nil nil nil RBInt32Unsigned nil RBInt16Unsigned RBFloat32 RBBit nil RBInt8Signed nil nil RBImplBoolean nil RBInt32Signed nil RBInt16Signed)); yourself.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [
    ^nil
].
    recoveredValue4 := (recoveredValue1) at: (recoveredValue2) ifAbsent: (recoveredValue3).
    recoveredValue5 := (recoveredValue4) new.
    recoveredValue6 := (recoveredValue5) initialize.
    ^recoveredValue6
! !

"ASDBase.ic method 0x20216c54; bytecode file offset 0xb1352c"
!ASDXMLImportStepImplementationBase methodsFor: 'recovered'!
readComplexReferenceImplementationT: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) readComplexImplementationT: (recoveredValue0).
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := element.
    recoveredValue3 := (self) addImplInfoFor: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) getString: ('memoryLocationReference').
    (recoveredValue4) memoryLocationReference: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (recoveredValue8) getEnum: ('cacheLocking') default: ('automatic').
    (self) setMemorySegment: (recoveredValue7) attr: (recoveredValue9).
    recoveredValue10 := recoveredLocal2.
    ^recoveredValue10
! !

"ASDBase.ic method 0x202d0f70; bytecode file offset 0xbcd84c"
!ASDXMLImportStepImplementationBase methodsFor: 'recovered'!
readRecordImplExternDeclarationT: recoveredArg1 impl: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock9Arg1 | 
    | recoveredBlock9Value0 recoveredBlock9Value1 recoveredBlock9Value2 recoveredBlock9Value3 recoveredBlock9Value4 recoveredBlock9Value5 recoveredBlock9Value6 recoveredBlock9Value7 recoveredBlock9Value8 recoveredBlock9Value9 |
    recoveredBlock9Value0 := recoveredArg2.
    recoveredBlock9Value1 := recoveredBlock9Arg1.
    recoveredBlock9Value2 := (recoveredBlock9Value1) getString: ('externalStructDeclarationMode').
    (recoveredBlock9Value0) externalStructDeclarationMode: (recoveredBlock9Value2).
    recoveredBlock9Value3 := recoveredArg2.
    recoveredBlock9Value4 := recoveredBlock9Arg1.
    recoveredBlock9Value5 := (recoveredBlock9Value4) getString: ('externalStructDeclarationName').
    (recoveredBlock9Value3) externalStructDeclarationName: (recoveredBlock9Value5).
    recoveredBlock9Value6 := recoveredArg2.
    recoveredBlock9Value7 := recoveredBlock9Arg1.
    recoveredBlock9Value8 := (recoveredBlock9Value7) getBoolean: ('productionCodeOnly') default: (false).
    recoveredBlock9Value9 := (recoveredBlock9Value6) productionCodeOnly: (recoveredBlock9Value8).
    recoveredBlock9Value9
].
    (recoveredValue0) optional: ('RecordImplExternDeclaration') do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x202dadc4; bytecode file offset 0xbd7690"
!ASDXMLImportStepImplementationBase methodsFor: 'recovered'!
classifyElements: recoveredArg1 instanceEls: recoveredArg2 classEls: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7Stack4 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
    recoveredBlock7Stack0 := self.
    recoveredBlock7PC := 14.
    recoveredBlock7Done := false.
    [recoveredBlock7Done not] whileTrue: [
        recoveredBlock7Step := recoveredBlock7PC.
        recoveredBlock7Step = 14 ifTrue: [
            recoveredBlock7Stack1 := nil.
            recoveredBlock7PC := 15.
        ].
        recoveredBlock7Step = 15 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Arg1.
            recoveredBlock7PC := 16.
        ].
        recoveredBlock7Step = 16 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) isImported.
            recoveredBlock7PC := 17.
        ].
        recoveredBlock7Step = 17 ifTrue: [
            (recoveredBlock7Stack2) ifTrue: [recoveredBlock7PC := 46] ifFalse: [recoveredBlock7PC := 20].
        ].
        recoveredBlock7Step = 20 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Arg1.
            recoveredBlock7PC := 21.
        ].
        recoveredBlock7Step = 21 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) isConstant.
            recoveredBlock7PC := 22.
        ].
        recoveredBlock7Step = 22 ifTrue: [
            (recoveredBlock7Stack2) ifTrue: [recoveredBlock7PC := 46] ifFalse: [recoveredBlock7PC := 26].
        ].
        recoveredBlock7Step = 26 ifTrue: [
            recoveredBlock7PC := 27.
        ].
        recoveredBlock7Step = 27 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg1.
            recoveredBlock7PC := 28.
        ].
        recoveredBlock7Step = 28 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) isExported.
            recoveredBlock7PC := 29.
        ].
        recoveredBlock7Step = 29 ifTrue: [
            (recoveredBlock7Stack1) ifTrue: [recoveredBlock7PC := 32] ifFalse: [recoveredBlock7PC := 38].
        ].
        recoveredBlock7Step = 32 ifTrue: [
            recoveredBlock7Stack1 := recoveredArg3.
            recoveredBlock7PC := 35.
        ].
        recoveredBlock7Step = 35 ifTrue: [
            recoveredBlock7PC := 41.
        ].
        recoveredBlock7Step = 38 ifTrue: [
            recoveredBlock7Stack1 := recoveredArg2.
            recoveredBlock7PC := 41.
        ].
        recoveredBlock7Step = 41 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Arg1.
            recoveredBlock7PC := 42.
        ].
        recoveredBlock7Step = 42 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) aliasName.
            recoveredBlock7PC := 43.
        ].
        recoveredBlock7Step = 43 ifTrue: [
            recoveredBlock7Stack3 := recoveredBlock7Arg1.
            recoveredBlock7PC := 44.
        ].
        recoveredBlock7Step = 44 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) at: (recoveredBlock7Stack2) put: (recoveredBlock7Stack3).
            recoveredBlock7PC := 46.
        ].
        recoveredBlock7Step = 46 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack1.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x202fa190; bytecode file offset 0xbf6a6c"
!ASDXMLImportStepImplementationBase methodsFor: 'recovered'!
readLogicImplementationT: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := RBDataBoolean.
    recoveredValue1 := (recoveredValue0) createDefault.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredLocal2.
    (self) readPrimitiveImplementationT: (recoveredValue2) impl: (recoveredValue3).
    recoveredValue4 := ('Kli') == ('Call_71024').
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) getString: ('implType').
    recoveredValue7 := (self) implTypeByName: (recoveredValue6).
    recoveredValue8 := [:recoveredBlock34Arg1 | 
    | recoveredBlock34Value0 recoveredBlock34Value1 recoveredBlock34Value2 |
    recoveredBlock34Value0 := recoveredLocal2.
    recoveredBlock34Value1 := recoveredBlock34Arg1.
    recoveredBlock34Value2 := (recoveredBlock34Value0) setImplType: (recoveredBlock34Value1).
    recoveredBlock34Value2
].
    (recoveredValue7) ifNotNil: (recoveredValue8).
    recoveredValue9 := recoveredLocal2.
    ^recoveredValue9
! !

"ASDBase.ic method 0x20327eac; bytecode file offset 0xc24778"
!ASDXMLImportStepImplementationBase methodsFor: 'recovered'!
readImplementationEntryT: recoveredArg1 impl: recoveredArg2 customerData: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock9Arg1 | 
    | recoveredBlock9Value0 recoveredBlock9Value1 recoveredBlock9Value2 recoveredBlock9Value3 |
    recoveredBlock9Value0 := recoveredBlock9Arg1.
    recoveredBlock9Value1 := recoveredArg2.
    recoveredBlock9Value2 := (self) readImplementationVariantT: (recoveredBlock9Value0) impl: (recoveredBlock9Value1).
    recoveredBlock9Value3 := recoveredBlock9Value2.
    recoveredLocal1 := recoveredBlock9Value3.
    recoveredBlock9Value2
].
    (recoveredValue0) multiple: ('ImplementationVariant') do: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [:recoveredBlock32Arg1 | 
    | recoveredBlock32Value0 recoveredBlock32Value1 recoveredBlock32Value2 recoveredBlock32Value3 |
    recoveredBlock32Value0 := recoveredArg3.
    recoveredBlock32Value1 := recoveredLocal1.
    recoveredBlock32Value2 := recoveredBlock32Arg1.
    recoveredBlock32Value3 := (recoveredBlock32Value0) at: (recoveredBlock32Value1) put: (recoveredBlock32Value2).
    recoveredBlock32Value3
].
    (self) readCustomerDatas: (recoveredValue2) storeBlock: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := handler.
    (recoveredValue4) doneIfNot: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x20353944; bytecode file offset 0xc50234"
!ASDXMLImportStepImplementationBase methodsFor: 'recovered'!
readNumericImplementationBaseT: recoveredArg1 impl: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            (recoveredStack0) readPrimitiveImplementationT: (recoveredStack1) impl: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'Call_71157'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 'ignoreImplementationCast'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) getBoolean: (recoveredStack1) default: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 29].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) extraImplInfo.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) setNoImplementation.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := 'Call_309253'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) extraImplInfo.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := 'limitAssignments'.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) getBoolean: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) useLimiter: (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) extraImplInfo.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := 'limitOverflow'.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := (recoveredStack2) getString: (recoveredStack3).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack4 := 'isLimitOverflow'.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := (recoveredStack3) getBoolean: (recoveredStack4) default: (recoveredStack5).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) setLimitOverflow: (recoveredStack1) value: (recoveredStack2) isLimitOverflow: (recoveredStack3).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2035b84c; bytecode file offset 0xc58120"
!ASDXMLImportStepImplementationBase methodsFor: 'recovered'!
setLimitOverflow: recoveredArg1 value: recoveredArg2 isLimitOverflow: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := 'none'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) setAutomaticResolution.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 65.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) setLimitOverflow.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) clearLimitOverflow.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := 'keep'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) setKeepResolution.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredPC := 65.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := 'automatic'.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack1) setAutomaticResolution.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredPC := 65.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack1) setReduceResolution.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20364590; bytecode file offset 0xc60e94"
!ASDXMLImportStepImplementationBase methodsFor: 'recovered'!
readMethodImplementationT: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SGMethodImplementation.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlInit.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := 'memoryLocation'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) getString: (recoveredStack3).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) memoryClass: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := 'cacheLocking'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack4 := 'automatic'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) getEnum: (recoveredStack3) default: (recoveredStack4).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) setMemorySegment: (recoveredStack1) attr: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := 'inlining'.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack4 := 'automatic'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) getEnum: (recoveredStack3) default: (recoveredStack4).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) setInliningMode: (recoveredStack1) attr: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := 'useFPU'.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) getBoolean: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) setUseFPU.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredPC := 55.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) clearUseFPU.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := 'symbol'.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := ''.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) symbol: (recoveredStack1).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203a8c18; bytecode file offset 0xca54fc"
!ASDXMLImportStepImplementationBase methodsFor: 'recovered'!
readDimensionalImplementationT: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := (self) readOneDImplementationT: (recoveredBlock7Value0).
    recoveredBlock7Value1
].
    recoveredValue2 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Value0 recoveredBlock19Value1 |
    recoveredBlock19Value0 := recoveredBlock19Arg1.
    recoveredBlock19Value1 := (self) readTwoDImplementationT: (recoveredBlock19Value0).
    recoveredBlock19Value1
].
    recoveredValue3 := [:recoveredBlock31Arg1 | 
    | recoveredBlock31Value0 recoveredBlock31Value1 recoveredBlock31Value2 |
    recoveredBlock31Value0 := recoveredBlock31Arg1.
    recoveredBlock31Value1 := RBDataVector.
    recoveredBlock31Value2 := (self) readScalarImplementationT: (recoveredBlock31Value0) implClass: (recoveredBlock31Value1).
    recoveredBlock31Value2
].
    recoveredValue4 := [:recoveredBlock46Arg1 | 
    | recoveredBlock46Value0 recoveredBlock46Value1 recoveredBlock46Value2 |
    recoveredBlock46Value0 := recoveredBlock46Arg1.
    recoveredBlock46Value1 := RBDataMatrix.
    recoveredBlock46Value2 := (self) readScalarImplementationT: (recoveredBlock46Value0) implClass: (recoveredBlock46Value1).
    recoveredBlock46Value2
].
    recoveredValue5 := [:recoveredBlock60Arg1 | 
    | recoveredBlock60Value0 recoveredBlock60Value1 recoveredBlock60Value2 |
    recoveredBlock60Value0 := recoveredBlock60Arg1.
    recoveredBlock60Value1 := RBDiscreteDistribution.
    recoveredBlock60Value2 := (self) readScalarImplementationT: (recoveredBlock60Value0) implClass: (recoveredBlock60Value1).
    recoveredBlock60Value2
].
    recoveredValue6 := handler.
    recoveredValue7 := (recoveredValue0) choice: ('OneDImplementation') do: (recoveredValue1) choice: ('TwoDImplementation') do: (recoveredValue2) choice: ('ArrayImplementation') do: (recoveredValue3) choice: ('MatrixImplementation') do: (recoveredValue4) choice: ('DistributionImplementation') do: (recoveredValue5) ifNot: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x203b5580; bytecode file offset 0xcb1e58"
!ASDXMLImportStepImplementationBase methodsFor: 'recovered'!
setMemorySegment: recoveredArg1 attr: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := [
    | recoveredBlock4Value0 |
    recoveredBlock4Value0 := recoveredArg2.
    recoveredBlock4Value0
].
    recoveredValue1 := [
    | recoveredBlock16Value0 recoveredBlock16Value1 recoveredBlock16Value2 |
    recoveredBlock16Value0 := recoveredArg1.
    recoveredBlock16Value1 := TGPlatform.
    recoveredBlock16Value2 := (recoveredBlock16Value1) memorySegmentIDAutomatic.
    (recoveredBlock16Value0) memorySegmentID: (recoveredBlock16Value2).
    ^self
].
    recoveredValue2 := [
    | recoveredBlock33Value0 recoveredBlock33Value1 recoveredBlock33Value2 |
    recoveredBlock33Value0 := recoveredArg1.
    recoveredBlock33Value1 := TGPlatform.
    recoveredBlock33Value2 := (recoveredBlock33Value1) memorySegmentIDOn.
    (recoveredBlock33Value0) memorySegmentID: (recoveredBlock33Value2).
    ^self
].
    recoveredValue3 := [
    | recoveredBlock52Value0 recoveredBlock52Value1 recoveredBlock52Value2 |
    recoveredBlock52Value0 := recoveredArg1.
    recoveredBlock52Value1 := TGPlatform.
    recoveredBlock52Value2 := (recoveredBlock52Value1) memorySegmentIDOff.
    (recoveredBlock52Value0) memorySegmentID: (recoveredBlock52Value2).
    ^self
].
    (recoveredValue0) case: ('automatic') do: (recoveredValue1) case: ('on') do: (recoveredValue2) case: ('off') do: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) memorySegmentID: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x203da35c; bytecode file offset 0xcd6c40"
!ASDXMLImportStepImplementationBase methodsFor: 'recovered'!
implProxy: recoveredArg1 for: recoveredArg2 nameAttr: recoveredArg3 oidAttr: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'todo'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) notNil.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredArg4.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) getOID: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) refItem.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) refOID.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := controller.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := (recoveredStack2) refOID.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) globalByOID: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := controller.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) makeMappedDBProxy: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) getNMToken: (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) refPath.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) itemForPath: (recoveredStack1) oid: (recoveredStack2).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) xmlImplByName: (recoveredStack1).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := controller.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlOID.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) makeDBProxy: (recoveredStack1).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204026f0; bytecode file offset 0xcfefcc"
!ASDXMLImportStepImplementationBase methodsFor: 'recovered'!
setInliningMode: recoveredArg1 attr: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := [
    | recoveredBlock4Value0 |
    recoveredBlock4Value0 := recoveredArg2.
    recoveredBlock4Value0
].
    recoveredValue1 := [
    | recoveredBlock16Value0 recoveredBlock16Value1 recoveredBlock16Value2 |
    recoveredBlock16Value0 := recoveredArg1.
    recoveredBlock16Value1 := recoveredArg1.
    recoveredBlock16Value2 := (recoveredBlock16Value1) inliningSettingNone.
    (recoveredBlock16Value0) inlining: (recoveredBlock16Value2).
    ^self
].
    recoveredValue2 := [
    | recoveredBlock34Value0 recoveredBlock34Value1 recoveredBlock34Value2 |
    recoveredBlock34Value0 := recoveredArg1.
    recoveredBlock34Value1 := recoveredArg1.
    recoveredBlock34Value2 := (recoveredBlock34Value1) inliningSettingAutomatic.
    (recoveredBlock34Value0) inlining: (recoveredBlock34Value2).
    ^self
].
    recoveredValue3 := [
    | recoveredBlock53Value0 recoveredBlock53Value1 recoveredBlock53Value2 |
    recoveredBlock53Value0 := recoveredArg1.
    recoveredBlock53Value1 := recoveredArg1.
    recoveredBlock53Value2 := (recoveredBlock53Value1) inliningSettingPreprocessorEvaluation.
    (recoveredBlock53Value0) inlining: (recoveredBlock53Value2).
    ^self
].
    recoveredValue4 := [
    | recoveredBlock73Value0 recoveredBlock73Value1 recoveredBlock73Value2 |
    recoveredBlock73Value0 := recoveredArg1.
    recoveredBlock73Value1 := recoveredArg1.
    recoveredBlock73Value2 := (recoveredBlock73Value1) inliningSettingCompiler.
    (recoveredBlock73Value0) inlining: (recoveredBlock73Value2).
    ^self
].
    (recoveredValue0) case: ('none') do: (recoveredValue1) case: ('automatic') do: (recoveredValue2) case: ('preprocessor') do: (recoveredValue3) case: ('compiler') do: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x2040ffb4; bytecode file offset 0xd0c898"
!ASDXMLImportStepImplementationBase methodsFor: 'recovered'!
readScalarImplementationT: recoveredArg1 implClass: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock9Arg1 | 
    | recoveredBlock9Value0 recoveredBlock9Value1 |
    recoveredBlock9Value0 := recoveredBlock9Arg1.
    recoveredBlock9Value1 := (self) readEnumerationImplementationT: (recoveredBlock9Value0).
    recoveredBlock9Value1
].
    recoveredValue2 := [:recoveredBlock21Arg1 | 
    | recoveredBlock21Value0 recoveredBlock21Value1 recoveredBlock21Value2 |
    recoveredBlock21Value0 := recoveredBlock21Arg1.
    recoveredBlock21Value1 := recoveredArg2.
    recoveredBlock21Value2 := (self) readNumericImplementationT: (recoveredBlock21Value0) implClass: (recoveredBlock21Value1).
    recoveredBlock21Value2
].
    recoveredValue3 := [:recoveredBlock37Arg1 | 
    | recoveredBlock37Value0 recoveredBlock37Value1 recoveredBlock37Value2 |
    recoveredBlock37Value0 := recoveredBlock37Arg1.
    recoveredBlock37Value1 := recoveredArg2.
    recoveredBlock37Value2 := (self) readNumericImplementationT: (recoveredBlock37Value0) implClass: (recoveredBlock37Value1).
    recoveredBlock37Value2
].
    recoveredValue4 := [:recoveredBlock53Arg1 | 
    | recoveredBlock53Value0 recoveredBlock53Value1 |
    recoveredBlock53Value0 := recoveredBlock53Arg1.
    recoveredBlock53Value1 := (self) readLogicImplementationT: (recoveredBlock53Value0).
    recoveredBlock53Value1
].
    recoveredValue5 := [:recoveredBlock66Arg1 | 
    | recoveredBlock66Value0 recoveredBlock66Value1 recoveredBlock66Value2 |
    recoveredBlock66Value0 := recoveredBlock66Arg1.
    recoveredBlock66Value1 := recoveredArg2.
    recoveredBlock66Value2 := (self) readTemplateImplementationT: (recoveredBlock66Value0) implClass: (recoveredBlock66Value1).
    recoveredBlock66Value2
].
    recoveredValue6 := [:recoveredBlock81Arg1 | 
    | recoveredBlock81Value0 recoveredBlock81Value1 |
    recoveredBlock81Value0 := recoveredBlock81Arg1.
    recoveredBlock81Value1 := (self) readResourceImplementationT: (recoveredBlock81Value0).
    recoveredBlock81Value1
].
    recoveredValue7 := handler.
    recoveredValue8 := (recoveredValue0) choice: ('EnumerationImplementation') do: (recoveredValue1) choice: ('NumericImplementation') do: (recoveredValue2) choice: ('ImplementationCastImplementation') do: (recoveredValue3) choice: ('LogicImplementation') do: (recoveredValue4) choice: ('TemplateImplementation') do: (recoveredValue5) choice: ('ResourceImplementation') do: (recoveredValue6) ifNot: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x2044a77c; bytecode file offset 0xd47080"
!ASDXMLImportStepImplementationBase methodsFor: 'recovered'!
readOneDImplementationT: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_71019'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := element.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) thing.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClass.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) isGroupCharTable.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := RBOneDGroupCharTable.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDefault.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredPC := 37.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := RBOneDCharTable.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDefault.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := 'XAxis'.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := [:recoveredBlock42Arg1 | 
    | recoveredBlock42Local1 recoveredBlock42Value0 recoveredBlock42Value1 recoveredBlock42Value2 recoveredBlock42Value3 recoveredBlock42Value4 recoveredBlock42Value5 recoveredBlock42Value6 recoveredBlock42Value7 recoveredBlock42Value8 recoveredBlock42Value9 recoveredBlock42Value10 |
    recoveredBlock42Value0 := recoveredBlock42Arg1.
    recoveredBlock42Value1 := RBDiscreteDistribution.
    recoveredBlock42Value2 := (self) readScalarImplementationT: (recoveredBlock42Value0) implClass: (recoveredBlock42Value1).
    recoveredBlock42Local1 := recoveredBlock42Value2.
    recoveredBlock42Value3 := recoveredBlock42Local1.
    recoveredBlock42Value4 := element.
    recoveredBlock42Value5 := (recoveredBlock42Value4) thing.
    recoveredBlock42Value6 := (recoveredBlock42Value5) sgClass.
    recoveredBlock42Value7 := (recoveredBlock42Value6) maxSize.
    (recoveredBlock42Value3) maxSize: (recoveredBlock42Value7).
    recoveredBlock42Value8 := recoveredLocal1.
    recoveredBlock42Value9 := recoveredBlock42Local1.
    recoveredBlock42Value10 := (recoveredBlock42Value8) xDistribution: (recoveredBlock42Value9).
    recoveredBlock42Value10
].
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack1) optional: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := 'TableValues'.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack3 := [:recoveredBlock77Arg1 | 
    | recoveredBlock77Value0 recoveredBlock77Value1 recoveredBlock77Value2 recoveredBlock77Value3 recoveredBlock77Value4 |
    recoveredBlock77Value0 := recoveredLocal1.
    recoveredBlock77Value1 := recoveredBlock77Arg1.
    recoveredBlock77Value2 := RBDataVector.
    recoveredBlock77Value3 := (self) readScalarImplementationT: (recoveredBlock77Value1) implClass: (recoveredBlock77Value2).
    recoveredBlock77Value4 := (recoveredBlock77Value0) values: (recoveredBlock77Value3).
    recoveredBlock77Value4
].
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack4 := handler.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack1) required: (recoveredStack2) do: (recoveredStack3) ifNot: (recoveredStack4).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := handler.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack1) doneIfNot: (recoveredStack2).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2048e8c0; bytecode file offset 0xd8b1f0"
!ASDXMLImportStepImplementationBase methodsFor: 'recovered'!
readTemplateImplementationT: recoveredArg1 implClass: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) createDefault.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) readPrimitiveImplementationT: (recoveredStack1) impl: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := 'Call_89600'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) physicsRepresentation.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := element.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) thing.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClass.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) createImplementation.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) getPhysType.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) setType: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) implementationRepresentation.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := element.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) thing.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClass.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) createImplementation.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) getImplType.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) setType: (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := 'Call_74282'.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) extraImplInfo.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := 'limitOverflow'.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := (recoveredStack2) getString: (recoveredStack3).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack4 := 'isLimitOverflow'.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack3 := (recoveredStack3) getBoolean: (recoveredStack4) default: (recoveredStack5).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) setLimitOverflow: (recoveredStack1) value: (recoveredStack2) isLimitOverflow: (recoveredStack3).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := 'Call_2009403499'.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := 'ignoreImplementationCast'.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) getBoolean: (recoveredStack1) default: (recoveredStack2).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := (recoveredStack0) extraImplInfo.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack0) setNoImplementation.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredPC := 99.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) extraImplInfo.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack0) clearNoImplementation.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := 'Call_309253'.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := (recoveredStack0) extraImplInfo.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := 'limitAssignments'.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := (recoveredStack1) getBoolean: (recoveredStack2).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack0) useLimiter: (recoveredStack1).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := (recoveredStack0) extraImplInfo.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := 'refersTo'.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := (recoveredStack1) getNMToken: (recoveredStack2).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack0) referencedImplTypeName: (recoveredStack1).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := (recoveredStack0) extraImplInfo.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            (recoveredStack0) setImplementationType.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204ab254; bytecode file offset 0xda7be0"
!ASDXMLImportStepImplementationBase methodsFor: 'recovered'!
performStep
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := protoClass.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isImplMissing.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := SGClassImplConfig.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := protoClass.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := (recoveredStack3) xmlClassImpl.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) makeDefaultConfig: (recoveredStack2) protoConfig: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := SGImplConfiguration.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := protoClass.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack4 := 'Default'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := (recoveredStack3) xmlImplByName: (recoveredStack4).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) makeDefaultConfig: (recoveredStack2) protoConfig: (recoveredStack3).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := sgClass.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) xmlSetImpls: (recoveredStack2) default: (recoveredStack3) classImpl: (recoveredStack4).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredPC := 123.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock50Local1 recoveredBlock50Value0 recoveredBlock50Value1 recoveredBlock50Value2 recoveredBlock50Value3 recoveredBlock50Value4 |
    recoveredBlock50Value0 := extension.
    recoveredBlock50Value1 := ('.implementation.') , (recoveredBlock50Value0).
    recoveredBlock50Value2 := (self) readDOMTree: (recoveredBlock50Value1) schema: ('component_implementation.xsd').
    recoveredBlock50Local1 := recoveredBlock50Value2.
    recoveredBlock50Value3 := recoveredBlock50Local1.
    recoveredBlock50Value4 := (self) readImplementations: (recoveredBlock50Value3).
    recoveredBlock50Value4
].
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := ExError.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack3 := [:recoveredBlock74Arg1 | 
    | recoveredBlock74Stack0 recoveredBlock74Stack1 recoveredBlock74Stack2 recoveredBlock74Stack3 recoveredBlock74Stack4 recoveredBlock74Stack5 recoveredBlock74Stack6 recoveredBlock74PC recoveredBlock74Step recoveredBlock74Done recoveredBlock74Result |
    recoveredBlock74Stack0 := self.
    recoveredBlock74PC := 80.
    recoveredBlock74Done := false.
    [recoveredBlock74Done not] whileTrue: [
        recoveredBlock74Step := recoveredBlock74PC.
        recoveredBlock74Step = 80 ifTrue: [
            recoveredBlock74Stack1 := issue.
            recoveredBlock74PC := 82.
        ].
        recoveredBlock74Step = 82 ifTrue: [
            (recoveredBlock74Stack1 == nil) ifTrue: [recoveredBlock74PC := 96] ifFalse: [recoveredBlock74PC := 86].
        ].
        recoveredBlock74Step = 86 ifTrue: [
            recoveredBlock74Stack1 := controller.
            recoveredBlock74PC := 88.
        ].
        recoveredBlock74Step = 88 ifTrue: [
            recoveredBlock74Stack2 := issue.
            recoveredBlock74PC := 90.
        ].
        recoveredBlock74Step = 90 ifTrue: [
            (recoveredBlock74Stack1) addIssue: (recoveredBlock74Stack2).
            recoveredBlock74PC := 92.
        ].
        recoveredBlock74Step = 92 ifTrue: [
            recoveredBlock74PC := 116.
        ].
        recoveredBlock74Step = 96 ifTrue: [
            recoveredBlock74Stack1 := Util.
            recoveredBlock74PC := 98.
        ].
        recoveredBlock74Step = 98 ifTrue: [
            recoveredBlock74Stack2 := recoveredBlock74Arg1.
            recoveredBlock74PC := 99.
        ].
        recoveredBlock74Step = 99 ifTrue: [
            (recoveredBlock74Stack1) writeStackTrace: (recoveredBlock74Stack2).
            recoveredBlock74PC := 101.
        ].
        recoveredBlock74Step = 101 ifTrue: [
            recoveredBlock74Stack1 := controller.
            recoveredBlock74PC := 103.
        ].
        recoveredBlock74Step = 103 ifTrue: [
            recoveredBlock74Stack2 := ASDXMLImportIssueUnhandledException.
            recoveredBlock74PC := 105.
        ].
        recoveredBlock74Step = 105 ifTrue: [
            recoveredBlock74Stack2 := (recoveredBlock74Stack2) new.
            recoveredBlock74PC := 107.
        ].
        recoveredBlock74Step = 107 ifTrue: [
            recoveredBlock74Stack3 := protoClass.
            recoveredBlock74PC := 109.
        ].
        recoveredBlock74Step = 109 ifTrue: [
            recoveredBlock74Stack4 := recoveredBlock74Arg1.
            recoveredBlock74PC := 110.
        ].
        recoveredBlock74Step = 110 ifTrue: [
            recoveredBlock74Stack5 := false.
            recoveredBlock74PC := 111.
        ].
        recoveredBlock74Step = 111 ifTrue: [
            recoveredBlock74Stack2 := (recoveredBlock74Stack2) initOn: (recoveredBlock74Stack3) exception: (recoveredBlock74Stack4) fatal: (recoveredBlock74Stack5).
            recoveredBlock74PC := 114.
        ].
        recoveredBlock74Step = 114 ifTrue: [
            (recoveredBlock74Stack1) addIssue: (recoveredBlock74Stack2).
            recoveredBlock74PC := 116.
        ].
        recoveredBlock74Step = 116 ifTrue: [
            recoveredBlock74Stack1 := recoveredBlock74Arg1.
            recoveredBlock74PC := 117.
        ].
        recoveredBlock74Step = 117 ifTrue: [
            recoveredBlock74Stack2 := nil.
            recoveredBlock74PC := 118.
        ].
        recoveredBlock74Step = 118 ifTrue: [
            recoveredBlock74Stack1 := (recoveredBlock74Stack1) exitWith: (recoveredBlock74Stack2).
            recoveredBlock74PC := 120.
        ].
        recoveredBlock74Step = 120 ifTrue: [
            recoveredBlock74Result := recoveredBlock74Stack1.
            recoveredBlock74Done := true.
        ].
    ].
    recoveredBlock74Result
].
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack1) when: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := ASDXMLImportStepData.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack2 := controller.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack3 := sgClass.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack4 := protoClass.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack5 := importPath.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack6 := extension.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := (recoveredStack1) initOn: (recoveredStack2) component: (recoveredStack3) item: (recoveredStack4) importPath: (recoveredStack5) ext: (recoveredStack6).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x204b0ae0; bytecode file offset 0xdad3e0"
!ASDXMLImportStepImplementationBase methodsFor: 'recovered'!
readComplexImplementationT: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := element.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := 'implementationName'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack4 := 'implementationOID'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) implProxy: (recoveredStack1) for: (recoveredStack2) nameAttr: (recoveredStack3) oidAttr: (recoveredStack4).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := element.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) addImplInfoFor: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := 'memoryLocationInstance'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) getString: (recoveredStack1) default: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := [:recoveredBlock43Arg1 | 
    | recoveredBlock43Value0 recoveredBlock43Value1 recoveredBlock43Value2 |
    recoveredBlock43Value0 := recoveredLocal1.
    recoveredBlock43Value1 := recoveredBlock43Arg1.
    recoveredBlock43Value2 := (recoveredBlock43Value0) memoryLocationInstance: (recoveredBlock43Value1).
    recoveredBlock43Value2
].
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack3 := 'cacheLocking'.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack4 := 'automatic'.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := (recoveredStack2) getEnum: (recoveredStack3) default: (recoveredStack4).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0) setMemorySegment: (recoveredStack1) attr: (recoveredStack2).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := 'rescalingFormula'.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := (recoveredStack0) getString: (recoveredStack1) default: (recoveredStack2).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := [:recoveredBlock82Arg1 | 
    | recoveredBlock82Value0 recoveredBlock82Value1 recoveredBlock82Value2 |
    recoveredBlock82Value0 := recoveredBlock82Arg1.
    recoveredBlock82Value1 := element.
    recoveredBlock82Value2 := (self) setRescalingFormula: (recoveredBlock82Value0) forElement: (recoveredBlock82Value1).
    recoveredBlock82Value2
].
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := element.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := (recoveredStack0) thing.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 116] ifFalse: [recoveredPC := 106].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := element.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := (recoveredStack0) thing.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRecord.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 116] ifFalse: [recoveredPC := 139].
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := 'policy'.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := (recoveredStack0) getString: (recoveredStack1) default: (recoveredStack2).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := [:recoveredBlock124Arg1 | 
    | recoveredBlock124Value0 recoveredBlock124Value1 recoveredBlock124Value2 |
    recoveredBlock124Value0 := recoveredLocal1.
    recoveredBlock124Value1 := recoveredBlock124Arg1.
    recoveredBlock124Value2 := (recoveredBlock124Value0) policy: (recoveredBlock124Value1).
    recoveredBlock124Value2
].
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204b7a0c; bytecode file offset 0xdb432c"
!ASDXMLImportStepImplementationBase methodsFor: 'recovered'!
readPrimitiveImplementationT: recoveredArg1 impl: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) extraImplInfo.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := 'memoryLocationInstance'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) getString: (recoveredStack3).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) memoryLocationInstance: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := RBDiscreteDistribution.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) isKindOf: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 47].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) extraImplInfo.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := 'memoryLocationSearchResult'.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack4 := (recoveredStack4) extraImplInfo.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack4 := (recoveredStack4) class.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack4 := (recoveredStack4) memoryLocationSearchResultDefault.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := (recoveredStack2) getString: (recoveredStack3) default: (recoveredStack4).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) memoryLocationSearchResult: (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) extraImplInfo.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := 'cacheLocking'.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack4 := 'automatic'.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := (recoveredStack2) getEnum: (recoveredStack3) default: (recoveredStack4).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) setMemorySegment: (recoveredStack1) attr: (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := 'policy'.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) getString: (recoveredStack1) default: (recoveredStack2).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := [:recoveredBlock70Arg1 | 
    | recoveredBlock70Value0 recoveredBlock70Value1 recoveredBlock70Value2 recoveredBlock70Value3 |
    recoveredBlock70Value0 := recoveredArg2.
    recoveredBlock70Value1 := (recoveredBlock70Value0) extraImplInfo.
    recoveredBlock70Value2 := recoveredBlock70Arg1.
    recoveredBlock70Value3 := (recoveredBlock70Value1) policy: (recoveredBlock70Value2).
    recoveredBlock70Value3
].
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := 'rescaled'.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := (recoveredStack0) getBoolean: (recoveredStack1) default: (recoveredStack2).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := [:recoveredBlock94Arg1 | 
    | recoveredBlock94Stack0 recoveredBlock94Stack1 recoveredBlock94Stack2 recoveredBlock94PC recoveredBlock94Step recoveredBlock94Done recoveredBlock94Result |
    recoveredBlock94Stack0 := self.
    recoveredBlock94PC := 100.
    recoveredBlock94Done := false.
    [recoveredBlock94Done not] whileTrue: [
        recoveredBlock94Step := recoveredBlock94PC.
        recoveredBlock94Step = 100 ifTrue: [
            recoveredBlock94Stack1 := recoveredBlock94Arg1.
            recoveredBlock94PC := 101.
        ].
        recoveredBlock94Step = 101 ifTrue: [
            (recoveredBlock94Stack1) ifTrue: [recoveredBlock94PC := 104] ifFalse: [recoveredBlock94PC := 114].
        ].
        recoveredBlock94Step = 104 ifTrue: [
            recoveredBlock94Stack1 := recoveredArg2.
            recoveredBlock94PC := 107.
        ].
        recoveredBlock94Step = 107 ifTrue: [
            recoveredBlock94Stack1 := (recoveredBlock94Stack1) extraImplInfo.
            recoveredBlock94PC := 108.
        ].
        recoveredBlock94Step = 108 ifTrue: [
            recoveredBlock94Stack1 := (recoveredBlock94Stack1) setRescaled.
            recoveredBlock94PC := 110.
        ].
        recoveredBlock94Step = 110 ifTrue: [
            recoveredBlock94PC := 120.
        ].
        recoveredBlock94Step = 114 ifTrue: [
            recoveredBlock94Stack1 := recoveredArg2.
            recoveredBlock94PC := 117.
        ].
        recoveredBlock94Step = 117 ifTrue: [
            recoveredBlock94Stack1 := (recoveredBlock94Stack1) extraImplInfo.
            recoveredBlock94PC := 118.
        ].
        recoveredBlock94Step = 118 ifTrue: [
            recoveredBlock94Stack1 := (recoveredBlock94Stack1) clearRescaled.
            recoveredBlock94PC := 120.
        ].
        recoveredBlock94Step = 120 ifTrue: [
            recoveredBlock94Result := recoveredBlock94Stack1.
            recoveredBlock94Done := true.
        ].
    ].
    recoveredBlock94Result
].
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := 'Call_70820'.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := (recoveredStack0) extraImplInfo.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack2 := 'additionalInformation'.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack3 := ''.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            (recoveredStack0) text: (recoveredStack1).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204c6a1c; bytecode file offset 0xdc3330"
!ASDXMLImportStepImplementationBase methodsFor: 'recovered'!
readTwoDImplementationT: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_71019'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := element.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) thing.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClass.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) isGroupCharTable.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := RBTwoDGroupCharTable.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDefault.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredPC := 37.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := RBTwoDCharTable.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDefault.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := 'XAxis'.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := [:recoveredBlock42Arg1 | 
    | recoveredBlock42Local1 recoveredBlock42Value0 recoveredBlock42Value1 recoveredBlock42Value2 recoveredBlock42Value3 recoveredBlock42Value4 recoveredBlock42Value5 recoveredBlock42Value6 recoveredBlock42Value7 recoveredBlock42Value8 recoveredBlock42Value9 recoveredBlock42Value10 recoveredBlock42Value11 |
    recoveredBlock42Value0 := recoveredBlock42Arg1.
    recoveredBlock42Value1 := RBDiscreteDistribution.
    recoveredBlock42Value2 := (self) readScalarImplementationT: (recoveredBlock42Value0) implClass: (recoveredBlock42Value1).
    recoveredBlock42Local1 := recoveredBlock42Value2.
    recoveredBlock42Value3 := recoveredBlock42Local1.
    recoveredBlock42Value4 := element.
    recoveredBlock42Value5 := (recoveredBlock42Value4) thing.
    recoveredBlock42Value6 := (recoveredBlock42Value5) sgClass.
    recoveredBlock42Value7 := (recoveredBlock42Value6) maxSize.
    recoveredBlock42Value8 := (recoveredBlock42Value7) x.
    (recoveredBlock42Value3) maxSize: (recoveredBlock42Value8).
    recoveredBlock42Value9 := recoveredLocal1.
    recoveredBlock42Value10 := recoveredBlock42Local1.
    recoveredBlock42Value11 := (recoveredBlock42Value9) xDistribution: (recoveredBlock42Value10).
    recoveredBlock42Value11
].
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack1) optional: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := 'YAxis'.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack3 := [:recoveredBlock79Arg1 | 
    | recoveredBlock79Local1 recoveredBlock79Value0 recoveredBlock79Value1 recoveredBlock79Value2 recoveredBlock79Value3 recoveredBlock79Value4 recoveredBlock79Value5 recoveredBlock79Value6 recoveredBlock79Value7 recoveredBlock79Value8 recoveredBlock79Value9 recoveredBlock79Value10 recoveredBlock79Value11 |
    recoveredBlock79Value0 := recoveredBlock79Arg1.
    recoveredBlock79Value1 := RBDiscreteDistribution.
    recoveredBlock79Value2 := (self) readScalarImplementationT: (recoveredBlock79Value0) implClass: (recoveredBlock79Value1).
    recoveredBlock79Local1 := recoveredBlock79Value2.
    recoveredBlock79Value3 := recoveredBlock79Local1.
    recoveredBlock79Value4 := element.
    recoveredBlock79Value5 := (recoveredBlock79Value4) thing.
    recoveredBlock79Value6 := (recoveredBlock79Value5) sgClass.
    recoveredBlock79Value7 := (recoveredBlock79Value6) maxSize.
    recoveredBlock79Value8 := (recoveredBlock79Value7) y.
    (recoveredBlock79Value3) maxSize: (recoveredBlock79Value8).
    recoveredBlock79Value9 := recoveredLocal1.
    recoveredBlock79Value10 := recoveredBlock79Local1.
    recoveredBlock79Value11 := (recoveredBlock79Value9) yDistribution: (recoveredBlock79Value10).
    recoveredBlock79Value11
].
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack1) optional: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := 'TableValues'.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack3 := [:recoveredBlock117Arg1 | 
    | recoveredBlock117Value0 recoveredBlock117Value1 recoveredBlock117Value2 recoveredBlock117Value3 recoveredBlock117Value4 |
    recoveredBlock117Value0 := recoveredLocal1.
    recoveredBlock117Value1 := recoveredBlock117Arg1.
    recoveredBlock117Value2 := RBDataMatrix.
    recoveredBlock117Value3 := (self) readScalarImplementationT: (recoveredBlock117Value1) implClass: (recoveredBlock117Value2).
    recoveredBlock117Value4 := (recoveredBlock117Value0) values: (recoveredBlock117Value3).
    recoveredBlock117Value4
].
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack4 := handler.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            (recoveredStack1) required: (recoveredStack2) do: (recoveredStack3) ifNot: (recoveredStack4).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack2 := handler.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            (recoveredStack1) doneIfNot: (recoveredStack2).
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20543ed0; bytecode file offset 0xe40808"
!ASDXMLImportStepImplementationBase methodsFor: 'recovered'!
readNumericImplementationT: recoveredArg1 implClass: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) createDefault.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) formula.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := 'formula'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) getString: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) name: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := 'master'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := 'Model'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) extraImplInfo.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) setModelMaster.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredPC := 53.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) extraImplInfo.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) setImplementationMaster.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := 'Call_71024'.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := 'physType'.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString: (recoveredStack2).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) implTypeByName: (recoveredStack1).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := [:recoveredBlock67Arg1 | 
    | recoveredBlock67Value0 recoveredBlock67Value1 recoveredBlock67Value2 recoveredBlock67Value3 |
    recoveredBlock67Value0 := recoveredLocal1.
    recoveredBlock67Value1 := (recoveredBlock67Value0) physicsRepresentation.
    recoveredBlock67Value2 := recoveredBlock67Arg1.
    recoveredBlock67Value3 := (recoveredBlock67Value1) setType: (recoveredBlock67Value2).
    recoveredBlock67Value3
].
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := 'implType'.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString: (recoveredStack2).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := (recoveredStack0) implTypeByName: (recoveredStack1).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := [:recoveredBlock94Arg1 | 
    | recoveredBlock94Value0 recoveredBlock94Value1 recoveredBlock94Value2 recoveredBlock94Value3 |
    recoveredBlock94Value0 := recoveredLocal1.
    recoveredBlock94Value1 := (recoveredBlock94Value0) implementationRepresentation.
    recoveredBlock94Value2 := recoveredBlock94Arg1.
    recoveredBlock94Value3 := (recoveredBlock94Value1) setType: (recoveredBlock94Value2).
    recoveredBlock94Value3
].
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack2 := 'quantization'.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := (recoveredStack1) getNZQR: (recoveredStack2).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack0) setPhysQuantization: (recoveredStack1).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := 'zeroNotIncluded'.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := (recoveredStack0) getBoolean: (recoveredStack1).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 134] ifFalse: [recoveredPC := 141].
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack0 := (recoveredStack0) extraImplInfo.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            (recoveredStack0) setZeroNotIncluded.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := 'PhysicalInterval'.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack2 := [:recoveredBlock146Arg1 | 
    | recoveredBlock146Value0 recoveredBlock146Value1 recoveredBlock146Value2 recoveredBlock146Value3 recoveredBlock146Value4 |
    recoveredBlock146Value0 := recoveredLocal1.
    recoveredBlock146Value1 := (recoveredBlock146Value0) physicsRepresentation.
    recoveredBlock146Value2 := recoveredBlock146Arg1.
    recoveredBlock146Value3 := (self) readIntervalT: (recoveredBlock146Value2).
    recoveredBlock146Value4 := (recoveredBlock146Value1) interval: (recoveredBlock146Value3).
    recoveredBlock146Value4
].
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            (recoveredStack0) optional: (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack1 := 'ImplementationInterval'.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack2 := [:recoveredBlock171Arg1 | 
    | recoveredBlock171Value0 recoveredBlock171Value1 recoveredBlock171Value2 recoveredBlock171Value3 recoveredBlock171Value4 |
    recoveredBlock171Value0 := recoveredLocal1.
    recoveredBlock171Value1 := (recoveredBlock171Value0) implementationRepresentation.
    recoveredBlock171Value2 := recoveredBlock171Arg1.
    recoveredBlock171Value3 := (self) readIntervalT: (recoveredBlock171Value2).
    recoveredBlock171Value4 := (recoveredBlock171Value1) interval: (recoveredBlock171Value3).
    recoveredBlock171Value4
].
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack3 := handler.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            (recoveredStack0) required: (recoveredStack1) do: (recoveredStack2) ifNot: (recoveredStack3).
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            (recoveredStack0) readNumericImplementationBaseT: (recoveredStack1) impl: (recoveredStack2).
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack1 := handler.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            (recoveredStack0) doneIfNot: (recoveredStack1).
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205c3d78; bytecode file offset 0xec06ec"
!ASDXMLImportStepImplementationBase methodsFor: 'recovered'!
readImplementationVariantT: recoveredArg1 impl: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 recoveredBlock4Value4 recoveredBlock4Value5 recoveredBlock4Value6 recoveredBlock4Value7 |
    recoveredBlock4Value0 := ('ignored') notNil.
    recoveredBlock4Value1 := recoveredArg1.
    recoveredBlock4Value2 := [:recoveredBlock4Block19Arg1 | 
    | recoveredBlock4Block19Local1 recoveredBlock4Block19Local2 recoveredBlock4Block19Stack0 recoveredBlock4Block19Stack1 recoveredBlock4Block19Stack2 recoveredBlock4Block19Stack3 recoveredBlock4Block19Stack4 recoveredBlock4Block19Stack5 recoveredBlock4Block19Stack6 recoveredBlock4Block19Stack7 recoveredBlock4Block19Stack8 recoveredBlock4Block19Stack9 recoveredBlock4Block19Stack10 recoveredBlock4Block19Stack11 recoveredBlock4Block19Stack12 recoveredBlock4Block19PC recoveredBlock4Block19Step recoveredBlock4Block19Done recoveredBlock4Block19Result |
    recoveredBlock4Block19Stack0 := self.
    recoveredBlock4Block19PC := 26.
    recoveredBlock4Block19Done := false.
    [recoveredBlock4Block19Done not] whileTrue: [
        recoveredBlock4Block19Step := recoveredBlock4Block19PC.
        recoveredBlock4Block19Step = 26 ifTrue: [
            recoveredBlock4Block19Stack1 := nil.
            recoveredBlock4Block19PC := 27.
        ].
        recoveredBlock4Block19Step = 27 ifTrue: [
            recoveredBlock4Block19Local2 := recoveredBlock4Block19Stack1.
            recoveredBlock4Block19PC := 28.
        ].
        recoveredBlock4Block19Step = 28 ifTrue: [
            recoveredBlock4Block19Stack1 := recoveredBlock4Block19Arg1.
            recoveredBlock4Block19PC := 29.
        ].
        recoveredBlock4Block19Step = 29 ifTrue: [
            recoveredBlock4Block19Stack0 := (recoveredBlock4Block19Stack0) oidElement: (recoveredBlock4Block19Stack1).
            recoveredBlock4Block19PC := 30.
        ].
        recoveredBlock4Block19Step = 30 ifTrue: [
            element := recoveredBlock4Block19Stack0.
            recoveredBlock4Block19PC := 32.
        ].
        recoveredBlock4Block19Step = 32 ifTrue: [
            recoveredBlock4Block19Stack0 := element.
            recoveredBlock4Block19PC := 34.
        ].
        recoveredBlock4Block19Step = 34 ifTrue: [
            recoveredBlock4Block19Stack0 := (recoveredBlock4Block19Stack0) thing.
            recoveredBlock4Block19PC := 35.
        ].
        recoveredBlock4Block19Step = 35 ifTrue: [
            (recoveredBlock4Block19Stack0 ~~ nil) ifTrue: [recoveredBlock4Block19PC := 40] ifFalse: [recoveredBlock4Block19PC := 38].
        ].
        recoveredBlock4Block19Step = 38 ifTrue: [
            recoveredBlock4Block19Stack0 := nil.
            recoveredBlock4Block19PC := 39.
        ].
        recoveredBlock4Block19Step = 39 ifTrue: [
            ^recoveredBlock4Block19Stack0
        ].
        recoveredBlock4Block19Step = 40 ifTrue: [
            recoveredBlock4Block19Stack0 := 'Kli'.
            recoveredBlock4Block19PC := 42.
        ].
        recoveredBlock4Block19Step = 42 ifTrue: [
            recoveredBlock4Block19Stack1 := 'Call_93243'.
            recoveredBlock4Block19PC := 44.
        ].
        recoveredBlock4Block19Step = 44 ifTrue: [
            recoveredBlock4Block19Stack0 := (recoveredBlock4Block19Stack0) == (recoveredBlock4Block19Stack1).
            recoveredBlock4Block19PC := 45.
        ].
        recoveredBlock4Block19Step = 45 ifTrue: [
            recoveredBlock4Block19PC := 46.
        ].
        recoveredBlock4Block19Step = 46 ifTrue: [
            recoveredBlock4Block19Stack0 := element.
            recoveredBlock4Block19PC := 48.
        ].
        recoveredBlock4Block19Step = 48 ifTrue: [
            recoveredBlock4Block19Stack0 := (recoveredBlock4Block19Stack0) xmlOID.
            recoveredBlock4Block19PC := 50.
        ].
        recoveredBlock4Block19Step = 50 ifTrue: [
            recoveredBlock4Block19Stack1 := recoveredBlock4Block19Stack0.
            recoveredBlock4Block19PC := 51.
        ].
        recoveredBlock4Block19Step = 51 ifTrue: [
            recoveredLocal1 := recoveredBlock4Block19Stack1.
            recoveredBlock4Block19PC := 54.
        ].
        recoveredBlock4Block19Step = 54 ifTrue: [
            (recoveredBlock4Block19Stack0 ~~ nil) ifTrue: [recoveredBlock4Block19PC := 60] ifFalse: [recoveredBlock4Block19PC := 58].
        ].
        recoveredBlock4Block19Step = 58 ifTrue: [
            recoveredBlock4Block19Stack0 := nil.
            recoveredBlock4Block19PC := 59.
        ].
        recoveredBlock4Block19Step = 59 ifTrue: [
            ^recoveredBlock4Block19Stack0
        ].
        recoveredBlock4Block19Step = 60 ifTrue: [
            recoveredBlock4Block19Stack0 := 'Kli'.
            recoveredBlock4Block19PC := 62.
        ].
        recoveredBlock4Block19Step = 62 ifTrue: [
            recoveredBlock4Block19Stack1 := 'Call_71172'.
            recoveredBlock4Block19PC := 64.
        ].
        recoveredBlock4Block19Step = 64 ifTrue: [
            recoveredBlock4Block19Stack0 := (recoveredBlock4Block19Stack0) == (recoveredBlock4Block19Stack1).
            recoveredBlock4Block19PC := 65.
        ].
        recoveredBlock4Block19Step = 65 ifTrue: [
            recoveredBlock4Block19PC := 66.
        ].
        recoveredBlock4Block19Step = 66 ifTrue: [
            recoveredBlock4Block19Stack0 := recoveredBlock4Block19Arg1.
            recoveredBlock4Block19PC := 67.
        ].
        recoveredBlock4Block19Step = 67 ifTrue: [
            recoveredBlock4Block19Stack1 := 'asReference'.
            recoveredBlock4Block19PC := 69.
        ].
        recoveredBlock4Block19Step = 69 ifTrue: [
            recoveredBlock4Block19Stack2 := nil.
            recoveredBlock4Block19PC := 70.
        ].
        recoveredBlock4Block19Step = 70 ifTrue: [
            recoveredBlock4Block19Stack0 := (recoveredBlock4Block19Stack0) getBoolean: (recoveredBlock4Block19Stack1) default: (recoveredBlock4Block19Stack2).
            recoveredBlock4Block19PC := 72.
        ].
        recoveredBlock4Block19Step = 72 ifTrue: [
            recoveredBlock4Block19Stack1 := [:recoveredBlock4Block19Block72Arg1 | 
    | recoveredBlock4Block19Block72Value0 recoveredBlock4Block19Block72Value1 recoveredBlock4Block19Block72Value2 recoveredBlock4Block19Block72Value3 recoveredBlock4Block19Block72Value4 recoveredBlock4Block19Block72Value5 |
    recoveredBlock4Block19Block72Value0 := recoveredArg2.
    recoveredBlock4Block19Block72Value1 := (recoveredBlock4Block19Block72Value0) configsUsedReferenced.
    recoveredBlock4Block19Block72Value2 := element.
    recoveredBlock4Block19Block72Value3 := (recoveredBlock4Block19Block72Value2) xmlOID.
    recoveredBlock4Block19Block72Value4 := recoveredBlock4Block19Block72Arg1.
    recoveredBlock4Block19Block72Value5 := (recoveredBlock4Block19Block72Value1) at: (recoveredBlock4Block19Block72Value3) put: (recoveredBlock4Block19Block72Value4).
    recoveredBlock4Block19Block72Value5
].
            recoveredBlock4Block19PC := 91.
        ].
        recoveredBlock4Block19Step = 91 ifTrue: [
            (recoveredBlock4Block19Stack0) ifNotNil: (recoveredBlock4Block19Stack1).
            recoveredBlock4Block19PC := 93.
        ].
        recoveredBlock4Block19Step = 93 ifTrue: [
            recoveredBlock4Block19Stack0 := recoveredBlock4Block19Arg1.
            recoveredBlock4Block19PC := 94.
        ].
        recoveredBlock4Block19Step = 94 ifTrue: [
            recoveredBlock4Block19Stack0 := (recoveredBlock4Block19Stack0) subElements.
            recoveredBlock4Block19PC := 96.
        ].
        recoveredBlock4Block19Step = 96 ifTrue: [
            recoveredBlock4Block19Stack0 := (recoveredBlock4Block19Stack0) size.
            recoveredBlock4Block19PC := 98.
        ].
        recoveredBlock4Block19Step = 98 ifTrue: [
            recoveredBlock4Block19Stack1 := 0.
            recoveredBlock4Block19PC := 100.
        ].
        recoveredBlock4Block19Step = 100 ifTrue: [
            recoveredBlock4Block19Stack0 := (recoveredBlock4Block19Stack0) > (recoveredBlock4Block19Stack1).
            recoveredBlock4Block19PC := 101.
        ].
        recoveredBlock4Block19Step = 101 ifTrue: [
            (recoveredBlock4Block19Stack0) ifTrue: [recoveredBlock4Block19PC := 104] ifFalse: [recoveredBlock4Block19PC := 174].
        ].
        recoveredBlock4Block19Step = 104 ifTrue: [
            recoveredBlock4Block19Stack0 := recoveredBlock4Block19Arg1.
            recoveredBlock4Block19PC := 105.
        ].
        recoveredBlock4Block19Step = 105 ifTrue: [
            recoveredBlock4Block19Stack1 := 'ScalarImplementation'.
            recoveredBlock4Block19PC := 107.
        ].
        recoveredBlock4Block19Step = 107 ifTrue: [
            recoveredBlock4Block19Stack2 := [:recoveredBlock4Block19Block107Arg1 | 
    | recoveredBlock4Block19Block107Value0 recoveredBlock4Block19Block107Value1 recoveredBlock4Block19Block107Value2 |
    recoveredBlock4Block19Block107Value0 := recoveredBlock4Block19Block107Arg1.
    recoveredBlock4Block19Block107Value1 := RBArithmeticElement.
    recoveredBlock4Block19Block107Value2 := (self) readScalarImplementationT: (recoveredBlock4Block19Block107Value0) implClass: (recoveredBlock4Block19Block107Value1).
    recoveredBlock4Block19Block107Value2
].
            recoveredBlock4Block19PC := 120.
        ].
        recoveredBlock4Block19Step = 120 ifTrue: [
            recoveredBlock4Block19Stack3 := 'DimensionalImplementation'.
            recoveredBlock4Block19PC := 122.
        ].
        recoveredBlock4Block19Step = 122 ifTrue: [
            recoveredBlock4Block19Stack4 := [:recoveredBlock4Block19Block122Arg1 | 
    | recoveredBlock4Block19Block122Value0 recoveredBlock4Block19Block122Value1 |
    recoveredBlock4Block19Block122Value0 := recoveredBlock4Block19Block122Arg1.
    recoveredBlock4Block19Block122Value1 := (self) readDimensionalImplementationT: (recoveredBlock4Block19Block122Value0).
    recoveredBlock4Block19Block122Value1
].
            recoveredBlock4Block19PC := 132.
        ].
        recoveredBlock4Block19Step = 132 ifTrue: [
            recoveredBlock4Block19Stack5 := 'DimensionalReferenceImplementation'.
            recoveredBlock4Block19PC := 134.
        ].
        recoveredBlock4Block19Step = 134 ifTrue: [
            recoveredBlock4Block19Stack6 := [:recoveredBlock4Block19Block134Arg1 | 
    | recoveredBlock4Block19Block134Value0 recoveredBlock4Block19Block134Value1 |
    recoveredBlock4Block19Block134Value0 := recoveredBlock4Block19Block134Arg1.
    recoveredBlock4Block19Block134Value1 := (self) readDimensionalReferenceImplementationT: (recoveredBlock4Block19Block134Value0).
    recoveredBlock4Block19Block134Value1
].
            recoveredBlock4Block19PC := 144.
        ].
        recoveredBlock4Block19Step = 144 ifTrue: [
            recoveredBlock4Block19Stack7 := 'ComplexImplementation'.
            recoveredBlock4Block19PC := 146.
        ].
        recoveredBlock4Block19Step = 146 ifTrue: [
            recoveredBlock4Block19Stack8 := [:recoveredBlock4Block19Block146Arg1 | 
    | recoveredBlock4Block19Block146Value0 recoveredBlock4Block19Block146Value1 |
    recoveredBlock4Block19Block146Value0 := recoveredBlock4Block19Block146Arg1.
    recoveredBlock4Block19Block146Value1 := (self) readComplexImplementationT: (recoveredBlock4Block19Block146Value0).
    recoveredBlock4Block19Block146Value1
].
            recoveredBlock4Block19PC := 156.
        ].
        recoveredBlock4Block19Step = 156 ifTrue: [
            recoveredBlock4Block19Stack9 := 'ComplexReferenceImplementation'.
            recoveredBlock4Block19PC := 158.
        ].
        recoveredBlock4Block19Step = 158 ifTrue: [
            recoveredBlock4Block19Stack10 := [:recoveredBlock4Block19Block158Arg1 | 
    | recoveredBlock4Block19Block158Value0 recoveredBlock4Block19Block158Value1 |
    recoveredBlock4Block19Block158Value0 := recoveredBlock4Block19Block158Arg1.
    recoveredBlock4Block19Block158Value1 := (self) readComplexReferenceImplementationT: (recoveredBlock4Block19Block158Value0).
    recoveredBlock4Block19Block158Value1
].
            recoveredBlock4Block19PC := 168.
        ].
        recoveredBlock4Block19Step = 168 ifTrue: [
            recoveredBlock4Block19Stack11 := handler.
            recoveredBlock4Block19PC := 170.
        ].
        recoveredBlock4Block19Step = 170 ifTrue: [
            recoveredBlock4Block19Stack0 := (recoveredBlock4Block19Stack0) choice: (recoveredBlock4Block19Stack1) do: (recoveredBlock4Block19Stack2) choice: (recoveredBlock4Block19Stack3) do: (recoveredBlock4Block19Stack4) choice: (recoveredBlock4Block19Stack5) do: (recoveredBlock4Block19Stack6) choice: (recoveredBlock4Block19Stack7) do: (recoveredBlock4Block19Stack8) choice: (recoveredBlock4Block19Stack9) do: (recoveredBlock4Block19Stack10) ifNot: (recoveredBlock4Block19Stack11).
            recoveredBlock4Block19PC := 173.
        ].
        recoveredBlock4Block19Step = 173 ifTrue: [
            recoveredBlock4Block19Local2 := recoveredBlock4Block19Stack0.
            recoveredBlock4Block19PC := 174.
        ].
        recoveredBlock4Block19Step = 174 ifTrue: [
            recoveredBlock4Block19Stack0 := 'Kli'.
            recoveredBlock4Block19PC := 176.
        ].
        recoveredBlock4Block19Step = 176 ifTrue: [
            recoveredBlock4Block19Stack1 := 'Call_1004130'.
            recoveredBlock4Block19PC := 178.
        ].
        recoveredBlock4Block19Step = 178 ifTrue: [
            recoveredBlock4Block19Stack0 := (recoveredBlock4Block19Stack0) == (recoveredBlock4Block19Stack1).
            recoveredBlock4Block19PC := 179.
        ].
        recoveredBlock4Block19Step = 179 ifTrue: [
            recoveredBlock4Block19PC := 180.
        ].
        recoveredBlock4Block19Step = 180 ifTrue: [
            recoveredBlock4Block19Stack0 := recoveredBlock4Block19Arg1.
            recoveredBlock4Block19PC := 181.
        ].
        recoveredBlock4Block19Step = 181 ifTrue: [
            recoveredBlock4Block19Stack1 := 'index'.
            recoveredBlock4Block19PC := 183.
        ].
        recoveredBlock4Block19Step = 183 ifTrue: [
            recoveredBlock4Block19Stack2 := nil.
            recoveredBlock4Block19PC := 184.
        ].
        recoveredBlock4Block19Step = 184 ifTrue: [
            recoveredBlock4Block19Stack0 := (recoveredBlock4Block19Stack0) getNNInt: (recoveredBlock4Block19Stack1) default: (recoveredBlock4Block19Stack2).
            recoveredBlock4Block19PC := 186.
        ].
        recoveredBlock4Block19Step = 186 ifTrue: [
            recoveredBlock4Block19Stack1 := [:recoveredBlock4Block19Block186Arg1 | 
    | recoveredBlock4Block19Block186Stack0 recoveredBlock4Block19Block186Stack1 recoveredBlock4Block19Block186Stack2 recoveredBlock4Block19Block186Stack3 recoveredBlock4Block19Block186PC recoveredBlock4Block19Block186Step recoveredBlock4Block19Block186Done recoveredBlock4Block19Block186Result |
    recoveredBlock4Block19Block186Stack0 := self.
    recoveredBlock4Block19Block186PC := 192.
    recoveredBlock4Block19Block186Done := false.
    [recoveredBlock4Block19Block186Done not] whileTrue: [
        recoveredBlock4Block19Block186Step := recoveredBlock4Block19Block186PC.
        recoveredBlock4Block19Block186Step = 192 ifTrue: [
            recoveredBlock4Block19Block186Stack1 := nil.
            recoveredBlock4Block19Block186PC := 193.
        ].
        recoveredBlock4Block19Block186Step = 193 ifTrue: [
            recoveredBlock4Block19Block186Stack2 := recoveredArg2.
            recoveredBlock4Block19Block186PC := 196.
        ].
        recoveredBlock4Block19Block186Step = 196 ifTrue: [
            recoveredBlock4Block19Block186Stack2 := (recoveredBlock4Block19Block186Stack2) additionalImplInfo.
            recoveredBlock4Block19Block186PC := 198.
        ].
        recoveredBlock4Block19Block186Step = 198 ifTrue: [
            (recoveredBlock4Block19Block186Stack2 == nil) ifTrue: [recoveredBlock4Block19Block186PC := 214] ifFalse: [recoveredBlock4Block19Block186PC := 202].
        ].
        recoveredBlock4Block19Block186Step = 202 ifTrue: [
            recoveredBlock4Block19Block186PC := 203.
        ].
        recoveredBlock4Block19Block186Step = 203 ifTrue: [
            recoveredBlock4Block19Block186Stack1 := recoveredArg2.
            recoveredBlock4Block19Block186PC := 206.
        ].
        recoveredBlock4Block19Block186Step = 206 ifTrue: [
            recoveredBlock4Block19Block186Stack2 := element.
            recoveredBlock4Block19Block186PC := 208.
        ].
        recoveredBlock4Block19Block186Step = 208 ifTrue: [
            recoveredBlock4Block19Block186Stack2 := (recoveredBlock4Block19Block186Stack2) thing.
            recoveredBlock4Block19Block186PC := 209.
        ].
        recoveredBlock4Block19Block186Step = 209 ifTrue: [
            recoveredBlock4Block19Block186Stack1 := (recoveredBlock4Block19Block186Stack1) getAdditionalImplInfoForElementBasic: (recoveredBlock4Block19Block186Stack2).
            recoveredBlock4Block19Block186PC := 211.
        ].
        recoveredBlock4Block19Block186Step = 211 ifTrue: [
            recoveredBlock4Block19Block186Stack2 := recoveredBlock4Block19Block186Arg1.
            recoveredBlock4Block19Block186PC := 212.
        ].
        recoveredBlock4Block19Block186Step = 212 ifTrue: [
            recoveredBlock4Block19Block186Stack1 := (recoveredBlock4Block19Block186Stack1) index: (recoveredBlock4Block19Block186Stack2).
            recoveredBlock4Block19Block186PC := 214.
        ].
        recoveredBlock4Block19Block186Step = 214 ifTrue: [
            recoveredBlock4Block19Block186Result := recoveredBlock4Block19Block186Stack1.
            recoveredBlock4Block19Block186Done := true.
        ].
    ].
    recoveredBlock4Block19Block186Result
].
            recoveredBlock4Block19PC := 215.
        ].
        recoveredBlock4Block19Step = 215 ifTrue: [
            (recoveredBlock4Block19Stack0) ifNotNil: (recoveredBlock4Block19Stack1).
            recoveredBlock4Block19PC := 217.
        ].
        recoveredBlock4Block19Step = 217 ifTrue: [
            recoveredBlock4Block19Stack0 := nil.
            recoveredBlock4Block19PC := 218.
        ].
        recoveredBlock4Block19Step = 218 ifTrue: [
            recoveredBlock4Block19Stack1 := recoveredBlock4Block19Local2.
            recoveredBlock4Block19PC := 219.
        ].
        recoveredBlock4Block19Step = 219 ifTrue: [
            (recoveredBlock4Block19Stack1 == nil) ifTrue: [recoveredBlock4Block19PC := 261] ifFalse: [recoveredBlock4Block19PC := 222].
        ].
        recoveredBlock4Block19Step = 222 ifTrue: [
            recoveredBlock4Block19PC := 223.
        ].
        recoveredBlock4Block19Step = 223 ifTrue: [
            recoveredBlock4Block19Stack0 := recoveredBlock4Block19Local2.
            recoveredBlock4Block19PC := 224.
        ].
        recoveredBlock4Block19Step = 224 ifTrue: [
            recoveredBlock4Block19Stack0 := (recoveredBlock4Block19Stack0) isDBProxy.
            recoveredBlock4Block19PC := 226.
        ].
        recoveredBlock4Block19Step = 226 ifTrue: [
            (recoveredBlock4Block19Stack0) ifTrue: [recoveredBlock4Block19PC := 230] ifFalse: [recoveredBlock4Block19PC := 244].
        ].
        recoveredBlock4Block19Step = 230 ifTrue: [
            recoveredBlock4Block19Stack0 := recoveredArg2.
            recoveredBlock4Block19PC := 233.
        ].
        recoveredBlock4Block19Step = 233 ifTrue: [
            recoveredBlock4Block19Stack0 := (recoveredBlock4Block19Stack0) complexValues.
            recoveredBlock4Block19PC := 235.
        ].
        recoveredBlock4Block19Step = 235 ifTrue: [
            recoveredBlock4Block19Stack1 := recoveredLocal1.
            recoveredBlock4Block19PC := 238.
        ].
        recoveredBlock4Block19Step = 238 ifTrue: [
            recoveredBlock4Block19Stack2 := recoveredBlock4Block19Local2.
            recoveredBlock4Block19PC := 239.
        ].
        recoveredBlock4Block19Step = 239 ifTrue: [
            (recoveredBlock4Block19Stack0) at: (recoveredBlock4Block19Stack1) put: (recoveredBlock4Block19Stack2).
            recoveredBlock4Block19PC := 241.
        ].
        recoveredBlock4Block19Step = 241 ifTrue: [
            recoveredBlock4Block19PC := 255.
        ].
        recoveredBlock4Block19Step = 244 ifTrue: [
            recoveredBlock4Block19Stack0 := recoveredArg2.
            recoveredBlock4Block19PC := 247.
        ].
        recoveredBlock4Block19Step = 247 ifTrue: [
            recoveredBlock4Block19Stack0 := (recoveredBlock4Block19Stack0) primitiveValues.
            recoveredBlock4Block19PC := 249.
        ].
        recoveredBlock4Block19Step = 249 ifTrue: [
            recoveredBlock4Block19Stack1 := recoveredLocal1.
            recoveredBlock4Block19PC := 252.
        ].
        recoveredBlock4Block19Step = 252 ifTrue: [
            recoveredBlock4Block19Stack2 := recoveredBlock4Block19Local2.
            recoveredBlock4Block19PC := 253.
        ].
        recoveredBlock4Block19Step = 253 ifTrue: [
            (recoveredBlock4Block19Stack0) at: (recoveredBlock4Block19Stack1) put: (recoveredBlock4Block19Stack2).
            recoveredBlock4Block19PC := 255.
        ].
        recoveredBlock4Block19Step = 255 ifTrue: [
            recoveredBlock4Block19Stack0 := found.
            recoveredBlock4Block19PC := 257.
        ].
        recoveredBlock4Block19Step = 257 ifTrue: [
            recoveredBlock4Block19Stack1 := element.
            recoveredBlock4Block19PC := 259.
        ].
        recoveredBlock4Block19Step = 259 ifTrue: [
            recoveredBlock4Block19Stack0 := (recoveredBlock4Block19Stack0) add: (recoveredBlock4Block19Stack1).
            recoveredBlock4Block19PC := 261.
        ].
        recoveredBlock4Block19Step = 261 ifTrue: [
            recoveredBlock4Block19Result := recoveredBlock4Block19Stack0.
            recoveredBlock4Block19Done := true.
        ].
    ].
    recoveredBlock4Block19Result
].
    recoveredBlock4Value3 := [:recoveredBlock4Block264Arg1 | 
    | recoveredBlock4Block264Value0 recoveredBlock4Block264Value1 recoveredBlock4Block264Value2 recoveredBlock4Block264Value3 recoveredBlock4Block264Value4 recoveredBlock4Block264Value5 recoveredBlock4Block264Value6 recoveredBlock4Block264Value7 recoveredBlock4Block264Value8 |
    recoveredBlock4Block264Value0 := recoveredBlock4Block264Arg1.
    recoveredBlock4Block264Value1 := protoClass.
    recoveredBlock4Block264Value2 := (self) oidMethod: (recoveredBlock4Block264Value0) in: (recoveredBlock4Block264Value1) nameTag: ('methodName') oidTag: ('methodOID').
    recoveredLocal1 := recoveredBlock4Block264Value2.
    recoveredBlock4Block264Value3 := recoveredArg2.
    recoveredBlock4Block264Value4 := (recoveredBlock4Block264Value3) methodImplementation.
    recoveredBlock4Block264Value5 := recoveredLocal1.
    recoveredBlock4Block264Value6 := recoveredBlock4Block264Arg1.
    recoveredBlock4Block264Value7 := (self) readMethodImplementationT: (recoveredBlock4Block264Value6).
    recoveredBlock4Block264Value8 := (recoveredBlock4Block264Value4) at: (recoveredBlock4Block264Value5) put: (recoveredBlock4Block264Value7).
    recoveredBlock4Block264Value8
].
    recoveredBlock4Value4 := handler.
    (recoveredBlock4Value1) choice: ('ElementImplementation') do: (recoveredBlock4Value2) choice: ('MethodImplementation') do: (recoveredBlock4Value3) ifNot: (recoveredBlock4Value4).
    recoveredBlock4Value5 := recoveredArg1.
    recoveredBlock4Value6 := handler.
    recoveredBlock4Value7 := (recoveredBlock4Value5) doneIfNot: (recoveredBlock4Value6).
    recoveredBlock4Value7
].
    recoveredValue1 := ElementNotFound.
    recoveredValue2 := [:recoveredBlock313Arg1 | 
    | recoveredBlock313Value0 |
    recoveredBlock313Value0 := recoveredBlock313Arg1.
    (recoveredBlock313Value0) exitWith: (nil).
    ^nil
].
    (recoveredValue0) when: (recoveredValue1) do: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x2066031c; bytecode file offset 0xf5cd94"
!ASDXMLImportStepImplementationBase methodsFor: 'recovered'!
readImplementations: recoveredArg1
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
            recoveredStack1 := LookupTable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := protoClass.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) thing.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlAllImplConfiguredElements.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) classifyElements: (recoveredStack1) instanceEls: (recoveredStack2) classEls: (recoveredStack3).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) name.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := 'ComponentImplementation'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) unexpectedElement: (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := 'ImplementationSet'.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := [:recoveredBlock51Arg1 | 
    | recoveredBlock51Local1 recoveredBlock51Local2 recoveredBlock51Local3 recoveredBlock51Local4 recoveredBlock51Local5 recoveredBlock51Local6 recoveredBlock51Local7 recoveredBlock51Local8 recoveredBlock51Local9 recoveredBlock51Local10 recoveredBlock51Local11 recoveredBlock51Local12 recoveredBlock51Stack0 recoveredBlock51Stack1 recoveredBlock51Stack2 recoveredBlock51Stack3 recoveredBlock51Stack4 recoveredBlock51Stack5 recoveredBlock51Stack6 recoveredBlock51Stack7 recoveredBlock51PC recoveredBlock51Step recoveredBlock51Done recoveredBlock51Result |
    recoveredBlock51Stack0 := self.
    recoveredBlock51PC := 58.
    recoveredBlock51Done := false.
    [recoveredBlock51Done not] whileTrue: [
        recoveredBlock51Step := recoveredBlock51PC.
        recoveredBlock51Step = 58 ifTrue: [
            recoveredBlock51Stack1 := OrderedCollection.
            recoveredBlock51PC := 60.
        ].
        recoveredBlock51Step = 60 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) new.
            recoveredBlock51PC := 61.
        ].
        recoveredBlock51Step = 61 ifTrue: [
            found := recoveredBlock51Stack1.
            recoveredBlock51PC := 63.
        ].
        recoveredBlock51Step = 63 ifTrue: [
            recoveredBlock51Stack1 := LookupTable.
            recoveredBlock51PC := 65.
        ].
        recoveredBlock51Step = 65 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) new.
            recoveredBlock51PC := 66.
        ].
        recoveredBlock51Step = 66 ifTrue: [
            addImplInfos := recoveredBlock51Stack1.
            recoveredBlock51PC := 68.
        ].
        recoveredBlock51Step = 68 ifTrue: [
            recoveredBlock51Stack1 := LookupTable.
            recoveredBlock51PC := 70.
        ].
        recoveredBlock51Step = 70 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) new.
            recoveredBlock51PC := 71.
        ].
        recoveredBlock51Step = 71 ifTrue: [
            rescalingFormulas := recoveredBlock51Stack1.
            recoveredBlock51PC := 73.
        ].
        recoveredBlock51Step = 73 ifTrue: [
            recoveredBlock51Stack1 := LookupTable.
            recoveredBlock51PC := 75.
        ].
        recoveredBlock51Step = 75 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) new.
            recoveredBlock51PC := 76.
        ].
        recoveredBlock51Step = 76 ifTrue: [
            recoveredBlock51Local6 := recoveredBlock51Stack1.
            recoveredBlock51PC := 79.
        ].
        recoveredBlock51Step = 79 ifTrue: [
            recoveredBlock51Stack1 := recoveredBlock51Arg1.
            recoveredBlock51PC := 82.
        ].
        recoveredBlock51Step = 82 ifTrue: [
            recoveredBlock51Stack2 := 'classConfig'.
            recoveredBlock51PC := 84.
        ].
        recoveredBlock51Step = 84 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) getBoolean: (recoveredBlock51Stack2).
            recoveredBlock51PC := 86.
        ].
        recoveredBlock51Step = 86 ifTrue: [
            recoveredBlock51Local9 := recoveredBlock51Stack1.
            recoveredBlock51PC := 89.
        ].
        recoveredBlock51Step = 89 ifTrue: [
            recoveredBlock51Stack1 := recoveredBlock51Local9.
            recoveredBlock51PC := 92.
        ].
        recoveredBlock51Step = 92 ifTrue: [
            (recoveredBlock51Stack1) ifTrue: [recoveredBlock51PC := 96] ifFalse: [recoveredBlock51PC := 102].
        ].
        recoveredBlock51Step = 96 ifTrue: [
            recoveredBlock51Stack1 := SGClassImplConfig.
            recoveredBlock51PC := 98.
        ].
        recoveredBlock51Step = 98 ifTrue: [
            recoveredBlock51PC := 104.
        ].
        recoveredBlock51Step = 102 ifTrue: [
            recoveredBlock51Stack1 := SGImplConfiguration.
            recoveredBlock51PC := 104.
        ].
        recoveredBlock51Step = 104 ifTrue: [
            recoveredBlock51Local11 := recoveredBlock51Stack1.
            recoveredBlock51PC := 107.
        ].
        recoveredBlock51Step = 107 ifTrue: [
            recoveredBlock51Stack1 := recoveredBlock51Arg1.
            recoveredBlock51PC := 110.
        ].
        recoveredBlock51Step = 110 ifTrue: [
            recoveredBlock51Stack2 := 'name'.
            recoveredBlock51PC := 112.
        ].
        recoveredBlock51Step = 112 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) getNMToken: (recoveredBlock51Stack2).
            recoveredBlock51PC := 114.
        ].
        recoveredBlock51Step = 114 ifTrue: [
            recoveredBlock51Local8 := recoveredBlock51Stack1.
            recoveredBlock51PC := 117.
        ].
        recoveredBlock51Step = 117 ifTrue: [
            recoveredBlock51Stack1 := recoveredBlock51Arg1.
            recoveredBlock51PC := 120.
        ].
        recoveredBlock51Step = 120 ifTrue: [
            recoveredBlock51Stack2 := 'OID'.
            recoveredBlock51PC := 122.
        ].
        recoveredBlock51Step = 122 ifTrue: [
            recoveredBlock51Stack3 := nil.
            recoveredBlock51PC := 123.
        ].
        recoveredBlock51Step = 123 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) getOID: (recoveredBlock51Stack2) default: (recoveredBlock51Stack3).
            recoveredBlock51PC := 125.
        ].
        recoveredBlock51Step = 125 ifTrue: [
            recoveredBlock51Local7 := recoveredBlock51Stack1.
            recoveredBlock51PC := 128.
        ].
        recoveredBlock51Step = 128 ifTrue: [
            recoveredBlock51Stack1 := recoveredBlock51Local11.
            recoveredBlock51PC := 131.
        ].
        recoveredBlock51Step = 131 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) new.
            recoveredBlock51PC := 132.
        ].
        recoveredBlock51Step = 132 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) xmlInit.
            recoveredBlock51PC := 134.
        ].
        recoveredBlock51Step = 134 ifTrue: [
            recoveredBlock51Local12 := recoveredBlock51Stack1.
            recoveredBlock51PC := 137.
        ].
        recoveredBlock51Step = 137 ifTrue: [
            recoveredBlock51Stack1 := recoveredBlock51Arg1.
            recoveredBlock51PC := 140.
        ].
        recoveredBlock51Step = 140 ifTrue: [
            recoveredBlock51Stack2 := recoveredBlock51Local12.
            recoveredBlock51PC := 143.
        ].
        recoveredBlock51Step = 143 ifTrue: [
            (recoveredBlock51Stack0) readUUID: (recoveredBlock51Stack1) target: (recoveredBlock51Stack2).
            recoveredBlock51PC := 145.
        ].
        recoveredBlock51Step = 145 ifTrue: [
            recoveredBlock51Stack0 := recoveredBlock51Local12.
            recoveredBlock51PC := 148.
        ].
        recoveredBlock51Step = 148 ifTrue: [
            recoveredBlock51Stack1 := controller.
            recoveredBlock51PC := 150.
        ].
        recoveredBlock51Step = 150 ifTrue: [
            recoveredBlock51Stack2 := protoClass.
            recoveredBlock51PC := 152.
        ].
        recoveredBlock51Step = 152 ifTrue: [
            recoveredBlock51Stack2 := (recoveredBlock51Stack2) xmlOID.
            recoveredBlock51PC := 154.
        ].
        recoveredBlock51Step = 154 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) makeDBProxy: (recoveredBlock51Stack2).
            recoveredBlock51PC := 156.
        ].
        recoveredBlock51Step = 156 ifTrue: [
            (recoveredBlock51Stack0) xmlSgClass: (recoveredBlock51Stack1).
            recoveredBlock51PC := 158.
        ].
        recoveredBlock51Step = 158 ifTrue: [
            recoveredBlock51Stack0 := recoveredBlock51Local12.
            recoveredBlock51PC := 161.
        ].
        recoveredBlock51Step = 161 ifTrue: [
            recoveredBlock51Stack1 := recoveredBlock51Arg1.
            recoveredBlock51PC := 164.
        ].
        recoveredBlock51Step = 164 ifTrue: [
            recoveredBlock51Stack2 := 'memoryLocation'.
            recoveredBlock51PC := 166.
        ].
        recoveredBlock51Step = 166 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) getString: (recoveredBlock51Stack2).
            recoveredBlock51PC := 168.
        ].
        recoveredBlock51Step = 168 ifTrue: [
            (recoveredBlock51Stack0) memoryClass: (recoveredBlock51Stack1).
            recoveredBlock51PC := 170.
        ].
        recoveredBlock51Step = 170 ifTrue: [
            recoveredBlock51Stack0 := recoveredBlock51Local12.
            recoveredBlock51PC := 173.
        ].
        recoveredBlock51Step = 173 ifTrue: [
            recoveredBlock51Stack1 := recoveredBlock51Arg1.
            recoveredBlock51PC := 176.
        ].
        recoveredBlock51Step = 176 ifTrue: [
            recoveredBlock51Stack2 := 'generateMethodBody'.
            recoveredBlock51PC := 178.
        ].
        recoveredBlock51Step = 178 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) getBoolean: (recoveredBlock51Stack2).
            recoveredBlock51PC := 180.
        ].
        recoveredBlock51Step = 180 ifTrue: [
            (recoveredBlock51Stack1) ifTrue: [recoveredBlock51PC := 184] ifFalse: [recoveredBlock51PC := 190].
        ].
        recoveredBlock51Step = 184 ifTrue: [
            recoveredBlock51Stack1 := 'clearNoGenerate'.
            recoveredBlock51PC := 186.
        ].
        recoveredBlock51Step = 186 ifTrue: [
            recoveredBlock51PC := 192.
        ].
        recoveredBlock51Step = 190 ifTrue: [
            recoveredBlock51Stack1 := 'setNoGenerate'.
            recoveredBlock51PC := 192.
        ].
        recoveredBlock51Step = 192 ifTrue: [
            (recoveredBlock51Stack0) perform: (recoveredBlock51Stack1).
            recoveredBlock51PC := 194.
        ].
        recoveredBlock51Step = 194 ifTrue: [
            recoveredBlock51Stack0 := recoveredBlock51Local12.
            recoveredBlock51PC := 197.
        ].
        recoveredBlock51Step = 197 ifTrue: [
            recoveredBlock51Stack1 := recoveredBlock51Arg1.
            recoveredBlock51PC := 200.
        ].
        recoveredBlock51Step = 200 ifTrue: [
            recoveredBlock51Stack2 := 'prototype'.
            recoveredBlock51PC := 202.
        ].
        recoveredBlock51Step = 202 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) getBoolean: (recoveredBlock51Stack2).
            recoveredBlock51PC := 204.
        ].
        recoveredBlock51Step = 204 ifTrue: [
            (recoveredBlock51Stack1) ifTrue: [recoveredBlock51PC := 208] ifFalse: [recoveredBlock51PC := 214].
        ].
        recoveredBlock51Step = 208 ifTrue: [
            recoveredBlock51Stack1 := 'setPrototype'.
            recoveredBlock51PC := 210.
        ].
        recoveredBlock51Step = 210 ifTrue: [
            recoveredBlock51PC := 216.
        ].
        recoveredBlock51Step = 214 ifTrue: [
            recoveredBlock51Stack1 := 'clearPrototype'.
            recoveredBlock51PC := 216.
        ].
        recoveredBlock51Step = 216 ifTrue: [
            (recoveredBlock51Stack0) perform: (recoveredBlock51Stack1).
            recoveredBlock51PC := 218.
        ].
        recoveredBlock51Step = 218 ifTrue: [
            recoveredBlock51Stack0 := recoveredBlock51Local12.
            recoveredBlock51PC := 221.
        ].
        recoveredBlock51Step = 221 ifTrue: [
            recoveredBlock51Stack1 := recoveredBlock51Arg1.
            recoveredBlock51PC := 224.
        ].
        recoveredBlock51Step = 224 ifTrue: [
            recoveredBlock51Stack2 := 'usingServiceRoutines'.
            recoveredBlock51PC := 226.
        ].
        recoveredBlock51Step = 226 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) getBoolean: (recoveredBlock51Stack2).
            recoveredBlock51PC := 228.
        ].
        recoveredBlock51Step = 228 ifTrue: [
            (recoveredBlock51Stack1) ifTrue: [recoveredBlock51PC := 232] ifFalse: [recoveredBlock51PC := 238].
        ].
        recoveredBlock51Step = 232 ifTrue: [
            recoveredBlock51Stack1 := 'setUsingServiceRoutine'.
            recoveredBlock51PC := 234.
        ].
        recoveredBlock51Step = 234 ifTrue: [
            recoveredBlock51PC := 240.
        ].
        recoveredBlock51Step = 238 ifTrue: [
            recoveredBlock51Stack1 := 'clearUsingServiceRoutine'.
            recoveredBlock51PC := 240.
        ].
        recoveredBlock51Step = 240 ifTrue: [
            (recoveredBlock51Stack0) perform: (recoveredBlock51Stack1).
            recoveredBlock51PC := 242.
        ].
        recoveredBlock51Step = 242 ifTrue: [
            recoveredBlock51Stack0 := recoveredBlock51Local12.
            recoveredBlock51PC := 245.
        ].
        recoveredBlock51Step = 245 ifTrue: [
            recoveredBlock51Stack1 := recoveredBlock51Arg1.
            recoveredBlock51PC := 248.
        ].
        recoveredBlock51Step = 248 ifTrue: [
            recoveredBlock51Stack2 := 'productionCodeOnly'.
            recoveredBlock51PC := 250.
        ].
        recoveredBlock51Step = 250 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) getBoolean: (recoveredBlock51Stack2).
            recoveredBlock51PC := 252.
        ].
        recoveredBlock51Step = 252 ifTrue: [
            (recoveredBlock51Stack1) ifTrue: [recoveredBlock51PC := 256] ifFalse: [recoveredBlock51PC := 262].
        ].
        recoveredBlock51Step = 256 ifTrue: [
            recoveredBlock51Stack1 := 'setProductionCodeOnly'.
            recoveredBlock51PC := 258.
        ].
        recoveredBlock51Step = 258 ifTrue: [
            recoveredBlock51PC := 264.
        ].
        recoveredBlock51Step = 262 ifTrue: [
            recoveredBlock51Stack1 := 'clearProductionCodeOnly'.
            recoveredBlock51PC := 264.
        ].
        recoveredBlock51Step = 264 ifTrue: [
            (recoveredBlock51Stack0) perform: (recoveredBlock51Stack1).
            recoveredBlock51PC := 266.
        ].
        recoveredBlock51Step = 266 ifTrue: [
            recoveredBlock51Stack0 := recoveredBlock51Local12.
            recoveredBlock51PC := 269.
        ].
        recoveredBlock51Step = 269 ifTrue: [
            recoveredBlock51Stack1 := recoveredBlock51Arg1.
            recoveredBlock51PC := 272.
        ].
        recoveredBlock51Step = 272 ifTrue: [
            recoveredBlock51Stack2 := 'optimizeMethodCalls'.
            recoveredBlock51PC := 274.
        ].
        recoveredBlock51Step = 274 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) getBoolean: (recoveredBlock51Stack2).
            recoveredBlock51PC := 276.
        ].
        recoveredBlock51Step = 276 ifTrue: [
            (recoveredBlock51Stack1) ifTrue: [recoveredBlock51PC := 280] ifFalse: [recoveredBlock51PC := 286].
        ].
        recoveredBlock51Step = 280 ifTrue: [
            recoveredBlock51Stack1 := 'clearNoOptimize'.
            recoveredBlock51PC := 282.
        ].
        recoveredBlock51Step = 282 ifTrue: [
            recoveredBlock51PC := 288.
        ].
        recoveredBlock51Step = 286 ifTrue: [
            recoveredBlock51Stack1 := 'setNoOptimize'.
            recoveredBlock51PC := 288.
        ].
        recoveredBlock51Step = 288 ifTrue: [
            (recoveredBlock51Stack0) perform: (recoveredBlock51Stack1).
            recoveredBlock51PC := 290.
        ].
        recoveredBlock51Step = 290 ifTrue: [
            recoveredBlock51Stack0 := recoveredBlock51Local12.
            recoveredBlock51PC := 293.
        ].
        recoveredBlock51Step = 293 ifTrue: [
            recoveredBlock51Stack1 := recoveredBlock51Arg1.
            recoveredBlock51PC := 296.
        ].
        recoveredBlock51Step = 296 ifTrue: [
            recoveredBlock51Stack2 := 'hierarchicalGenerationForSM'.
            recoveredBlock51PC := 298.
        ].
        recoveredBlock51Step = 298 ifTrue: [
            recoveredBlock51Stack3 := false.
            recoveredBlock51PC := 299.
        ].
        recoveredBlock51Step = 299 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) getBoolean: (recoveredBlock51Stack2) default: (recoveredBlock51Stack3).
            recoveredBlock51PC := 301.
        ].
        recoveredBlock51Step = 301 ifTrue: [
            (recoveredBlock51Stack1) ifTrue: [recoveredBlock51PC := 304] ifFalse: [recoveredBlock51PC := 310].
        ].
        recoveredBlock51Step = 304 ifTrue: [
            recoveredBlock51Stack1 := 'setSmHierarchicalGeneration'.
            recoveredBlock51PC := 306.
        ].
        recoveredBlock51Step = 306 ifTrue: [
            recoveredBlock51PC := 312.
        ].
        recoveredBlock51Step = 310 ifTrue: [
            recoveredBlock51Stack1 := 'clearSmHierarchicalGeneration'.
            recoveredBlock51PC := 312.
        ].
        recoveredBlock51Step = 312 ifTrue: [
            (recoveredBlock51Stack0) perform: (recoveredBlock51Stack1).
            recoveredBlock51PC := 314.
        ].
        recoveredBlock51Step = 314 ifTrue: [
            recoveredBlock51Stack0 := recoveredBlock51Local12.
            recoveredBlock51PC := 317.
        ].
        recoveredBlock51Step = 317 ifTrue: [
            recoveredBlock51Stack1 := recoveredBlock51Arg1.
            recoveredBlock51PC := 320.
        ].
        recoveredBlock51Step = 320 ifTrue: [
            recoveredBlock51Stack2 := 'outlineMethodsSM'.
            recoveredBlock51PC := 322.
        ].
        recoveredBlock51Step = 322 ifTrue: [
            recoveredBlock51Stack3 := false.
            recoveredBlock51PC := 323.
        ].
        recoveredBlock51Step = 323 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) getBoolean: (recoveredBlock51Stack2) default: (recoveredBlock51Stack3).
            recoveredBlock51PC := 325.
        ].
        recoveredBlock51Step = 325 ifTrue: [
            (recoveredBlock51Stack1) ifTrue: [recoveredBlock51PC := 328] ifFalse: [recoveredBlock51PC := 334].
        ].
        recoveredBlock51Step = 328 ifTrue: [
            recoveredBlock51Stack1 := 'setSmOutline'.
            recoveredBlock51PC := 330.
        ].
        recoveredBlock51Step = 330 ifTrue: [
            recoveredBlock51PC := 336.
        ].
        recoveredBlock51Step = 334 ifTrue: [
            recoveredBlock51Stack1 := 'clearSmOutline'.
            recoveredBlock51PC := 336.
        ].
        recoveredBlock51Step = 336 ifTrue: [
            (recoveredBlock51Stack0) perform: (recoveredBlock51Stack1).
            recoveredBlock51PC := 338.
        ].
        recoveredBlock51Step = 338 ifTrue: [
            recoveredBlock51Stack0 := recoveredBlock51Local12.
            recoveredBlock51PC := 341.
        ].
        recoveredBlock51Step = 341 ifTrue: [
            recoveredBlock51Stack1 := recoveredBlock51Arg1.
            recoveredBlock51PC := 344.
        ].
        recoveredBlock51Step = 344 ifTrue: [
            recoveredBlock51Stack2 := 'inlinePrivateMethodsSM'.
            recoveredBlock51PC := 346.
        ].
        recoveredBlock51Step = 346 ifTrue: [
            recoveredBlock51Stack3 := false.
            recoveredBlock51PC := 347.
        ].
        recoveredBlock51Step = 347 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) getBoolean: (recoveredBlock51Stack2) default: (recoveredBlock51Stack3).
            recoveredBlock51PC := 349.
        ].
        recoveredBlock51Step = 349 ifTrue: [
            (recoveredBlock51Stack1) ifTrue: [recoveredBlock51PC := 352] ifFalse: [recoveredBlock51PC := 358].
        ].
        recoveredBlock51Step = 352 ifTrue: [
            recoveredBlock51Stack1 := 'setSmAutoInlinePrivateMethods'.
            recoveredBlock51PC := 354.
        ].
        recoveredBlock51Step = 354 ifTrue: [
            recoveredBlock51PC := 360.
        ].
        recoveredBlock51Step = 358 ifTrue: [
            recoveredBlock51Stack1 := 'clearSmAutoInlinePrivateMethods'.
            recoveredBlock51PC := 360.
        ].
        recoveredBlock51Step = 360 ifTrue: [
            (recoveredBlock51Stack0) perform: (recoveredBlock51Stack1).
            recoveredBlock51PC := 362.
        ].
        recoveredBlock51Step = 362 ifTrue: [
            recoveredBlock51Stack0 := 'Kli'.
            recoveredBlock51PC := 364.
        ].
        recoveredBlock51Step = 364 ifTrue: [
            recoveredBlock51Stack1 := 'Call_312528'.
            recoveredBlock51PC := 366.
        ].
        recoveredBlock51Step = 366 ifTrue: [
            recoveredBlock51Stack0 := (recoveredBlock51Stack0) == (recoveredBlock51Stack1).
            recoveredBlock51PC := 367.
        ].
        recoveredBlock51Step = 367 ifTrue: [
            recoveredBlock51PC := 368.
        ].
        recoveredBlock51Step = 368 ifTrue: [
            recoveredBlock51Stack0 := recoveredBlock51Arg1.
            recoveredBlock51PC := 371.
        ].
        recoveredBlock51Step = 371 ifTrue: [
            recoveredBlock51Stack1 := 'generateDataStructures'.
            recoveredBlock51PC := 373.
        ].
        recoveredBlock51Step = 373 ifTrue: [
            recoveredBlock51Stack2 := nil.
            recoveredBlock51PC := 374.
        ].
        recoveredBlock51Step = 374 ifTrue: [
            recoveredBlock51Stack0 := (recoveredBlock51Stack0) getBoolean: (recoveredBlock51Stack1) default: (recoveredBlock51Stack2).
            recoveredBlock51PC := 376.
        ].
        recoveredBlock51Step = 376 ifTrue: [
            recoveredBlock51Stack1 := [:recoveredBlock51Block376Arg1 | 
    | recoveredBlock51Block376Stack0 recoveredBlock51Block376Stack1 recoveredBlock51Block376Stack2 recoveredBlock51Block376PC recoveredBlock51Block376Step recoveredBlock51Block376Done recoveredBlock51Block376Result |
    recoveredBlock51Block376Stack0 := nil.
    recoveredBlock51Block376PC := 382.
    recoveredBlock51Block376Done := false.
    [recoveredBlock51Block376Done not] whileTrue: [
        recoveredBlock51Block376Step := recoveredBlock51Block376PC.
        recoveredBlock51Block376Step = 382 ifTrue: [
            recoveredBlock51Block376Stack1 := recoveredBlock51Block376Arg1.
            recoveredBlock51Block376PC := 383.
        ].
        recoveredBlock51Block376Step = 383 ifTrue: [
            (recoveredBlock51Block376Stack1) ifTrue: [recoveredBlock51Block376PC := 386] ifFalse: [recoveredBlock51Block376PC := 394].
        ].
        recoveredBlock51Block376Step = 386 ifTrue: [
            recoveredBlock51Block376Stack1 := recoveredBlock51Local12.
            recoveredBlock51Block376PC := 389.
        ].
        recoveredBlock51Block376Step = 389 ifTrue: [
            recoveredBlock51Block376Stack1 := (recoveredBlock51Block376Stack1) clearNoGenerateDataStructures.
            recoveredBlock51Block376PC := 391.
        ].
        recoveredBlock51Block376Step = 391 ifTrue: [
            recoveredBlock51Block376PC := 399.
        ].
        recoveredBlock51Block376Step = 394 ifTrue: [
            recoveredBlock51Block376Stack1 := recoveredBlock51Local12.
            recoveredBlock51Block376PC := 397.
        ].
        recoveredBlock51Block376Step = 397 ifTrue: [
            recoveredBlock51Block376Stack1 := (recoveredBlock51Block376Stack1) setNoGenerateDataStructures.
            recoveredBlock51Block376PC := 399.
        ].
        recoveredBlock51Block376Step = 399 ifTrue: [
            recoveredBlock51Block376Result := recoveredBlock51Block376Stack1.
            recoveredBlock51Block376Done := true.
        ].
    ].
    recoveredBlock51Block376Result
].
            recoveredBlock51PC := 400.
        ].
        recoveredBlock51Step = 400 ifTrue: [
            (recoveredBlock51Stack0) ifNotNil: (recoveredBlock51Stack1).
            recoveredBlock51PC := 405.
        ].
        recoveredBlock51Step = 405 ifTrue: [
            recoveredBlock51Stack0 := recoveredBlock51Arg1.
            recoveredBlock51PC := 408.
        ].
        recoveredBlock51Step = 408 ifTrue: [
            recoveredBlock51Stack1 := 'isService'.
            recoveredBlock51PC := 412.
        ].
        recoveredBlock51Step = 412 ifTrue: [
            recoveredBlock51Stack2 := nil.
            recoveredBlock51PC := 413.
        ].
        recoveredBlock51Step = 413 ifTrue: [
            recoveredBlock51Stack0 := (recoveredBlock51Stack0) getBoolean: (recoveredBlock51Stack1) default: (recoveredBlock51Stack2).
            recoveredBlock51PC := 415.
        ].
        recoveredBlock51Step = 415 ifTrue: [
            recoveredBlock51Stack1 := recoveredBlock51Stack0.
            recoveredBlock51PC := 416.
        ].
        recoveredBlock51Step = 416 ifTrue: [
            recoveredBlock51Local1 := recoveredBlock51Stack1.
            recoveredBlock51PC := 419.
        ].
        recoveredBlock51Step = 419 ifTrue: [
            (recoveredBlock51Stack0 == nil) ifTrue: [recoveredBlock51PC := 433] ifFalse: [recoveredBlock51PC := 422].
        ].
        recoveredBlock51Step = 422 ifTrue: [
            recoveredBlock51Stack0 := recoveredBlock51Local12.
            recoveredBlock51PC := 425.
        ].
        recoveredBlock51Step = 425 ifTrue: [
            recoveredBlock51Stack1 := recoveredBlock51Local1.
            recoveredBlock51PC := 428.
        ].
        recoveredBlock51Step = 428 ifTrue: [
            (recoveredBlock51Stack0) xmlIsServiceFlag: (recoveredBlock51Stack1).
            recoveredBlock51PC := 433.
        ].
        recoveredBlock51Step = 433 ifTrue: [
            recoveredBlock51Stack0 := recoveredBlock51Arg1.
            recoveredBlock51PC := 436.
        ].
        recoveredBlock51Step = 436 ifTrue: [
            recoveredBlock51Stack1 := 'packageName'.
            recoveredBlock51PC := 440.
        ].
        recoveredBlock51Step = 440 ifTrue: [
            recoveredBlock51Stack2 := nil.
            recoveredBlock51PC := 441.
        ].
        recoveredBlock51Step = 441 ifTrue: [
            recoveredBlock51Stack0 := (recoveredBlock51Stack0) getString: (recoveredBlock51Stack1) default: (recoveredBlock51Stack2).
            recoveredBlock51PC := 445.
        ].
        recoveredBlock51Step = 445 ifTrue: [
            recoveredBlock51Stack1 := recoveredBlock51Stack0.
            recoveredBlock51PC := 446.
        ].
        recoveredBlock51Step = 446 ifTrue: [
            recoveredBlock51Local2 := recoveredBlock51Stack1.
            recoveredBlock51PC := 449.
        ].
        recoveredBlock51Step = 449 ifTrue: [
            (recoveredBlock51Stack0 == nil) ifTrue: [recoveredBlock51PC := 463] ifFalse: [recoveredBlock51PC := 452].
        ].
        recoveredBlock51Step = 452 ifTrue: [
            recoveredBlock51Stack0 := recoveredBlock51Local12.
            recoveredBlock51PC := 455.
        ].
        recoveredBlock51Step = 455 ifTrue: [
            recoveredBlock51Stack1 := recoveredBlock51Local2.
            recoveredBlock51PC := 458.
        ].
        recoveredBlock51Step = 458 ifTrue: [
            (recoveredBlock51Stack0) xmlAutosarPackageName: (recoveredBlock51Stack1).
            recoveredBlock51PC := 463.
        ].
        recoveredBlock51Step = 463 ifTrue: [
            recoveredBlock51Stack0 := 'Kli'.
            recoveredBlock51PC := 465.
        ].
        recoveredBlock51Step = 465 ifTrue: [
            recoveredBlock51Stack1 := 'Call_2008400501'.
            recoveredBlock51PC := 468.
        ].
        recoveredBlock51Step = 468 ifTrue: [
            recoveredBlock51Stack0 := (recoveredBlock51Stack0) == (recoveredBlock51Stack1).
            recoveredBlock51PC := 469.
        ].
        recoveredBlock51Step = 469 ifTrue: [
            recoveredBlock51PC := 470.
        ].
        recoveredBlock51Step = 470 ifTrue: [
            recoveredBlock51Stack0 := self.
            recoveredBlock51PC := 471.
        ].
        recoveredBlock51Step = 471 ifTrue: [
            recoveredBlock51Stack1 := recoveredBlock51Local12.
            recoveredBlock51PC := 474.
        ].
        recoveredBlock51Step = 474 ifTrue: [
            recoveredBlock51Stack2 := recoveredBlock51Arg1.
            recoveredBlock51PC := 477.
        ].
        recoveredBlock51Step = 477 ifTrue: [
            recoveredBlock51Stack3 := 'cacheLocking'.
            recoveredBlock51PC := 480.
        ].
        recoveredBlock51Step = 480 ifTrue: [
            recoveredBlock51Stack4 := 'automatic'.
            recoveredBlock51PC := 484.
        ].
        recoveredBlock51Step = 484 ifTrue: [
            recoveredBlock51Stack2 := (recoveredBlock51Stack2) getEnum: (recoveredBlock51Stack3) default: (recoveredBlock51Stack4).
            recoveredBlock51PC := 489.
        ].
        recoveredBlock51Step = 489 ifTrue: [
            (recoveredBlock51Stack0) setMemorySegment: (recoveredBlock51Stack1) attr: (recoveredBlock51Stack2).
            recoveredBlock51PC := 493.
        ].
        recoveredBlock51Step = 493 ifTrue: [
            recoveredBlock51Stack0 := 'Kli'.
            recoveredBlock51PC := 495.
        ].
        recoveredBlock51Step = 495 ifTrue: [
            recoveredBlock51Stack1 := 'Call_1004130'.
            recoveredBlock51PC := 498.
        ].
        recoveredBlock51Step = 498 ifTrue: [
            recoveredBlock51Stack0 := (recoveredBlock51Stack0) == (recoveredBlock51Stack1).
            recoveredBlock51PC := 499.
        ].
        recoveredBlock51Step = 499 ifTrue: [
            recoveredBlock51PC := 500.
        ].
        recoveredBlock51Step = 500 ifTrue: [
            recoveredBlock51Stack0 := recoveredBlock51Local12.
            recoveredBlock51PC := 503.
        ].
        recoveredBlock51Step = 503 ifTrue: [
            recoveredBlock51Stack1 := recoveredBlock51Arg1.
            recoveredBlock51PC := 506.
        ].
        recoveredBlock51Step = 506 ifTrue: [
            recoveredBlock51Stack2 := 'userDefinedOrder'.
            recoveredBlock51PC := 510.
        ].
        recoveredBlock51Step = 510 ifTrue: [
            recoveredBlock51Stack3 := false.
            recoveredBlock51PC := 511.
        ].
        recoveredBlock51Step = 511 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) getBoolean: (recoveredBlock51Stack2) default: (recoveredBlock51Stack3).
            recoveredBlock51PC := 513.
        ].
        recoveredBlock51Step = 513 ifTrue: [
            (recoveredBlock51Stack1) ifTrue: [recoveredBlock51PC := 516] ifFalse: [recoveredBlock51PC := 524].
        ].
        recoveredBlock51Step = 516 ifTrue: [
            recoveredBlock51Stack1 := 'setUserDefinedOrder'.
            recoveredBlock51PC := 520.
        ].
        recoveredBlock51Step = 520 ifTrue: [
            recoveredBlock51PC := 528.
        ].
        recoveredBlock51Step = 524 ifTrue: [
            recoveredBlock51Stack1 := 'clearUserDefinedOrder'.
            recoveredBlock51PC := 528.
        ].
        recoveredBlock51Step = 528 ifTrue: [
            (recoveredBlock51Stack0) perform: (recoveredBlock51Stack1).
            recoveredBlock51PC := 530.
        ].
        recoveredBlock51Step = 530 ifTrue: [
            recoveredBlock51Stack0 := 'Kli'.
            recoveredBlock51PC := 532.
        ].
        recoveredBlock51Step = 532 ifTrue: [
            recoveredBlock51Stack1 := 'WorkspaceTimeStamps'.
            recoveredBlock51PC := 536.
        ].
        recoveredBlock51Step = 536 ifTrue: [
            recoveredBlock51Stack0 := (recoveredBlock51Stack0) == (recoveredBlock51Stack1).
            recoveredBlock51PC := 537.
        ].
        recoveredBlock51Step = 537 ifTrue: [
            recoveredBlock51PC := 538.
        ].
        recoveredBlock51Step = 538 ifTrue: [
            recoveredBlock51Stack0 := self.
            recoveredBlock51PC := 539.
        ].
        recoveredBlock51Step = 539 ifTrue: [
            recoveredBlock51Stack1 := Array.
            recoveredBlock51PC := 542.
        ].
        recoveredBlock51Step = 542 ifTrue: [
            recoveredBlock51Stack2 := 'ComponentImplementation'.
            recoveredBlock51PC := 544.
        ].
        recoveredBlock51Step = 544 ifTrue: [
            recoveredBlock51Stack3 := [:recoveredBlock51Block544Arg1 | 
    | recoveredBlock51Block544Value0 recoveredBlock51Block544Value1 recoveredBlock51Block544Value2 recoveredBlock51Block544Value3 |
    recoveredBlock51Block544Value0 := recoveredBlock51Block544Arg1.
    recoveredBlock51Block544Value1 := (recoveredBlock51Block544Value0) getAttribute: ('name').
    recoveredBlock51Block544Value2 := recoveredBlock51Local8.
    recoveredBlock51Block544Value3 := (recoveredBlock51Block544Value1) = (recoveredBlock51Block544Value2).
    recoveredBlock51Block544Value3
].
            recoveredBlock51PC := 562.
        ].
        recoveredBlock51Step = 562 ifTrue: [
            recoveredBlock51Stack4 := 'TimeStamp'.
            recoveredBlock51PC := 566.
        ].
        recoveredBlock51Step = 566 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) with: (recoveredBlock51Stack2) with: (recoveredBlock51Stack3) with: (recoveredBlock51Stack4).
            recoveredBlock51PC := 571.
        ].
        recoveredBlock51Step = 571 ifTrue: [
            recoveredBlock51Stack2 := recoveredBlock51Arg1.
            recoveredBlock51PC := 574.
        ].
        recoveredBlock51Step = 574 ifTrue: [
            recoveredBlock51Stack3 := [:recoveredBlock51Block574Arg1 | 
    | recoveredBlock51Block574Value0 recoveredBlock51Block574Value1 recoveredBlock51Block574Value2 recoveredBlock51Block574Value3 recoveredBlock51Block574Value4 |
    recoveredBlock51Block574Value0 := recoveredBlock51Block574Arg1.
    recoveredBlock51Block574Value1 := (recoveredBlock51Block574Value0) getDateTime: ('timeStampValue').
    recoveredBlock51Local4 := recoveredBlock51Block574Value1.
    recoveredBlock51Block574Value2 := recoveredBlock51Block574Arg1.
    recoveredBlock51Block574Value3 := (recoveredBlock51Block574Value2) getNNInt: ('timeStampCounter') default: (0).
    recoveredBlock51Block574Value4 := recoveredBlock51Block574Value3.
    recoveredBlock51Local3 := recoveredBlock51Block574Value4.
    recoveredBlock51Block574Value3
].
            recoveredBlock51PC := 608.
        ].
        recoveredBlock51Step = 608 ifTrue: [
            recoveredBlock51Stack4 := [
    | recoveredBlock51Block608Value0 recoveredBlock51Block608Value1 |
    recoveredBlock51Block608Value0 := Date.
    recoveredBlock51Block608Value1 := (recoveredBlock51Block608Value0) dateAndTimeNowInSeconds.
    recoveredBlock51Local4 := recoveredBlock51Block608Value1.
    recoveredBlock51Local3 := 0.
    0
].
            recoveredBlock51PC := 633.
        ].
        recoveredBlock51Step = 633 ifTrue: [
            (recoveredBlock51Stack0) metaAt: (recoveredBlock51Stack1) or: (recoveredBlock51Stack2) do: (recoveredBlock51Stack3) ifNot: (recoveredBlock51Stack4).
            recoveredBlock51PC := 637.
        ].
        recoveredBlock51Step = 637 ifTrue: [
            recoveredBlock51Stack0 := recoveredBlock51Arg1.
            recoveredBlock51PC := 640.
        ].
        recoveredBlock51Step = 640 ifTrue: [
            recoveredBlock51Stack1 := 'Notes'.
            recoveredBlock51PC := 644.
        ].
        recoveredBlock51Step = 644 ifTrue: [
            recoveredBlock51Stack2 := [:block28124f3cArg1 | 
    | block28124f3cValue0 |
    block28124f3cValue0 := block28124f3cArg1.
    block28124f3cValue0
].
            recoveredBlock51PC := 648.
        ].
        recoveredBlock51Step = 648 ifTrue: [
            recoveredBlock51PC := 654.
        ].
        recoveredBlock51Step = 654 ifTrue: [
            recoveredBlock51Stack0 := (recoveredBlock51Stack0) optional: (recoveredBlock51Stack1) do: (recoveredBlock51Stack2).
            recoveredBlock51PC := 659.
        ].
        recoveredBlock51Step = 659 ifTrue: [
            recoveredBlock51Local5 := recoveredBlock51Stack0.
            recoveredBlock51PC := 662.
        ].
        recoveredBlock51Step = 662 ifTrue: [
            recoveredBlock51Stack0 := self.
            recoveredBlock51PC := 663.
        ].
        recoveredBlock51Step = 663 ifTrue: [
            recoveredBlock51Stack1 := recoveredBlock51Arg1.
            recoveredBlock51PC := 666.
        ].
        recoveredBlock51Step = 666 ifTrue: [
            recoveredBlock51Stack2 := [:recoveredBlock51Block666Arg1 | 
    | recoveredBlock51Block666Value0 recoveredBlock51Block666Value1 recoveredBlock51Block666Value2 recoveredBlock51Block666Value3 |
    recoveredBlock51Block666Value0 := recoveredBlock51Local12.
    recoveredBlock51Block666Value1 := (recoveredBlock51Block666Value0) xmlCustomerDataBasic.
    recoveredBlock51Block666Value2 := recoveredBlock51Block666Arg1.
    recoveredBlock51Block666Value3 := (recoveredBlock51Block666Value1) configuration: (recoveredBlock51Block666Value2).
    recoveredBlock51Block666Value3
].
            recoveredBlock51PC := 686.
        ].
        recoveredBlock51Step = 686 ifTrue: [
            (recoveredBlock51Stack0) readCustomerDatas: (recoveredBlock51Stack1) storeBlock: (recoveredBlock51Stack2).
            recoveredBlock51PC := 691.
        ].
        recoveredBlock51Step = 691 ifTrue: [
            recoveredBlock51Stack0 := 'Bfr'.
            recoveredBlock51PC := 694.
        ].
        recoveredBlock51Step = 694 ifTrue: [
            recoveredBlock51Stack1 := 'Call_382688'.
            recoveredBlock51PC := 698.
        ].
        recoveredBlock51Step = 698 ifTrue: [
            recoveredBlock51Stack0 := (recoveredBlock51Stack0) == (recoveredBlock51Stack1).
            recoveredBlock51PC := 699.
        ].
        recoveredBlock51Step = 699 ifTrue: [
            recoveredBlock51PC := 700.
        ].
        recoveredBlock51Step = 700 ifTrue: [
            recoveredBlock51Stack0 := self.
            recoveredBlock51PC := 701.
        ].
        recoveredBlock51Step = 701 ifTrue: [
            recoveredBlock51Stack1 := recoveredBlock51Arg1.
            recoveredBlock51PC := 704.
        ].
        recoveredBlock51Step = 704 ifTrue: [
            recoveredBlock51Stack2 := recoveredBlock51Local12.
            recoveredBlock51PC := 707.
        ].
        recoveredBlock51Step = 707 ifTrue: [
            (recoveredBlock51Stack0) readRecordImplExternDeclarationT: (recoveredBlock51Stack1) impl: (recoveredBlock51Stack2).
            recoveredBlock51PC := 711.
        ].
        recoveredBlock51Step = 711 ifTrue: [
            recoveredBlock51Stack0 := recoveredBlock51Arg1.
            recoveredBlock51PC := 714.
        ].
        recoveredBlock51Step = 714 ifTrue: [
            recoveredBlock51Stack1 := 'ImplementationEntry'.
            recoveredBlock51PC := 718.
        ].
        recoveredBlock51Step = 718 ifTrue: [
            recoveredBlock51Stack2 := [:recoveredBlock51Block718Arg1 | 
    | recoveredBlock51Block718Value0 recoveredBlock51Block718Value1 recoveredBlock51Block718Value2 recoveredBlock51Block718Value3 |
    recoveredBlock51Block718Value0 := recoveredBlock51Block718Arg1.
    recoveredBlock51Block718Value1 := recoveredBlock51Local12.
    recoveredBlock51Block718Value2 := recoveredBlock51Local6.
    recoveredBlock51Block718Value3 := (self) readImplementationEntryT: (recoveredBlock51Block718Value0) impl: (recoveredBlock51Block718Value1) customerData: (recoveredBlock51Block718Value2).
    recoveredBlock51Block718Value3
].
            recoveredBlock51PC := 736.
        ].
        recoveredBlock51Step = 736 ifTrue: [
            (recoveredBlock51Stack0) multiple: (recoveredBlock51Stack1) do: (recoveredBlock51Stack2).
            recoveredBlock51PC := 741.
        ].
        recoveredBlock51Step = 741 ifTrue: [
            recoveredBlock51Stack0 := recoveredBlock51Local6.
            recoveredBlock51PC := 744.
        ].
        recoveredBlock51Step = 744 ifTrue: [
            recoveredBlock51Stack0 := (recoveredBlock51Stack0) notEmpty.
            recoveredBlock51PC := 749.
        ].
        recoveredBlock51Step = 749 ifTrue: [
            (recoveredBlock51Stack0) ifTrue: [recoveredBlock51PC := 752] ifFalse: [recoveredBlock51PC := 767].
        ].
        recoveredBlock51Step = 752 ifTrue: [
            recoveredBlock51Stack0 := recoveredBlock51Local12.
            recoveredBlock51PC := 755.
        ].
        recoveredBlock51Step = 755 ifTrue: [
            recoveredBlock51Stack0 := (recoveredBlock51Stack0) xmlCustomerDataBasic.
            recoveredBlock51PC := 759.
        ].
        recoveredBlock51Step = 759 ifTrue: [
            recoveredBlock51Stack1 := recoveredBlock51Local6.
            recoveredBlock51PC := 762.
        ].
        recoveredBlock51Step = 762 ifTrue: [
            (recoveredBlock51Stack0) elements: (recoveredBlock51Stack1).
            recoveredBlock51PC := 767.
        ].
        recoveredBlock51Step = 767 ifTrue: [
            recoveredBlock51Stack0 := recoveredBlock51Arg1.
            recoveredBlock51PC := 770.
        ].
        recoveredBlock51Step = 770 ifTrue: [
            recoveredBlock51Stack1 := 'CheckSum'.
            recoveredBlock51PC := 774.
        ].
        recoveredBlock51Step = 774 ifTrue: [
            recoveredBlock51Stack2 := [:block28124f60Arg1 | 
    | block28124f60Value0 |
    block28124f60Value0 := ('csIgnored') notNil.
    block28124f60Value0
].
            recoveredBlock51PC := 778.
        ].
        recoveredBlock51Step = 778 ifTrue: [
            recoveredBlock51PC := 788.
        ].
        recoveredBlock51Step = 788 ifTrue: [
            (recoveredBlock51Stack0) optional: (recoveredBlock51Stack1) do: (recoveredBlock51Stack2).
            recoveredBlock51PC := 793.
        ].
        recoveredBlock51Step = 793 ifTrue: [
            recoveredBlock51Stack0 := recoveredBlock51Arg1.
            recoveredBlock51PC := 796.
        ].
        recoveredBlock51Step = 796 ifTrue: [
            recoveredBlock51Stack1 := handler.
            recoveredBlock51PC := 798.
        ].
        recoveredBlock51Step = 798 ifTrue: [
            (recoveredBlock51Stack0) doneIfNot: (recoveredBlock51Stack1).
            recoveredBlock51PC := 803.
        ].
        recoveredBlock51Step = 803 ifTrue: [
            recoveredBlock51Stack0 := addImplInfos.
            recoveredBlock51PC := 805.
        ].
        recoveredBlock51Step = 805 ifTrue: [
            recoveredBlock51Stack0 := (recoveredBlock51Stack0) size.
            recoveredBlock51PC := 809.
        ].
        recoveredBlock51Step = 809 ifTrue: [
            recoveredBlock51Stack1 := 0.
            recoveredBlock51PC := 811.
        ].
        recoveredBlock51Step = 811 ifTrue: [
            recoveredBlock51Stack0 := (recoveredBlock51Stack0) > (recoveredBlock51Stack1).
            recoveredBlock51PC := 812.
        ].
        recoveredBlock51Step = 812 ifTrue: [
            (recoveredBlock51Stack0) ifTrue: [recoveredBlock51PC := 816] ifFalse: [recoveredBlock51PC := 825].
        ].
        recoveredBlock51Step = 816 ifTrue: [
            recoveredBlock51Stack0 := recoveredBlock51Local12.
            recoveredBlock51PC := 819.
        ].
        recoveredBlock51Step = 819 ifTrue: [
            recoveredBlock51Stack1 := addImplInfos.
            recoveredBlock51PC := 821.
        ].
        recoveredBlock51Step = 821 ifTrue: [
            (recoveredBlock51Stack0) additionalImplInfo: (recoveredBlock51Stack1).
            recoveredBlock51PC := 825.
        ].
        recoveredBlock51Step = 825 ifTrue: [
            recoveredBlock51Stack0 := rescalingFormulas.
            recoveredBlock51PC := 827.
        ].
        recoveredBlock51Step = 827 ifTrue: [
            recoveredBlock51Stack0 := (recoveredBlock51Stack0) size.
            recoveredBlock51PC := 831.
        ].
        recoveredBlock51Step = 831 ifTrue: [
            recoveredBlock51Stack1 := 0.
            recoveredBlock51PC := 833.
        ].
        recoveredBlock51Step = 833 ifTrue: [
            recoveredBlock51Stack0 := (recoveredBlock51Stack0) > (recoveredBlock51Stack1).
            recoveredBlock51PC := 834.
        ].
        recoveredBlock51Step = 834 ifTrue: [
            (recoveredBlock51Stack0) ifTrue: [recoveredBlock51PC := 838] ifFalse: [recoveredBlock51PC := 847].
        ].
        recoveredBlock51Step = 838 ifTrue: [
            recoveredBlock51Stack0 := recoveredBlock51Local12.
            recoveredBlock51PC := 841.
        ].
        recoveredBlock51Step = 841 ifTrue: [
            recoveredBlock51Stack1 := rescalingFormulas.
            recoveredBlock51PC := 843.
        ].
        recoveredBlock51Step = 843 ifTrue: [
            (recoveredBlock51Stack0) rescalingFormulas: (recoveredBlock51Stack1).
            recoveredBlock51PC := 847.
        ].
        recoveredBlock51Step = 847 ifTrue: [
            recoveredBlock51Stack0 := self.
            recoveredBlock51PC := 848.
        ].
        recoveredBlock51Step = 848 ifTrue: [
            recoveredBlock51Stack1 := recoveredBlock51Local12.
            recoveredBlock51PC := 851.
        ].
        recoveredBlock51Step = 851 ifTrue: [
            recoveredBlock51Stack2 := recoveredBlock51Local8.
            recoveredBlock51PC := 854.
        ].
        recoveredBlock51Step = 854 ifTrue: [
            recoveredBlock51Stack3 := recoveredBlock51Local7.
            recoveredBlock51PC := 857.
        ].
        recoveredBlock51Step = 857 ifTrue: [
            recoveredBlock51Stack4 := recoveredBlock51Local9.
            recoveredBlock51PC := 860.
        ].
        recoveredBlock51Step = 860 ifTrue: [
            recoveredBlock51Stack5 := recoveredBlock51Arg1.
            recoveredBlock51PC := 863.
        ].
        recoveredBlock51Step = 863 ifTrue: [
            recoveredBlock51Stack6 := 'default'.
            recoveredBlock51PC := 866.
        ].
        recoveredBlock51Step = 866 ifTrue: [
            recoveredBlock51Stack5 := (recoveredBlock51Stack5) getBoolean: (recoveredBlock51Stack6).
            recoveredBlock51PC := 868.
        ].
        recoveredBlock51Step = 868 ifTrue: [
            recoveredBlock51Stack6 := recoveredBlock51Local5.
            recoveredBlock51PC := 871.
        ].
        recoveredBlock51Step = 871 ifTrue: [
            (recoveredBlock51Stack0) saveSet: (recoveredBlock51Stack1) name: (recoveredBlock51Stack2) oid: (recoveredBlock51Stack3) isClassConfig: (recoveredBlock51Stack4) isDefault: (recoveredBlock51Stack5) notes: (recoveredBlock51Stack6).
            recoveredBlock51PC := 875.
        ].
        recoveredBlock51Step = 875 ifTrue: [
            recoveredBlock51Stack0 := self.
            recoveredBlock51PC := 876.
        ].
        recoveredBlock51Step = 876 ifTrue: [
            recoveredBlock51Stack1 := recoveredBlock51Local9.
            recoveredBlock51PC := 879.
        ].
        recoveredBlock51Step = 879 ifTrue: [
            (recoveredBlock51Stack1) ifTrue: [recoveredBlock51PC := 882] ifFalse: [recoveredBlock51PC := 888].
        ].
        recoveredBlock51Step = 882 ifTrue: [
            recoveredBlock51Stack1 := recoveredLocal2.
            recoveredBlock51PC := 885.
        ].
        recoveredBlock51Step = 885 ifTrue: [
            recoveredBlock51PC := 891.
        ].
        recoveredBlock51Step = 888 ifTrue: [
            recoveredBlock51Stack1 := recoveredLocal1.
            recoveredBlock51PC := 891.
        ].
        recoveredBlock51Step = 891 ifTrue: [
            recoveredBlock51Stack2 := recoveredBlock51Local12.
            recoveredBlock51PC := 894.
        ].
        recoveredBlock51Step = 894 ifTrue: [
            (recoveredBlock51Stack0) checkCompleteness: (recoveredBlock51Stack1) config: (recoveredBlock51Stack2).
            recoveredBlock51PC := 899.
        ].
        recoveredBlock51Step = 899 ifTrue: [
            recoveredBlock51Stack0 := 'Kli'.
            recoveredBlock51PC := 901.
        ].
        recoveredBlock51Step = 901 ifTrue: [
            recoveredBlock51Stack1 := 'WorkspaceTimeStamps'.
            recoveredBlock51PC := 904.
        ].
        recoveredBlock51Step = 904 ifTrue: [
            recoveredBlock51Stack0 := (recoveredBlock51Stack0) == (recoveredBlock51Stack1).
            recoveredBlock51PC := 905.
        ].
        recoveredBlock51Step = 905 ifTrue: [
            recoveredBlock51PC := 906.
        ].
        recoveredBlock51Step = 906 ifTrue: [
            recoveredBlock51Stack0 := recoveredBlock51Local12.
            recoveredBlock51PC := 909.
        ].
        recoveredBlock51Step = 909 ifTrue: [
            recoveredBlock51Stack0 := (recoveredBlock51Stack0) dbObject.
            recoveredBlock51PC := 913.
        ].
        recoveredBlock51Step = 913 ifTrue: [
            recoveredBlock51Stack1 := recoveredBlock51Local4.
            recoveredBlock51PC := 916.
        ].
        recoveredBlock51Step = 916 ifTrue: [
            (recoveredBlock51Stack0) applicationTimeStamp: (recoveredBlock51Stack1).
            recoveredBlock51PC := 921.
        ].
        recoveredBlock51Step = 921 ifTrue: [
            recoveredBlock51Stack0 := recoveredBlock51Local12.
            recoveredBlock51PC := 924.
        ].
        recoveredBlock51Step = 924 ifTrue: [
            recoveredBlock51Stack0 := (recoveredBlock51Stack0) dbObject.
            recoveredBlock51PC := 929.
        ].
        recoveredBlock51Step = 929 ifTrue: [
            recoveredBlock51Stack1 := recoveredBlock51Local3.
            recoveredBlock51PC := 932.
        ].
        recoveredBlock51Step = 932 ifTrue: [
            recoveredBlock51Stack0 := (recoveredBlock51Stack0) applicationTimeStampNanoSecondsFromTimeStampWithCounter: (recoveredBlock51Stack1).
            recoveredBlock51PC := 937.
        ].
        recoveredBlock51Step = 937 ifTrue: [
            recoveredBlock51Result := recoveredBlock51Stack0.
            recoveredBlock51Done := true.
        ].
    ].
    recoveredBlock51Result
].
            recoveredPC := 938.
        ].
        recoveredStep = 938 ifTrue: [
            (recoveredStack0) multiple: (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 943.
        ].
        recoveredStep = 943 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 946.
        ].
        recoveredStep = 946 ifTrue: [
            recoveredStack1 := 'Signature'.
            recoveredPC := 950.
        ].
        recoveredStep = 950 ifTrue: [
            recoveredStack2 := [:block28124f84Arg1 | 
    nil
].
            recoveredPC := 954.
        ].
        recoveredStep = 954 ifTrue: [
            recoveredPC := 960.
        ].
        recoveredStep = 960 ifTrue: [
            (recoveredStack0) optional: (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 965.
        ].
        recoveredStep = 965 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 968.
        ].
        recoveredStep = 968 ifTrue: [
            recoveredStack1 := handler.
            recoveredPC := 970.
        ].
        recoveredStep = 970 ifTrue: [
            (recoveredStack0) doneIfNot: (recoveredStack1).
            recoveredPC := 975.
        ].
        recoveredStep = 975 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 976.
        ].
        recoveredStep = 976 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

