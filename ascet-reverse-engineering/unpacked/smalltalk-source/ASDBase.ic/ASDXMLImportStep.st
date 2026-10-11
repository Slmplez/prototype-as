"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20006690; bytecode file offset 0x902f44"
!ASDXMLImportStep methodsFor: 'recovered'!
protoItem
    ^nil
! !

"ASDBase.ic method 0x20028344; bytecode file offset 0x934580"
!ASDXMLImportStep methodsFor: 'recovered'!
description
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) printString.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004e648; bytecode file offset 0x94d048"
!ASDXMLImportStep methodsFor: 'recovered'!
performStep
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2004ef90; bytecode file offset 0x94d048"
!ASDXMLImportStep methodsFor: 'recovered'!
baseName
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2006675c; bytecode file offset 0x963428"
!ASDXMLImportStep methodsFor: 'recovered'!
controller
    | recoveredValue0 |
    recoveredValue0 := controller.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200691a4; bytecode file offset 0x965b90"
!ASDXMLImportStep methodsFor: 'recovered'!
importPath
    | recoveredValue0 |
    recoveredValue0 := importPath.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069a50; bytecode file offset 0x966bdc"
!ASDXMLImportStep methodsFor: 'recovered'!
extension
    | recoveredValue0 |
    recoveredValue0 := extension.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20092c0c; bytecode file offset 0x98f4c8"
!ASDXMLImportStep methodsFor: 'recovered'!
qualifyBaseName: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := importPath.
    recoveredValue1 := (recoveredValue0) asPathname.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) , (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200ad894; bytecode file offset 0x9aa218"
!ASDXMLImportStep methodsFor: 'recovered'!
readDOMTree: recoveredArg1 schema: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) readDOMTree: (recoveredValue0) schema: (recoveredValue1) verify: (true).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200c1a04; bytecode file offset 0x9beac8"
!ASDXMLImportStep methodsFor: 'recovered'!
originalSchemaVersion: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    originalSchemaVersion := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c23c0; bytecode file offset 0x9bf474"
!ASDXMLImportStep methodsFor: 'recovered'!
currentSchemaVersion: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    currentSchemaVersion := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200e102c; bytecode file offset 0x9dd8f0"
!ASDXMLImportStep methodsFor: 'recovered'!
dirOfMain
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := importPath.
    recoveredValue1 := (recoveredValue0) , ('\').
    recoveredValue2 := (self) baseName.
    recoveredValue3 := (recoveredValue1) , (recoveredValue2).
    recoveredValue4 := (recoveredValue3) getPathOnly.
    ^recoveredValue4
! !

"ASDBase.ic method 0x200ecf18; bytecode file offset 0x9e97cc"
!ASDXMLImportStep methodsFor: 'recovered'!
initOn: recoveredArg1 importPath: recoveredArg2 ext: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    controller := recoveredValue0.
    recoveredValue1 := recoveredArg2.
    importPath := recoveredValue1.
    recoveredValue2 := recoveredArg3.
    extension := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x2010cedc; bytecode file offset 0xa0979c"
!ASDXMLImportStep methodsFor: 'recovered'!
addIssue: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('Die') == ('TFS_328109').
    recoveredValue1 := controller.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) addIssue: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x201271d8; bytecode file offset 0xa23a9c"
!ASDXMLImportStep methodsFor: 'recovered'!
initOn: recoveredArg1 importDesc: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (recoveredValue0) database.
    recoveredValue2 := (recoveredValue1) databasePath.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := (recoveredValue5) xmlExt.
    (self) initOn: (recoveredValue3) importPath: (recoveredValue4) ext: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x20139248; bytecode file offset 0xa35b0c"
