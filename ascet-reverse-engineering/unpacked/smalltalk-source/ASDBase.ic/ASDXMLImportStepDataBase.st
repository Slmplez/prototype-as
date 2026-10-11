"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20016634; bytecode file offset 0x92209c"
!ASDXMLImportStepDataBase methodsFor: 'recovered'!
type
    ^'data'
! !

"ASDBase.ic method 0x20017c0c; bytecode file offset 0x92209c"
!ASDXMLImportStepDataBase methodsFor: 'recovered'!
description
    ^'Importing data'
! !

"ASDBase.ic method 0x2005b540; bytecode file offset 0x957e10"
!ASDXMLImportStepDataBase methodsFor: 'recovered'!
saveSet: recoveredArg1 name: recoveredArg2 oid: recoveredArg3 isClassConfig: recoveredArg4 isDefault: recoveredArg5 notes: recoveredArg6
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x200eb844; bytecode file offset 0x9e810c"
!ASDXMLImportStepDataBase methodsFor: 'recovered'!
readCharTableAttributes: recoveredArg1 newEl: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (recoveredValue0) interpolation.
    recoveredValue2 := (recoveredValue1) physicsRepresentation.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) getEnum: ('interpolation').
    (recoveredValue2) setValue: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x2011231c; bytecode file offset 0xa0ebe8"
!ASDXMLImportStepDataBase methodsFor: 'recovered'!
initOn: recoveredArg1 component: recoveredArg2 item: recoveredArg3 importPath: recoveredArg4 ext: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    recoveredValue4 := recoveredArg5.
    super initOn: (recoveredValue0) sgClass: (recoveredValue1) item: (recoveredValue2) importPath: (recoveredValue3) ext: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x202f8480; bytecode file offset 0xbf4d84"
!ASDXMLImportStepDataBase methodsFor: 'recovered'!
readArrayT: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := Vector.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) getNNInt: ('currentSizeX') default: (5).
    recoveredValue3 := (recoveredValue0) new: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := [:recoveredBlock24Arg1 | 
    | recoveredBlock24Value0 recoveredBlock24Value1 recoveredBlock24Value2 recoveredBlock24Value3 |
    recoveredBlock24Value0 := recoveredLocal1.
    recoveredBlock24Value1 := recoveredBlock24Arg1.
    recoveredBlock24Value2 := (self) readScalarT: (recoveredBlock24Value1).
    recoveredBlock24Value3 := (recoveredBlock24Value0) add: (recoveredBlock24Value2).
    recoveredBlock24Value3
].
    (recoveredValue4) multiple: ('Value') do: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := handler.
    (recoveredValue6) doneIfNot: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !

"ASDBase.ic method 0x20317930; bytecode file offset 0xc14214"
!ASDXMLImportStepDataBase methodsFor: 'recovered'!
readScalarT: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := 'Enumeration'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := [:block280eb290Arg1 | 
    | block280eb290Value0 block280eb290Value1 |
    block280eb290Value0 := block280eb290Arg1.
    block280eb290Value1 := (block280eb290Value0) getString: ('value').
    block280eb290Value1
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack4 := 'Numeric'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack5 := [:block280eb2b4Arg1 | 
    | block280eb2b4Value0 block280eb2b4Value1 |
    block280eb2b4Value0 := block280eb2b4Arg1.
    block280eb2b4Value1 := (block280eb2b4Value0) getNZQR: ('value').
    block280eb2b4Value1
].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack6 := 'Logic'.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack7 := [:block280eb2d8Arg1 | 
    | block280eb2d8Value0 block280eb2d8Value1 |
    block280eb2d8Value0 := block280eb2d8Arg1.
    block280eb2d8Value1 := (block280eb2d8Value0) getBoolean: ('value').
    block280eb2d8Value1
].
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack8 := handler.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) choice: (recoveredStack2) do: (recoveredStack3) choice: (recoveredStack4) do: (recoveredStack5) choice: (recoveredStack6) do: (recoveredStack7) ifNot: (recoveredStack8).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := handler.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack1) doneIfNot: (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20484474; bytecode file offset 0xd80d60"
!ASDXMLImportStepDataBase methodsFor: 'recovered'!
dataProxy: recoveredArg1 for: recoveredArg2
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
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := 'dataOID'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) getOID: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) refItem.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) refOID.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := controller.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := (recoveredStack2) refOID.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) globalByOID: (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := controller.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) makeMappedDBProxy: (recoveredStack2).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := 'dataName'.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) getNMToken: (recoveredStack2).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) refPath.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) itemForPath: (recoveredStack1) oid: (recoveredStack2).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := [:recoveredBlock92Arg1 | 
    | recoveredBlock92Value0 recoveredBlock92Value1 recoveredBlock92Value2 |
    recoveredBlock92Value0 := recoveredBlock92Arg1.
    recoveredBlock92Value1 := recoveredLocal3.
    recoveredBlock92Value2 := (recoveredBlock92Value0) xmlDataByName: (recoveredBlock92Value1).
    recoveredBlock92Value2
].
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 118] ifFalse: [recoveredPC := 116].
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := controller.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlOID.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := (recoveredStack0) makeMappedDBProxy: (recoveredStack1).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204975fc; bytecode file offset 0xd93ef8"
!ASDXMLImportStepDataBase methodsFor: 'recovered'!
readMatrixT: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 |
    recoveredLocal2 := 0.
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) getNNInt: ('currentSizeY') default: (2).
    recoveredValue3 := (recoveredValue0) new: (recoveredValue2).
    recoveredLocal4 := recoveredValue3.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) getNNInt: ('currentSizeX') default: (2).
    recoveredLocal3 := recoveredValue5.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := [:recoveredBlock41Arg1 | 
    | recoveredBlock41Value0 recoveredBlock41Value1 recoveredBlock41Value2 recoveredBlock41Value3 recoveredBlock41Value4 recoveredBlock41Value5 recoveredBlock41Value6 recoveredBlock41Value7 recoveredBlock41Value8 |
    recoveredBlock41Value0 := recoveredLocal4.
    recoveredBlock41Value1 := recoveredBlock41Arg1.
    recoveredBlock41Value2 := (self) readArrayT: (recoveredBlock41Value1).
    (recoveredBlock41Value0) add: (recoveredBlock41Value2).
    recoveredBlock41Value3 := recoveredLocal2.
    recoveredBlock41Value4 := recoveredLocal4.
    recoveredBlock41Value5 := (recoveredBlock41Value4) last.
    recoveredBlock41Value6 := (recoveredBlock41Value5) size.
    recoveredBlock41Value7 := (recoveredBlock41Value3) max: (recoveredBlock41Value6).
    recoveredBlock41Value8 := recoveredBlock41Value7.
    recoveredLocal2 := recoveredBlock41Value8.
    recoveredBlock41Value7
].
    (recoveredValue6) multiple: ('Row') do: (recoveredValue7).
    recoveredValue8 := Matrix.
    recoveredValue9 := recoveredLocal2.
    recoveredValue10 := recoveredLocal4.
    recoveredValue11 := (recoveredValue10) size.
    recoveredValue12 := (recoveredValue9) @ (recoveredValue11).
    recoveredValue13 := (recoveredValue8) dim: (recoveredValue12).
    recoveredLocal1 := recoveredValue13.
    recoveredValue14 := recoveredLocal4.
    recoveredValue15 := [:recoveredBlock96Arg1 :recoveredBlock96Arg2 | 
    | recoveredBlock96Value0 recoveredBlock96Value1 recoveredBlock96Value2 |
    recoveredBlock96Value0 := recoveredBlock96Arg1.
    recoveredBlock96Value1 := [:recoveredBlock96Block105Arg1 :recoveredBlock96Block105Arg2 | 
    | recoveredBlock96Block105Value0 recoveredBlock96Block105Value1 recoveredBlock96Block105Value2 recoveredBlock96Block105Value3 recoveredBlock96Block105Value4 recoveredBlock96Block105Value5 |
    recoveredBlock96Block105Value0 := recoveredLocal1.
    recoveredBlock96Block105Value1 := recoveredBlock96Block105Arg2.
    recoveredBlock96Block105Value2 := (recoveredBlock96Block105Value0) at: (recoveredBlock96Block105Value1).
    recoveredBlock96Block105Value3 := recoveredBlock96Arg2.
    recoveredBlock96Block105Value4 := recoveredBlock96Block105Arg1.
    recoveredBlock96Block105Value5 := (recoveredBlock96Block105Value2) at: (recoveredBlock96Block105Value3) put: (recoveredBlock96Block105Value4).
    recoveredBlock96Block105Value5
].
    recoveredBlock96Value2 := (recoveredBlock96Value0) doWithIndex: (recoveredBlock96Value1).
    recoveredBlock96Value2
].
    (recoveredValue14) doWithIndex: (recoveredValue15).
    recoveredValue16 := recoveredLocal1.
    ^recoveredValue16
! !

"ASDBase.ic method 0x204ab2c4; bytecode file offset 0xda7be0"
!ASDXMLImportStepDataBase methodsFor: 'recovered'!
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
            recoveredStack1 := (recoveredStack1) isDataMissing.
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
            recoveredStack2 := SGClassValueConfig.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := protoClass.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := (recoveredStack3) xmlClassData.
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
            recoveredStack2 := SGValueConfiguration.
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
            recoveredStack3 := (recoveredStack3) xmlDataByName: (recoveredStack4).
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
            (recoveredStack1) xmlSetDatas: (recoveredStack2) default: (recoveredStack3) classData: (recoveredStack4).
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
    recoveredBlock50Value1 := ('.data.') , (recoveredBlock50Value0).
    recoveredBlock50Value2 := (self) readDOMTree: (recoveredBlock50Value1) schema: ('component_data.xsd').
    recoveredBlock50Local1 := recoveredBlock50Value2.
    recoveredBlock50Value3 := recoveredBlock50Local1.
    recoveredBlock50Value4 := (self) readComponentData: (recoveredBlock50Value3).
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
            recoveredStack1 := ASDXMLImportStepProject.
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

