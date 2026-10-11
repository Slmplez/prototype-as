"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20020c48; bytecode file offset 0x92209c"
!ASDXMLImportStepXMLBase methodsFor: 'recovered'!
description
    ^'Surveying import data'
! !

"ASDBase.ic method 0x2004e39c; bytecode file offset 0x94d048"
!ASDXMLImportStepXMLBase methodsFor: 'recovered'!
classOfNextStep
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2004fe54; bytecode file offset 0x94d048"
!ASDXMLImportStepXMLBase methodsFor: 'recovered'!
createMetaStep
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20050658; bytecode file offset 0x94d048"
!ASDXMLImportStepXMLBase methodsFor: 'recovered'!
createNextStep
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x200536f4; bytecode file offset 0x9505d0"
!ASDXMLImportStepXMLBase methodsFor: 'recovered'!
handleDefaultProject: recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2006cb10; bytecode file offset 0x969c04"
!ASDXMLImportStepXMLBase methodsFor: 'recovered'!
baseName
    | recoveredValue0 |
    recoveredValue0 := baseName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d994; bytecode file offset 0x96a390"
!ASDXMLImportStepXMLBase methodsFor: 'recovered'!
protoItem
    | recoveredValue0 |
    recoveredValue0 := protoItem.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200ad8e8; bytecode file offset 0x9aa218"
!ASDXMLImportStepXMLBase methodsFor: 'recovered'!
readMainDOMTree: recoveredArg1 schema: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) readDOMTree: (recoveredValue0) schema: (recoveredValue1) verify: (true).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200e27dc; bytecode file offset 0x9df0a0"
!ASDXMLImportStepXMLBase methodsFor: 'recovered'!
resolvedFileName
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) baseName.
    recoveredValue1 := (self) qualifyBaseName: (recoveredValue0).
    recoveredValue2 := (recoveredValue1) , ('.main.').
    recoveredValue3 := extension.
    recoveredValue4 := (recoveredValue2) , (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20112068; bytecode file offset 0xa0e924"
!ASDXMLImportStepXMLBase methodsFor: 'recovered'!
initOn: recoveredArg1 baseName: recoveredArg2 importPath: recoveredArg3 xmlExt: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := recoveredArg4.
    super initOn: (recoveredValue0) importPath: (recoveredValue1) ext: (recoveredValue2).
    recoveredValue3 := recoveredArg2.
    baseName := recoveredValue3.
    ^self
! !

"ASDBase.ic method 0x20131304; bytecode file offset 0xa2dbc0"
!ASDXMLImportStepXMLBase methodsFor: 'recovered'!
isClassVariable: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack3 := 'exported'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := 'imported'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2021b65c; bytecode file offset 0xb17f2c"
!ASDXMLImportStepXMLBase methodsFor: 'recovered'!
resolveItemWithSpec: recoveredArg1
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
            (recoveredStack0) resolveImplementations: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) resolveData: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := controller.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) options.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionImportReferenced.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 22].
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
            (recoveredStack0) resolveSpecification: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := controller.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) collectOIDs: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) handleDefaultProject: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2021f2f0; bytecode file offset 0xb1bbc4"
!ASDXMLImportStepXMLBase methodsFor: 'recovered'!
tryReadMeta
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) baseName.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) qualifyBaseName: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := '.meta.'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := extension.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := CfsStat.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) exists: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := 'component_meta.xsd'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) readDOMTreeFromFile: (recoveredStack1) schema: (recoveredStack2) verify: (recoveredStack3).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2027a6f8; bytecode file offset 0xb76fdc"
!ASDXMLImportStepXMLBase methodsFor: 'recovered'!
readSimpleComponent: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := ASDXMLImportProtoItem.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) getNMToken: ('name').
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) getOID: ('OID') default: (nil).
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) getString: ('nameSpace').
    recoveredValue8 := baseName.
    recoveredValue9 := importPath.
    recoveredValue10 := (recoveredValue1) initOn: (recoveredValue3) oid: (recoveredValue5) namespace: (recoveredValue7) baseName: (recoveredValue8) importPath: (recoveredValue9).
    recoveredLocal1 := recoveredValue10.
    recoveredValue11 := recoveredLocal1.
    recoveredValue12 := recoveredArg1.
    recoveredValue13 := (recoveredValue12) getString: ('UUID') default: (nil).
    (recoveredValue11) uuid: (recoveredValue13).
    recoveredValue14 := recoveredLocal1.
    ^recoveredValue14
! !

"ASDBase.ic method 0x2032b9c4; bytecode file offset 0xc282a4"
!ASDXMLImportStepXMLBase methodsFor: 'recovered'!
skipItemElements: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'WorkspaceTimeStamps'.
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := 'TimeStamp'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := [:block280ec6f4Arg1 | 
    nil
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) optional: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := 'Comment'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := [:block280ec718Arg1 | 
    nil
].
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) optional: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := 'Notes'.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := [:block280ec73cArg1 | 
    nil
].
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) optional: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := 'CustomerSpecificAttributes'.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := [:block280ec760Arg1 | 
    nil
].
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack1) optional: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2037f808; bytecode file offset 0xc7c0f0"
!ASDXMLImportStepXMLBase methodsFor: 'recovered'!
readGenericComponent: recoveredArg1 class: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) readItemWithSpec: (recoveredValue0) class: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Value0 recoveredBlock20Value1 recoveredBlock20Value2 |
    recoveredBlock20Value0 := recoveredBlock20Arg1.
    recoveredBlock20Value1 := [:recoveredBlock20Block29Arg1 | 
    | recoveredBlock20Block29Value0 recoveredBlock20Block29Value1 recoveredBlock20Block29Value2 recoveredBlock20Block29Value3 recoveredBlock20Block29Value4 recoveredBlock20Block29Value5 recoveredBlock20Block29Value6 recoveredBlock20Block29Value7 recoveredBlock20Block29Value8 recoveredBlock20Block29Value9 |
    recoveredBlock20Block29Value0 := recoveredLocal1.
    recoveredBlock20Block29Value1 := ASDXMLImportProtoRef.
    recoveredBlock20Block29Value2 := (recoveredBlock20Block29Value1) new.
    recoveredBlock20Block29Value3 := recoveredBlock20Block29Arg1.
    recoveredBlock20Block29Value4 := (recoveredBlock20Block29Value3) getString: ('name').
    recoveredBlock20Block29Value5 := recoveredBlock20Block29Arg1.
    recoveredBlock20Block29Value6 := (recoveredBlock20Block29Value5) getOID: ('OID') default: (nil).
    recoveredBlock20Block29Value7 := importPath.
    recoveredBlock20Block29Value8 := (recoveredBlock20Block29Value2) initOn: (recoveredBlock20Block29Value4) refOID: (recoveredBlock20Block29Value6) importPath: (recoveredBlock20Block29Value7).
    recoveredBlock20Block29Value9 := (recoveredBlock20Block29Value0) addComponent: (recoveredBlock20Block29Value8).
    recoveredBlock20Block29Value9
].
    recoveredBlock20Value2 := (recoveredBlock20Value0) multiple: ('Component') do: (recoveredBlock20Value1).
    recoveredBlock20Value2
].
    (recoveredValue3) optional: ('Components') do: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x203c4bb4; bytecode file offset 0xcc1494"