!ASDXMLImportStep methodsFor: 'recovered'!
readDOMTree: recoveredArg1 schema: recoveredArg2 verify: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) baseName.
    recoveredValue1 := (self) qualifyBaseName: (recoveredValue0).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) , (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := recoveredArg3.
    recoveredValue7 := (self) readDOMTreeFromFile: (recoveredValue4) schema: (recoveredValue5) verify: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x201523d4; bytecode file offset 0xa4ec90"
!ASDXMLImportStep methodsFor: 'recovered'!
originalSchemaVersion
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := originalSchemaVersion.
    recoveredValue1 := [
    ^''
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := originalSchemaVersion.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2015241c; bytecode file offset 0xa4ecd8"
!ASDXMLImportStep methodsFor: 'recovered'!
currentSchemaVersion
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := currentSchemaVersion.
    recoveredValue1 := [
    ^''
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := currentSchemaVersion.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20183c1c; bytecode file offset 0xa80508"
!ASDXMLImportStep methodsFor: 'recovered'!
inconsistentData: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Util.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := ('Inconsistent data: ') , (recoveredValue2).
    (recoveredValue1) show: (recoveredValue3).
    (recoveredValue0) cr.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := ('Inconsistent data: ') , (recoveredValue4).
    (self) error: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x20183c3c; bytecode file offset 0xa80508"
!ASDXMLImportStep methodsFor: 'recovered'!
internalError: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Util.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := ('Internal error:  ') , (recoveredValue2).
    (recoveredValue1) show: (recoveredValue3).
    (recoveredValue0) cr.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := ('Internal error:  ') , (recoveredValue4).
    (self) error: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x201a3c7c; bytecode file offset 0xaa0570"
!ASDXMLImportStep methodsFor: 'recovered'!
unexpectedElement: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := Util.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) name.
    recoveredValue4 := ('Unexpected element encountered: ') , (recoveredValue3).
    (recoveredValue1) show: (recoveredValue4).
    (recoveredValue0) cr.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) name.
    recoveredValue7 := ('Unexpected element encountered: ') , (recoveredValue6).
    (self) error: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x201a3ca0; bytecode file offset 0xaa0570"
!ASDXMLImportStep methodsFor: 'recovered'!
inconsistentElement: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := Util.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) name.
    recoveredValue4 := ('Inconsistent element encountered: ') , (recoveredValue3).
    (recoveredValue1) show: (recoveredValue4).
    (recoveredValue0) cr.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) name.
    recoveredValue7 := ('Inconsistent element encountered: ') , (recoveredValue6).
    (self) error: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x201b5ad4; bytecode file offset 0xab23a8"
!ASDXMLImportStep methodsFor: 'recovered'!
mismatchingOID: recoveredArg1 name: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := Util.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) aliasAsIdString.
    recoveredValue4 := ('Inconsistent claim of OID: ') , (recoveredValue3).
    recoveredValue5 := (recoveredValue4) , (', element name: ').
    recoveredValue6 := recoveredArg2.
    recoveredValue7 := (recoveredValue5) , (recoveredValue6).
    (recoveredValue1) show: (recoveredValue7).
    (recoveredValue0) cr.
    recoveredValue8 := ('todo') notNil.
    ^self
! !

"ASDBase.ic method 0x201bf440; bytecode file offset 0xabbd14"
!ASDXMLImportStep methodsFor: 'recovered'!
readFileReferenceT: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) cData.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := (self) dirOfMain.
    recoveredValue3 := (recoveredValue2) , ('\').
    recoveredValue4 := recoveredLocal2.
    recoveredValue5 := (recoveredValue3) , (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := ('Die') == ('Call_96418').
    recoveredValue7 := Util.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := (recoveredValue7) checkFileName: (recoveredValue8).
    ^recoveredValue9
! !

"ASDBase.ic method 0x2025e290; bytecode file offset 0xb5ab60"
!ASDXMLImportStep methodsFor: 'recovered'!
readFileReferenceTAsDOM: recoveredArg1 topLevelElementName: recoveredArg2 schema: recoveredArg3
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
            recoveredStack0 := (recoveredStack0) readFileReferenceT: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := controller.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) getSchema: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := Util.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) readDOMTree: (recoveredStack1) schema: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) name.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) unexpectedElement: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203eb8c8; bytecode file offset 0xce81ac"