"ASDBase.ic method 0x20555284; bytecode file offset 0xe51bb8"
!ASDXMLImportStepDataBase methodsFor: 'recovered'!
readDependency: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := element.
    recoveredValue3 := (recoveredValue2) thing.
    recoveredValue4 := (recoveredValue3) formula.
    recoveredValue5 := (recoveredValue4) identifiers.
    recoveredValue6 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Value0 recoveredBlock16Value1 recoveredBlock16Value2 recoveredBlock16Value3 recoveredBlock16Value4 |
    recoveredBlock16Value0 := recoveredLocal2.
    recoveredBlock16Value1 := recoveredBlock16Arg1.
    recoveredBlock16Value2 := (recoveredBlock16Value1) identifier.
    recoveredBlock16Value3 := recoveredBlock16Arg1.
    recoveredBlock16Value4 := (recoveredBlock16Value0) at: (recoveredBlock16Value2) put: (recoveredBlock16Value3).
    recoveredBlock16Value4
].
    (recoveredValue5) do: (recoveredValue6).
    recoveredValue7 := LookupTable.
    recoveredValue8 := (recoveredValue7) new.
    recoveredLocal1 := recoveredValue8.
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := [:recoveredBlock45Arg1 | 
    | recoveredBlock45Stack0 recoveredBlock45Stack1 recoveredBlock45Stack2 recoveredBlock45Stack3 recoveredBlock45Stack4 recoveredBlock45PC recoveredBlock45Step recoveredBlock45Done recoveredBlock45Result |
    recoveredBlock45Stack0 := self.
    recoveredBlock45PC := 52.
    recoveredBlock45Done := false.
    [recoveredBlock45Done not] whileTrue: [
        recoveredBlock45Step := recoveredBlock45PC.
        recoveredBlock45Step = 52 ifTrue: [
            recoveredBlock45Stack1 := [
    | recoveredBlock45Block52Local1 recoveredBlock45Block52Local2 recoveredBlock45Block52Local3 recoveredBlock45Block52Stack0 recoveredBlock45Block52Stack1 recoveredBlock45Block52Stack2 recoveredBlock45Block52Stack3 recoveredBlock45Block52Stack4 recoveredBlock45Block52Stack5 recoveredBlock45Block52PC recoveredBlock45Block52Step recoveredBlock45Block52Done recoveredBlock45Block52Result |
    recoveredBlock45Block52Stack0 := self.
    recoveredBlock45Block52PC := 58.
    recoveredBlock45Block52Done := false.
    [recoveredBlock45Block52Done not] whileTrue: [
        recoveredBlock45Block52Step := recoveredBlock45Block52PC.
        recoveredBlock45Block52Step = 58 ifTrue: [
            recoveredBlock45Block52Stack1 := recoveredBlock45Arg1.
            recoveredBlock45Block52PC := 61.
        ].
        recoveredBlock45Block52Step = 61 ifTrue: [
            recoveredBlock45Block52Stack2 := 'formalOID'.
            recoveredBlock45Block52PC := 63.
        ].
        recoveredBlock45Block52Step = 63 ifTrue: [
            recoveredBlock45Block52Stack3 := nil.
            recoveredBlock45Block52PC := 64.
        ].
        recoveredBlock45Block52Step = 64 ifTrue: [
            recoveredBlock45Block52Stack1 := (recoveredBlock45Block52Stack1) getLocalID: (recoveredBlock45Block52Stack2) default: (recoveredBlock45Block52Stack3).
            recoveredBlock45Block52PC := 66.
        ].
        recoveredBlock45Block52Step = 66 ifTrue: [
            recoveredBlock45Block52Local2 := recoveredBlock45Block52Stack1.
            recoveredBlock45Block52PC := 69.
        ].
        recoveredBlock45Block52Step = 69 ifTrue: [
            recoveredBlock45Block52Stack1 := recoveredBlock45Block52Local2.
            recoveredBlock45Block52PC := 72.
        ].
        recoveredBlock45Block52Step = 72 ifTrue: [
            (recoveredBlock45Block52Stack1 ~~ nil) ifTrue: [recoveredBlock45Block52PC := 115] ifFalse: [recoveredBlock45Block52PC := 76].
        ].
        recoveredBlock45Block52Step = 76 ifTrue: [
            recoveredBlock45Block52Stack1 := recoveredBlock45Arg1.
            recoveredBlock45Block52PC := 79.
        ].
        recoveredBlock45Block52Step = 79 ifTrue: [
            recoveredBlock45Block52Stack2 := 'formalName'.
            recoveredBlock45Block52PC := 81.
        ].
        recoveredBlock45Block52Step = 81 ifTrue: [
            recoveredBlock45Block52Stack1 := (recoveredBlock45Block52Stack1) getNMToken: (recoveredBlock45Block52Stack2).
            recoveredBlock45Block52PC := 83.
        ].
        recoveredBlock45Block52Step = 83 ifTrue: [
            recoveredBlock45Block52Local1 := recoveredBlock45Block52Stack1.
            recoveredBlock45Block52PC := 86.
        ].
        recoveredBlock45Block52Step = 86 ifTrue: [
            recoveredBlock45Block52Stack1 := recoveredLocal2.
            recoveredBlock45Block52PC := 89.
        ].
        recoveredBlock45Block52Step = 89 ifTrue: [
            recoveredBlock45Block52Stack2 := recoveredBlock45Block52Local1.
            recoveredBlock45Block52PC := 92.
        ].
        recoveredBlock45Block52Step = 92 ifTrue: [
            recoveredBlock45Block52Stack3 := [
    | recoveredBlock45Block52Block92Value0 recoveredBlock45Block52Block92Value1 |
    recoveredBlock45Block52Block92Value0 := recoveredBlock45Block52Local1.
    recoveredBlock45Block52Block92Value1 := (self) elementNotFound: (recoveredBlock45Block52Block92Value0).
    recoveredBlock45Block52Block92Value1
].
            recoveredBlock45Block52PC := 104.
        ].
        recoveredBlock45Block52Step = 104 ifTrue: [
            recoveredBlock45Block52Stack1 := (recoveredBlock45Block52Stack1) at: (recoveredBlock45Block52Stack2) ifAbsent: (recoveredBlock45Block52Stack3).
            recoveredBlock45Block52PC := 106.
        ].
        recoveredBlock45Block52Step = 106 ifTrue: [
            recoveredBlock45Block52Stack1 := (recoveredBlock45Block52Stack1) aliasName.
            recoveredBlock45Block52PC := 108.
        ].
        recoveredBlock45Block52Step = 108 ifTrue: [
            recoveredBlock45Block52Local2 := recoveredBlock45Block52Stack1.
            recoveredBlock45Block52PC := 111.
        ].
        recoveredBlock45Block52Step = 111 ifTrue: [
            recoveredBlock45Block52Stack1 := nil.
            recoveredBlock45Block52PC := 112.
        ].
        recoveredBlock45Block52Step = 112 ifTrue: [
            recoveredBlock45Block52Local1 := recoveredBlock45Block52Stack1.
            recoveredBlock45Block52PC := 115.
        ].
        recoveredBlock45Block52Step = 115 ifTrue: [
            recoveredBlock45Block52Stack1 := recoveredBlock45Arg1.
            recoveredBlock45Block52PC := 118.
        ].
        recoveredBlock45Block52Step = 118 ifTrue: [
            recoveredBlock45Block52Stack2 := 'valueName'.
            recoveredBlock45Block52PC := 120.
        ].
        recoveredBlock45Block52Step = 120 ifTrue: [
            recoveredBlock45Block52Stack3 := nil.
            recoveredBlock45Block52PC := 121.
        ].
        recoveredBlock45Block52Step = 121 ifTrue: [
            recoveredBlock45Block52Stack1 := (recoveredBlock45Block52Stack1) getString: (recoveredBlock45Block52Stack2) default: (recoveredBlock45Block52Stack3).
            recoveredBlock45Block52PC := 123.
        ].
        recoveredBlock45Block52Step = 123 ifTrue: [
            (recoveredBlock45Block52Stack1 ~~ nil) ifTrue: [recoveredBlock45Block52PC := 138] ifFalse: [recoveredBlock45Block52PC := 126].
        ].
        recoveredBlock45Block52Step = 126 ifTrue: [
            recoveredBlock45Block52Stack1 := recoveredBlock45Arg1.
            recoveredBlock45Block52PC := 129.
        ].
        recoveredBlock45Block52Step = 129 ifTrue: [
            recoveredBlock45Block52Stack2 := 'valueOID'.
            recoveredBlock45Block52PC := 131.
        ].
        recoveredBlock45Block52Step = 131 ifTrue: [
            recoveredBlock45Block52Stack3 := nil.
            recoveredBlock45Block52PC := 132.
        ].
        recoveredBlock45Block52Step = 132 ifTrue: [
            recoveredBlock45Block52Stack1 := (recoveredBlock45Block52Stack1) getString: (recoveredBlock45Block52Stack2) default: (recoveredBlock45Block52Stack3).
            recoveredBlock45Block52PC := 134.
        ].
        recoveredBlock45Block52Step = 134 ifTrue: [
            (recoveredBlock45Block52Stack1 == nil) ifTrue: [recoveredBlock45Block52PC := 158] ifFalse: [recoveredBlock45Block52PC := 138].
        ].
        recoveredBlock45Block52Step = 138 ifTrue: [
            recoveredBlock45Block52Stack1 := self.
            recoveredBlock45Block52PC := 139.
        ].
        recoveredBlock45Block52Step = 139 ifTrue: [
            recoveredBlock45Block52Stack2 := recoveredBlock45Arg1.
            recoveredBlock45Block52PC := 142.
        ].
        recoveredBlock45Block52Step = 142 ifTrue: [
            recoveredBlock45Block52Stack3 := 'valueName'.
            recoveredBlock45Block52PC := 144.
        ].
        recoveredBlock45Block52Step = 144 ifTrue: [
            recoveredBlock45Block52Stack4 := 'valueOID'.
            recoveredBlock45Block52PC := 146.
        ].
        recoveredBlock45Block52Step = 146 ifTrue: [
            recoveredBlock45Block52Stack1 := (recoveredBlock45Block52Stack1) getElement: (recoveredBlock45Block52Stack2) nameAttr: (recoveredBlock45Block52Stack3) oidAttr: (recoveredBlock45Block52Stack4).
            recoveredBlock45Block52PC := 149.
        ].
        recoveredBlock45Block52Step = 149 ifTrue: [
            recoveredBlock45Block52Stack1 := (recoveredBlock45Block52Stack1) xmlOID.
            recoveredBlock45Block52PC := 151.
        ].
        recoveredBlock45Block52Step = 151 ifTrue: [
            recoveredBlock45Block52Local3 := recoveredBlock45Block52Stack1.
            recoveredBlock45Block52PC := 154.
        ].
        recoveredBlock45Block52Step = 154 ifTrue: [
            recoveredBlock45Block52PC := 162.
        ].
        recoveredBlock45Block52Step = 158 ifTrue: [
            recoveredBlock45Block52Stack1 := nil.
            recoveredBlock45Block52PC := 159.
        ].
        recoveredBlock45Block52Step = 159 ifTrue: [
            recoveredBlock45Block52Local3 := recoveredBlock45Block52Stack1.
            recoveredBlock45Block52PC := 162.
        ].
        recoveredBlock45Block52Step = 162 ifTrue: [
            recoveredBlock45Block52Stack1 := recoveredLocal1.
            recoveredBlock45Block52PC := 165.
        ].
        recoveredBlock45Block52Step = 165 ifTrue: [
            recoveredBlock45Block52Stack2 := recoveredBlock45Block52Local2.
            recoveredBlock45Block52PC := 168.
        ].
        recoveredBlock45Block52Step = 168 ifTrue: [
            recoveredBlock45Block52Stack3 := recoveredBlock45Block52Local3.
            recoveredBlock45Block52PC := 171.
        ].
        recoveredBlock45Block52Step = 171 ifTrue: [
            recoveredBlock45Block52Stack1 := (recoveredBlock45Block52Stack1) at: (recoveredBlock45Block52Stack2) put: (recoveredBlock45Block52Stack3).
            recoveredBlock45Block52PC := 173.
        ].
        recoveredBlock45Block52Step = 173 ifTrue: [
            recoveredBlock45Block52Result := recoveredBlock45Block52Stack1.
            recoveredBlock45Block52Done := true.
        ].
    ].
    recoveredBlock45Block52Result
].
            recoveredBlock45PC := 174.
        ].
        recoveredBlock45Step = 174 ifTrue: [
            recoveredBlock45Stack2 := ElementNotFound.
            recoveredBlock45PC := 176.
        ].
        recoveredBlock45Step = 176 ifTrue: [
            recoveredBlock45Stack3 := [:block2810fc54Arg1 | 
    | block2810fc54Value0 block2810fc54Value1 |
    block2810fc54Value0 := block2810fc54Arg1.
    block2810fc54Value1 := (block2810fc54Value0) exitWith: (nil).
    block2810fc54Value1
].
            recoveredBlock45PC := 178.
        ].
        recoveredBlock45Step = 178 ifTrue: [
            recoveredBlock45PC := 187.
        ].
        recoveredBlock45Step = 187 ifTrue: [
            recoveredBlock45Stack1 := (recoveredBlock45Stack1) when: (recoveredBlock45Stack2) do: (recoveredBlock45Stack3).
            recoveredBlock45PC := 189.
        ].
        recoveredBlock45Step = 189 ifTrue: [
            recoveredBlock45Result := recoveredBlock45Stack1.
            recoveredBlock45Done := true.
        ].
    ].
    recoveredBlock45Result
].
    (recoveredValue9) multiple: ('Parameter') do: (recoveredValue10).
    recoveredValue11 := recoveredArg1.
    recoveredValue12 := handler.
    (recoveredValue11) doneIfNot: (recoveredValue12).
    recoveredValue13 := dependentParameters.
    recoveredValue14 := element.
    recoveredValue15 := (recoveredValue14) xmlOID.
    recoveredValue16 := recoveredLocal1.
    (recoveredValue13) at: (recoveredValue15) put: (recoveredValue16).
    recoveredValue17 := ('Kk') == ('Call_71163').
    recoveredValue18 := element.
    recoveredValue19 := (recoveredValue18) thing.
    recoveredValue20 := (recoveredValue19) sgClass.
    recoveredValue21 := (recoveredValue20) createDataElement.
    recoveredValue22 := (recoveredValue21) dataConfig.
    ^recoveredValue22
! !

