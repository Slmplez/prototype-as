"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200a30c8; bytecode file offset 0x99f9d4"
!DBXmlImportStepSpecification methodsFor: 'recovered'!
handleOrphanMethods: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := ('Die') == ('TFS_325856').
    ^self
! !

"ASDBase.ic method 0x200caf04; bytecode file offset 0x9c77c0"
!DBXmlImportStepSpecification methodsFor: 'recovered'!
postProcessContainer: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) xmlGetUseGlobalFlagFromAbusedVariable.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredLocal1.
    (recoveredValue2) xmlAdjustFlags: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x200de220; bytecode file offset 0x9daadc"
!DBXmlImportStepSpecification methodsFor: 'recovered'!
readProjectSpecificationT: recoveredArg1 public: recoveredArg2 name: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := SGProjectSpecification.
    recoveredValue4 := (self) readBlockDiagramSpecificationT: (recoveredValue0) public: (recoveredValue1) name: (recoveredValue2) class: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200fbe80; bytecode file offset 0x9f8748"
!DBXmlImportStepSpecification methodsFor: 'recovered'!
handleFileList: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := sgClass.
    recoveredValue1 := (recoveredValue0) xmlFileList.
    recoveredValue2 := SGWrapperDB.
    recoveredValue3 := (recoveredValue2) new.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue3) xmlInitOn: (recoveredValue4).
    (recoveredValue1) object: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x20196d6c; bytecode file offset 0xa93634"
!DBXmlImportStepSpecification methodsFor: 'recovered'!
isImplAvailable: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) protoItem.
    recoveredValue1 := (recoveredValue0) thing.
    recoveredValue2 := (recoveredValue1) implementations.
    recoveredValue3 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := (recoveredBlock7Value0) xmlOID.
    recoveredBlock7Value2 := recoveredArg1.
    recoveredBlock7Value3 := (recoveredBlock7Value1) = (recoveredBlock7Value2).
    recoveredBlock7Value3
].
    recoveredValue4 := (recoveredValue2) anySatisfy: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x2021ae14; bytecode file offset 0xb176e4"
!DBXmlImportStepSpecification methodsFor: 'recovered'!
handleLayout: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := sgClass.
    recoveredValue1 := (recoveredValue0) graphicRepresentationKey.
    recoveredValue2 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 |
    recoveredBlock7Value0 := sgClass.
    recoveredBlock7Value1 := (recoveredBlock7Value0) initGraphicRepresentation.
    recoveredBlock7Value1
].
    (recoveredValue1) ifNil: (recoveredValue2).
    recoveredValue3 := sgClass.
    recoveredValue4 := (recoveredValue3) graphicRepresentationKey.
    recoveredValue5 := SGWrapperDB.
    recoveredValue6 := (recoveredValue5) new.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue6) xmlInitOn: (recoveredValue7).
    (recoveredValue4) object: (recoveredValue8).
    ^self
! !

"ASDBase.ic method 0x202abe78; bytecode file offset 0xba8744"
!DBXmlImportStepSpecification methodsFor: 'recovered'!
readMethodInterfaceSpecificationT: recoveredArg1 public: recoveredArg2 name: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock9Arg1 | 
    | recoveredBlock9Local1 recoveredBlock9Value0 recoveredBlock9Value1 recoveredBlock9Value2 recoveredBlock9Value3 recoveredBlock9Value4 recoveredBlock9Value5 recoveredBlock9Value6 |
    recoveredBlock9Value0 := recoveredBlock9Arg1.
    recoveredBlock9Value1 := (self) readESDLCodeT: (recoveredBlock9Value0).
    recoveredBlock9Local1 := recoveredBlock9Value1.
    recoveredBlock9Value2 := ASDMethodInterfaceSpecification.
    recoveredBlock9Value3 := recoveredArg2.
    recoveredBlock9Value4 := recoveredArg3.
    recoveredBlock9Value5 := recoveredBlock9Local1.
    recoveredBlock9Value6 := (self) specFor: (recoveredBlock9Value2) public: (recoveredBlock9Value3) name: (recoveredBlock9Value4) methods: (recoveredBlock9Value5).
    recoveredBlock9Value6
].
    recoveredValue2 := handler.
    (recoveredValue0) required: ('ESDLCode') do: (recoveredValue1) ifNot: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := handler.
    (recoveredValue3) doneIfNot: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x202b2308; bytecode file offset 0xbaebe4"