!ASDXMLImportStep methodsFor: 'recovered'!
readCustomerDatas: recoveredArg1 storeBlock: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ASDCustomerDataInformation.
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
            recoveredStack2 := 'CustomerData'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 recoveredBlock15Value3 recoveredBlock15Value4 |
    recoveredBlock15Value0 := recoveredLocal1.
    recoveredBlock15Value1 := recoveredBlock15Arg1.
    recoveredBlock15Value2 := (recoveredBlock15Value0) addFromDOMIterator: (recoveredBlock15Value1).
    recoveredBlock15Value3 := [:recoveredBlock15Block27Arg1 | 
    | recoveredBlock15Block27Value0 recoveredBlock15Block27Value1 recoveredBlock15Block27Value2 recoveredBlock15Block27Value3 recoveredBlock15Block27Value4 recoveredBlock15Block27Value5 recoveredBlock15Block27Value6 recoveredBlock15Block27Value7 recoveredBlock15Block27Value8 recoveredBlock15Block27Value9 |
    recoveredBlock15Block27Value0 := controller.
    recoveredBlock15Block27Value1 := ASDXMLImportIssueInvalidCustomerData.
    recoveredBlock15Block27Value2 := (recoveredBlock15Block27Value1) new.
    recoveredBlock15Block27Value3 := recoveredLocal1.
    recoveredBlock15Block27Value4 := recoveredBlock15Block27Arg1.
    recoveredBlock15Block27Value5 := (self) protoItem.
    recoveredBlock15Block27Value6 := (recoveredBlock15Block27Value2) initOn: (recoveredBlock15Block27Value3) customerData: (recoveredBlock15Block27Value4) item: (recoveredBlock15Block27Value5).
    (recoveredBlock15Block27Value0) addIssue: (recoveredBlock15Block27Value6).
    recoveredBlock15Block27Value7 := recoveredArg2.
    recoveredBlock15Block27Value8 := recoveredLocal1.
    recoveredBlock15Block27Value9 := (recoveredBlock15Block27Value7) value: (recoveredBlock15Block27Value8).
    recoveredBlock15Block27Value9
].
    recoveredBlock15Value4 := (recoveredBlock15Value2) do: (recoveredBlock15Value3).
    recoveredBlock15Value4
].
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack1) multiple: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x204587dc; bytecode file offset 0xd550d8"
!ASDXMLImportStep methodsFor: 'recovered'!
readTypedObject: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) getString: ('value').
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := [
    | recoveredBlock13Value0 recoveredBlock13Value1 |
    recoveredBlock13Value0 := recoveredArg1.
    recoveredBlock13Value1 := (recoveredBlock13Value0) getNMToken: ('type').
    recoveredBlock13Value1
].
    recoveredValue3 := [
    | recoveredBlock29Value0 recoveredBlock29Value1 |
    recoveredBlock29Value0 := recoveredLocal1.
    recoveredBlock29Value1 := (recoveredBlock29Value0) = ('true').
    ^recoveredBlock29Value1
].
    recoveredValue4 := [
    | recoveredBlock45Value0 recoveredBlock45Value1 |
    recoveredBlock45Value0 := recoveredLocal1.
    recoveredBlock45Value1 := (recoveredBlock45Value0) asInteger.
    ^recoveredBlock45Value1
].
    recoveredValue5 := [
    | recoveredBlock60Value0 |
    recoveredBlock60Value0 := recoveredLocal1.
    ^recoveredBlock60Value0
].
    recoveredValue6 := [
    | recoveredBlock72Stack0 recoveredBlock72Stack1 recoveredBlock72Stack2 recoveredBlock72Stack3 recoveredBlock72PC recoveredBlock72Step recoveredBlock72Done recoveredBlock72Result |
    recoveredBlock72Stack0 := self.
    recoveredBlock72PC := 78.
    recoveredBlock72Done := false.
    [recoveredBlock72Done not] whileTrue: [
        recoveredBlock72Step := recoveredBlock72PC.
        recoveredBlock72Step = 78 ifTrue: [
            recoveredBlock72Stack1 := recoveredLocal1.
            recoveredBlock72PC := 81.
        ].
        recoveredBlock72Step = 81 ifTrue: [
            recoveredBlock72Stack2 := '\'.
            recoveredBlock72PC := 83.
        ].
        recoveredBlock72Step = 83 ifTrue: [
            recoveredBlock72Stack1 := (recoveredBlock72Stack1) asArrayOfSubstringsSeparatedBy: (recoveredBlock72Stack2).
            recoveredBlock72PC := 85.
        ].
        recoveredBlock72Step = 85 ifTrue: [
            recoveredBlock72Stack2 := [:block2810000cArg1 | 
    | block2810000cValue0 block2810000cValue1 |
    block2810000cValue0 := block2810000cArg1.
    block2810000cValue1 := (block2810000cValue0) isEmpty.
    block2810000cValue1
].
            recoveredBlock72PC := 87.
        ].
        recoveredBlock72Step = 87 ifTrue: [
            recoveredBlock72PC := 94.
        ].
        recoveredBlock72Step = 94 ifTrue: [
            recoveredBlock72Stack1 := (recoveredBlock72Stack1) reject: (recoveredBlock72Stack2).
            recoveredBlock72PC := 96.
        ].
        recoveredBlock72Step = 96 ifTrue: [
            recoveredBlock72Stack1 := (recoveredBlock72Stack1) asArray.
            recoveredBlock72PC := 98.
        ].
        recoveredBlock72Step = 98 ifTrue: [
            ^recoveredBlock72Stack1
        ].
    ].
    recoveredBlock72Result
].
    recoveredValue7 := [
    | recoveredBlock99Value0 recoveredBlock99Value1 |
    recoveredBlock99Value0 := recoveredArg1.
    recoveredBlock99Value1 := (self) unexpectedElement: (recoveredBlock99Value0).
    recoveredBlock99Value1
].
    (recoveredValue2) case: ('boolean') do: (recoveredValue3) case: ('int') do: (recoveredValue4) case: ('String') do: (recoveredValue5) case: ('MultiSelectionEnum') do: (recoveredValue6) others: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x204900f0; bytecode file offset 0xd8c9c0"