"ASDBase.ic method 0x205c7f74; bytecode file offset 0xec48c4"
!ASDXMLImportStepDataBase methodsFor: 'recovered'!
readDataEntryT: recoveredArg1 data: recoveredArg2 customerData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := [
    | recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4Stack4 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack1 := recoveredArg1.
            recoveredBlock4PC := 13.
        ].
        recoveredBlock4Step = 13 ifTrue: [
            recoveredBlock4Stack2 := 'ignore'.
            recoveredBlock4PC := 15.
        ].
        recoveredBlock4Step = 15 ifTrue: [
            recoveredBlock4Stack3 := false.
            recoveredBlock4PC := 16.
        ].
        recoveredBlock4Step = 16 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) getBoolean: (recoveredBlock4Stack2) default: (recoveredBlock4Stack3).
            recoveredBlock4PC := 18.
        ].
        recoveredBlock4Step = 18 ifTrue: [
            (recoveredBlock4Stack1) ifTrue: [recoveredBlock4PC := 22] ifFalse: [recoveredBlock4PC := 24].
        ].
        recoveredBlock4Step = 22 ifTrue: [
            recoveredBlock4Stack1 := nil.
            recoveredBlock4PC := 23.
        ].
        recoveredBlock4Step = 23 ifTrue: [
            ^recoveredBlock4Stack1
        ].
        recoveredBlock4Step = 24 ifTrue: [
            recoveredBlock4Stack1 := recoveredArg1.
            recoveredBlock4PC := 27.
        ].
        recoveredBlock4Step = 27 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) oidElement: (recoveredBlock4Stack1).
            recoveredBlock4PC := 28.
        ].
        recoveredBlock4Step = 28 ifTrue: [
            element := recoveredBlock4Stack0.
            recoveredBlock4PC := 30.
        ].
        recoveredBlock4Step = 30 ifTrue: [
            recoveredBlock4Stack0 := element.
            recoveredBlock4PC := 32.
        ].
        recoveredBlock4Step = 32 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) thing.
            recoveredBlock4PC := 33.
        ].
        recoveredBlock4Step = 33 ifTrue: [
            (recoveredBlock4Stack0 ~~ nil) ifTrue: [recoveredBlock4PC := 38] ifFalse: [recoveredBlock4PC := 36].
        ].
        recoveredBlock4Step = 36 ifTrue: [
            recoveredBlock4Stack0 := nil.
            recoveredBlock4PC := 37.
        ].
        recoveredBlock4Step = 37 ifTrue: [
            ^recoveredBlock4Stack0
        ].
        recoveredBlock4Step = 38 ifTrue: [
            recoveredBlock4Stack0 := recoveredArg1.
            recoveredBlock4PC := 41.
        ].
        recoveredBlock4Step = 41 ifTrue: [
            recoveredBlock4Stack1 := 'DataVariant'.
            recoveredBlock4PC := 43.
        ].
        recoveredBlock4Step = 43 ifTrue: [
            recoveredBlock4Stack2 := [:recoveredBlock4Block43Arg1 | 
    | recoveredBlock4Block43Local1 recoveredBlock4Block43Stack0 recoveredBlock4Block43Stack1 recoveredBlock4Block43Stack2 recoveredBlock4Block43Stack3 recoveredBlock4Block43Stack4 recoveredBlock4Block43Stack5 recoveredBlock4Block43Stack6 recoveredBlock4Block43Stack7 recoveredBlock4Block43Stack8 recoveredBlock4Block43Stack9 recoveredBlock4Block43Stack10 recoveredBlock4Block43Stack11 recoveredBlock4Block43Stack12 recoveredBlock4Block43Stack13 recoveredBlock4Block43PC recoveredBlock4Block43Step recoveredBlock4Block43Done recoveredBlock4Block43Result |
    recoveredBlock4Block43Stack0 := self.
    recoveredBlock4Block43PC := 50.
    recoveredBlock4Block43Done := false.
    [recoveredBlock4Block43Done not] whileTrue: [
        recoveredBlock4Block43Step := recoveredBlock4Block43PC.
        recoveredBlock4Block43Step = 50 ifTrue: [
            recoveredBlock4Block43Stack1 := recoveredBlock4Block43Arg1.
            recoveredBlock4Block43PC := 53.
        ].
        recoveredBlock4Block43Step = 53 ifTrue: [
            recoveredBlock4Block43Stack2 := 'name'.
            recoveredBlock4Block43PC := 55.
        ].
        recoveredBlock4Block43Step = 55 ifTrue: [
            recoveredBlock4Block43Stack1 := (recoveredBlock4Block43Stack1) getNMToken: (recoveredBlock4Block43Stack2).
            recoveredBlock4Block43PC := 57.
        ].
        recoveredBlock4Block43Step = 57 ifTrue: [
            recoveredBlock4Block43Stack2 := 'default'.
            recoveredBlock4Block43PC := 59.
        ].
        recoveredBlock4Block43Step = 59 ifTrue: [
            recoveredBlock4Block43Stack1 := (recoveredBlock4Block43Stack1) ~= (recoveredBlock4Block43Stack2).
            recoveredBlock4Block43PC := 60.
        ].
        recoveredBlock4Block43Step = 60 ifTrue: [
            (recoveredBlock4Block43Stack1) ifTrue: [recoveredBlock4Block43PC := 64] ifFalse: [recoveredBlock4Block43PC := 70].
        ].
        recoveredBlock4Block43Step = 64 ifTrue: [
            recoveredBlock4Block43Stack1 := self.
            recoveredBlock4Block43PC := 65.
        ].
        recoveredBlock4Block43Step = 65 ifTrue: [
            recoveredBlock4Block43Stack2 := recoveredBlock4Block43Arg1.
            recoveredBlock4Block43PC := 68.
        ].
        recoveredBlock4Block43Step = 68 ifTrue: [
            (recoveredBlock4Block43Stack1) inconsistentElement: (recoveredBlock4Block43Stack2).
            recoveredBlock4Block43PC := 70.
        ].
        recoveredBlock4Block43Step = 70 ifTrue: [
            recoveredBlock4Block43Stack1 := recoveredBlock4Block43Arg1.
            recoveredBlock4Block43PC := 73.
        ].
        recoveredBlock4Block43Step = 73 ifTrue: [
            recoveredBlock4Block43Stack2 := 'DimensionalType'.
            recoveredBlock4Block43PC := 75.
        ].
        recoveredBlock4Block43Step = 75 ifTrue: [
            recoveredBlock4Block43Stack3 := [:recoveredBlock4Block43Block75Arg1 | 
    | recoveredBlock4Block43Block75Value0 recoveredBlock4Block43Block75Value1 recoveredBlock4Block43Block75Value2 |
    recoveredBlock4Block43Block75Value0 := recoveredBlock4Block43Block75Arg1.
    recoveredBlock4Block43Block75Value1 := (self) readDimensionalTypeT: (recoveredBlock4Block43Block75Value0).
    recoveredBlock4Block43Block75Value2 := recoveredBlock4Block43Block75Value1.
    recoveredBlock4Block43Local1 := recoveredBlock4Block43Block75Value2.
    recoveredBlock4Block43Block75Value1
].
            recoveredBlock4Block43PC := 90.
        ].
        recoveredBlock4Block43Step = 90 ifTrue: [
            recoveredBlock4Block43Stack4 := 'ScalarType'.
            recoveredBlock4Block43PC := 92.
        ].
        recoveredBlock4Block43Step = 92 ifTrue: [
            recoveredBlock4Block43Stack5 := [:recoveredBlock4Block43Block92Arg1 | 
    | recoveredBlock4Block43Block92Value0 recoveredBlock4Block43Block92Value1 recoveredBlock4Block43Block92Value2 |
    recoveredBlock4Block43Block92Value0 := recoveredBlock4Block43Block92Arg1.
    recoveredBlock4Block43Block92Value1 := (self) readScalarT: (recoveredBlock4Block43Block92Value0).
    recoveredBlock4Block43Block92Value2 := recoveredBlock4Block43Block92Value1.
    recoveredBlock4Block43Local1 := recoveredBlock4Block43Block92Value2.
    recoveredBlock4Block43Block92Value1
].
            recoveredBlock4Block43PC := 106.
        ].
        recoveredBlock4Block43Step = 106 ifTrue: [
            recoveredBlock4Block43Stack6 := 'ComplexType'.
            recoveredBlock4Block43PC := 108.
        ].
        recoveredBlock4Block43Step = 108 ifTrue: [
            recoveredBlock4Block43Stack7 := [:recoveredBlock4Block43Block108Arg1 | 
    | recoveredBlock4Block43Block108Value0 recoveredBlock4Block43Block108Value1 recoveredBlock4Block43Block108Value2 recoveredBlock4Block43Block108Value3 |
    recoveredBlock4Block43Block108Value0 := recoveredBlock4Block43Block108Arg1.
    recoveredBlock4Block43Block108Value1 := element.
    recoveredBlock4Block43Block108Value2 := (self) dataProxy: (recoveredBlock4Block43Block108Value0) for: (recoveredBlock4Block43Block108Value1).
    recoveredBlock4Block43Block108Value3 := recoveredBlock4Block43Block108Value2.
    recoveredBlock4Block43Local1 := recoveredBlock4Block43Block108Value3.
    recoveredBlock4Block43Block108Value2
].
            recoveredBlock4Block43PC := 124.
        ].
        recoveredBlock4Block43Step = 124 ifTrue: [
            recoveredBlock4Block43Stack8 := 'ReferenceType'.
            recoveredBlock4Block43PC := 126.
        ].
        recoveredBlock4Block43Step = 126 ifTrue: [
            recoveredBlock4Block43Stack9 := [:recoveredBlock4Block43Block126Arg1 | 
    | recoveredBlock4Block43Block126Value0 recoveredBlock4Block43Block126Value1 recoveredBlock4Block43Block126Value2 recoveredBlock4Block43Block126Value3 |
    recoveredBlock4Block43Block126Value0 := SGReferenceData.
    recoveredBlock4Block43Block126Value1 := recoveredBlock4Block43Block126Arg1.
    recoveredBlock4Block43Block126Value2 := (recoveredBlock4Block43Block126Value0) fromXML: (recoveredBlock4Block43Block126Value1) env: (self).
    recoveredBlock4Block43Block126Value3 := recoveredBlock4Block43Block126Value2.
    recoveredBlock4Block43Local1 := recoveredBlock4Block43Block126Value3.
    recoveredBlock4Block43Block126Value2
].
            recoveredBlock4Block43PC := 143.
        ].
        recoveredBlock4Block43Step = 143 ifTrue: [
            recoveredBlock4Block43Stack10 := 'Dependency'.
            recoveredBlock4Block43PC := 145.
        ].
        recoveredBlock4Block43Step = 145 ifTrue: [
            recoveredBlock4Block43Stack11 := [:recoveredBlock4Block43Block145Arg1 | 
    | recoveredBlock4Block43Block145Value0 recoveredBlock4Block43Block145Value1 recoveredBlock4Block43Block145Value2 recoveredBlock4Block43Block145Value3 recoveredBlock4Block43Block145Value4 recoveredBlock4Block43Block145Value5 recoveredBlock4Block43Block145Value6 |
    recoveredBlock4Block43Block145Value0 := ('Kli') == ('Call_345906').
    recoveredBlock4Block43Block145Value1 := recoveredBlock4Block43Block145Arg1.
    recoveredBlock4Block43Block145Value2 := (self) readDependency: (recoveredBlock4Block43Block145Value1).
    recoveredBlock4Block43Local1 := recoveredBlock4Block43Block145Value2.
    recoveredBlock4Block43Block145Value3 := recoveredBlock4Block43Arg1.
    recoveredBlock4Block43Block145Value4 := [:recoveredBlock4Block43Block145Block169Arg1 | 
    | recoveredBlock4Block43Block145Block169Value0 recoveredBlock4Block43Block145Block169Value1 recoveredBlock4Block43Block145Block169Value2 |
    recoveredBlock4Block43Block145Block169Value0 := recoveredBlock4Block43Block145Block169Arg1.
    recoveredBlock4Block43Block145Block169Value1 := (self) readDimensionalTypeT: (recoveredBlock4Block43Block145Block169Value0).
    recoveredBlock4Block43Block145Block169Value2 := recoveredBlock4Block43Block145Block169Value1.
    recoveredBlock4Block43Local1 := recoveredBlock4Block43Block145Block169Value2.
    recoveredBlock4Block43Block145Block169Value1
].
    recoveredBlock4Block43Block145Value5 := [
    | recoveredBlock4Block43Block145Block184Value0 recoveredBlock4Block43Block145Block184Value1 recoveredBlock4Block43Block145Block184Value2 |
    recoveredBlock4Block43Block145Block184Value0 := recoveredBlock4Block43Arg1.
    recoveredBlock4Block43Block145Block184Value1 := [:recoveredBlock4Block43Block145Block184Block195Arg1 | 
    | recoveredBlock4Block43Block145Block184Block195Value0 recoveredBlock4Block43Block145Block184Block195Value1 recoveredBlock4Block43Block145Block184Block195Value2 |
    recoveredBlock4Block43Block145Block184Block195Value0 := recoveredBlock4Block43Block145Block184Block195Arg1.
    recoveredBlock4Block43Block145Block184Block195Value1 := (self) readScalarT: (recoveredBlock4Block43Block145Block184Block195Value0).
    recoveredBlock4Block43Block145Block184Block195Value2 := recoveredBlock4Block43Block145Block184Block195Value1.
    recoveredBlock4Block43Local1 := recoveredBlock4Block43Block145Block184Block195Value2.
    recoveredBlock4Block43Block145Block184Block195Value1
].
    recoveredBlock4Block43Block145Block184Value2 := (recoveredBlock4Block43Block145Block184Value0) optional: ('ScalarType') do: (recoveredBlock4Block43Block145Block184Value1).
    recoveredBlock4Block43Block145Block184Value2
].
    recoveredBlock4Block43Block145Value6 := (recoveredBlock4Block43Block145Value3) optional: ('DimensionalType') do: (recoveredBlock4Block43Block145Value4) ifNot: (recoveredBlock4Block43Block145Value5).
    recoveredBlock4Block43Block145Value6
].
            recoveredBlock4Block43PC := 217.
        ].
        recoveredBlock4Block43Step = 217 ifTrue: [
            recoveredBlock4Block43Stack12 := handler.
            recoveredBlock4Block43PC := 219.
        ].
        recoveredBlock4Block43Step = 219 ifTrue: [
            (recoveredBlock4Block43Stack1) choice: (recoveredBlock4Block43Stack2) do: (recoveredBlock4Block43Stack3) choice: (recoveredBlock4Block43Stack4) do: (recoveredBlock4Block43Stack5) choice: (recoveredBlock4Block43Stack6) do: (recoveredBlock4Block43Stack7) choice: (recoveredBlock4Block43Stack8) do: (recoveredBlock4Block43Stack9) choice: (recoveredBlock4Block43Stack10) do: (recoveredBlock4Block43Stack11) ifNot: (recoveredBlock4Block43Stack12).
            recoveredBlock4Block43PC := 222.
        ].
        recoveredBlock4Block43Step = 222 ifTrue: [
            recoveredBlock4Block43Stack1 := nil.
            recoveredBlock4Block43PC := 223.
        ].
        recoveredBlock4Block43Step = 223 ifTrue: [
            recoveredBlock4Block43Stack2 := recoveredBlock4Block43Local1.
            recoveredBlock4Block43PC := 226.
        ].
        recoveredBlock4Block43Step = 226 ifTrue: [
            (recoveredBlock4Block43Stack2 == nil) ifTrue: [recoveredBlock4Block43PC := 284] ifFalse: [recoveredBlock4Block43PC := 230].
        ].
        recoveredBlock4Block43Step = 230 ifTrue: [
            recoveredBlock4Block43PC := 231.
        ].
        recoveredBlock4Block43Step = 231 ifTrue: [
            recoveredBlock4Block43Stack1 := protoClass.
            recoveredBlock4Block43PC := 233.
        ].
        recoveredBlock4Block43Step = 233 ifTrue: [
            recoveredBlock4Block43Stack1 := (recoveredBlock4Block43Stack1) thing.
            recoveredBlock4Block43PC := 234.
        ].
        recoveredBlock4Block43Step = 234 ifTrue: [
            recoveredBlock4Block43Stack1 := (recoveredBlock4Block43Stack1) complexVariables.
            recoveredBlock4Block43PC := 236.
        ].
        recoveredBlock4Block43Step = 236 ifTrue: [
            recoveredBlock4Block43Stack2 := element.
            recoveredBlock4Block43PC := 238.
        ].
        recoveredBlock4Block43Step = 238 ifTrue: [
            recoveredBlock4Block43Stack2 := (recoveredBlock4Block43Stack2) name.
            recoveredBlock4Block43PC := 240.
        ].
        recoveredBlock4Block43Step = 240 ifTrue: [
            recoveredBlock4Block43Stack1 := (recoveredBlock4Block43Stack1) includesKey: (recoveredBlock4Block43Stack2).
            recoveredBlock4Block43PC := 242.
        ].
        recoveredBlock4Block43Step = 242 ifTrue: [
            (recoveredBlock4Block43Stack1) ifTrue: [recoveredBlock4Block43PC := 246] ifFalse: [recoveredBlock4Block43PC := 264].
        ].
        recoveredBlock4Block43Step = 246 ifTrue: [
            recoveredBlock4Block43Stack1 := recoveredArg2.
            recoveredBlock4Block43PC := 249.
        ].
        recoveredBlock4Block43Step = 249 ifTrue: [
            recoveredBlock4Block43Stack1 := (recoveredBlock4Block43Stack1) complexValues.
            recoveredBlock4Block43PC := 251.
        ].
        recoveredBlock4Block43Step = 251 ifTrue: [
            recoveredBlock4Block43Stack2 := element.
            recoveredBlock4Block43PC := 253.
        ].
        recoveredBlock4Block43Step = 253 ifTrue: [
            recoveredBlock4Block43Stack2 := (recoveredBlock4Block43Stack2) xmlOID.
            recoveredBlock4Block43PC := 255.
        ].
        recoveredBlock4Block43Step = 255 ifTrue: [
            recoveredBlock4Block43Stack3 := recoveredBlock4Block43Local1.
            recoveredBlock4Block43PC := 258.
        ].
        recoveredBlock4Block43Step = 258 ifTrue: [
            (recoveredBlock4Block43Stack1) at: (recoveredBlock4Block43Stack2) put: (recoveredBlock4Block43Stack3).
            recoveredBlock4Block43PC := 260.
        ].
        recoveredBlock4Block43Step = 260 ifTrue: [
            recoveredBlock4Block43PC := 278.
        ].
        recoveredBlock4Block43Step = 264 ifTrue: [
            recoveredBlock4Block43Stack1 := recoveredArg2.
            recoveredBlock4Block43PC := 267.
        ].
        recoveredBlock4Block43Step = 267 ifTrue: [
            recoveredBlock4Block43Stack1 := (recoveredBlock4Block43Stack1) primitiveValues.
            recoveredBlock4Block43PC := 269.
        ].
        recoveredBlock4Block43Step = 269 ifTrue: [
            recoveredBlock4Block43Stack2 := element.
            recoveredBlock4Block43PC := 271.
        ].
        recoveredBlock4Block43Step = 271 ifTrue: [
            recoveredBlock4Block43Stack2 := (recoveredBlock4Block43Stack2) xmlOID.
            recoveredBlock4Block43PC := 273.
        ].
        recoveredBlock4Block43Step = 273 ifTrue: [
            recoveredBlock4Block43Stack3 := recoveredBlock4Block43Local1.
            recoveredBlock4Block43PC := 276.
        ].
        recoveredBlock4Block43Step = 276 ifTrue: [
            (recoveredBlock4Block43Stack1) at: (recoveredBlock4Block43Stack2) put: (recoveredBlock4Block43Stack3).
            recoveredBlock4Block43PC := 278.
        ].
        recoveredBlock4Block43Step = 278 ifTrue: [
            recoveredBlock4Block43Stack1 := found.
            recoveredBlock4Block43PC := 280.
        ].
        recoveredBlock4Block43Step = 280 ifTrue: [
            recoveredBlock4Block43Stack2 := element.
            recoveredBlock4Block43PC := 282.
        ].
        recoveredBlock4Block43Step = 282 ifTrue: [
            recoveredBlock4Block43Stack1 := (recoveredBlock4Block43Stack1) add: (recoveredBlock4Block43Stack2).
            recoveredBlock4Block43PC := 284.
        ].
        recoveredBlock4Block43Step = 284 ifTrue: [
            recoveredBlock4Block43Result := recoveredBlock4Block43Stack1.
            recoveredBlock4Block43Done := true.
        ].
    ].
    recoveredBlock4Block43Result
].
            recoveredBlock4PC := 285.
        ].
        recoveredBlock4Step = 285 ifTrue: [
            recoveredBlock4Stack3 := handler.
            recoveredBlock4PC := 287.
        ].
        recoveredBlock4Step = 287 ifTrue: [
            (recoveredBlock4Stack0) required: (recoveredBlock4Stack1) do: (recoveredBlock4Stack2) ifNot: (recoveredBlock4Stack3).
            recoveredBlock4PC := 290.
        ].
        recoveredBlock4Step = 290 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 291.
        ].
        recoveredBlock4Step = 291 ifTrue: [
            recoveredBlock4Stack1 := recoveredArg1.
            recoveredBlock4PC := 294.
        ].
        recoveredBlock4Step = 294 ifTrue: [
            recoveredBlock4Stack2 := [:recoveredBlock4Block294Arg1 | 
    | recoveredBlock4Block294Value0 recoveredBlock4Block294Value1 recoveredBlock4Block294Value2 recoveredBlock4Block294Value3 recoveredBlock4Block294Value4 |
    recoveredBlock4Block294Value0 := recoveredArg3.
    recoveredBlock4Block294Value1 := element.
    recoveredBlock4Block294Value2 := (recoveredBlock4Block294Value1) xmlOID.
    recoveredBlock4Block294Value3 := recoveredBlock4Block294Arg1.
    recoveredBlock4Block294Value4 := (recoveredBlock4Block294Value0) at: (recoveredBlock4Block294Value2) put: (recoveredBlock4Block294Value3).
    recoveredBlock4Block294Value4
].
            recoveredBlock4PC := 311.
        ].
        recoveredBlock4Step = 311 ifTrue: [
            (recoveredBlock4Stack0) readCustomerDatas: (recoveredBlock4Stack1) storeBlock: (recoveredBlock4Stack2).
            recoveredBlock4PC := 313.
        ].
        recoveredBlock4Step = 313 ifTrue: [
            recoveredBlock4Stack0 := recoveredArg1.
            recoveredBlock4PC := 316.
        ].
        recoveredBlock4Step = 316 ifTrue: [
            recoveredBlock4Stack1 := handler.
            recoveredBlock4PC := 318.
        ].
        recoveredBlock4Step = 318 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) doneIfNot: (recoveredBlock4Stack1).
            recoveredBlock4PC := 320.
        ].
        recoveredBlock4Step = 320 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack0.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
    recoveredValue1 := ElementNotFound.
    recoveredValue2 := [:recoveredBlock323Arg1 | 
    | recoveredBlock323Value0 |
    recoveredBlock323Value0 := recoveredBlock323Arg1.
    (recoveredBlock323Value0) exitWith: (nil).
    ^nil
].
    (recoveredValue0) when: (recoveredValue1) do: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x205e474c; bytecode file offset 0xee108c"