!DBXmlImportStepSpecification methodsFor: 'recovered'!
oidImpl: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := 'implementationOID'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) getLocalID: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := controller.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) database.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) objectFor: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := 'todo'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) notNil.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) isError.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := 'implementationName'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := (recoveredStack2) getNMToken: (recoveredStack3).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) elementNotFound: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlOID.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203dcf0c; bytecode file offset 0xcd97f4"
!DBXmlImportStepSpecification methodsFor: 'recovered'!
specFor: recoveredArg1 public: recoveredArg2 name: recoveredArg3 methods: recoveredArg4
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := methodDefinitions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg4.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) addAll: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := sgClass.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlSpecByName: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock20Value0 recoveredBlock20Value1 |
    recoveredBlock20Value0 := recoveredLocal1.
    recoveredBlock20Value1 := (recoveredBlock20Value0) notNil.
    recoveredBlock20Value1
].
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := 'should not be nil'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) runtimeAssert: (recoveredStack1) additionalInfo: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 83] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := sgClass.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := '_'.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := ' '.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) replaceAllStrings: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) xmlSpecByName: (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 83] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := ExASDXML.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := 'Specification "'.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := '" not found in '.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := protoClass.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := (recoveredStack2) baseName.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) signalWith: (recoveredStack1).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20400b0c; bytecode file offset 0xcfd3fc"
!DBXmlImportStepSpecification methodsFor: 'recovered'!
codeContainerFor: recoveredArg1 in: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) external.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 |
    recoveredBlock8Value0 := recoveredBlock8Arg1.
    recoveredBlock8Value1 := (recoveredBlock8Value0) key.
    recoveredBlock8Value2 := recoveredArg1.
    recoveredBlock8Value3 := (recoveredBlock8Value1) equalTo: (recoveredBlock8Value2).
    recoveredBlock8Value3
].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := 'Call_2009405099'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) rawGetObject.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := SGCodeContainerExternal.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := (recoveredStack3) value.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack2) dbObject: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack2) initialize.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack2) xmlVariantKey: (recoveredStack3).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack1) object: (recoveredStack2).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x204abc68; bytecode file offset 0xda8568"
!DBXmlImportStepSpecification methodsFor: 'recovered'!
readBlockDiagramSpecificationT: recoveredArg1 public: recoveredArg2 name: recoveredArg3 class: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := recoveredArg4.
    specClass := recoveredValue0.
    recoveredLocal1 := 0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) getGraphicOID: ('highestUsedGraphicalIdentifier') default: (0).
    recoveredValue4 := (recoveredValue1) max: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := [:recoveredBlock35Arg1 | 
    | recoveredBlock35Local1 recoveredBlock35Value0 recoveredBlock35Value1 recoveredBlock35Value2 recoveredBlock35Value3 recoveredBlock35Value4 recoveredBlock35Value5 recoveredBlock35Value6 recoveredBlock35Value7 |
    recoveredBlock35Value0 := recoveredBlock35Arg1.
    recoveredBlock35Value1 := (self) readESDLCodeT: (recoveredBlock35Value0).
    recoveredBlock35Local1 := recoveredBlock35Value1.
    recoveredBlock35Value2 := recoveredArg4.
    recoveredBlock35Value3 := recoveredArg2.
    recoveredBlock35Value4 := recoveredArg3.
    recoveredBlock35Value5 := recoveredBlock35Local1.
    recoveredBlock35Value6 := (self) specFor: (recoveredBlock35Value2) public: (recoveredBlock35Value3) name: (recoveredBlock35Value4) methods: (recoveredBlock35Value5).
    recoveredBlock35Value7 := recoveredBlock35Value6.
    recoveredLocal3 := recoveredBlock35Value7.
    recoveredBlock35Value6
].
    recoveredValue7 := handler.
    (recoveredValue5) required: ('ESDLCode') do: (recoveredValue6) ifNot: (recoveredValue7).
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := [:recoveredBlock75Arg1 | 
    | recoveredBlock75Value0 recoveredBlock75Value1 recoveredBlock75Value2 recoveredBlock75Value3 recoveredBlock75Value4 recoveredBlock75Value5 recoveredBlock75Value6 recoveredBlock75Value7 recoveredBlock75Value8 recoveredBlock75Value9 recoveredBlock75Value10 recoveredBlock75Value11 |
    recoveredBlock75Value0 := SGTopGraphicsBlockDB.
    recoveredBlock75Value1 := SGCodeGODB.
    recoveredBlock75Value2 := (recoveredBlock75Value1) createDefault.
    recoveredBlock75Value3 := (recoveredBlock75Value0) createFor: (recoveredBlock75Value2).
    recoveredLocal2 := recoveredBlock75Value3.
    recoveredBlock75Value4 := recoveredLocal2.
    recoveredBlock75Value5 := (recoveredBlock75Value4) dbObject.
    (recoveredBlock75Value5) deleteOnly.
    recoveredBlock75Value6 := recoveredLocal3.
    recoveredBlock75Value7 := (recoveredBlock75Value6) sourceKey.
    recoveredBlock75Value8 := recoveredLocal2.
    (recoveredBlock75Value7) object: (recoveredBlock75Value8).
    recoveredBlock75Value9 := recoveredBlock75Arg1.
    recoveredBlock75Value10 := recoveredLocal2.
    recoveredBlock75Value11 := (self) readDiagramElements: (recoveredBlock75Value9) block: (recoveredBlock75Value10).
    recoveredBlock75Value11
].
    recoveredValue10 := handler.
    (recoveredValue8) required: ('DiagramElements') do: (recoveredValue9) ifNot: (recoveredValue10).
    recoveredValue11 := recoveredArg1.
    recoveredValue12 := handler.
    (recoveredValue11) doneIfNot: (recoveredValue12).
    recoveredValue13 := recoveredLocal2.
    recoveredValue14 := recoveredLocal1.
    (recoveredValue13) highestUsedGraphicalIdentifier: (recoveredValue14).
    recoveredValue15 := recoveredLocal2.
    ^recoveredValue15
! !