!ASDXMLImportStep methodsFor: 'recovered'!
transpose: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredPC := 98.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := (recoveredStack3) first.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := (recoveredStack3) class.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack4 := (recoveredStack4) size.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := (recoveredStack3) new: (recoveredStack4).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack4 := [:recoveredBlock65Arg1 | 
    | recoveredBlock65Value0 recoveredBlock65Value1 recoveredBlock65Value2 recoveredBlock65Value3 recoveredBlock65Value4 |
    recoveredBlock65Value0 := recoveredLocal1.
    recoveredBlock65Value1 := recoveredBlock65Arg1.
    recoveredBlock65Value2 := recoveredLocal2.
    recoveredBlock65Value3 := (recoveredBlock65Value1) at: (recoveredBlock65Value2).
    recoveredBlock65Value4 := (recoveredBlock65Value0) add: (recoveredBlock65Value3).
    recoveredBlock65Value4
].
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack3) do: (recoveredStack4).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack3) add: (recoveredStack4).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredStack2 isInteger]) ifTrue: [(recoveredStack2 + 1 <= recoveredStack1) ifTrue: [recoveredStack2 := recoveredStack2 + 1. recoveredStack3 := recoveredStack2. recoveredPC := 46] ifFalse: [recoveredPC := 127]] ifFalse: [recoveredPC := 101].
        ].
        recoveredStep = 101 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredLocal2 := recoveredStack4.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 123] ifFalse: [recoveredPC := 118].
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredPC := 49.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2061b610; bytecode file offset 0xf17f8c"
!ASDXMLImportStep methodsFor: 'recovered'!
readDOMTreeFromFile: recoveredArg1 schema: recoveredArg2 verify: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := controller.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) getSchema: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := controller.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) currentFile: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock31Value0 recoveredBlock31Value1 recoveredBlock31Value2 recoveredBlock31Value3 |
    recoveredBlock31Value0 := EtasXmlSupportDoc.
    recoveredBlock31Value1 := (recoveredBlock31Value0) new.
    recoveredBlock31Value2 := recoveredArg1.
    recoveredBlock31Value3 := (recoveredBlock31Value1) initFromFile: (recoveredBlock31Value2).
    recoveredBlock31Value3
].
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := XMLReadError.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := [:recoveredBlock49Arg1 | 
    | recoveredBlock49Value0 recoveredBlock49Value1 recoveredBlock49Value2 recoveredBlock49Value3 recoveredBlock49Value4 recoveredBlock49Value5 recoveredBlock49Value6 |
    recoveredBlock49Value0 := ASDXMLImportIssueInvalidFile.
    recoveredBlock49Value1 := (recoveredBlock49Value0) new.
    recoveredBlock49Value2 := recoveredBlock49Arg1.
    recoveredBlock49Value3 := (self) protoItem.
    recoveredBlock49Value4 := (recoveredBlock49Value1) initOn: ('XML parse error') exception: (recoveredBlock49Value2) class: (recoveredBlock49Value3).
    issue := recoveredBlock49Value4.
    recoveredBlock49Value5 := recoveredBlock49Arg1.
    recoveredBlock49Value6 := (recoveredBlock49Value5) signal.
    recoveredBlock49Value6
].
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) when: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := controller.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := (recoveredStack2) isVerifyImport.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := (recoveredStack1) & (recoveredStack2).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 92] ifFalse: [recoveredPC := 123].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := controller.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock94Value0 recoveredBlock94Value1 |
    recoveredBlock94Value0 := recoveredLocal4.
    recoveredBlock94Value1 := (recoveredBlock94Value0) verify.
    recoveredBlock94Value1
].
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack3 := XMLReadError.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack4 := [:block2811e96cArg1 | 
    | block2811e96cValue0 block2811e96cValue1 |
    block2811e96cValue0 := block2811e96cArg1.
    block2811e96cValue1 := (block2811e96cValue0) exitWith: (false).
    block2811e96cValue1
].
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := (recoveredStack2) when: (recoveredStack3) do: (recoveredStack4).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack1) verificationState: (recoveredStack2).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEncrypted.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 132] ifFalse: [recoveredPC := 176].
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock132Value0 recoveredBlock132Value1 recoveredBlock132Value2 recoveredBlock132Value3 |
    recoveredBlock132Value0 := recoveredLocal4.
    recoveredBlock132Value1 := controller.
    recoveredBlock132Value2 := (recoveredBlock132Value1) decryptionKey.
    recoveredBlock132Value3 := (recoveredBlock132Value0) decrypt: (recoveredBlock132Value2).
    recoveredBlock132Value3
].
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack2 := XMLReadError.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack3 := [:recoveredBlock150Arg1 | 
    | recoveredBlock150Value0 recoveredBlock150Value1 recoveredBlock150Value2 recoveredBlock150Value3 recoveredBlock150Value4 recoveredBlock150Value5 recoveredBlock150Value6 |
    recoveredBlock150Value0 := ASDXMLImportIssueInvalidFile.
    recoveredBlock150Value1 := (recoveredBlock150Value0) new.
    recoveredBlock150Value2 := recoveredBlock150Arg1.
    recoveredBlock150Value3 := (self) protoItem.
    recoveredBlock150Value4 := (recoveredBlock150Value1) initOn: ('Decryption failed') exception: (recoveredBlock150Value2) class: (recoveredBlock150Value3).
    issue := recoveredBlock150Value4.
    recoveredBlock150Value5 := recoveredBlock150Arg1.
    recoveredBlock150Value6 := (recoveredBlock150Value5) signal.
    recoveredBlock150Value6
].
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            (recoveredStack1) when: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := ASDXMLImportDOMIterator.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack4 := (recoveredStack4) getRoot.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack1 := (recoveredStack1) initOn: (recoveredStack2) parent: (recoveredStack3) dom: (recoveredStack4).
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack2 := 'toolVersion'.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack3 := 'V6.1.0-0000'.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack2 := 'V6.1.0-0000'.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 208] ifFalse: [recoveredPC := 256].
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack2 := 'toolVersion'.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack3 := 'V6.1.0-0000'.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack2 := 'V6.1.0-0067'.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 224] ifFalse: [recoveredPC := 256].
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack1 := controller.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack2 := ASDXMLImportIssueCantProcess.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack3 := (recoveredStack3) protoItem.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack5 := 'Incompatible AMD file -> bad toolVersion '.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack6 := recoveredLocal3.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack7 := 'toolVersion'.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack8 := ''.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack6 := (recoveredStack6) getString: (recoveredStack7) default: (recoveredStack8).
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack5 := (recoveredStack5) , (recoveredStack6).
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack6 := true.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack2 := (recoveredStack2) initOn: (recoveredStack3) file: (recoveredStack4) reason: (recoveredStack5) fatal: (recoveredStack6).
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            (recoveredStack1) addIssue: (recoveredStack2).
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 510] ifFalse: [recoveredPC := 262].
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack2 := 'schemaVersion'.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 291] ifFalse: [recoveredPC := 280].
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack2 := 'Version'.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            originalSchemaVersion := recoveredStack1.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            currentSchemaVersion := recoveredStack1.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 338] ifFalse: [recoveredPC := 312].
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack1 := controller.
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack2 := ASDXMLImportIssueDeprecatedSchema.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack4 := 2.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack4 := '<unspecified>'.
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            recoveredStack5 := (recoveredStack5) protoItem.
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            recoveredStack2 := (recoveredStack2) initOn: (recoveredStack3) actual: (recoveredStack4) class: (recoveredStack5).
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            (recoveredStack1) addIssue: (recoveredStack2).
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            recoveredPC := 457.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock338Value0 recoveredBlock338Value1 recoveredBlock338Value2 recoveredBlock338Value3 recoveredBlock338Value4 recoveredBlock338Value5 |
    recoveredBlock338Value0 := controller.
    recoveredBlock338Value1 := (recoveredBlock338Value0) catalog.
    recoveredBlock338Value2 := recoveredLocal4.
    recoveredBlock338Value3 := recoveredArg2.
    recoveredBlock338Value4 := recoveredLocal2.
    recoveredBlock338Value5 := (recoveredBlock338Value1) bringToCurrent: (recoveredBlock338Value2) type: (recoveredBlock338Value3) from: (recoveredBlock338Value4).
    recoveredBlock338Value5
].
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredStack2 := ExASDXML.
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredStack3 := [:recoveredBlock363Arg1 | 
    | recoveredBlock363Value0 recoveredBlock363Value1 recoveredBlock363Value2 recoveredBlock363Value3 recoveredBlock363Value4 recoveredBlock363Value5 recoveredBlock363Value6 recoveredBlock363Value7 recoveredBlock363Value8 recoveredBlock363Value9 |
    recoveredBlock363Value0 := ASDXMLImportIssueInvalidFile.
    recoveredBlock363Value1 := (recoveredBlock363Value0) new.
    recoveredBlock363Value2 := recoveredLocal2.
    recoveredBlock363Value3 := ('Transformation from ') , (recoveredBlock363Value2).
    recoveredBlock363Value4 := (recoveredBlock363Value3) , (' to current failed').
    recoveredBlock363Value5 := recoveredBlock363Arg1.
    recoveredBlock363Value6 := (self) protoItem.
    recoveredBlock363Value7 := (recoveredBlock363Value1) initOn: (recoveredBlock363Value4) exception: (recoveredBlock363Value5) class: (recoveredBlock363Value6).
    issue := recoveredBlock363Value7.
    recoveredBlock363Value8 := recoveredBlock363Arg1.
    recoveredBlock363Value9 := (recoveredBlock363Value8) signal.
    recoveredBlock363Value9
].
            recoveredPC := 397.
        ].
        recoveredStep = 397 ifTrue: [
            recoveredStack1 := (recoveredStack1) when: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 402.
        ].
        recoveredStep = 402 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 407.
        ].
        recoveredStep = 407 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 409.
        ].
        recoveredStep = 409 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 414] ifFalse: [recoveredPC := 453].
        ].
        recoveredStep = 414 ifTrue: [
            recoveredStack1 := controller.
            recoveredPC := 416.
        ].
        recoveredStep = 416 ifTrue: [
            recoveredStack2 := ASDXMLImportIssueDeprecatedSchema.
            recoveredPC := 418.
        ].
        recoveredStep = 418 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 419.
        ].
        recoveredStep = 419 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 422.
        ].
        recoveredStep = 422 ifTrue: [
            recoveredStack4 := 2.
            recoveredPC := 424.
        ].
        recoveredStep = 424 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 426.
        ].
        recoveredStep = 426 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 429.
        ].
        recoveredStep = 429 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 430.
        ].
        recoveredStep = 430 ifTrue: [
            recoveredStack5 := (recoveredStack5) protoItem.
            recoveredPC := 432.
        ].
        recoveredStep = 432 ifTrue: [
            recoveredStack2 := (recoveredStack2) initOn: (recoveredStack3) actual: (recoveredStack4) class: (recoveredStack5).
            recoveredPC := 435.
        ].
        recoveredStep = 435 ifTrue: [
            (recoveredStack1) addIssue: (recoveredStack2).
            recoveredPC := 437.
        ].
        recoveredStep = 437 ifTrue: [
            recoveredStack1 := ASDXMLImportDOMIterator.
            recoveredPC := 439.
        ].
        recoveredStep = 439 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 440.
        ].
        recoveredStep = 440 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 441.
        ].
        recoveredStep = 441 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 442.
        ].
        recoveredStep = 442 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 445.
        ].
        recoveredStep = 445 ifTrue: [
            recoveredStack4 := (recoveredStack4) getRoot.
            recoveredPC := 447.
        ].
        recoveredStep = 447 ifTrue: [
            recoveredStack1 := (recoveredStack1) initOn: (recoveredStack2) parent: (recoveredStack3) dom: (recoveredStack4).
            recoveredPC := 450.
        ].
        recoveredStep = 450 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 453.
        ].
        recoveredStep = 453 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 454.
        ].
        recoveredStep = 454 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 457.
        ].
        recoveredStep = 457 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock457Value0 recoveredBlock457Value1 recoveredBlock457Value2 recoveredBlock457Value3 |
    recoveredBlock457Value0 := recoveredLocal5.
    recoveredBlock457Value1 := (recoveredBlock457Value0) at: (1).
    recoveredBlock457Value2 := recoveredLocal4.
    recoveredBlock457Value3 := (recoveredBlock457Value1) validate: (recoveredBlock457Value2).
    recoveredBlock457Value3
].
            recoveredPC := 477.
        ].
        recoveredStep = 477 ifTrue: [
            recoveredStack2 := ExASDXML.
            recoveredPC := 479.
        ].
        recoveredStep = 479 ifTrue: [
            recoveredStack3 := [:recoveredBlock479Arg1 | 
    | recoveredBlock479Value0 recoveredBlock479Value1 recoveredBlock479Value2 recoveredBlock479Value3 recoveredBlock479Value4 recoveredBlock479Value5 recoveredBlock479Value6 |
    recoveredBlock479Value0 := ASDXMLImportIssueInvalidFile.
    recoveredBlock479Value1 := (recoveredBlock479Value0) new.
    recoveredBlock479Value2 := recoveredBlock479Arg1.
    recoveredBlock479Value3 := (self) protoItem.
    recoveredBlock479Value4 := (recoveredBlock479Value1) initOn: ('Schema validation failed') exception: (recoveredBlock479Value2) class: (recoveredBlock479Value3).
    issue := recoveredBlock479Value4.
    recoveredBlock479Value5 := recoveredBlock479Arg1.
    recoveredBlock479Value6 := (recoveredBlock479Value5) signal.
    recoveredBlock479Value6
].
            recoveredPC := 504.
        ].
        recoveredStep = 504 ifTrue: [
            (recoveredStack1) when: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 506.
        ].
        recoveredStep = 506 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 507.
        ].
        recoveredStep = 507 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 510.
        ].
        recoveredStep = 510 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 513.
        ].
        recoveredStep = 513 ifTrue: [
            (recoveredStack1) dispose.
            recoveredPC := 515.
        ].
        recoveredStep = 515 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 518.
        ].
        recoveredStep = 518 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