!ASDXMLImportStepDataBase methodsFor: 'recovered'!
readDimensionalTypeT: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := ('Die') == ('TFS_325209').
    recoveredLocal1 := nil.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Stack0 recoveredBlock19Stack1 recoveredBlock19Stack2 recoveredBlock19Stack3 recoveredBlock19Stack4 recoveredBlock19Stack5 recoveredBlock19Stack6 recoveredBlock19Stack7 recoveredBlock19PC recoveredBlock19Step recoveredBlock19Done recoveredBlock19Result |
    recoveredBlock19Stack0 := self.
    recoveredBlock19PC := 26.
    recoveredBlock19Done := false.
    [recoveredBlock19Done not] whileTrue: [
        recoveredBlock19Step := recoveredBlock19PC.
        recoveredBlock19Step = 26 ifTrue: [
            recoveredBlock19Stack1 := element.
            recoveredBlock19PC := 28.
        ].
        recoveredBlock19Step = 28 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) thing.
            recoveredBlock19PC := 29.
        ].
        recoveredBlock19Step = 29 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) sgClass.
            recoveredBlock19PC := 31.
        ].
        recoveredBlock19Step = 31 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) createDataElement.
            recoveredBlock19PC := 33.
        ].
        recoveredBlock19Step = 33 ifTrue: [
            recoveredLocal1 := recoveredBlock19Stack1.
            recoveredBlock19PC := 36.
        ].
        recoveredBlock19Step = 36 ifTrue: [
            recoveredBlock19Stack1 := nil.
            recoveredBlock19PC := 37.
        ].
        recoveredBlock19Step = 37 ifTrue: [
            recoveredBlock19Stack2 := recoveredLocal1.
            recoveredBlock19PC := 40.
        ].
        recoveredBlock19Step = 40 ifTrue: [
            (recoveredBlock19Stack2 == nil) ifTrue: [recoveredBlock19PC := 115] ifFalse: [recoveredBlock19PC := 44].
        ].
        recoveredBlock19Step = 44 ifTrue: [
            recoveredBlock19PC := 45.
        ].
        recoveredBlock19Step = 45 ifTrue: [
            recoveredBlock19Stack1 := self.
            recoveredBlock19PC := 46.
        ].
        recoveredBlock19Step = 46 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Arg1.
            recoveredBlock19PC := 47.
        ].
        recoveredBlock19Step = 47 ifTrue: [
            recoveredBlock19Stack3 := recoveredLocal1.
            recoveredBlock19PC := 50.
        ].
        recoveredBlock19Step = 50 ifTrue: [
            (recoveredBlock19Stack1) readCharTableAttributes: (recoveredBlock19Stack2) newEl: (recoveredBlock19Stack3).
            recoveredBlock19PC := 52.
        ].
        recoveredBlock19Step = 52 ifTrue: [
            recoveredBlock19Stack1 := recoveredBlock19Arg1.
            recoveredBlock19PC := 53.
        ].
        recoveredBlock19Step = 53 ifTrue: [
            recoveredBlock19Stack2 := 'XAxis'.
            recoveredBlock19PC := 55.
        ].
        recoveredBlock19Step = 55 ifTrue: [
            recoveredBlock19Stack3 := [:recoveredBlock19Block55Arg1 | 
    | recoveredBlock19Block55Value0 recoveredBlock19Block55Value1 recoveredBlock19Block55Value2 recoveredBlock19Block55Value3 recoveredBlock19Block55Value4 |
    recoveredBlock19Block55Value0 := recoveredLocal1.
    recoveredBlock19Block55Value1 := (recoveredBlock19Block55Value0) xDistribution.
    recoveredBlock19Block55Value2 := recoveredBlock19Block55Arg1.
    recoveredBlock19Block55Value3 := (self) readArrayT: (recoveredBlock19Block55Value2).
    recoveredBlock19Block55Value4 := (recoveredBlock19Block55Value1) setPhysValue: (recoveredBlock19Block55Value3).
    recoveredBlock19Block55Value4
].
            recoveredBlock19PC := 74.
        ].
        recoveredBlock19Step = 74 ifTrue: [
            recoveredBlock19Stack4 := 'XDistribution'.
            recoveredBlock19PC := 76.
        ].
        recoveredBlock19Step = 76 ifTrue: [
            recoveredBlock19Stack5 := [:block2811aa48Arg1 | 
    nil
].
            recoveredBlock19PC := 78.
        ].
        recoveredBlock19Step = 78 ifTrue: [
            recoveredBlock19PC := 84.
        ].
        recoveredBlock19Step = 84 ifTrue: [
            recoveredBlock19Stack6 := handler.
            recoveredBlock19PC := 86.
        ].
        recoveredBlock19Step = 86 ifTrue: [
            (recoveredBlock19Stack1) choice: (recoveredBlock19Stack2) do: (recoveredBlock19Stack3) choice: (recoveredBlock19Stack4) do: (recoveredBlock19Stack5) ifNot: (recoveredBlock19Stack6).
            recoveredBlock19PC := 89.
        ].
        recoveredBlock19Step = 89 ifTrue: [
            recoveredBlock19Stack1 := recoveredBlock19Arg1.
            recoveredBlock19PC := 90.
        ].
        recoveredBlock19Step = 90 ifTrue: [
            recoveredBlock19Stack2 := 'Values'.
            recoveredBlock19PC := 92.
        ].
        recoveredBlock19Step = 92 ifTrue: [
            recoveredBlock19Stack3 := [:recoveredBlock19Block92Arg1 | 
    | recoveredBlock19Block92Value0 recoveredBlock19Block92Value1 recoveredBlock19Block92Value2 recoveredBlock19Block92Value3 recoveredBlock19Block92Value4 |
    recoveredBlock19Block92Value0 := recoveredLocal1.
    recoveredBlock19Block92Value1 := (recoveredBlock19Block92Value0) values.
    recoveredBlock19Block92Value2 := recoveredBlock19Block92Arg1.
    recoveredBlock19Block92Value3 := (self) readArrayT: (recoveredBlock19Block92Value2).
    recoveredBlock19Block92Value4 := (recoveredBlock19Block92Value1) setPhysValue: (recoveredBlock19Block92Value3).
    recoveredBlock19Block92Value4
].
            recoveredBlock19PC := 110.
        ].
        recoveredBlock19Step = 110 ifTrue: [
            recoveredBlock19Stack4 := handler.
            recoveredBlock19PC := 112.
        ].
        recoveredBlock19Step = 112 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) required: (recoveredBlock19Stack2) do: (recoveredBlock19Stack3) ifNot: (recoveredBlock19Stack4).
            recoveredBlock19PC := 115.
        ].
        recoveredBlock19Step = 115 ifTrue: [
            recoveredBlock19Result := recoveredBlock19Stack1.
            recoveredBlock19Done := true.
        ].
    ].
    recoveredBlock19Result
].
    recoveredValue3 := [:recoveredBlock118Arg1 | 
    | recoveredBlock118Stack0 recoveredBlock118Stack1 recoveredBlock118Stack2 recoveredBlock118Stack3 recoveredBlock118Stack4 recoveredBlock118Stack5 recoveredBlock118Stack6 recoveredBlock118Stack7 recoveredBlock118PC recoveredBlock118Step recoveredBlock118Done recoveredBlock118Result |
    recoveredBlock118Stack0 := self.
    recoveredBlock118PC := 124.
    recoveredBlock118Done := false.
    [recoveredBlock118Done not] whileTrue: [
        recoveredBlock118Step := recoveredBlock118PC.
        recoveredBlock118Step = 124 ifTrue: [
            recoveredBlock118Stack1 := element.
            recoveredBlock118PC := 126.
        ].
        recoveredBlock118Step = 126 ifTrue: [
            recoveredBlock118Stack1 := (recoveredBlock118Stack1) thing.
            recoveredBlock118PC := 127.
        ].
        recoveredBlock118Step = 127 ifTrue: [
            recoveredBlock118Stack1 := (recoveredBlock118Stack1) sgClass.
            recoveredBlock118PC := 129.
        ].
        recoveredBlock118Step = 129 ifTrue: [
            recoveredBlock118Stack1 := (recoveredBlock118Stack1) createDataElement.
            recoveredBlock118PC := 131.
        ].
        recoveredBlock118Step = 131 ifTrue: [
            recoveredLocal1 := recoveredBlock118Stack1.
            recoveredBlock118PC := 134.
        ].
        recoveredBlock118Step = 134 ifTrue: [
            recoveredBlock118Stack1 := nil.
            recoveredBlock118PC := 135.
        ].
        recoveredBlock118Step = 135 ifTrue: [
            recoveredBlock118Stack2 := recoveredLocal1.
            recoveredBlock118PC := 138.
        ].
        recoveredBlock118Step = 138 ifTrue: [
            (recoveredBlock118Stack2 == nil) ifTrue: [recoveredBlock118PC := 249] ifFalse: [recoveredBlock118PC := 142].
        ].
        recoveredBlock118Step = 142 ifTrue: [
            recoveredBlock118PC := 143.
        ].
        recoveredBlock118Step = 143 ifTrue: [
            recoveredBlock118Stack1 := self.
            recoveredBlock118PC := 144.
        ].
        recoveredBlock118Step = 144 ifTrue: [
            recoveredBlock118Stack2 := recoveredBlock118Arg1.
            recoveredBlock118PC := 145.
        ].
        recoveredBlock118Step = 145 ifTrue: [
            recoveredBlock118Stack3 := recoveredLocal1.
            recoveredBlock118PC := 148.
        ].
        recoveredBlock118Step = 148 ifTrue: [
            (recoveredBlock118Stack1) readCharTableAttributes: (recoveredBlock118Stack2) newEl: (recoveredBlock118Stack3).
            recoveredBlock118PC := 150.
        ].
        recoveredBlock118Step = 150 ifTrue: [
            recoveredBlock118Stack1 := recoveredBlock118Arg1.
            recoveredBlock118PC := 151.
        ].
        recoveredBlock118Step = 151 ifTrue: [
            recoveredBlock118Stack2 := 'XAxis'.
            recoveredBlock118PC := 153.
        ].
        recoveredBlock118Step = 153 ifTrue: [
            recoveredBlock118Stack3 := [:recoveredBlock118Block153Arg1 | 
    | recoveredBlock118Block153Value0 recoveredBlock118Block153Value1 recoveredBlock118Block153Value2 recoveredBlock118Block153Value3 recoveredBlock118Block153Value4 |
    recoveredBlock118Block153Value0 := recoveredLocal1.
    recoveredBlock118Block153Value1 := (recoveredBlock118Block153Value0) xDistribution.
    recoveredBlock118Block153Value2 := recoveredBlock118Block153Arg1.
    recoveredBlock118Block153Value3 := (self) readArrayT: (recoveredBlock118Block153Value2).
    recoveredBlock118Block153Value4 := (recoveredBlock118Block153Value1) setPhysValue: (recoveredBlock118Block153Value3).
    recoveredBlock118Block153Value4
].
            recoveredBlock118PC := 172.
        ].
        recoveredBlock118Step = 172 ifTrue: [
            recoveredBlock118Stack4 := 'XDistribution'.
            recoveredBlock118PC := 174.
        ].
        recoveredBlock118Step = 174 ifTrue: [
            recoveredBlock118Stack5 := [:block2811aa6cArg1 | 
    nil
].
            recoveredBlock118PC := 176.
        ].
        recoveredBlock118Step = 176 ifTrue: [
            recoveredBlock118PC := 182.
        ].
        recoveredBlock118Step = 182 ifTrue: [
            recoveredBlock118Stack6 := handler.
            recoveredBlock118PC := 184.
        ].
        recoveredBlock118Step = 184 ifTrue: [
            (recoveredBlock118Stack1) choice: (recoveredBlock118Stack2) do: (recoveredBlock118Stack3) choice: (recoveredBlock118Stack4) do: (recoveredBlock118Stack5) ifNot: (recoveredBlock118Stack6).
            recoveredBlock118PC := 187.
        ].
        recoveredBlock118Step = 187 ifTrue: [
            recoveredBlock118Stack1 := recoveredBlock118Arg1.
            recoveredBlock118PC := 188.
        ].
        recoveredBlock118Step = 188 ifTrue: [
            recoveredBlock118Stack2 := 'YAxis'.
            recoveredBlock118PC := 190.
        ].
        recoveredBlock118Step = 190 ifTrue: [
            recoveredBlock118Stack3 := [:recoveredBlock118Block190Arg1 | 
    | recoveredBlock118Block190Value0 recoveredBlock118Block190Value1 recoveredBlock118Block190Value2 recoveredBlock118Block190Value3 recoveredBlock118Block190Value4 |
    recoveredBlock118Block190Value0 := recoveredLocal1.
    recoveredBlock118Block190Value1 := (recoveredBlock118Block190Value0) yDistribution.
    recoveredBlock118Block190Value2 := recoveredBlock118Block190Arg1.
    recoveredBlock118Block190Value3 := (self) readArrayT: (recoveredBlock118Block190Value2).
    recoveredBlock118Block190Value4 := (recoveredBlock118Block190Value1) setPhysValue: (recoveredBlock118Block190Value3).
    recoveredBlock118Block190Value4
].
            recoveredBlock118PC := 208.
        ].
        recoveredBlock118Step = 208 ifTrue: [
            recoveredBlock118Stack4 := 'YDistribution'.
            recoveredBlock118PC := 210.
        ].
        recoveredBlock118Step = 210 ifTrue: [
            recoveredBlock118Stack5 := [:block2811aa90Arg1 | 
    nil
].
            recoveredBlock118PC := 212.
        ].
        recoveredBlock118Step = 212 ifTrue: [
            recoveredBlock118PC := 218.
        ].
        recoveredBlock118Step = 218 ifTrue: [
            recoveredBlock118Stack6 := handler.
            recoveredBlock118PC := 220.
        ].
        recoveredBlock118Step = 220 ifTrue: [
            (recoveredBlock118Stack1) choice: (recoveredBlock118Stack2) do: (recoveredBlock118Stack3) choice: (recoveredBlock118Stack4) do: (recoveredBlock118Stack5) ifNot: (recoveredBlock118Stack6).
            recoveredBlock118PC := 223.
        ].
        recoveredBlock118Step = 223 ifTrue: [
            recoveredBlock118Stack1 := recoveredBlock118Arg1.
            recoveredBlock118PC := 224.
        ].
        recoveredBlock118Step = 224 ifTrue: [
            recoveredBlock118Stack2 := 'Values'.
            recoveredBlock118PC := 226.
        ].
        recoveredBlock118Step = 226 ifTrue: [
            recoveredBlock118Stack3 := [:recoveredBlock118Block226Arg1 | 
    | recoveredBlock118Block226Value0 recoveredBlock118Block226Value1 recoveredBlock118Block226Value2 recoveredBlock118Block226Value3 recoveredBlock118Block226Value4 |
    recoveredBlock118Block226Value0 := recoveredLocal1.
    recoveredBlock118Block226Value1 := (recoveredBlock118Block226Value0) values.
    recoveredBlock118Block226Value2 := recoveredBlock118Block226Arg1.
    recoveredBlock118Block226Value3 := (self) readMatrixT: (recoveredBlock118Block226Value2).
    recoveredBlock118Block226Value4 := (recoveredBlock118Block226Value1) setPhysValue: (recoveredBlock118Block226Value3).
    recoveredBlock118Block226Value4
].
            recoveredBlock118PC := 244.
        ].
        recoveredBlock118Step = 244 ifTrue: [
            recoveredBlock118Stack4 := handler.
            recoveredBlock118PC := 246.
        ].
        recoveredBlock118Step = 246 ifTrue: [
            recoveredBlock118Stack1 := (recoveredBlock118Stack1) required: (recoveredBlock118Stack2) do: (recoveredBlock118Stack3) ifNot: (recoveredBlock118Stack4).
            recoveredBlock118PC := 249.
        ].
        recoveredBlock118Step = 249 ifTrue: [
            recoveredBlock118Result := recoveredBlock118Stack1.
            recoveredBlock118Done := true.
        ].
    ].
    recoveredBlock118Result
].
    recoveredValue4 := [:recoveredBlock252Arg1 | 
    | recoveredBlock252Value0 recoveredBlock252Value1 recoveredBlock252Value2 recoveredBlock252Value3 recoveredBlock252Value4 recoveredBlock252Value5 recoveredBlock252Value6 recoveredBlock252Value7 recoveredBlock252Value8 recoveredBlock252Value9 recoveredBlock252Value10 recoveredBlock252Value11 |
    recoveredBlock252Value0 := SGVectorData.
    recoveredBlock252Value1 := (recoveredBlock252Value0) new.
    recoveredLocal1 := recoveredBlock252Value1.
    recoveredBlock252Value2 := recoveredLocal1.
    recoveredBlock252Value3 := recoveredBlock252Arg1.
    recoveredBlock252Value4 := (self) readArrayT: (recoveredBlock252Value3).
    recoveredBlock252Value5 := (recoveredBlock252Value2) value: (recoveredBlock252Value4).
    recoveredLocal1 := recoveredBlock252Value5.
    recoveredBlock252Value6 := recoveredLocal1.
    recoveredBlock252Value7 := element.
    recoveredBlock252Value8 := (recoveredBlock252Value7) thing.
    recoveredBlock252Value9 := (recoveredBlock252Value8) sgClass.
    recoveredBlock252Value10 := (recoveredBlock252Value9) maxSize.
    recoveredBlock252Value11 := (recoveredBlock252Value6) maxSize: (recoveredBlock252Value10).
    recoveredBlock252Value11
].
    recoveredValue5 := [:recoveredBlock292Arg1 | 
    | recoveredBlock292Value0 recoveredBlock292Value1 recoveredBlock292Value2 recoveredBlock292Value3 recoveredBlock292Value4 recoveredBlock292Value5 recoveredBlock292Value6 recoveredBlock292Value7 recoveredBlock292Value8 recoveredBlock292Value9 recoveredBlock292Value10 recoveredBlock292Value11 |
    recoveredBlock292Value0 := SGVectorData.
    recoveredBlock292Value1 := (recoveredBlock292Value0) new.
    recoveredLocal1 := recoveredBlock292Value1.
    recoveredBlock292Value2 := recoveredLocal1.
    recoveredBlock292Value3 := recoveredBlock292Arg1.
    recoveredBlock292Value4 := (self) readArrayT: (recoveredBlock292Value3).
    recoveredBlock292Value5 := (recoveredBlock292Value2) value: (recoveredBlock292Value4).
    recoveredLocal1 := recoveredBlock292Value5.
    recoveredBlock292Value6 := recoveredLocal1.
    recoveredBlock292Value7 := element.
    recoveredBlock292Value8 := (recoveredBlock292Value7) thing.
    recoveredBlock292Value9 := (recoveredBlock292Value8) sgClass.
    recoveredBlock292Value10 := (recoveredBlock292Value9) maxSize.
    recoveredBlock292Value11 := (recoveredBlock292Value6) maxSize: (recoveredBlock292Value10).
    recoveredBlock292Value11
].
    recoveredValue6 := [:recoveredBlock332Arg1 | 
    | recoveredBlock332Value0 recoveredBlock332Value1 recoveredBlock332Value2 recoveredBlock332Value3 recoveredBlock332Value4 recoveredBlock332Value5 recoveredBlock332Value6 recoveredBlock332Value7 recoveredBlock332Value8 recoveredBlock332Value9 recoveredBlock332Value10 |
    recoveredBlock332Value0 := SGMatrixData.
    recoveredBlock332Value1 := (recoveredBlock332Value0) new.
    recoveredLocal1 := recoveredBlock332Value1.
    recoveredBlock332Value2 := recoveredLocal1.
    recoveredBlock332Value3 := recoveredBlock332Arg1.
    recoveredBlock332Value4 := (self) readMatrixT: (recoveredBlock332Value3).
    (recoveredBlock332Value2) value: (recoveredBlock332Value4).
    recoveredBlock332Value5 := recoveredLocal1.
    recoveredBlock332Value6 := element.
    recoveredBlock332Value7 := (recoveredBlock332Value6) thing.
    recoveredBlock332Value8 := (recoveredBlock332Value7) sgClass.
    recoveredBlock332Value9 := (recoveredBlock332Value8) maxSize.
    recoveredBlock332Value10 := (recoveredBlock332Value5) maxSize: (recoveredBlock332Value9).
    recoveredBlock332Value10
].
    recoveredValue7 := handler.
    (recoveredValue1) choice: ('OneD') do: (recoveredValue2) choice: ('TwoD') do: (recoveredValue3) choice: ('Distribution') do: (recoveredValue4) choice: ('Array') do: (recoveredValue5) choice: ('Matrix') do: (recoveredValue6) ifNot: (recoveredValue7).
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := handler.
    (recoveredValue8) doneIfNot: (recoveredValue9).
    recoveredValue10 := recoveredLocal1.
    ^recoveredValue10