!ASDXMLImportStepXMLBase methodsFor: 'recovered'!
performStep
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:recoveredBlock4Arg1 | 
    | recoveredBlock4Value0 recoveredBlock4Value1 |
    recoveredBlock4Value0 := recoveredBlock4Arg1.
    recoveredBlock4Value1 := (self) unexpectedElement: (recoveredBlock4Value0).
    recoveredBlock4Value1
].
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            handler := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock15Value0 |
    recoveredBlock15Value0 := (self) resolveMain.
    recoveredBlock15Value0
].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := ExError.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := [:recoveredBlock26Arg1 | 
    | recoveredBlock26Stack0 recoveredBlock26Stack1 recoveredBlock26Stack2 recoveredBlock26Stack3 recoveredBlock26Stack4 recoveredBlock26Stack5 recoveredBlock26Stack6 recoveredBlock26PC recoveredBlock26Step recoveredBlock26Done recoveredBlock26Result |
    recoveredBlock26Stack0 := self.
    recoveredBlock26PC := 32.
    recoveredBlock26Done := false.
    [recoveredBlock26Done not] whileTrue: [
        recoveredBlock26Step := recoveredBlock26PC.
        recoveredBlock26Step = 32 ifTrue: [
            recoveredBlock26Stack1 := issue.
            recoveredBlock26PC := 34.
        ].
        recoveredBlock26Step = 34 ifTrue: [
            (recoveredBlock26Stack1 == nil) ifTrue: [recoveredBlock26PC := 48] ifFalse: [recoveredBlock26PC := 38].
        ].
        recoveredBlock26Step = 38 ifTrue: [
            recoveredBlock26Stack1 := controller.
            recoveredBlock26PC := 40.
        ].
        recoveredBlock26Step = 40 ifTrue: [
            recoveredBlock26Stack2 := issue.
            recoveredBlock26PC := 42.
        ].
        recoveredBlock26Step = 42 ifTrue: [
            (recoveredBlock26Stack1) addIssue: (recoveredBlock26Stack2).
            recoveredBlock26PC := 44.
        ].
        recoveredBlock26Step = 44 ifTrue: [
            recoveredBlock26PC := 64.
        ].
        recoveredBlock26Step = 48 ifTrue: [
            recoveredBlock26Stack1 := controller.
            recoveredBlock26PC := 50.
        ].
        recoveredBlock26Step = 50 ifTrue: [
            recoveredBlock26Stack2 := ASDXMLImportIssueFileNotFound.
            recoveredBlock26PC := 52.
        ].
        recoveredBlock26Step = 52 ifTrue: [
            recoveredBlock26Stack2 := (recoveredBlock26Stack2) new.
            recoveredBlock26PC := 54.
        ].
        recoveredBlock26Step = 54 ifTrue: [
            recoveredBlock26Stack3 := nil.
            recoveredBlock26PC := 55.
        ].
        recoveredBlock26Step = 55 ifTrue: [
            recoveredBlock26Stack4 := recoveredBlock26Arg1.
            recoveredBlock26PC := 56.
        ].
        recoveredBlock26Step = 56 ifTrue: [
            recoveredBlock26Stack4 := (recoveredBlock26Stack4) argument.
            recoveredBlock26PC := 58.
        ].
        recoveredBlock26Step = 58 ifTrue: [
            recoveredBlock26Stack5 := true.
            recoveredBlock26PC := 59.
        ].
        recoveredBlock26Step = 59 ifTrue: [
            recoveredBlock26Stack2 := (recoveredBlock26Stack2) initOn: (recoveredBlock26Stack3) file: (recoveredBlock26Stack4) fatal: (recoveredBlock26Stack5).
            recoveredBlock26PC := 62.
        ].
        recoveredBlock26Step = 62 ifTrue: [
            (recoveredBlock26Stack1) addIssue: (recoveredBlock26Stack2).
            recoveredBlock26PC := 64.
        ].
        recoveredBlock26Step = 64 ifTrue: [
            recoveredBlock26Stack1 := recoveredBlock26Arg1.
            recoveredBlock26PC := 65.
        ].
        recoveredBlock26Step = 65 ifTrue: [
            recoveredBlock26Stack2 := nil.
            recoveredBlock26PC := 66.
        ].
        recoveredBlock26Step = 66 ifTrue: [
            recoveredBlock26Stack1 := (recoveredBlock26Stack1) exitWith: (recoveredBlock26Stack2).
            recoveredBlock26PC := 68.
        ].
        recoveredBlock26Step = 68 ifTrue: [
            recoveredBlock26Result := recoveredBlock26Stack1.
            recoveredBlock26Done := true.
        ].
    ].
    recoveredBlock26Result
].
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) when: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            protoItem := recoveredStack1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := protoItem.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := (recoveredStack0) createNextStep.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2051dadc; bytecode file offset 0xe1a40c"
!ASDXMLImportStepXMLBase methodsFor: 'recovered'!
resolveImplementations: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) baseName.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := '.implementation.'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := extension.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) qualifyBaseName: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := controller.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) currentFile: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := CfsStat.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) exists: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 134].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := '.implementation.'.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := extension.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := 'component_implementation.xsd'.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) readDOMTree: (recoveredStack1) schema: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) name.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := 'ComponentImplementation'.
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
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) unexpectedElement: (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := 'ImplementationSet'.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := [:recoveredBlock69Arg1 | 
    | recoveredBlock69Local1 recoveredBlock69Stack0 recoveredBlock69Stack1 recoveredBlock69Stack2 recoveredBlock69Stack3 recoveredBlock69Stack4 recoveredBlock69Stack5 recoveredBlock69Stack6 recoveredBlock69PC recoveredBlock69Step recoveredBlock69Done recoveredBlock69Result |
    recoveredBlock69Stack0 := self.
    recoveredBlock69PC := 76.
    recoveredBlock69Done := false.
    [recoveredBlock69Done not] whileTrue: [
        recoveredBlock69Step := recoveredBlock69PC.
        recoveredBlock69Step = 76 ifTrue: [
            recoveredBlock69Stack1 := ASDXMLImportProtoImpl.
            recoveredBlock69PC := 78.
        ].
        recoveredBlock69Step = 78 ifTrue: [
            recoveredBlock69Stack1 := (recoveredBlock69Stack1) new.
            recoveredBlock69PC := 80.
        ].
        recoveredBlock69Step = 80 ifTrue: [
            recoveredBlock69Stack2 := recoveredBlock69Arg1.
            recoveredBlock69PC := 81.
        ].
        recoveredBlock69Step = 81 ifTrue: [
            recoveredBlock69Stack3 := 'name'.
            recoveredBlock69PC := 83.
        ].
        recoveredBlock69Step = 83 ifTrue: [
            recoveredBlock69Stack2 := (recoveredBlock69Stack2) getNMToken: (recoveredBlock69Stack3).
            recoveredBlock69PC := 85.
        ].
        recoveredBlock69Step = 85 ifTrue: [
            recoveredBlock69Stack3 := recoveredBlock69Arg1.
            recoveredBlock69PC := 86.
        ].
        recoveredBlock69Step = 86 ifTrue: [
            recoveredBlock69Stack4 := 'OID'.
            recoveredBlock69PC := 88.
        ].
        recoveredBlock69Step = 88 ifTrue: [
            recoveredBlock69Stack5 := nil.
            recoveredBlock69PC := 89.
        ].
        recoveredBlock69Step = 89 ifTrue: [
            recoveredBlock69Stack3 := (recoveredBlock69Stack3) getOID: (recoveredBlock69Stack4) default: (recoveredBlock69Stack5).
            recoveredBlock69PC := 91.
        ].
        recoveredBlock69Step = 91 ifTrue: [
            recoveredBlock69Stack1 := (recoveredBlock69Stack1) initOn: (recoveredBlock69Stack2) oid: (recoveredBlock69Stack3).
            recoveredBlock69PC := 93.
        ].
        recoveredBlock69Step = 93 ifTrue: [
            recoveredBlock69Local1 := recoveredBlock69Stack1.
            recoveredBlock69PC := 94.
        ].
        recoveredBlock69Step = 94 ifTrue: [
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
            (recoveredBlock69Stack1) ifTrue: [recoveredBlock69PC := 102] ifFalse: [recoveredBlock69PC := 114].
        ].
        recoveredBlock69Step = 102 ifTrue: [
            recoveredBlock69Stack1 := recoveredArg1.
            recoveredBlock69PC := 105.
        ].
        recoveredBlock69Step = 105 ifTrue: [
            recoveredBlock69Stack2 := recoveredBlock69Local1.
            recoveredBlock69PC := 106.
        ].
        recoveredBlock69Step = 106 ifTrue: [
            recoveredBlock69Stack3 := controller.
            recoveredBlock69PC := 108.
        ].
        recoveredBlock69Step = 108 ifTrue: [
            recoveredBlock69Stack1 := (recoveredBlock69Stack1) setClassImpl: (recoveredBlock69Stack2) controller: (recoveredBlock69Stack3).
            recoveredBlock69PC := 110.
        ].
        recoveredBlock69Step = 110 ifTrue: [
            recoveredBlock69PC := 128.
        ].
        recoveredBlock69Step = 114 ifTrue: [
            recoveredBlock69Stack1 := recoveredArg1.
            recoveredBlock69PC := 117.
        ].
        recoveredBlock69Step = 117 ifTrue: [
            recoveredBlock69Stack2 := recoveredBlock69Local1.
            recoveredBlock69PC := 118.
        ].
        recoveredBlock69Step = 118 ifTrue: [
            recoveredBlock69Stack3 := controller.
            recoveredBlock69PC := 120.
        ].
        recoveredBlock69Step = 120 ifTrue: [
            recoveredBlock69Stack4 := recoveredBlock69Arg1.
            recoveredBlock69PC := 121.
        ].
        recoveredBlock69Step = 121 ifTrue: [
            recoveredBlock69Stack5 := 'default'.
            recoveredBlock69PC := 123.
        ].
        recoveredBlock69Step = 123 ifTrue: [
            recoveredBlock69Stack4 := (recoveredBlock69Stack4) getBoolean: (recoveredBlock69Stack5).
            recoveredBlock69PC := 125.
        ].
        recoveredBlock69Step = 125 ifTrue: [
            recoveredBlock69Stack1 := (recoveredBlock69Stack1) addImpl: (recoveredBlock69Stack2) controller: (recoveredBlock69Stack3) isDefault: (recoveredBlock69Stack4).
            recoveredBlock69PC := 128.
        ].
        recoveredBlock69Step = 128 ifTrue: [
            recoveredBlock69Result := recoveredBlock69Stack1.
            recoveredBlock69Done := true.
        ].
    ].
    recoveredBlock69Result
].
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            (recoveredStack0) multiple: (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredPC := 190.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := controller.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := ASDXMLImportIssueFileNotFound.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack4 := false.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := (recoveredStack1) initOn: (recoveredStack2) file: (recoveredStack3) fatal: (recoveredStack4).
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            (recoveredStack0) addIssue: (recoveredStack1).
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := ASDXMLImportProtoImpl.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack2 := 'Default'.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := (recoveredStack1) initOn: (recoveredStack2) oid: (recoveredStack3).
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack2 := controller.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            (recoveredStack0) setClassImpl: (recoveredStack1) controller: (recoveredStack2).
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack1 := ASDXMLImportProtoImpl.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack2 := 'Default'.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := (recoveredStack1) initOn: (recoveredStack2) oid: (recoveredStack3).
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack2 := controller.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            (recoveredStack0) addImpl: (recoveredStack1) controller: (recoveredStack2) isDefault: (recoveredStack3).
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            (recoveredStack0) isImplMissing: (recoveredStack1).
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2052ba64; bytecode file offset 0xe28398"
!ASDXMLImportStepXMLBase methodsFor: 'recovered'!
resolveSpecification: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := (self) baseName.
    recoveredValue1 := (recoveredValue0) , ('.specification.').
    recoveredValue2 := extension.
    recoveredValue3 := (recoveredValue1) , (recoveredValue2).
    recoveredValue4 := (self) qualifyBaseName: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := controller.
    recoveredValue6 := recoveredLocal1.
    (recoveredValue5) currentFile: (recoveredValue6).
    recoveredValue7 := extension.
    recoveredValue8 := ('.specification.') , (recoveredValue7).
    recoveredValue9 := (self) readDOMTree: (recoveredValue8) schema: ('component_specification.xsd').
    recoveredLocal2 := recoveredValue9.
    recoveredValue10 := recoveredLocal2.
    recoveredValue11 := [:recoveredBlock41Arg1 | 
    | recoveredBlock41Stack0 recoveredBlock41Stack1 recoveredBlock41Stack2 recoveredBlock41Stack3 recoveredBlock41Stack4 recoveredBlock41Stack5 recoveredBlock41PC recoveredBlock41Step recoveredBlock41Done recoveredBlock41Result |
    recoveredBlock41Stack0 := self.
    recoveredBlock41PC := 48.
    recoveredBlock41Done := false.
    [recoveredBlock41Done not] whileTrue: [
        recoveredBlock41Step := recoveredBlock41PC.
        recoveredBlock41Step = 48 ifTrue: [
            recoveredBlock41Stack1 := recoveredBlock41Arg1.
            recoveredBlock41PC := 49.
        ].
        recoveredBlock41Step = 49 ifTrue: [
            recoveredBlock41Stack2 := 'ViewInfo'.
            recoveredBlock41PC := 51.
        ].
        recoveredBlock41Step = 51 ifTrue: [
            recoveredBlock41Stack3 := [:block2810ce34Arg1 | 
    nil
].
            recoveredBlock41PC := 53.
        ].
        recoveredBlock41Step = 53 ifTrue: [
            recoveredBlock41PC := 58.
        ].
        recoveredBlock41Step = 58 ifTrue: [
            (recoveredBlock41Stack1) optional: (recoveredBlock41Stack2) do: (recoveredBlock41Stack3).
            recoveredBlock41PC := 60.
        ].
        recoveredBlock41Step = 60 ifTrue: [
            recoveredBlock41Stack1 := recoveredBlock41Arg1.
            recoveredBlock41PC := 61.
        ].
        recoveredBlock41Step = 61 ifTrue: [
            recoveredBlock41Stack2 := 'LineStyle'.
            recoveredBlock41PC := 63.
        ].
        recoveredBlock41Step = 63 ifTrue: [
            recoveredBlock41Stack3 := [:block2810ce58Arg1 | 
    nil
].
            recoveredBlock41PC := 65.
        ].
        recoveredBlock41Step = 65 ifTrue: [
            recoveredBlock41PC := 70.
        ].
        recoveredBlock41Step = 70 ifTrue: [
            (recoveredBlock41Stack1) optional: (recoveredBlock41Stack2) do: (recoveredBlock41Stack3).
            recoveredBlock41PC := 72.
        ].
        recoveredBlock41Step = 72 ifTrue: [
            recoveredBlock41Stack1 := recoveredBlock41Arg1.
            recoveredBlock41PC := 73.
        ].
        recoveredBlock41Step = 73 ifTrue: [
            recoveredBlock41Stack2 := 'FillColor'.
            recoveredBlock41PC := 75.
        ].
        recoveredBlock41Step = 75 ifTrue: [
            recoveredBlock41Stack3 := [:block2810ce7cArg1 | 
    nil
].
            recoveredBlock41PC := 77.
        ].
        recoveredBlock41Step = 77 ifTrue: [
            recoveredBlock41PC := 82.
        ].
        recoveredBlock41Step = 82 ifTrue: [
            (recoveredBlock41Stack1) optional: (recoveredBlock41Stack2) do: (recoveredBlock41Stack3).
            recoveredBlock41PC := 84.
        ].
        recoveredBlock41Step = 84 ifTrue: [
            recoveredBlock41Stack1 := recoveredBlock41Arg1.
            recoveredBlock41PC := 85.
        ].
        recoveredBlock41Step = 85 ifTrue: [
            recoveredBlock41Stack2 := 'Position'.
            recoveredBlock41PC := 87.
        ].
        recoveredBlock41Step = 87 ifTrue: [
            recoveredBlock41Stack3 := [:block2810cea0Arg1 | 
    nil
].
            recoveredBlock41PC := 89.
        ].
        recoveredBlock41Step = 89 ifTrue: [
            recoveredBlock41PC := 94.
        ].
        recoveredBlock41Step = 94 ifTrue: [
            recoveredBlock41Stack4 := handler.
            recoveredBlock41PC := 96.
        ].
        recoveredBlock41Step = 96 ifTrue: [
            (recoveredBlock41Stack1) required: (recoveredBlock41Stack2) do: (recoveredBlock41Stack3) ifNot: (recoveredBlock41Stack4).
            recoveredBlock41PC := 99.
        ].
        recoveredBlock41Step = 99 ifTrue: [
            recoveredBlock41Stack1 := recoveredBlock41Arg1.
            recoveredBlock41PC := 100.
        ].
        recoveredBlock41Step = 100 ifTrue: [
            recoveredBlock41Stack2 := 'LabelPosition'.
            recoveredBlock41PC := 102.
        ].
        recoveredBlock41Step = 102 ifTrue: [
            recoveredBlock41Stack3 := [:block2810cec4Arg1 | 
    nil
].
            recoveredBlock41PC := 104.
        ].
        recoveredBlock41Step = 104 ifTrue: [
            recoveredBlock41PC := 110.
        ].
        recoveredBlock41Step = 110 ifTrue: [
            recoveredBlock41Stack4 := handler.
            recoveredBlock41PC := 112.
        ].
        recoveredBlock41Step = 112 ifTrue: [
            (recoveredBlock41Stack1) required: (recoveredBlock41Stack2) do: (recoveredBlock41Stack3) ifNot: (recoveredBlock41Stack4).
            recoveredBlock41PC := 115.
        ].
        recoveredBlock41Step = 115 ifTrue: [
            recoveredBlock41Stack1 := recoveredBlock41Arg1.
            recoveredBlock41PC := 116.
        ].
        recoveredBlock41Step = 116 ifTrue: [
            recoveredBlock41Stack2 := 'Interfaces'.
            recoveredBlock41PC := 118.
        ].
        recoveredBlock41Step = 118 ifTrue: [
            recoveredBlock41Stack3 := [:block2810cee8Arg1 | 
    nil
].
            recoveredBlock41PC := 120.
        ].
        recoveredBlock41Step = 120 ifTrue: [
            recoveredBlock41PC := 126.
        ].
        recoveredBlock41Step = 126 ifTrue: [
            recoveredBlock41Stack4 := handler.
            recoveredBlock41PC := 128.
        ].
        recoveredBlock41Step = 128 ifTrue: [
            (recoveredBlock41Stack1) required: (recoveredBlock41Stack2) do: (recoveredBlock41Stack3) ifNot: (recoveredBlock41Stack4).
            recoveredBlock41PC := 131.
        ].
        recoveredBlock41Step = 131 ifTrue: [
            recoveredBlock41Stack1 := recoveredBlock41Arg1.
            recoveredBlock41PC := 132.
        ].
        recoveredBlock41Step = 132 ifTrue: [
            recoveredBlock41Stack2 := 'Size'.
            recoveredBlock41PC := 134.
        ].
        recoveredBlock41Step = 134 ifTrue: [
            recoveredBlock41Stack3 := [:block2810cf0cArg1 | 
    nil
].
            recoveredBlock41PC := 136.
        ].
        recoveredBlock41Step = 136 ifTrue: [
            recoveredBlock41PC := 142.
        ].
        recoveredBlock41Step = 142 ifTrue: [
            recoveredBlock41Stack4 := handler.
            recoveredBlock41PC := 144.
        ].
        recoveredBlock41Step = 144 ifTrue: [
            (recoveredBlock41Stack1) required: (recoveredBlock41Stack2) do: (recoveredBlock41Stack3) ifNot: (recoveredBlock41Stack4).
            recoveredBlock41PC := 147.
        ].
        recoveredBlock41Step = 147 ifTrue: [
            recoveredBlock41Stack1 := recoveredBlock41Arg1.
            recoveredBlock41PC := 148.
        ].
        recoveredBlock41Step = 148 ifTrue: [
            recoveredBlock41Stack2 := 'Icon'.
            recoveredBlock41PC := 150.
        ].
        recoveredBlock41Step = 150 ifTrue: [
            recoveredBlock41Stack3 := [:recoveredBlock41Block150Arg1 | 
    | recoveredBlock41Block150Value0 recoveredBlock41Block150Value1 recoveredBlock41Block150Value2 recoveredBlock41Block150Value3 |
    recoveredBlock41Block150Value0 := recoveredBlock41Block150Arg1.
    recoveredBlock41Block150Value1 := (recoveredBlock41Block150Value0) getString: ('iconName') default: (nil).
    recoveredBlock41Block150Value2 := [:recoveredBlock41Block150Block162Arg1 | 
    | recoveredBlock41Block150Block162Stack0 recoveredBlock41Block150Block162Stack1 recoveredBlock41Block150Block162Stack2 recoveredBlock41Block150Block162Stack3 recoveredBlock41Block150Block162Stack4 recoveredBlock41Block150Block162PC recoveredBlock41Block150Block162Step recoveredBlock41Block150Block162Done recoveredBlock41Block150Block162Result |
    recoveredBlock41Block150Block162Stack0 := nil.
    recoveredBlock41Block150Block162PC := 168.
    recoveredBlock41Block150Block162Done := false.
    [recoveredBlock41Block150Block162Done not] whileTrue: [
        recoveredBlock41Block150Block162Step := recoveredBlock41Block150Block162PC.
        recoveredBlock41Block150Block162Step = 168 ifTrue: [
            recoveredBlock41Block150Block162Stack1 := 'Kli'.
            recoveredBlock41Block150Block162PC := 170.
        ].
        recoveredBlock41Block150Block162Step = 170 ifTrue: [
            recoveredBlock41Block150Block162Stack2 := 'Call_73107'.
            recoveredBlock41Block150Block162PC := 172.
        ].
        recoveredBlock41Block150Block162Step = 172 ifTrue: [
            recoveredBlock41Block150Block162Stack1 := (recoveredBlock41Block150Block162Stack1) == (recoveredBlock41Block150Block162Stack2).
            recoveredBlock41Block150Block162PC := 173.
        ].
        recoveredBlock41Block150Block162Step = 173 ifTrue: [
            recoveredBlock41Block150Block162PC := 174.
        ].
        recoveredBlock41Block150Block162Step = 174 ifTrue: [
            recoveredBlock41Block150Block162Stack1 := nil.
            recoveredBlock41Block150Block162PC := 175.
        ].
        recoveredBlock41Block150Block162Step = 175 ifTrue: [
            recoveredBlock41Block150Block162Stack2 := recoveredBlock41Block150Block162Arg1.
            recoveredBlock41Block150Block162PC := 176.
        ].
        recoveredBlock41Block150Block162Step = 176 ifTrue: [
            recoveredBlock41Block150Block162Stack3 := '--absent--'.
            recoveredBlock41Block150Block162PC := 178.
        ].
        recoveredBlock41Block150Block162Step = 178 ifTrue: [
            recoveredBlock41Block150Block162Stack2 := (recoveredBlock41Block150Block162Stack2) = (recoveredBlock41Block150Block162Stack3).
            recoveredBlock41Block150Block162PC := 179.
        ].
        recoveredBlock41Block150Block162Step = 179 ifTrue: [
            (recoveredBlock41Block150Block162Stack2) ifTrue: [recoveredBlock41Block150Block162PC := 189] ifFalse: [recoveredBlock41Block150Block162PC := 182].
        ].
        recoveredBlock41Block150Block162Step = 182 ifTrue: [
            recoveredBlock41Block150Block162PC := 183.
        ].
        recoveredBlock41Block150Block162Step = 183 ifTrue: [
            recoveredBlock41Block150Block162Stack1 := recoveredArg1.
            recoveredBlock41Block150Block162PC := 186.
        ].
        recoveredBlock41Block150Block162Step = 186 ifTrue: [
            recoveredBlock41Block150Block162Stack2 := recoveredBlock41Block150Block162Arg1.
            recoveredBlock41Block150Block162PC := 187.
        ].
        recoveredBlock41Block150Block162Step = 187 ifTrue: [
            recoveredBlock41Block150Block162Stack1 := (recoveredBlock41Block150Block162Stack1) addReference: (recoveredBlock41Block150Block162Stack2).
            recoveredBlock41Block150Block162PC := 189.
        ].
        recoveredBlock41Block150Block162Step = 189 ifTrue: [
            recoveredBlock41Block150Block162Result := recoveredBlock41Block150Block162Stack1.
            recoveredBlock41Block150Block162Done := true.
        ].
    ].
    recoveredBlock41Block150Block162Result
].
    recoveredBlock41Block150Value3 := (recoveredBlock41Block150Value1) ifNotNil: (recoveredBlock41Block150Value2).
    recoveredBlock41Block150Value3
].
            recoveredBlock41PC := 193.
        ].
        recoveredBlock41Step = 193 ifTrue: [
            recoveredBlock41Stack1 := (recoveredBlock41Stack1) optional: (recoveredBlock41Stack2) do: (recoveredBlock41Stack3).
            recoveredBlock41PC := 195.
        ].
        recoveredBlock41Step = 195 ifTrue: [
            recoveredBlock41Result := recoveredBlock41Stack1.
            recoveredBlock41Done := true.
        ].
    ].
    recoveredBlock41Result
].
    (recoveredValue10) optional: ('Layout') do: (recoveredValue11).
    ^self
! !

"ASDBase.ic method 0x2052c65c; bytecode file offset 0xe28f6c"
!ASDXMLImportStepXMLBase methodsFor: 'recovered'!
readMethodSignature: recoveredArg1 protoItem: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 'OID'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) getLocalID: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := 'name'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) getNMToken: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := 'default'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) getBoolean: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := ASDXMLImportProtoMethod.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) initOn: (recoveredStack2) oid: (recoveredStack3).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := 'CustomerData'.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack3 := [:block2810d02cArg1 | 
    nil
].
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack1) multiple: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := 'Arguments'.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack3 := [:recoveredBlock75Arg1 | 
    | recoveredBlock75Value0 recoveredBlock75Value1 recoveredBlock75Value2 recoveredBlock75Value3 recoveredBlock75Value4 |
    recoveredBlock75Value0 := recoveredBlock75Arg1.
    recoveredBlock75Value1 := [:recoveredBlock75Block85Arg1 | 
    | recoveredBlock75Block85Value0 recoveredBlock75Block85Value1 recoveredBlock75Block85Value2 recoveredBlock75Block85Value3 recoveredBlock75Block85Value4 |
    recoveredBlock75Block85Value0 := recoveredLocal3.
    recoveredBlock75Block85Value1 := recoveredBlock75Block85Arg1.
    recoveredBlock75Block85Value2 := (self) readElementT: (recoveredBlock75Block85Value1).
    recoveredBlock75Block85Value3 := controller.
    recoveredBlock75Block85Value4 := (recoveredBlock75Block85Value0) addElement: (recoveredBlock75Block85Value2) controller: (recoveredBlock75Block85Value3).
    recoveredBlock75Block85Value4
].
    (recoveredBlock75Value0) multiple: ('Argument') do: (recoveredBlock75Value1).
    recoveredBlock75Value2 := recoveredBlock75Arg1.
    recoveredBlock75Value3 := handler.
    recoveredBlock75Value4 := (recoveredBlock75Value2) doneIfNot: (recoveredBlock75Value3).
    recoveredBlock75Value4
].
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack1) optional: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack2 := 'Return'.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack3 := [:recoveredBlock119Arg1 | 
    | recoveredBlock119Value0 recoveredBlock119Value1 recoveredBlock119Value2 recoveredBlock119Value3 |
    recoveredBlock119Value0 := recoveredLocal3.
    recoveredBlock119Value1 := recoveredBlock119Arg1.
    recoveredBlock119Value2 := (self) readElementT: (recoveredBlock119Value1).
    recoveredBlock119Value3 := (recoveredBlock119Value0) return: (recoveredBlock119Value2).
    recoveredBlock119Value3
].
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            (recoveredStack1) optional: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack2 := 'Locals'.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack3 := [:recoveredBlock143Arg1 | 
    | recoveredBlock143Value0 recoveredBlock143Value1 recoveredBlock143Value2 recoveredBlock143Value3 recoveredBlock143Value4 |
    recoveredBlock143Value0 := recoveredBlock143Arg1.
    recoveredBlock143Value1 := [:recoveredBlock143Block153Arg1 | 
    | recoveredBlock143Block153Value0 recoveredBlock143Block153Value1 recoveredBlock143Block153Value2 recoveredBlock143Block153Value3 recoveredBlock143Block153Value4 |
    recoveredBlock143Block153Value0 := recoveredLocal3.
    recoveredBlock143Block153Value1 := recoveredBlock143Block153Arg1.
    recoveredBlock143Block153Value2 := (self) readElementT: (recoveredBlock143Block153Value1).
    recoveredBlock143Block153Value3 := controller.
    recoveredBlock143Block153Value4 := (recoveredBlock143Block153Value0) addElement: (recoveredBlock143Block153Value2) controller: (recoveredBlock143Block153Value3).
    recoveredBlock143Block153Value4
].
    (recoveredBlock143Value0) multiple: ('Local') do: (recoveredBlock143Value1).
    recoveredBlock143Value2 := recoveredBlock143Arg1.
    recoveredBlock143Value3 := handler.
    recoveredBlock143Value4 := (recoveredBlock143Value2) doneIfNot: (recoveredBlock143Value3).
    recoveredBlock143Value4
].
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            (recoveredStack1) optional: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack2 := handler.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            (recoveredStack1) doneIfNot: (recoveredStack2).
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack3 := controller.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            (recoveredStack1) addMethod: (recoveredStack2) controller: (recoveredStack3).
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20550da0; bytecode file offset 0xe4d6e0"
!ASDXMLImportStepXMLBase methodsFor: 'recovered'!
resolveData: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) baseName.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := '.data.'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := extension.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) qualifyBaseName: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := controller.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) currentFile: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := CfsStat.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) exists: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 166].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := '.data.'.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := extension.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := 'component_data.xsd'.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) readDOMTree: (recoveredStack1) schema: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := recoveredLocal2.
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
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) unexpectedElement: (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := 'DataSet'.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := [:recoveredBlock69Arg1 | 
    | recoveredBlock69Local1 recoveredBlock69Stack0 recoveredBlock69Stack1 recoveredBlock69Stack2 recoveredBlock69Stack3 recoveredBlock69Stack4 recoveredBlock69Stack5 recoveredBlock69Stack6 recoveredBlock69PC recoveredBlock69Step recoveredBlock69Done recoveredBlock69Result |
    recoveredBlock69Stack0 := self.
    recoveredBlock69PC := 76.
    recoveredBlock69Done := false.
    [recoveredBlock69Done not] whileTrue: [
        recoveredBlock69Step := recoveredBlock69PC.
        recoveredBlock69Step = 76 ifTrue: [
            recoveredBlock69Stack1 := ASDXMLImportProtoData.
            recoveredBlock69PC := 78.
        ].
        recoveredBlock69Step = 78 ifTrue: [
            recoveredBlock69Stack1 := (recoveredBlock69Stack1) new.
            recoveredBlock69PC := 80.
        ].
        recoveredBlock69Step = 80 ifTrue: [
            recoveredBlock69Stack2 := recoveredBlock69Arg1.
            recoveredBlock69PC := 81.
        ].
        recoveredBlock69Step = 81 ifTrue: [
            recoveredBlock69Stack3 := 'name'.
            recoveredBlock69PC := 83.
        ].
        recoveredBlock69Step = 83 ifTrue: [
            recoveredBlock69Stack2 := (recoveredBlock69Stack2) getNMToken: (recoveredBlock69Stack3).
            recoveredBlock69PC := 85.
        ].
        recoveredBlock69Step = 85 ifTrue: [
            recoveredBlock69Stack3 := recoveredBlock69Arg1.
            recoveredBlock69PC := 86.
        ].
        recoveredBlock69Step = 86 ifTrue: [
            recoveredBlock69Stack4 := 'OID'.
            recoveredBlock69PC := 88.
        ].
        recoveredBlock69Step = 88 ifTrue: [
            recoveredBlock69Stack5 := nil.
            recoveredBlock69PC := 89.
        ].
        recoveredBlock69Step = 89 ifTrue: [
            recoveredBlock69Stack3 := (recoveredBlock69Stack3) getOID: (recoveredBlock69Stack4) default: (recoveredBlock69Stack5).
            recoveredBlock69PC := 91.
        ].
        recoveredBlock69Step = 91 ifTrue: [
            recoveredBlock69Stack1 := (recoveredBlock69Stack1) initOn: (recoveredBlock69Stack2) oid: (recoveredBlock69Stack3).
            recoveredBlock69PC := 93.
        ].
        recoveredBlock69Step = 93 ifTrue: [
            recoveredBlock69Local1 := recoveredBlock69Stack1.
            recoveredBlock69PC := 94.
        ].
        recoveredBlock69Step = 94 ifTrue: [
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
            (recoveredBlock69Stack1) ifTrue: [recoveredBlock69PC := 102] ifFalse: [recoveredBlock69PC := 114].
        ].
        recoveredBlock69Step = 102 ifTrue: [
            recoveredBlock69Stack1 := recoveredArg1.
            recoveredBlock69PC := 105.
        ].
        recoveredBlock69Step = 105 ifTrue: [
            recoveredBlock69Stack2 := recoveredBlock69Local1.
            recoveredBlock69PC := 106.
        ].
        recoveredBlock69Step = 106 ifTrue: [
            recoveredBlock69Stack3 := controller.
            recoveredBlock69PC := 108.
        ].
        recoveredBlock69Step = 108 ifTrue: [
            recoveredBlock69Stack1 := (recoveredBlock69Stack1) setClassData: (recoveredBlock69Stack2) controller: (recoveredBlock69Stack3).
            recoveredBlock69PC := 110.
        ].
        recoveredBlock69Step = 110 ifTrue: [
            recoveredBlock69PC := 128.
        ].
        recoveredBlock69Step = 114 ifTrue: [
            recoveredBlock69Stack1 := recoveredArg1.
            recoveredBlock69PC := 117.
        ].
        recoveredBlock69Step = 117 ifTrue: [
            recoveredBlock69Stack2 := recoveredBlock69Local1.
            recoveredBlock69PC := 118.
        ].
        recoveredBlock69Step = 118 ifTrue: [
            recoveredBlock69Stack3 := controller.
            recoveredBlock69PC := 120.
        ].
        recoveredBlock69Step = 120 ifTrue: [
            recoveredBlock69Stack4 := recoveredBlock69Arg1.
            recoveredBlock69PC := 121.
        ].
        recoveredBlock69Step = 121 ifTrue: [
            recoveredBlock69Stack5 := 'default'.
            recoveredBlock69PC := 123.
        ].
        recoveredBlock69Step = 123 ifTrue: [
            recoveredBlock69Stack4 := (recoveredBlock69Stack4) getBoolean: (recoveredBlock69Stack5).
            recoveredBlock69PC := 125.
        ].
        recoveredBlock69Step = 125 ifTrue: [
            recoveredBlock69Stack1 := (recoveredBlock69Stack1) addData: (recoveredBlock69Stack2) controller: (recoveredBlock69Stack3) isDefault: (recoveredBlock69Stack4).
            recoveredBlock69PC := 128.
        ].
        recoveredBlock69Step = 128 ifTrue: [
            recoveredBlock69Result := recoveredBlock69Stack1.
            recoveredBlock69Done := true.
        ].
    ].
    recoveredBlock69Result
].
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            (recoveredStack0) multiple: (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := 'Signature'.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack2 := [:block2810f54cArg1 | 
    nil
].
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            (recoveredStack0) optional: (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := [:recoveredBlock149Arg1 | 
    | recoveredBlock149Value0 recoveredBlock149Value1 |
    recoveredBlock149Value0 := recoveredBlock149Arg1.
    recoveredBlock149Value1 := (self) unexpectedElement: (recoveredBlock149Value0).
    recoveredBlock149Value1
].
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            (recoveredStack0) doneIfNot: (recoveredStack1).
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredPC := 222.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack0 := controller.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := ASDXMLImportIssueFileNotFound.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack4 := false.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack1 := (recoveredStack1) initOn: (recoveredStack2) file: (recoveredStack3) fatal: (recoveredStack4).
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            (recoveredStack0) addIssue: (recoveredStack1).
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack1 := ASDXMLImportProtoData.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack2 := 'Default'.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := (recoveredStack1) initOn: (recoveredStack2) oid: (recoveredStack3).
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack2 := controller.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            (recoveredStack0) setClassData: (recoveredStack1) controller: (recoveredStack2).
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack1 := ASDXMLImportProtoData.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack2 := 'Default'.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack1 := (recoveredStack1) initOn: (recoveredStack2) oid: (recoveredStack3).
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack2 := controller.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            (recoveredStack0) addData: (recoveredStack1) controller: (recoveredStack2) isDefault: (recoveredStack3).
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            (recoveredStack0) isDataMissing: (recoveredStack1).
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20573604; bytecode file offset 0xe6ff34"
!ASDXMLImportStepXMLBase methodsFor: 'recovered'!
readItemWithSpec: recoveredArg1 class: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) getNMToken: ('name').
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) getOID: ('OID') default: (nil).
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) getString: ('nameSpace').
    recoveredValue8 := baseName.
    recoveredValue9 := importPath.
    recoveredValue10 := (recoveredValue1) initOn: (recoveredValue3) oid: (recoveredValue5) namespace: (recoveredValue7) baseName: (recoveredValue8) importPath: (recoveredValue9).
    recoveredValue11 := recoveredValue10.
    recoveredLocal1 := recoveredValue11.
    protoItem := recoveredValue10.
    recoveredValue12 := ('Kli') == ('Call_91264').
    recoveredValue13 := protoItem.
    recoveredValue14 := recoveredArg1.
    recoveredValue15 := (recoveredValue14) getString: ('UUID') default: (nil).
    (recoveredValue13) uuid: (recoveredValue15).
    recoveredValue16 := recoveredArg1.
    (self) skipItemElements: (recoveredValue16).
    recoveredValue17 := recoveredArg1.
    recoveredValue18 := [:recoveredBlock70Arg1 | 
    | recoveredBlock70Value0 recoveredBlock70Value1 recoveredBlock70Value2 recoveredBlock70Value3 recoveredBlock70Value4 |
    recoveredBlock70Value0 := recoveredBlock70Arg1.
    recoveredBlock70Value1 := [:recoveredBlock70Block79Arg1 | 
    | recoveredBlock70Block79Value0 recoveredBlock70Block79Value1 recoveredBlock70Block79Value2 recoveredBlock70Block79Value3 recoveredBlock70Block79Value4 |
    recoveredBlock70Block79Value0 := recoveredLocal1.
    recoveredBlock70Block79Value1 := recoveredBlock70Block79Arg1.
    recoveredBlock70Block79Value2 := (self) readElementT: (recoveredBlock70Block79Value1).
    recoveredBlock70Block79Value3 := controller.
    recoveredBlock70Block79Value4 := (recoveredBlock70Block79Value0) addElement: (recoveredBlock70Block79Value2) controller: (recoveredBlock70Block79Value3).
    recoveredBlock70Block79Value4
].
    (recoveredBlock70Value0) multiple: ('Element') do: (recoveredBlock70Value1).
    recoveredBlock70Value2 := recoveredBlock70Arg1.
    recoveredBlock70Value3 := handler.
    recoveredBlock70Value4 := (recoveredBlock70Value2) doneIfNot: (recoveredBlock70Value3).
    recoveredBlock70Value4
].
    recoveredValue19 := handler.
    (recoveredValue17) required: ('Elements') do: (recoveredValue18) ifNot: (recoveredValue19).
    recoveredValue20 := recoveredArg1.
    recoveredValue21 := [:recoveredBlock116Arg1 | 
    | recoveredBlock116Local1 recoveredBlock116Stack0 recoveredBlock116Stack1 recoveredBlock116Stack2 recoveredBlock116Stack3 recoveredBlock116Stack4 recoveredBlock116Stack5 recoveredBlock116Stack6 recoveredBlock116Stack7 recoveredBlock116Stack8 recoveredBlock116Stack9 recoveredBlock116Stack10 recoveredBlock116Stack11 recoveredBlock116PC recoveredBlock116Step recoveredBlock116Done recoveredBlock116Result |
    recoveredBlock116Stack0 := self.
    recoveredBlock116PC := 122.
    recoveredBlock116Done := false.
    [recoveredBlock116Done not] whileTrue: [
        recoveredBlock116Step := recoveredBlock116PC.
        recoveredBlock116Step = 122 ifTrue: [
            recoveredBlock116Stack1 := 'Die'.
            recoveredBlock116PC := 124.
        ].
        recoveredBlock116Step = 124 ifTrue: [
            recoveredBlock116Stack2 := 'Call_95592'.
            recoveredBlock116PC := 126.
        ].
        recoveredBlock116Step = 126 ifTrue: [
            recoveredBlock116Stack1 := (recoveredBlock116Stack1) == (recoveredBlock116Stack2).
            recoveredBlock116PC := 127.
        ].
        recoveredBlock116Step = 127 ifTrue: [
            recoveredBlock116PC := 128.
        ].
        recoveredBlock116Step = 128 ifTrue: [
            recoveredBlock116Stack1 := nil.
            recoveredBlock116PC := 129.
        ].
        recoveredBlock116Step = 129 ifTrue: [
            recoveredBlock116Stack2 := recoveredArg2.
            recoveredBlock116PC := 132.
        ].
        recoveredBlock116Step = 132 ifTrue: [
            recoveredBlock116Stack3 := ASDXMLImportProtoProject.
            recoveredBlock116PC := 134.
        ].
        recoveredBlock116Step = 134 ifTrue: [
            recoveredBlock116Stack2 := (recoveredBlock116Stack2) ~= (recoveredBlock116Stack3).
            recoveredBlock116PC := 135.
        ].
        recoveredBlock116Step = 135 ifTrue: [
            (recoveredBlock116Stack2) ifTrue: [recoveredBlock116PC := 138] ifFalse: [recoveredBlock116PC := 239].
        ].
        recoveredBlock116Step = 138 ifTrue: [
            recoveredBlock116PC := 139.
        ].
        recoveredBlock116Step = 139 ifTrue: [
            recoveredBlock116Stack1 := false.
            recoveredBlock116PC := 140.
        ].
        recoveredBlock116Step = 140 ifTrue: [
            recoveredBlock116Local1 := recoveredBlock116Stack1.
            recoveredBlock116PC := 143.
        ].
        recoveredBlock116Step = 143 ifTrue: [
            recoveredBlock116PC := 229.
        ].
        recoveredBlock116Step = 146 ifTrue: [
            recoveredBlock116Stack1 := recoveredBlock116Arg1.
            recoveredBlock116PC := 149.
        ].
        recoveredBlock116Step = 149 ifTrue: [
            recoveredBlock116Stack2 := 'MethodSignature'.
            recoveredBlock116PC := 151.
        ].
        recoveredBlock116Step = 151 ifTrue: [
            recoveredBlock116Stack3 := [:recoveredBlock116Block151Arg1 | 
    | recoveredBlock116Block151Value0 recoveredBlock116Block151Value1 recoveredBlock116Block151Value2 |
    recoveredBlock116Block151Value0 := recoveredBlock116Block151Arg1.
    recoveredBlock116Block151Value1 := recoveredLocal1.
    recoveredBlock116Block151Value2 := (self) readMethodSignature: (recoveredBlock116Block151Value0) protoItem: (recoveredBlock116Block151Value1).
    recoveredBlock116Block151Value2
].
            recoveredBlock116PC := 165.
        ].
        recoveredBlock116Step = 165 ifTrue: [
            recoveredBlock116Stack4 := 'RealizedMethodSignature'.
            recoveredBlock116PC := 167.
        ].
        recoveredBlock116Step = 167 ifTrue: [
            recoveredBlock116Stack5 := [:recoveredBlock116Block167Arg1 | 
    | recoveredBlock116Block167Value0 recoveredBlock116Block167Value1 recoveredBlock116Block167Value2 |
    recoveredBlock116Block167Value0 := recoveredBlock116Block167Arg1.
    recoveredBlock116Block167Value1 := recoveredLocal1.
    recoveredBlock116Block167Value2 := (self) readMethodSignature: (recoveredBlock116Block167Value0) protoItem: (recoveredBlock116Block167Value1).
    recoveredBlock116Block167Value2
].
            recoveredBlock116PC := 181.
        ].
        recoveredBlock116Step = 181 ifTrue: [
            recoveredBlock116Stack6 := 'RunnableSignature'.
            recoveredBlock116PC := 183.
        ].
        recoveredBlock116Step = 183 ifTrue: [
            recoveredBlock116Stack7 := [:recoveredBlock116Block183Arg1 | 
    | recoveredBlock116Block183Value0 recoveredBlock116Block183Value1 recoveredBlock116Block183Value2 |
    recoveredBlock116Block183Value0 := recoveredBlock116Block183Arg1.
    recoveredBlock116Block183Value1 := recoveredLocal1.
    recoveredBlock116Block183Value2 := (self) readMethodSignature: (recoveredBlock116Block183Value0) protoItem: (recoveredBlock116Block183Value1).
    recoveredBlock116Block183Value2
].
            recoveredBlock116PC := 197.
        ].
        recoveredBlock116Step = 197 ifTrue: [
            recoveredBlock116Stack8 := 'RealizedRunnableSignature'.
            recoveredBlock116PC := 199.
        ].
        recoveredBlock116Step = 199 ifTrue: [
            recoveredBlock116Stack9 := [:recoveredBlock116Block199Arg1 | 
    | recoveredBlock116Block199Value0 recoveredBlock116Block199Value1 recoveredBlock116Block199Value2 |
    recoveredBlock116Block199Value0 := recoveredBlock116Block199Arg1.
    recoveredBlock116Block199Value1 := recoveredLocal1.
    recoveredBlock116Block199Value2 := (self) readMethodSignature: (recoveredBlock116Block199Value0) protoItem: (recoveredBlock116Block199Value1).
    recoveredBlock116Block199Value2
].
            recoveredBlock116PC := 213.
        ].
        recoveredBlock116Step = 213 ifTrue: [
            recoveredBlock116Stack10 := [
    recoveredBlock116Local1 := true.
    true
].
            recoveredBlock116PC := 226.
        ].
        recoveredBlock116Step = 226 ifTrue: [
            (recoveredBlock116Stack1) choice: (recoveredBlock116Stack2) do: (recoveredBlock116Stack3) choice: (recoveredBlock116Stack4) do: (recoveredBlock116Stack5) choice: (recoveredBlock116Stack6) do: (recoveredBlock116Stack7) choice: (recoveredBlock116Stack8) do: (recoveredBlock116Stack9) ifNot: (recoveredBlock116Stack10).
            recoveredBlock116PC := 229.
        ].
        recoveredBlock116Step = 229 ifTrue: [
            recoveredBlock116Stack1 := recoveredBlock116Local1.
            recoveredBlock116PC := 232.
        ].
        recoveredBlock116Step = 232 ifTrue: [
            (recoveredBlock116Stack1) ifTrue: [recoveredBlock116PC := 234] ifFalse: [recoveredBlock116PC := 146].
        ].
        recoveredBlock116Step = 234 ifTrue: [
            recoveredBlock116Stack1 := nil.
            recoveredBlock116PC := 235.
        ].
        recoveredBlock116Step = 235 ifTrue: [
            recoveredBlock116Stack2 := nil.
            recoveredBlock116PC := 236.
        ].
        recoveredBlock116Step = 236 ifTrue: [
            recoveredBlock116Local1 := recoveredBlock116Stack2.
            recoveredBlock116PC := 239.
        ].
        recoveredBlock116Step = 239 ifTrue: [
            recoveredBlock116Result := recoveredBlock116Stack1.
            recoveredBlock116Done := true.
        ].
    ].
    recoveredBlock116Result
].
    recoveredValue22 := handler.
    (recoveredValue20) required: ('MethodSignatures') do: (recoveredValue21) ifNot: (recoveredValue22).
    recoveredValue23 := recoveredLocal1.
    ^recoveredValue23