! !

"ASDBase.ic method 0x20615168; bytecode file offset 0xf11b24"
!ASDXMLImportStepDataBase methodsFor: 'recovered'!
readComponentData: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) xmlAllDataConfiguredElements.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := [:block2811e1d4Arg1 | 
    | block2811e1d4Value0 block2811e1d4Value1 block2811e1d4Value2 block2811e1d4Value3 block2811e1d4Value4 block2811e1d4Value5 |
    block2811e1d4Value0 := block2811e1d4Arg1.
    block2811e1d4Value1 := (block2811e1d4Value0) isInput.
    block2811e1d4Value2 := block2811e1d4Arg1.
    block2811e1d4Value3 := (block2811e1d4Value2) isOutput.
    block2811e1d4Value4 := (block2811e1d4Value1) | (block2811e1d4Value3).
    block2811e1d4Value5 := (block2811e1d4Value4) not.
    block2811e1d4Value5
].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) classifyElements: (recoveredStack1) instanceEls: (recoveredStack2) classEls: (recoveredStack3).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) name.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := 'ComponentData'.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) unexpectedElement: (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := 'DataSet'.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := [:recoveredBlock69Arg1 | 
    | recoveredBlock69Local1 recoveredBlock69Local2 recoveredBlock69Local3 recoveredBlock69Local4 recoveredBlock69Local5 recoveredBlock69Local6 recoveredBlock69Local7 recoveredBlock69Local8 recoveredBlock69Local9 recoveredBlock69Stack0 recoveredBlock69Stack1 recoveredBlock69Stack2 recoveredBlock69Stack3 recoveredBlock69Stack4 recoveredBlock69Stack5 recoveredBlock69Stack6 recoveredBlock69Stack7 recoveredBlock69PC recoveredBlock69Step recoveredBlock69Done recoveredBlock69Result |
    recoveredBlock69Stack0 := self.
    recoveredBlock69PC := 76.
    recoveredBlock69Done := false.
    [recoveredBlock69Done not] whileTrue: [
        recoveredBlock69Step := recoveredBlock69PC.
        recoveredBlock69Step = 76 ifTrue: [
            recoveredBlock69Stack1 := OrderedCollection.
            recoveredBlock69PC := 78.
        ].
        recoveredBlock69Step = 78 ifTrue: [
            recoveredBlock69Stack1 := (recoveredBlock69Stack1) new.
            recoveredBlock69PC := 79.
        ].
        recoveredBlock69Step = 79 ifTrue: [
            found := recoveredBlock69Stack1.
            recoveredBlock69PC := 81.
        ].
        recoveredBlock69Step = 81 ifTrue: [
            recoveredBlock69Stack1 := LookupTable.
            recoveredBlock69PC := 83.
        ].
        recoveredBlock69Step = 83 ifTrue: [
            recoveredBlock69Stack1 := (recoveredBlock69Stack1) new.
            recoveredBlock69PC := 84.
        ].
        recoveredBlock69Step = 84 ifTrue: [
            recoveredBlock69Local6 := recoveredBlock69Stack1.
            recoveredBlock69PC := 87.
        ].
        recoveredBlock69Step = 87 ifTrue: [
            recoveredBlock69Stack1 := LookupTable.
            recoveredBlock69PC := 89.
        ].
        recoveredBlock69Step = 89 ifTrue: [
            recoveredBlock69Stack1 := (recoveredBlock69Stack1) new.
            recoveredBlock69PC := 90.
        ].
        recoveredBlock69Step = 90 ifTrue: [
            dependentParameters := recoveredBlock69Stack1.
            recoveredBlock69PC := 92.
        ].
        recoveredBlock69Step = 92 ifTrue: [
            recoveredBlock69Stack1 := recoveredBlock69Arg1.
            recoveredBlock69PC := 95.
        ].
        recoveredBlock69Step = 95 ifTrue: [
            recoveredBlock69Stack2 := 'classConfig'.
            recoveredBlock69PC := 97.
        ].
        recoveredBlock69Step = 97 ifTrue: [
            recoveredBlock69Stack1 := (recoveredBlock69Stack1) getBoolean: (recoveredBlock69Stack2).
            recoveredBlock69PC := 99.
        ].
        recoveredBlock69Step = 99 ifTrue: [
            recoveredBlock69Local9 := recoveredBlock69Stack1.
            recoveredBlock69PC := 102.
        ].
        recoveredBlock69Step = 102 ifTrue: [
            recoveredBlock69Stack1 := recoveredBlock69Arg1.
            recoveredBlock69PC := 105.
        ].
        recoveredBlock69Step = 105 ifTrue: [
            recoveredBlock69Stack2 := 'name'.
            recoveredBlock69PC := 107.
        ].
        recoveredBlock69Step = 107 ifTrue: [
            recoveredBlock69Stack1 := (recoveredBlock69Stack1) getNMToken: (recoveredBlock69Stack2).
            recoveredBlock69PC := 109.
        ].
        recoveredBlock69Step = 109 ifTrue: [
            recoveredBlock69Local5 := recoveredBlock69Stack1.
            recoveredBlock69PC := 112.
        ].
        recoveredBlock69Step = 112 ifTrue: [
            recoveredBlock69Stack1 := recoveredBlock69Local9.
            recoveredBlock69PC := 115.
        ].
        recoveredBlock69Step = 115 ifTrue: [
            (recoveredBlock69Stack1) ifTrue: [recoveredBlock69PC := 118] ifFalse: [recoveredBlock69PC := 124].
        ].
        recoveredBlock69Step = 118 ifTrue: [
            recoveredBlock69Stack1 := SGClassValueConfig.
            recoveredBlock69PC := 120.
        ].
        recoveredBlock69Step = 120 ifTrue: [
            recoveredBlock69PC := 126.
        ].
        recoveredBlock69Step = 124 ifTrue: [
            recoveredBlock69Stack1 := SGValueConfiguration.
            recoveredBlock69PC := 126.
        ].
        recoveredBlock69Step = 126 ifTrue: [
            recoveredBlock69Stack1 := (recoveredBlock69Stack1) new.
            recoveredBlock69PC := 127.
        ].
        recoveredBlock69Step = 127 ifTrue: [
            recoveredBlock69Stack1 := (recoveredBlock69Stack1) xmlInit.
            recoveredBlock69PC := 129.
        ].
        recoveredBlock69Step = 129 ifTrue: [
            recoveredBlock69Local8 := recoveredBlock69Stack1.
            recoveredBlock69PC := 132.
        ].
        recoveredBlock69Step = 132 ifTrue: [
            recoveredBlock69Stack1 := recoveredBlock69Arg1.
            recoveredBlock69PC := 135.
        ].
        recoveredBlock69Step = 135 ifTrue: [
            recoveredBlock69Stack2 := recoveredBlock69Local8.
            recoveredBlock69PC := 138.
        ].
        recoveredBlock69Step = 138 ifTrue: [
            (recoveredBlock69Stack0) readUUID: (recoveredBlock69Stack1) target: (recoveredBlock69Stack2).
            recoveredBlock69PC := 140.
        ].
        recoveredBlock69Step = 140 ifTrue: [
            recoveredBlock69Stack0 := 'Kli'.
            recoveredBlock69PC := 142.
        ].
        recoveredBlock69Step = 142 ifTrue: [
            recoveredBlock69Stack1 := 'WorkspaceTimeStamps'.
            recoveredBlock69PC := 144.
        ].
        recoveredBlock69Step = 144 ifTrue: [
            recoveredBlock69Stack0 := (recoveredBlock69Stack0) == (recoveredBlock69Stack1).
            recoveredBlock69PC := 145.
        ].
        recoveredBlock69Step = 145 ifTrue: [
            recoveredBlock69PC := 146.
        ].
        recoveredBlock69Step = 146 ifTrue: [
            recoveredBlock69Stack0 := self.
            recoveredBlock69PC := 147.
        ].
        recoveredBlock69Step = 147 ifTrue: [
            recoveredBlock69Stack1 := Array.
            recoveredBlock69PC := 149.
        ].
        recoveredBlock69Step = 149 ifTrue: [
            recoveredBlock69Stack2 := 'ComponentData'.
            recoveredBlock69PC := 151.
        ].
        recoveredBlock69Step = 151 ifTrue: [
            recoveredBlock69Stack3 := [:recoveredBlock69Block151Arg1 | 
    | recoveredBlock69Block151Value0 recoveredBlock69Block151Value1 recoveredBlock69Block151Value2 recoveredBlock69Block151Value3 |
    recoveredBlock69Block151Value0 := recoveredBlock69Block151Arg1.
    recoveredBlock69Block151Value1 := (recoveredBlock69Block151Value0) getAttribute: ('name').
    recoveredBlock69Block151Value2 := recoveredBlock69Local5.
    recoveredBlock69Block151Value3 := (recoveredBlock69Block151Value1) = (recoveredBlock69Block151Value2).
    recoveredBlock69Block151Value3
].
            recoveredBlock69PC := 168.
        ].
        recoveredBlock69Step = 168 ifTrue: [
            recoveredBlock69Stack4 := 'TimeStamp'.
            recoveredBlock69PC := 170.
        ].
        recoveredBlock69Step = 170 ifTrue: [
            recoveredBlock69Stack1 := (recoveredBlock69Stack1) with: (recoveredBlock69Stack2) with: (recoveredBlock69Stack3) with: (recoveredBlock69Stack4).
            recoveredBlock69PC := 173.
        ].
        recoveredBlock69Step = 173 ifTrue: [
            recoveredBlock69Stack2 := recoveredBlock69Arg1.
            recoveredBlock69PC := 176.
        ].
        recoveredBlock69Step = 176 ifTrue: [
            recoveredBlock69Stack3 := [:recoveredBlock69Block176Arg1 | 
    | recoveredBlock69Block176Value0 recoveredBlock69Block176Value1 recoveredBlock69Block176Value2 recoveredBlock69Block176Value3 recoveredBlock69Block176Value4 |
    recoveredBlock69Block176Value0 := recoveredBlock69Block176Arg1.
    recoveredBlock69Block176Value1 := (recoveredBlock69Block176Value0) getDateTime: ('timeStampValue').
    recoveredBlock69Local2 := recoveredBlock69Block176Value1.
    recoveredBlock69Block176Value2 := recoveredBlock69Block176Arg1.
    recoveredBlock69Block176Value3 := (recoveredBlock69Block176Value2) getNNInt: ('timeStampCounter') default: (0).
    recoveredBlock69Block176Value4 := recoveredBlock69Block176Value3.
    recoveredBlock69Local1 := recoveredBlock69Block176Value4.
    recoveredBlock69Block176Value3
].
            recoveredBlock69PC := 202.
        ].
        recoveredBlock69Step = 202 ifTrue: [
            recoveredBlock69Stack4 := [
    | recoveredBlock69Block202Value0 recoveredBlock69Block202Value1 |
    recoveredBlock69Block202Value0 := Date.
    recoveredBlock69Block202Value1 := (recoveredBlock69Block202Value0) dateAndTimeNowInSeconds.
    recoveredBlock69Local2 := recoveredBlock69Block202Value1.
    recoveredBlock69Local1 := 0.
    0
].
            recoveredBlock69PC := 222.
        ].
        recoveredBlock69Step = 222 ifTrue: [
            (recoveredBlock69Stack0) metaAt: (recoveredBlock69Stack1) or: (recoveredBlock69Stack2) do: (recoveredBlock69Stack3) ifNot: (recoveredBlock69Stack4).
            recoveredBlock69PC := 225.
        ].
        recoveredBlock69Step = 225 ifTrue: [
            recoveredBlock69Stack0 := recoveredBlock69Arg1.
            recoveredBlock69PC := 228.
        ].
        recoveredBlock69Step = 228 ifTrue: [
            recoveredBlock69Stack1 := 'Notes'.
            recoveredBlock69PC := 230.
        ].
        recoveredBlock69Step = 230 ifTrue: [
            recoveredBlock69Stack2 := [:block2811e1f8Arg1 | 
    | block2811e1f8Value0 |
    block2811e1f8Value0 := block2811e1f8Arg1.
    block2811e1f8Value0
].
            recoveredBlock69PC := 232.
        ].
        recoveredBlock69Step = 232 ifTrue: [
            recoveredBlock69PC := 238.
        ].
        recoveredBlock69Step = 238 ifTrue: [
            recoveredBlock69Stack0 := (recoveredBlock69Stack0) optional: (recoveredBlock69Stack1) do: (recoveredBlock69Stack2).
            recoveredBlock69PC := 240.
        ].
        recoveredBlock69Step = 240 ifTrue: [
            recoveredBlock69Local3 := recoveredBlock69Stack0.
            recoveredBlock69PC := 243.
        ].
        recoveredBlock69Step = 243 ifTrue: [
            recoveredBlock69Stack0 := self.
            recoveredBlock69PC := 244.
        ].
        recoveredBlock69Step = 244 ifTrue: [
            recoveredBlock69Stack1 := recoveredBlock69Arg1.
            recoveredBlock69PC := 247.
        ].
        recoveredBlock69Step = 247 ifTrue: [
            recoveredBlock69Stack2 := [:recoveredBlock69Block247Arg1 | 
    | recoveredBlock69Block247Value0 recoveredBlock69Block247Value1 recoveredBlock69Block247Value2 recoveredBlock69Block247Value3 |
    recoveredBlock69Block247Value0 := recoveredBlock69Local8.
    recoveredBlock69Block247Value1 := (recoveredBlock69Block247Value0) xmlCustomerDataBasic.
    recoveredBlock69Block247Value2 := recoveredBlock69Block247Arg1.
    recoveredBlock69Block247Value3 := (recoveredBlock69Block247Value1) configuration: (recoveredBlock69Block247Value2).
    recoveredBlock69Block247Value3
].
            recoveredBlock69PC := 263.
        ].
        recoveredBlock69Step = 263 ifTrue: [
            (recoveredBlock69Stack0) readCustomerDatas: (recoveredBlock69Stack1) storeBlock: (recoveredBlock69Stack2).
            recoveredBlock69PC := 265.
        ].
        recoveredBlock69Step = 265 ifTrue: [
            recoveredBlock69Stack0 := recoveredBlock69Arg1.
            recoveredBlock69PC := 268.
        ].
        recoveredBlock69Step = 268 ifTrue: [
            recoveredBlock69Stack1 := 'DataEntry'.
            recoveredBlock69PC := 270.
        ].
        recoveredBlock69Step = 270 ifTrue: [
            recoveredBlock69Stack2 := [:recoveredBlock69Block270Arg1 | 
    | recoveredBlock69Block270Value0 recoveredBlock69Block270Value1 recoveredBlock69Block270Value2 recoveredBlock69Block270Value3 |
    recoveredBlock69Block270Value0 := recoveredBlock69Block270Arg1.
    recoveredBlock69Block270Value1 := recoveredBlock69Local8.
    recoveredBlock69Block270Value2 := recoveredBlock69Local6.
    recoveredBlock69Block270Value3 := (self) readDataEntryT: (recoveredBlock69Block270Value0) data: (recoveredBlock69Block270Value1) customerData: (recoveredBlock69Block270Value2).
    recoveredBlock69Block270Value3
].
            recoveredBlock69PC := 287.
        ].
        recoveredBlock69Step = 287 ifTrue: [
            (recoveredBlock69Stack0) multiple: (recoveredBlock69Stack1) do: (recoveredBlock69Stack2).
            recoveredBlock69PC := 289.
        ].
        recoveredBlock69Step = 289 ifTrue: [
            recoveredBlock69Stack0 := recoveredBlock69Local6.
            recoveredBlock69PC := 292.
        ].
        recoveredBlock69Step = 292 ifTrue: [
            recoveredBlock69Stack0 := (recoveredBlock69Stack0) notEmpty.
            recoveredBlock69PC := 294.
        ].
        recoveredBlock69Step = 294 ifTrue: [
            (recoveredBlock69Stack0) ifTrue: [recoveredBlock69PC := 298] ifFalse: [recoveredBlock69PC := 308].
        ].
        recoveredBlock69Step = 298 ifTrue: [
            recoveredBlock69Stack0 := recoveredBlock69Local8.
            recoveredBlock69PC := 301.
        ].
        recoveredBlock69Step = 301 ifTrue: [
            recoveredBlock69Stack0 := (recoveredBlock69Stack0) xmlCustomerDataBasic.
            recoveredBlock69PC := 303.
        ].
        recoveredBlock69Step = 303 ifTrue: [
            recoveredBlock69Stack1 := recoveredBlock69Local6.
            recoveredBlock69PC := 306.
        ].
        recoveredBlock69Step = 306 ifTrue: [
            (recoveredBlock69Stack0) elements: (recoveredBlock69Stack1).
            recoveredBlock69PC := 308.
        ].
        recoveredBlock69Step = 308 ifTrue: [
            recoveredBlock69Stack0 := recoveredBlock69Arg1.
            recoveredBlock69PC := 311.
        ].
        recoveredBlock69Step = 311 ifTrue: [
            recoveredBlock69Stack1 := 'CheckSum'.
            recoveredBlock69PC := 313.
        ].
        recoveredBlock69Step = 313 ifTrue: [
            recoveredBlock69Stack2 := [:block2811e21cArg1 | 
    | block2811e21cValue0 |
    block2811e21cValue0 := ('csIgnored') notNil.
    block2811e21cValue0
].
            recoveredBlock69PC := 315.
        ].
        recoveredBlock69Step = 315 ifTrue: [
            recoveredBlock69PC := 322.
        ].
        recoveredBlock69Step = 322 ifTrue: [
            (recoveredBlock69Stack0) optional: (recoveredBlock69Stack1) do: (recoveredBlock69Stack2).
            recoveredBlock69PC := 324.
        ].
        recoveredBlock69Step = 324 ifTrue: [
            recoveredBlock69Stack0 := recoveredBlock69Arg1.
            recoveredBlock69PC := 327.
        ].
        recoveredBlock69Step = 327 ifTrue: [
            recoveredBlock69Stack1 := handler.
            recoveredBlock69PC := 329.
        ].
        recoveredBlock69Step = 329 ifTrue: [
            (recoveredBlock69Stack0) doneIfNot: (recoveredBlock69Stack1).
            recoveredBlock69PC := 331.
        ].
        recoveredBlock69Step = 331 ifTrue: [
            recoveredBlock69Stack0 := dependentParameters.
            recoveredBlock69PC := 333.
        ].
        recoveredBlock69Step = 333 ifTrue: [
            recoveredBlock69Stack0 := (recoveredBlock69Stack0) size.
            recoveredBlock69PC := 335.
        ].
        recoveredBlock69Step = 335 ifTrue: [
            recoveredBlock69Stack1 := 0.
            recoveredBlock69PC := 337.
        ].
        recoveredBlock69Step = 337 ifTrue: [
            recoveredBlock69Stack0 := (recoveredBlock69Stack0) > (recoveredBlock69Stack1).
            recoveredBlock69PC := 338.
        ].
        recoveredBlock69Step = 338 ifTrue: [
            (recoveredBlock69Stack0) ifTrue: [recoveredBlock69PC := 342] ifFalse: [recoveredBlock69PC := 349].
        ].
        recoveredBlock69Step = 342 ifTrue: [
            recoveredBlock69Stack0 := recoveredBlock69Local8.
            recoveredBlock69PC := 345.
        ].
        recoveredBlock69Step = 345 ifTrue: [
            recoveredBlock69Stack1 := dependentParameters.
            recoveredBlock69PC := 347.
        ].
        recoveredBlock69Step = 347 ifTrue: [
            (recoveredBlock69Stack0) xmlDependentParameters: (recoveredBlock69Stack1).
            recoveredBlock69PC := 349.
        ].
        recoveredBlock69Step = 349 ifTrue: [
            recoveredBlock69Stack0 := recoveredBlock69Local8.
            recoveredBlock69PC := 352.
        ].
        recoveredBlock69Step = 352 ifTrue: [
            recoveredBlock69Stack1 := controller.
            recoveredBlock69PC := 354.
        ].
        recoveredBlock69Step = 354 ifTrue: [
            recoveredBlock69Stack2 := protoClass.
            recoveredBlock69PC := 356.
        ].
        recoveredBlock69Step = 356 ifTrue: [
            recoveredBlock69Stack2 := (recoveredBlock69Stack2) xmlOID.
            recoveredBlock69PC := 358.
        ].
        recoveredBlock69Step = 358 ifTrue: [
            recoveredBlock69Stack1 := (recoveredBlock69Stack1) makeDBProxy: (recoveredBlock69Stack2).
            recoveredBlock69PC := 360.
        ].
        recoveredBlock69Step = 360 ifTrue: [
            (recoveredBlock69Stack0) xmlSgClass: (recoveredBlock69Stack1).
            recoveredBlock69PC := 362.
        ].
        recoveredBlock69Step = 362 ifTrue: [
            recoveredBlock69Stack0 := recoveredBlock69Arg1.
            recoveredBlock69PC := 365.
        ].
        recoveredBlock69Step = 365 ifTrue: [
            recoveredBlock69Stack1 := 'name'.
            recoveredBlock69PC := 367.
        ].
        recoveredBlock69Step = 367 ifTrue: [
            recoveredBlock69Stack0 := (recoveredBlock69Stack0) getNMToken: (recoveredBlock69Stack1).
            recoveredBlock69PC := 369.
        ].
        recoveredBlock69Step = 369 ifTrue: [
            recoveredBlock69Local5 := recoveredBlock69Stack0.
            recoveredBlock69PC := 372.
        ].
        recoveredBlock69Step = 372 ifTrue: [
            recoveredBlock69Stack0 := recoveredBlock69Arg1.
            recoveredBlock69PC := 375.
        ].
        recoveredBlock69Step = 375 ifTrue: [
            recoveredBlock69Stack1 := 'OID'.
            recoveredBlock69PC := 377.
        ].
        recoveredBlock69Step = 377 ifTrue: [
            recoveredBlock69Stack2 := nil.
            recoveredBlock69PC := 378.
        ].
        recoveredBlock69Step = 378 ifTrue: [
            recoveredBlock69Stack0 := (recoveredBlock69Stack0) getOID: (recoveredBlock69Stack1) default: (recoveredBlock69Stack2).
            recoveredBlock69PC := 383.
        ].
        recoveredBlock69Step = 383 ifTrue: [
            recoveredBlock69Local4 := recoveredBlock69Stack0.
            recoveredBlock69PC := 386.
        ].
        recoveredBlock69Step = 386 ifTrue: [
            recoveredBlock69Stack0 := self.
            recoveredBlock69PC := 387.
        ].
        recoveredBlock69Step = 387 ifTrue: [
            recoveredBlock69Stack1 := recoveredBlock69Local8.
            recoveredBlock69PC := 390.
        ].
        recoveredBlock69Step = 390 ifTrue: [
            recoveredBlock69Stack2 := recoveredBlock69Local5.
            recoveredBlock69PC := 393.
        ].
        recoveredBlock69Step = 393 ifTrue: [
            recoveredBlock69Stack3 := recoveredBlock69Local4.
            recoveredBlock69PC := 396.
        ].
        recoveredBlock69Step = 396 ifTrue: [
            recoveredBlock69Stack4 := recoveredBlock69Local9.
            recoveredBlock69PC := 399.
        ].
        recoveredBlock69Step = 399 ifTrue: [
            recoveredBlock69Stack5 := recoveredBlock69Arg1.
            recoveredBlock69PC := 402.
        ].
        recoveredBlock69Step = 402 ifTrue: [
            recoveredBlock69Stack6 := 'default'.
            recoveredBlock69PC := 406.
        ].
        recoveredBlock69Step = 406 ifTrue: [
            recoveredBlock69Stack5 := (recoveredBlock69Stack5) getBoolean: (recoveredBlock69Stack6).
            recoveredBlock69PC := 408.
        ].
        recoveredBlock69Step = 408 ifTrue: [
            recoveredBlock69Stack6 := recoveredBlock69Local3.
            recoveredBlock69PC := 411.
        ].
        recoveredBlock69Step = 411 ifTrue: [
            (recoveredBlock69Stack0) saveSet: (recoveredBlock69Stack1) name: (recoveredBlock69Stack2) oid: (recoveredBlock69Stack3) isClassConfig: (recoveredBlock69Stack4) isDefault: (recoveredBlock69Stack5) notes: (recoveredBlock69Stack6).
            recoveredBlock69PC := 415.
        ].
        recoveredBlock69Step = 415 ifTrue: [
            recoveredBlock69Stack0 := self.
            recoveredBlock69PC := 416.
        ].
        recoveredBlock69Step = 416 ifTrue: [
            recoveredBlock69Stack1 := recoveredBlock69Local9.
            recoveredBlock69PC := 419.
        ].
        recoveredBlock69Step = 419 ifTrue: [
            (recoveredBlock69Stack1) ifTrue: [recoveredBlock69PC := 422] ifFalse: [recoveredBlock69PC := 428].
        ].
        recoveredBlock69Step = 422 ifTrue: [
            recoveredBlock69Stack1 := recoveredLocal2.
            recoveredBlock69PC := 425.
        ].
        recoveredBlock69Step = 425 ifTrue: [
            recoveredBlock69PC := 431.
        ].
        recoveredBlock69Step = 428 ifTrue: [
            recoveredBlock69Stack1 := recoveredLocal1.
            recoveredBlock69PC := 431.
        ].
        recoveredBlock69Step = 431 ifTrue: [
            recoveredBlock69Stack2 := recoveredBlock69Local8.
            recoveredBlock69PC := 434.
        ].
        recoveredBlock69Step = 434 ifTrue: [
            (recoveredBlock69Stack0) checkCompleteness: (recoveredBlock69Stack1) config: (recoveredBlock69Stack2).
            recoveredBlock69PC := 439.
        ].
        recoveredBlock69Step = 439 ifTrue: [
            recoveredBlock69Stack0 := 'Kli'.
            recoveredBlock69PC := 441.
        ].
        recoveredBlock69Step = 441 ifTrue: [
            recoveredBlock69Stack1 := 'WorkspaceTimeStamps'.
            recoveredBlock69PC := 443.
        ].
        recoveredBlock69Step = 443 ifTrue: [
            recoveredBlock69Stack0 := (recoveredBlock69Stack0) == (recoveredBlock69Stack1).
            recoveredBlock69PC := 444.
        ].
        recoveredBlock69Step = 444 ifTrue: [
            recoveredBlock69PC := 445.
        ].
        recoveredBlock69Step = 445 ifTrue: [
            recoveredBlock69Stack0 := recoveredBlock69Local8.
            recoveredBlock69PC := 448.
        ].
        recoveredBlock69Step = 448 ifTrue: [
            recoveredBlock69Stack0 := (recoveredBlock69Stack0) dbObject.
            recoveredBlock69PC := 453.
        ].
        recoveredBlock69Step = 453 ifTrue: [
            recoveredBlock69Stack1 := recoveredBlock69Local2.
            recoveredBlock69PC := 456.
        ].
        recoveredBlock69Step = 456 ifTrue: [
            (recoveredBlock69Stack0) applicationTimeStamp: (recoveredBlock69Stack1).
            recoveredBlock69PC := 461.
        ].
        recoveredBlock69Step = 461 ifTrue: [
            recoveredBlock69Stack0 := recoveredBlock69Local8.
            recoveredBlock69PC := 464.
        ].
        recoveredBlock69Step = 464 ifTrue: [
            recoveredBlock69Stack0 := (recoveredBlock69Stack0) dbObject.
            recoveredBlock69PC := 469.
        ].
        recoveredBlock69Step = 469 ifTrue: [
            recoveredBlock69Stack1 := recoveredBlock69Local1.
            recoveredBlock69PC := 472.
        ].
        recoveredBlock69Step = 472 ifTrue: [
            recoveredBlock69Stack0 := (recoveredBlock69Stack0) applicationTimeStampNanoSecondsFromTimeStampWithCounter: (recoveredBlock69Stack1).
            recoveredBlock69PC := 477.
        ].
        recoveredBlock69Step = 477 ifTrue: [
            recoveredBlock69Result := recoveredBlock69Stack0.
            recoveredBlock69Done := true.
        ].
    ].
    recoveredBlock69Result
].
            recoveredPC := 478.
        ].
        recoveredStep = 478 ifTrue: [
            (recoveredStack0) multiple: (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 480.
        ].
        recoveredStep = 480 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 483.
        ].
        recoveredStep = 483 ifTrue: [
            recoveredStack1 := 'Signature'.
            recoveredPC := 486.
        ].
        recoveredStep = 486 ifTrue: [
            recoveredStack2 := [:block2811e240Arg1 | 
    nil
].
            recoveredPC := 490.
        ].
        recoveredStep = 490 ifTrue: [
            recoveredPC := 496.
        ].
        recoveredStep = 496 ifTrue: [
            (recoveredStack0) optional: (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 498.
        ].
        recoveredStep = 498 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 501.
        ].
        recoveredStep = 501 ifTrue: [
            recoveredStack1 := handler.
            recoveredPC := 503.
        ].
        recoveredStep = 503 ifTrue: [
            (recoveredStack0) doneIfNot: (recoveredStack1).
            recoveredPC := 505.
        ].
        recoveredStep = 505 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 506.
        ].
        recoveredStep = 506 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