! !

"ASDBase.ic method 0x205d4db0; bytecode file offset 0xed1708"
!ASDXMLImportStepXMLBase methodsFor: 'recovered'!
readElementT: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 'name'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := 'return'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) getNMToken: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := 'OID'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) getLocalID: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := 'Comment'.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := [:block28119a64Arg1 | 
    nil
].
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) optional: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := 'ElementAttributes'.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := [:recoveredBlock47Arg1 | 
    | recoveredBlock47Stack0 recoveredBlock47Stack1 recoveredBlock47Stack2 recoveredBlock47Stack3 recoveredBlock47Stack4 recoveredBlock47Stack5 recoveredBlock47Stack6 recoveredBlock47Stack7 recoveredBlock47Stack8 recoveredBlock47Stack9 recoveredBlock47PC recoveredBlock47Step recoveredBlock47Done recoveredBlock47Result |
    recoveredBlock47Stack0 := self.
    recoveredBlock47PC := 54.
    recoveredBlock47Done := false.
    [recoveredBlock47Done not] whileTrue: [
        recoveredBlock47Step := recoveredBlock47PC.
        recoveredBlock47Step = 54 ifTrue: [
            recoveredBlock47Stack1 := recoveredBlock47Arg1.
            recoveredBlock47PC := 55.
        ].
        recoveredBlock47Step = 55 ifTrue: [
            recoveredBlock47Stack2 := 'basicModelType'.
            recoveredBlock47PC := 57.
        ].
        recoveredBlock47Step = 57 ifTrue: [
            recoveredBlock47Stack1 := (recoveredBlock47Stack1) getNMToken: (recoveredBlock47Stack2).
            recoveredBlock47PC := 59.
        ].
        recoveredBlock47Step = 59 ifTrue: [
            recoveredBlock47Stack2 := 'implementationCast'.
            recoveredBlock47PC := 61.
        ].
        recoveredBlock47Step = 61 ifTrue: [
            recoveredBlock47Stack1 := (recoveredBlock47Stack1) = (recoveredBlock47Stack2).
            recoveredBlock47PC := 62.
        ].
        recoveredBlock47Step = 62 ifTrue: [
            (recoveredBlock47Stack1) ifTrue: [recoveredBlock47PC := 66] ifFalse: [recoveredBlock47PC := 86].
        ].
        recoveredBlock47Step = 66 ifTrue: [
            recoveredBlock47Stack1 := ASDXMLImportProtoMember.
            recoveredBlock47PC := 68.
        ].
        recoveredBlock47Step = 68 ifTrue: [
            recoveredBlock47Stack1 := (recoveredBlock47Stack1) new.
            recoveredBlock47PC := 70.
        ].
        recoveredBlock47Step = 70 ifTrue: [
            recoveredBlock47Stack2 := recoveredLocal2.
            recoveredBlock47PC := 73.
        ].
        recoveredBlock47Step = 73 ifTrue: [
            recoveredBlock47Stack3 := recoveredLocal1.
            recoveredBlock47PC := 76.
        ].
        recoveredBlock47Step = 76 ifTrue: [
            recoveredBlock47Stack1 := (recoveredBlock47Stack1) initOn: (recoveredBlock47Stack2) oid: (recoveredBlock47Stack3).
            recoveredBlock47PC := 78.
        ].
        recoveredBlock47Step = 78 ifTrue: [
            recoveredBlock47Stack2 := recoveredBlock47Stack1.
            recoveredBlock47PC := 79.
        ].
        recoveredBlock47Step = 79 ifTrue: [
            recoveredLocal3 := recoveredBlock47Stack2.
            recoveredBlock47PC := 82.
        ].
        recoveredBlock47Step = 82 ifTrue: [
            recoveredBlock47PC := 348.
        ].
        recoveredBlock47Step = 86 ifTrue: [
            recoveredBlock47Stack1 := recoveredBlock47Arg1.
            recoveredBlock47PC := 87.
        ].
        recoveredBlock47Step = 87 ifTrue: [
            recoveredBlock47Stack2 := 'AdditionalIntegerAttributes'.
            recoveredBlock47PC := 89.
        ].
        recoveredBlock47Step = 89 ifTrue: [
            recoveredBlock47Stack3 := [:block28119a88Arg1 | 
    nil
].
            recoveredBlock47PC := 91.
        ].
        recoveredBlock47Step = 91 ifTrue: [
            recoveredBlock47PC := 96.
        ].
        recoveredBlock47Step = 96 ifTrue: [
            (recoveredBlock47Stack1) optional: (recoveredBlock47Stack2) do: (recoveredBlock47Stack3).
            recoveredBlock47PC := 98.
        ].
        recoveredBlock47Step = 98 ifTrue: [
            recoveredBlock47Stack1 := recoveredBlock47Arg1.
            recoveredBlock47PC := 99.
        ].
        recoveredBlock47Step = 99 ifTrue: [
            recoveredBlock47Stack2 := 'ScalarType'.
            recoveredBlock47PC := 101.
        ].
        recoveredBlock47Step = 101 ifTrue: [
            recoveredBlock47Stack3 := [:recoveredBlock47Block101Arg1 | 
    | recoveredBlock47Block101Value0 recoveredBlock47Block101Value1 recoveredBlock47Block101Value2 recoveredBlock47Block101Value3 recoveredBlock47Block101Value4 |
    recoveredBlock47Block101Value0 := recoveredBlock47Block101Arg1.
    recoveredBlock47Block101Value1 := [:recoveredBlock47Block101Block111Arg1 | 
    | recoveredBlock47Block101Block111Value0 recoveredBlock47Block101Block111Value1 recoveredBlock47Block101Block111Value2 recoveredBlock47Block101Block111Value3 recoveredBlock47Block101Block111Value4 recoveredBlock47Block101Block111Value5 recoveredBlock47Block101Block111Value6 recoveredBlock47Block101Block111Value7 recoveredBlock47Block101Block111Value8 recoveredBlock47Block101Block111Value9 recoveredBlock47Block101Block111Value10 |
    recoveredBlock47Block101Block111Value0 := ASDXMLImportProtoRef.
    recoveredBlock47Block101Block111Value1 := (recoveredBlock47Block101Block111Value0) new.
    recoveredBlock47Block101Block111Value2 := recoveredLocal2.
    recoveredBlock47Block101Block111Value3 := recoveredLocal1.
    recoveredBlock47Block101Block111Value4 := recoveredBlock47Block101Block111Arg1.
    recoveredBlock47Block101Block111Value5 := (recoveredBlock47Block101Block111Value4) getString: ('enumerationName').
    recoveredBlock47Block101Block111Value6 := recoveredBlock47Block101Block111Arg1.
    recoveredBlock47Block101Block111Value7 := (recoveredBlock47Block101Block111Value6) getOID: ('enumerationOID') default: (nil).
    recoveredBlock47Block101Block111Value8 := importPath.
    recoveredBlock47Block101Block111Value9 := (recoveredBlock47Block101Block111Value1) initOn: (recoveredBlock47Block101Block111Value2) oid: (recoveredBlock47Block101Block111Value3) refPath: (recoveredBlock47Block101Block111Value5) refOID: (recoveredBlock47Block101Block111Value7) importPath: (recoveredBlock47Block101Block111Value8).
    recoveredBlock47Block101Block111Value10 := recoveredBlock47Block101Block111Value9.
    recoveredLocal3 := recoveredBlock47Block101Block111Value10.
    recoveredBlock47Block101Block111Value9
].
    recoveredBlock47Block101Value2 := [:recoveredBlock47Block101Block151Arg1 | 
    | recoveredBlock47Block101Block151Value0 recoveredBlock47Block101Block151Value1 recoveredBlock47Block101Block151Value2 recoveredBlock47Block101Block151Value3 recoveredBlock47Block101Block151Value4 recoveredBlock47Block101Block151Value5 recoveredBlock47Block101Block151Value6 recoveredBlock47Block101Block151Value7 recoveredBlock47Block101Block151Value8 recoveredBlock47Block101Block151Value9 |
    recoveredBlock47Block101Block151Value0 := ASDXMLImportProtoVariable.
    recoveredBlock47Block101Block151Value1 := (recoveredBlock47Block101Block151Value0) new.
    recoveredBlock47Block101Block151Value2 := recoveredLocal2.
    recoveredBlock47Block101Block151Value3 := recoveredLocal1.
    recoveredBlock47Block101Block151Value4 := (recoveredBlock47Block101Block151Value1) initOn: (recoveredBlock47Block101Block151Value2) oid: (recoveredBlock47Block101Block151Value3).
    recoveredLocal3 := recoveredBlock47Block101Block151Value4.
    recoveredBlock47Block101Block151Value5 := recoveredLocal3.
    recoveredBlock47Block101Block151Value6 := recoveredBlock47Block101Block151Arg1.
    recoveredBlock47Block101Block151Value7 := (recoveredBlock47Block101Block151Value6) getNMToken: ('scope').
    recoveredBlock47Block101Block151Value8 := (self) isClassVariable: (recoveredBlock47Block101Block151Value7).
    recoveredBlock47Block101Block151Value9 := (recoveredBlock47Block101Block151Value5) classVariable: (recoveredBlock47Block101Block151Value8).
    recoveredBlock47Block101Block151Value9
].
    recoveredBlock47Block101Value3 := handler.
    recoveredBlock47Block101Value4 := (recoveredBlock47Block101Value0) choice: ('EnumerationAttributes') do: (recoveredBlock47Block101Value1) choice: ('ScalarAttributes') do: (recoveredBlock47Block101Value2) ifNot: (recoveredBlock47Block101Value3).
    recoveredBlock47Block101Value4
].
            recoveredBlock47PC := 193.
        ].
        recoveredBlock47Step = 193 ifTrue: [
            recoveredBlock47Stack4 := 'DimensionalType'.
            recoveredBlock47PC := 195.
        ].
        recoveredBlock47Step = 195 ifTrue: [
            recoveredBlock47Stack5 := [:recoveredBlock47Block195Arg1 | 
    | recoveredBlock47Block195Value0 recoveredBlock47Block195Value1 recoveredBlock47Block195Value2 recoveredBlock47Block195Value3 |
    recoveredBlock47Block195Value0 := recoveredBlock47Block195Arg1.
    recoveredBlock47Block195Value1 := [:recoveredBlock47Block195Block205Arg1 | 
    | recoveredBlock47Block195Block205Value0 recoveredBlock47Block195Block205Value1 recoveredBlock47Block195Block205Value2 recoveredBlock47Block195Block205Value3 recoveredBlock47Block195Block205Value4 recoveredBlock47Block195Block205Value5 recoveredBlock47Block195Block205Value6 recoveredBlock47Block195Block205Value7 recoveredBlock47Block195Block205Value8 recoveredBlock47Block195Block205Value9 |
    recoveredBlock47Block195Block205Value0 := ASDXMLImportProtoVariable.
    recoveredBlock47Block195Block205Value1 := (recoveredBlock47Block195Block205Value0) new.
    recoveredBlock47Block195Block205Value2 := recoveredLocal2.
    recoveredBlock47Block195Block205Value3 := recoveredLocal1.
    recoveredBlock47Block195Block205Value4 := (recoveredBlock47Block195Block205Value1) initOn: (recoveredBlock47Block195Block205Value2) oid: (recoveredBlock47Block195Block205Value3).
    recoveredLocal3 := recoveredBlock47Block195Block205Value4.
    recoveredBlock47Block195Block205Value5 := recoveredLocal3.
    recoveredBlock47Block195Block205Value6 := recoveredBlock47Block195Block205Arg1.
    recoveredBlock47Block195Block205Value7 := (recoveredBlock47Block195Block205Value6) getNMToken: ('scope').
    recoveredBlock47Block195Block205Value8 := (self) isClassVariable: (recoveredBlock47Block195Block205Value7).
    recoveredBlock47Block195Block205Value9 := (recoveredBlock47Block195Block205Value5) classVariable: (recoveredBlock47Block195Block205Value8).
    recoveredBlock47Block195Block205Value9
].
    recoveredBlock47Block195Value2 := handler.
    recoveredBlock47Block195Value3 := (recoveredBlock47Block195Value0) required: ('DimensionalAttributes') do: (recoveredBlock47Block195Value1) ifNot: (recoveredBlock47Block195Value2).
    recoveredBlock47Block195Value3
].
            recoveredBlock47PC := 247.
        ].
        recoveredBlock47Step = 247 ifTrue: [
            recoveredBlock47Stack6 := 'ComplexType'.
            recoveredBlock47PC := 249.
        ].
        recoveredBlock47Step = 249 ifTrue: [
            recoveredBlock47Stack7 := [:recoveredBlock47Block249Arg1 | 
    | recoveredBlock47Block249Value0 recoveredBlock47Block249Value1 recoveredBlock47Block249Value2 recoveredBlock47Block249Value3 recoveredBlock47Block249Value4 |
    recoveredBlock47Block249Value0 := recoveredBlock47Block249Arg1.
    recoveredBlock47Block249Value1 := [:recoveredBlock47Block249Block259Arg1 | 
    | recoveredBlock47Block249Block259Value0 recoveredBlock47Block249Block259Value1 recoveredBlock47Block249Block259Value2 recoveredBlock47Block249Block259Value3 recoveredBlock47Block249Block259Value4 recoveredBlock47Block249Block259Value5 recoveredBlock47Block249Block259Value6 recoveredBlock47Block249Block259Value7 recoveredBlock47Block249Block259Value8 recoveredBlock47Block249Block259Value9 recoveredBlock47Block249Block259Value10 |
    recoveredBlock47Block249Block259Value0 := ASDXMLImportProtoComplex.
    recoveredBlock47Block249Block259Value1 := (recoveredBlock47Block249Block259Value0) new.
    recoveredBlock47Block249Block259Value2 := recoveredLocal2.
    recoveredBlock47Block249Block259Value3 := recoveredLocal1.
    recoveredBlock47Block249Block259Value4 := recoveredBlock47Block249Block259Arg1.
    recoveredBlock47Block249Block259Value5 := (recoveredBlock47Block249Block259Value4) getString: ('componentName').
    recoveredBlock47Block249Block259Value6 := recoveredBlock47Block249Block259Arg1.
    recoveredBlock47Block249Block259Value7 := (recoveredBlock47Block249Block259Value6) getOID: ('componentID') default: (nil).
    recoveredBlock47Block249Block259Value8 := importPath.
    recoveredBlock47Block249Block259Value9 := (recoveredBlock47Block249Block259Value1) initOn: (recoveredBlock47Block249Block259Value2) oid: (recoveredBlock47Block249Block259Value3) refPath: (recoveredBlock47Block249Block259Value5) refOID: (recoveredBlock47Block249Block259Value7) importPath: (recoveredBlock47Block249Block259Value8).
    recoveredBlock47Block249Block259Value10 := recoveredBlock47Block249Block259Value9.
    recoveredLocal3 := recoveredBlock47Block249Block259Value10.
    recoveredBlock47Block249Block259Value9
].
    recoveredBlock47Block249Value2 := [:recoveredBlock47Block249Block299Arg1 | 
    | recoveredBlock47Block249Block299Value0 recoveredBlock47Block249Block299Value1 recoveredBlock47Block249Block299Value2 recoveredBlock47Block249Block299Value3 recoveredBlock47Block249Block299Value4 recoveredBlock47Block249Block299Value5 recoveredBlock47Block249Block299Value6 recoveredBlock47Block249Block299Value7 recoveredBlock47Block249Block299Value8 recoveredBlock47Block249Block299Value9 recoveredBlock47Block249Block299Value10 |
    recoveredBlock47Block249Block299Value0 := ASDXMLImportProtoComplex.
    recoveredBlock47Block249Block299Value1 := (recoveredBlock47Block249Block299Value0) new.
    recoveredBlock47Block249Block299Value2 := recoveredLocal2.
    recoveredBlock47Block249Block299Value3 := recoveredLocal1.
    recoveredBlock47Block249Block299Value4 := recoveredBlock47Block249Block299Arg1.
    recoveredBlock47Block249Block299Value5 := (recoveredBlock47Block249Block299Value4) getString: ('componentName').
    recoveredBlock47Block249Block299Value6 := recoveredBlock47Block249Block299Arg1.
    recoveredBlock47Block249Block299Value7 := (recoveredBlock47Block249Block299Value6) getOID: ('componentID') default: (nil).
    recoveredBlock47Block249Block299Value8 := importPath.
    recoveredBlock47Block249Block299Value9 := (recoveredBlock47Block249Block299Value1) initOn: (recoveredBlock47Block249Block299Value2) oid: (recoveredBlock47Block249Block299Value3) refPath: (recoveredBlock47Block249Block299Value5) refOID: (recoveredBlock47Block249Block299Value7) importPath: (recoveredBlock47Block249Block299Value8).
    recoveredBlock47Block249Block299Value10 := recoveredBlock47Block249Block299Value9.
    recoveredLocal3 := recoveredBlock47Block249Block299Value10.
    recoveredBlock47Block249Block299Value9
].
    recoveredBlock47Block249Value3 := handler.
    recoveredBlock47Block249Value4 := (recoveredBlock47Block249Value0) choice: ('ComplexAttributes') do: (recoveredBlock47Block249Value1) choice: ('RecordAttributes') do: (recoveredBlock47Block249Value2) ifNot: (recoveredBlock47Block249Value3).
    recoveredBlock47Block249Value4
].
            recoveredBlock47PC := 343.
        ].
        recoveredBlock47Step = 343 ifTrue: [
            recoveredBlock47Stack8 := handler.
            recoveredBlock47PC := 345.
        ].
        recoveredBlock47Step = 345 ifTrue: [
            recoveredBlock47Stack1 := (recoveredBlock47Stack1) choice: (recoveredBlock47Stack2) do: (recoveredBlock47Stack3) choice: (recoveredBlock47Stack4) do: (recoveredBlock47Stack5) choice: (recoveredBlock47Stack6) do: (recoveredBlock47Stack7) ifNot: (recoveredBlock47Stack8).
            recoveredBlock47PC := 348.
        ].
        recoveredBlock47Step = 348 ifTrue: [
            recoveredBlock47Result := recoveredBlock47Stack1.
            recoveredBlock47Done := true.
        ].
    ].
    recoveredBlock47Result
].
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredStack4 := handler.
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            (recoveredStack1) required: (recoveredStack2) do: (recoveredStack3) ifNot: (recoveredStack4).
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x205dc32c; bytecode file offset 0xed8cc0"
!ASDXMLImportStepXMLBase methodsFor: 'recovered'!
resolveMain
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredStack12 recoveredStack13 recoveredStack14 recoveredStack15 recoveredStack16 recoveredStack17 recoveredStack18 recoveredStack19 recoveredStack20 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := '.main.'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := extension.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := 'component_main.xsd'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) readMainDOMTree: (recoveredStack1) schema: (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := 'Component'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := [:recoveredBlock21Arg1 | 
    | recoveredBlock21Local1 recoveredBlock21Stack0 recoveredBlock21Stack1 recoveredBlock21Stack2 recoveredBlock21Stack3 recoveredBlock21Stack4 recoveredBlock21PC recoveredBlock21Step recoveredBlock21Done recoveredBlock21Result |
    recoveredBlock21Stack0 := self.
    recoveredBlock21PC := 28.
    recoveredBlock21Done := false.
    [recoveredBlock21Done not] whileTrue: [
        recoveredBlock21Step := recoveredBlock21PC.
        recoveredBlock21Step = 28 ifTrue: [
            recoveredBlock21Stack1 := #('ASCET_Project' 'ASCET_DefaultProject').
            recoveredBlock21PC := 30.
        ].
        recoveredBlock21Step = 30 ifTrue: [
            recoveredBlock21Stack2 := recoveredBlock21Arg1.
            recoveredBlock21PC := 31.
        ].
        recoveredBlock21Step = 31 ifTrue: [
            recoveredBlock21Stack3 := 'componentType'.
            recoveredBlock21PC := 33.
        ].
        recoveredBlock21Step = 33 ifTrue: [
            recoveredBlock21Stack2 := (recoveredBlock21Stack2) getString: (recoveredBlock21Stack3).
            recoveredBlock21PC := 35.
        ].
        recoveredBlock21Step = 35 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) includes: (recoveredBlock21Stack2).
            recoveredBlock21PC := 37.
        ].
        recoveredBlock21Step = 37 ifTrue: [
            (recoveredBlock21Stack1) ifTrue: [recoveredBlock21PC := 40] ifFalse: [recoveredBlock21PC := 46].
        ].
        recoveredBlock21Step = 40 ifTrue: [
            recoveredBlock21Stack1 := ASDXMLImportProtoProject.
            recoveredBlock21PC := 42.
        ].
        recoveredBlock21Step = 42 ifTrue: [
            recoveredBlock21PC := 48.
        ].
        recoveredBlock21Step = 46 ifTrue: [
            recoveredBlock21Stack1 := ASDXMLImportProtoItemWithSpec.
            recoveredBlock21PC := 48.
        ].
        recoveredBlock21Step = 48 ifTrue: [
            recoveredBlock21Local1 := recoveredBlock21Stack1.
            recoveredBlock21PC := 49.
        ].
        recoveredBlock21Step = 49 ifTrue: [
            recoveredBlock21Stack1 := recoveredBlock21Arg1.
            recoveredBlock21PC := 50.
        ].
        recoveredBlock21Step = 50 ifTrue: [
            recoveredBlock21Stack2 := recoveredBlock21Local1.
            recoveredBlock21PC := 51.
        ].
        recoveredBlock21Step = 51 ifTrue: [
            recoveredBlock21Stack0 := (recoveredBlock21Stack0) readItemWithSpec: (recoveredBlock21Stack1) class: (recoveredBlock21Stack2).
            recoveredBlock21PC := 53.
        ].
        recoveredBlock21Step = 53 ifTrue: [
            recoveredLocal1 := recoveredBlock21Stack0.
            recoveredBlock21PC := 56.
        ].
        recoveredBlock21Step = 56 ifTrue: [
            recoveredBlock21Stack0 := self.
            recoveredBlock21PC := 57.
        ].
        recoveredBlock21Step = 57 ifTrue: [
            recoveredBlock21Stack1 := recoveredLocal1.
            recoveredBlock21PC := 60.
        ].
        recoveredBlock21Step = 60 ifTrue: [
            recoveredBlock21Stack0 := (recoveredBlock21Stack0) resolveItemWithSpec: (recoveredBlock21Stack1).
            recoveredBlock21PC := 62.
        ].
        recoveredBlock21Step = 62 ifTrue: [
            recoveredBlock21Result := recoveredBlock21Stack0.
            recoveredBlock21Done := true.
        ].
    ].
    recoveredBlock21Result
].
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack3 := 'AtomicSoftwareComponent'.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack4 := [:recoveredBlock65Arg1 | 
    | recoveredBlock65Value0 recoveredBlock65Value1 recoveredBlock65Value2 recoveredBlock65Value3 recoveredBlock65Value4 |
    recoveredBlock65Value0 := recoveredBlock65Arg1.
    recoveredBlock65Value1 := ASDXMLImportProtoItemWithSpec.
    recoveredBlock65Value2 := (self) readItemWithSpec: (recoveredBlock65Value0) class: (recoveredBlock65Value1).
    recoveredLocal1 := recoveredBlock65Value2.
    recoveredBlock65Value3 := recoveredLocal1.
    recoveredBlock65Value4 := (self) resolveItemWithSpec: (recoveredBlock65Value3).
    recoveredBlock65Value4
].
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack5 := 'GenericComponent'.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack6 := [:recoveredBlock89Arg1 | 
    | recoveredBlock89Value0 recoveredBlock89Value1 recoveredBlock89Value2 recoveredBlock89Value3 recoveredBlock89Value4 |
    recoveredBlock89Value0 := recoveredBlock89Arg1.
    recoveredBlock89Value1 := ASDXMLImportProtoGenericComponent.
    recoveredBlock89Value2 := (self) readGenericComponent: (recoveredBlock89Value0) class: (recoveredBlock89Value1).
    recoveredLocal1 := recoveredBlock89Value2.
    recoveredBlock89Value3 := recoveredLocal1.
    recoveredBlock89Value4 := (self) resolveItemWithSpec: (recoveredBlock89Value3).
    recoveredBlock89Value4
].
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack7 := 'Enumeration'.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack8 := [:recoveredBlock113Arg1 | 
    | recoveredBlock113Value0 recoveredBlock113Value1 recoveredBlock113Value2 |
    recoveredBlock113Value0 := recoveredBlock113Arg1.
    recoveredBlock113Value1 := (self) readSimpleComponent: (recoveredBlock113Value0).
    recoveredBlock113Value2 := recoveredBlock113Value1.
    recoveredLocal1 := recoveredBlock113Value2.
    recoveredBlock113Value1
].
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack9 := 'ModeGroup'.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack10 := [:recoveredBlock130Arg1 | 
    | recoveredBlock130Value0 recoveredBlock130Value1 recoveredBlock130Value2 |
    recoveredBlock130Value0 := recoveredBlock130Arg1.
    recoveredBlock130Value1 := (self) readSimpleComponent: (recoveredBlock130Value0).
    recoveredBlock130Value2 := recoveredBlock130Value1.
    recoveredLocal1 := recoveredBlock130Value2.
    recoveredBlock130Value1
].
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack11 := 'Image'.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack12 := [:recoveredBlock146Arg1 | 
    | recoveredBlock146Value0 recoveredBlock146Value1 recoveredBlock146Value2 |
    recoveredBlock146Value0 := recoveredBlock146Arg1.
    recoveredBlock146Value1 := (self) readSimpleComponent: (recoveredBlock146Value0).
    recoveredBlock146Value2 := recoveredBlock146Value1.
    recoveredLocal1 := recoveredBlock146Value2.
    recoveredBlock146Value1
].
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack13 := 'Signal'.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack14 := [:recoveredBlock162Arg1 | 
    | recoveredBlock162Value0 recoveredBlock162Value1 recoveredBlock162Value2 |
    recoveredBlock162Value0 := recoveredBlock162Arg1.
    recoveredBlock162Value1 := (self) readSimpleComponent: (recoveredBlock162Value0).
    recoveredBlock162Value2 := recoveredBlock162Value1.
    recoveredLocal1 := recoveredBlock162Value2.
    recoveredBlock162Value1
].
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack15 := 'Asap2Item'.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack16 := [:recoveredBlock178Arg1 | 
    | recoveredBlock178Value0 recoveredBlock178Value1 recoveredBlock178Value2 recoveredBlock178Value3 recoveredBlock178Value4 recoveredBlock178Value5 recoveredBlock178Value6 recoveredBlock178Value7 recoveredBlock178Value8 recoveredBlock178Value9 recoveredBlock178Value10 recoveredBlock178Value11 |
    recoveredBlock178Value0 := ASDXMLImportProtoAsap2Item.
    recoveredBlock178Value1 := (recoveredBlock178Value0) new.
    recoveredBlock178Value2 := recoveredBlock178Arg1.
    recoveredBlock178Value3 := (recoveredBlock178Value2) getNMToken: ('name').
    recoveredBlock178Value4 := recoveredBlock178Arg1.
    recoveredBlock178Value5 := (recoveredBlock178Value4) getOID: ('OID') default: (nil).
    recoveredBlock178Value6 := recoveredBlock178Arg1.
    recoveredBlock178Value7 := (recoveredBlock178Value6) getString: ('nameSpace').
    recoveredBlock178Value8 := baseName.
    recoveredBlock178Value9 := importPath.
    recoveredBlock178Value10 := (recoveredBlock178Value1) initOn: (recoveredBlock178Value3) oid: (recoveredBlock178Value5) namespace: (recoveredBlock178Value7) baseName: (recoveredBlock178Value8) importPath: (recoveredBlock178Value9).
    recoveredBlock178Value11 := recoveredBlock178Value10.
    recoveredLocal1 := recoveredBlock178Value11.
    recoveredBlock178Value10
].
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack17 := 'Container'.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack18 := [:recoveredBlock218Arg1 | 
    | recoveredBlock218Value0 recoveredBlock218Value1 recoveredBlock218Value2 recoveredBlock218Value3 recoveredBlock218Value4 recoveredBlock218Value5 recoveredBlock218Value6 recoveredBlock218Value7 recoveredBlock218Value8 recoveredBlock218Value9 recoveredBlock218Value10 recoveredBlock218Value11 recoveredBlock218Value12 recoveredBlock218Value13 recoveredBlock218Value14 |
    recoveredBlock218Value0 := ASDXMLImportProtoContainer.
    recoveredBlock218Value1 := (recoveredBlock218Value0) new.
    recoveredBlock218Value2 := recoveredBlock218Arg1.
    recoveredBlock218Value3 := (recoveredBlock218Value2) getNMToken: ('name').
    recoveredBlock218Value4 := recoveredBlock218Arg1.
    recoveredBlock218Value5 := (recoveredBlock218Value4) getOID: ('OID') default: (nil).
    recoveredBlock218Value6 := recoveredBlock218Arg1.
    recoveredBlock218Value7 := (recoveredBlock218Value6) getString: ('nameSpace').
    recoveredBlock218Value8 := baseName.
    recoveredBlock218Value9 := importPath.
    recoveredBlock218Value10 := (recoveredBlock218Value1) initOn: (recoveredBlock218Value3) oid: (recoveredBlock218Value5) namespace: (recoveredBlock218Value7) baseName: (recoveredBlock218Value8) importPath: (recoveredBlock218Value9).
    recoveredLocal1 := recoveredBlock218Value10.
    recoveredBlock218Value11 := recoveredBlock218Arg1.
    (self) skipItemElements: (recoveredBlock218Value11).
    recoveredBlock218Value12 := recoveredBlock218Arg1.
    recoveredBlock218Value13 := [:recoveredBlock218Block260Arg1 | 
    | recoveredBlock218Block260Value0 recoveredBlock218Block260Value1 recoveredBlock218Block260Value2 recoveredBlock218Block260Value3 recoveredBlock218Block260Value4 recoveredBlock218Block260Value5 recoveredBlock218Block260Value6 recoveredBlock218Block260Value7 recoveredBlock218Block260Value8 recoveredBlock218Block260Value9 |
    recoveredBlock218Block260Value0 := recoveredLocal1.
    recoveredBlock218Block260Value1 := ASDXMLImportProtoRef.
    recoveredBlock218Block260Value2 := (recoveredBlock218Block260Value1) new.
    recoveredBlock218Block260Value3 := recoveredBlock218Block260Arg1.
    recoveredBlock218Block260Value4 := (recoveredBlock218Block260Value3) getString: ('itemName').
    recoveredBlock218Block260Value5 := recoveredBlock218Block260Arg1.
    recoveredBlock218Block260Value6 := (recoveredBlock218Block260Value5) getOID: ('itemOID') default: (nil).
    recoveredBlock218Block260Value7 := importPath.
    recoveredBlock218Block260Value8 := (recoveredBlock218Block260Value2) initOn: (recoveredBlock218Block260Value4) refOID: (recoveredBlock218Block260Value6) importPath: (recoveredBlock218Block260Value7).
    recoveredBlock218Block260Value9 := (recoveredBlock218Block260Value0) addMember: (recoveredBlock218Block260Value8).
    recoveredBlock218Block260Value9
].
    recoveredBlock218Value14 := (recoveredBlock218Value12) multiple: ('Item') do: (recoveredBlock218Value13).
    recoveredBlock218Value14
].
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack19 := handler.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            (recoveredStack0) choice: (recoveredStack1) do: (recoveredStack2) choice: (recoveredStack3) do: (recoveredStack4) choice: (recoveredStack5) do: (recoveredStack6) choice: (recoveredStack7) do: (recoveredStack8) choice: (recoveredStack9) do: (recoveredStack10) choice: (recoveredStack11) do: (recoveredStack12) choice: (recoveredStack13) do: (recoveredStack14) choice: (recoveredStack15) do: (recoveredStack16) choice: (recoveredStack17) do: (recoveredStack18) ifNot: (recoveredStack19).
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack1 := (recoveredStack1) createMetaStep.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack1 := (recoveredStack1) tryReadMeta.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            (recoveredStack0) meta: (recoveredStack1).
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack1 := 'Call_71058'.
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack0 := (recoveredStack0) namespace.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 326] ifFalse: [recoveredPC := 357].
        ].
        recoveredStep = 326 ifTrue: [
            recoveredStack0 := controller.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack1 := ASDXMLImportIssueCantProcess.
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            recoveredStack4 := (recoveredStack4) baseName.
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack5 := '.main.'.
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            recoveredStack4 := (recoveredStack4) , (recoveredStack5).
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            recoveredStack5 := extension.
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            recoveredStack4 := (recoveredStack4) , (recoveredStack5).
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            recoveredStack3 := (recoveredStack3) qualifyBaseName: (recoveredStack4).
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            recoveredStack4 := 'Invalid nameSpace'.
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredStack5 := true.
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            recoveredStack1 := (recoveredStack1) initOn: (recoveredStack2) file: (recoveredStack3) reason: (recoveredStack4) fatal: (recoveredStack5).
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            (recoveredStack0) addIssue: (recoveredStack1).
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 357 ifTrue: [
            recoveredStack0 := controller.
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            (recoveredStack0) registerProtoItem: (recoveredStack1).
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

