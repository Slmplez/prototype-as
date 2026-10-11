"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20004510; bytecode file offset 0x90206c"
!SGECCOSourceCollector methodsFor: 'recovered'!
makeARCSInterfaceNode: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20004838; bytecode file offset 0x90206c"
!SGECCOSourceCollector methodsFor: 'recovered'!
makeEnumNode: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20004970; bytecode file offset 0x90206c"
!SGECCOSourceCollector methodsFor: 'recovered'!
makeARSRInterfaceNode: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x200091dc; bytecode file offset 0x908be4"
!SGECCOSourceCollector methodsFor: 'recovered'!
getAllRequiresSources
    | recoveredValue0 |
    recoveredValue0 := (self) toBeProcessedSources.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069848; bytecode file offset 0x966bdc"
!SGECCOSourceCollector methodsFor: 'recovered'!
toBeProcessedSOsTable
    | recoveredValue0 |
    recoveredValue0 := toBeProcessedSOsTable.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200fa024; bytecode file offset 0x9f6a08"
!SGECCOSourceCollector methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    toBeProcessedSOsTable := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x20144be4; bytecode file offset 0xa414b0"
!SGECCOSourceCollector methodsFor: 'recovered'!
makeComponentNode: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) fileName.
    recoveredValue3 := (recoveredValue2) , ('F.h').
    (recoveredValue0) moduleInlineHeaderFileName: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    super makeComponentNode: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20154390; bytecode file offset 0xa50c5c"
!SGECCOSourceCollector methodsFor: 'recovered'!
makeDataTypeNode: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) moduleFileName.
    recoveredValue3 := (recoveredValue2) , ('.h').
    (recoveredValue0) moduleHeaderFileName: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) moduleCodeStorageHandle.
    recoveredValue6 := recoveredArg1.
    (self) addModuleCodeHandle: (recoveredValue5) makeNode: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x203236e0; bytecode file offset 0xc1ffc0"
!SGECCOSourceCollector methodsFor: 'recovered'!
toBeProcessedSources
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Rl'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_72774'.
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
            recoveredStack0 := (recoveredStack0) toBeProcessedSOsTable.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) values.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := [:block280ebc44Arg1 :block280ebc44Arg2 | 
    | block280ebc44Stack0 block280ebc44Stack1 block280ebc44Stack2 block280ebc44Stack3 block280ebc44PC block280ebc44Step block280ebc44Done block280ebc44Result |
    block280ebc44Stack0 := self.
    block280ebc44PC := 4.
    block280ebc44Done := false.
    [block280ebc44Done not] whileTrue: [
        block280ebc44Step := block280ebc44PC.
        block280ebc44Step = 4 ifTrue: [
            block280ebc44Stack1 := block280ebc44Arg1.
            block280ebc44PC := 5.
        ].
        block280ebc44Step = 5 ifTrue: [
            block280ebc44Stack1 := (block280ebc44Stack1) userReference.
            block280ebc44PC := 7.
        ].
        block280ebc44Step = 7 ifTrue: [
            block280ebc44Stack1 := (block280ebc44Stack1) isOSGenericCode.
            block280ebc44PC := 9.
        ].
        block280ebc44Step = 9 ifTrue: [
            (block280ebc44Stack1) ifTrue: [block280ebc44PC := 12] ifFalse: [block280ebc44PC := 16].
        ].
        block280ebc44Step = 12 ifTrue: [
            block280ebc44Stack1 := false.
            block280ebc44PC := 13.
        ].
        block280ebc44Step = 13 ifTrue: [
            block280ebc44PC := 39.
        ].
        block280ebc44Step = 16 ifTrue: [
            block280ebc44Stack1 := block280ebc44Arg2.
            block280ebc44PC := 17.
        ].
        block280ebc44Step = 17 ifTrue: [
            block280ebc44Stack1 := (block280ebc44Stack1) userReference.
            block280ebc44PC := 19.
        ].
        block280ebc44Step = 19 ifTrue: [
            block280ebc44Stack1 := (block280ebc44Stack1) isOSGenericCode.
            block280ebc44PC := 21.
        ].
        block280ebc44Step = 21 ifTrue: [
            (block280ebc44Stack1) ifTrue: [block280ebc44PC := 24] ifFalse: [block280ebc44PC := 28].
        ].
        block280ebc44Step = 24 ifTrue: [
            block280ebc44Stack1 := true.
            block280ebc44PC := 25.
        ].
        block280ebc44Step = 25 ifTrue: [
            block280ebc44PC := 39.
        ].
        block280ebc44Step = 28 ifTrue: [
            block280ebc44Stack1 := block280ebc44Arg1.
            block280ebc44PC := 29.
        ].
        block280ebc44Step = 29 ifTrue: [
            block280ebc44Stack1 := (block280ebc44Stack1) makeNode.
            block280ebc44PC := 31.
        ].
        block280ebc44Step = 31 ifTrue: [
            block280ebc44Stack1 := (block280ebc44Stack1) label.
            block280ebc44PC := 33.
        ].
        block280ebc44Step = 33 ifTrue: [
            block280ebc44Stack2 := block280ebc44Arg2.
            block280ebc44PC := 34.
        ].
        block280ebc44Step = 34 ifTrue: [
            block280ebc44Stack2 := (block280ebc44Stack2) makeNode.
            block280ebc44PC := 36.
        ].
        block280ebc44Step = 36 ifTrue: [
            block280ebc44Stack2 := (block280ebc44Stack2) label.
            block280ebc44PC := 38.
        ].
        block280ebc44Step = 38 ifTrue: [
            block280ebc44Stack1 := (block280ebc44Stack1) > (block280ebc44Stack2).
            block280ebc44PC := 39.
        ].
        block280ebc44Step = 39 ifTrue: [
            block280ebc44Result := block280ebc44Stack1.
            block280ebc44Done := true.
        ].
    ].
    block280ebc44Result
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) asArray.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203cb9ac; bytecode file offset 0xcc829c"
!SGECCOSourceCollector methodsFor: 'recovered'!
addExternCodeHandle: recoveredArg1 hSource: recoveredArg2 cSource: recoveredArg3 makeNode: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) toBeProcessedSOsTable.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 recoveredBlock8Value4 recoveredBlock8Value5 recoveredBlock8Value6 recoveredBlock8Value7 recoveredBlock8Value8 recoveredBlock8Value9 recoveredBlock8Value10 recoveredBlock8Value11 recoveredBlock8Value12 recoveredBlock8Value13 recoveredBlock8Value14 recoveredBlock8Value15 recoveredBlock8Value16 recoveredBlock8Value17 recoveredBlock8Value18 recoveredBlock8Value19 recoveredBlock8Value20 recoveredBlock8Value21 recoveredBlock8Value22 recoveredBlock8Value23 recoveredBlock8Value24 |
    recoveredBlock8Value0 := SGGenericSourceExternalObject.
    recoveredBlock8Value1 := recoveredArg4.
    recoveredBlock8Value2 := (recoveredBlock8Value1) externFileName.
    recoveredBlock8Value3 := recoveredArg4.
    recoveredBlock8Value4 := (recoveredBlock8Value3) externDescription.
    recoveredBlock8Value5 := recoveredArg4.
    recoveredBlock8Value6 := recoveredArg1.
    recoveredBlock8Value7 := (recoveredBlock8Value5) makeModuleGenericSource: (recoveredBlock8Value6).
    recoveredBlock8Value8 := (recoveredBlock8Value0) fileName: (recoveredBlock8Value2) description: (recoveredBlock8Value4) userReference: (recoveredBlock8Value7) sourceCollector: (self).
    recoveredBlock8Value9 := recoveredBlock8Value8.
    recoveredBlock8Value10 := (self) fileStructureStrategy.
    recoveredBlock8Value11 := recoveredArg4.
    recoveredBlock8Value12 := (recoveredBlock8Value10) necessaryExternCppCommandsForComponent: (recoveredBlock8Value11).
    (recoveredBlock8Value9) preprocessorCommands: (recoveredBlock8Value12).
    recoveredBlock8Value13 := recoveredBlock8Value8.
    recoveredBlock8Value14 := recoveredArg1.
    (recoveredBlock8Value13) externalHandle: (recoveredBlock8Value14).
    recoveredBlock8Value15 := recoveredBlock8Value8.
    recoveredBlock8Value16 := recoveredArg4.
    recoveredBlock8Value17 := (recoveredBlock8Value16) graph.
    recoveredBlock8Value18 := recoveredArg2.
    recoveredBlock8Value19 := (recoveredBlock8Value17) asPlainCode: (recoveredBlock8Value18).
    (recoveredBlock8Value15) bemSourceH: (recoveredBlock8Value19).
    recoveredBlock8Value20 := recoveredBlock8Value8.
    recoveredBlock8Value21 := recoveredArg4.
    recoveredBlock8Value22 := (recoveredBlock8Value21) graph.
    recoveredBlock8Value23 := recoveredArg3.
    recoveredBlock8Value24 := (recoveredBlock8Value22) asPlainCode: (recoveredBlock8Value23).
    (recoveredBlock8Value20) bemSourceC: (recoveredBlock8Value24).
    recoveredBlock8Value8
].
    (recoveredValue0) at: (recoveredValue1) ifAbsentPut: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2043bee4; bytecode file offset 0xd387dc"
!SGECCOSourceCollector methodsFor: 'recovered'!
addModuleCodeHandle: recoveredArg1 makeNode: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) toBeProcessedSOsTable.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock8Stack0 recoveredBlock8Stack1 recoveredBlock8Stack2 recoveredBlock8Stack3 recoveredBlock8Stack4 recoveredBlock8Stack5 recoveredBlock8Stack6 recoveredBlock8PC recoveredBlock8Step recoveredBlock8Done recoveredBlock8Result |
    recoveredBlock8Stack0 := self.
    recoveredBlock8PC := 14.
    recoveredBlock8Done := false.
    [recoveredBlock8Done not] whileTrue: [
        recoveredBlock8Step := recoveredBlock8PC.
        recoveredBlock8Step = 14 ifTrue: [
            recoveredBlock8Stack1 := recoveredArg2.
            recoveredBlock8PC := 17.
        ].
        recoveredBlock8Step = 17 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) isClassNode.
            recoveredBlock8PC := 18.
        ].
        recoveredBlock8Step = 18 ifTrue: [
            (recoveredBlock8Stack1) ifTrue: [recoveredBlock8PC := 22] ifFalse: [recoveredBlock8PC := 29].
        ].
        recoveredBlock8Step = 22 ifTrue: [
            recoveredBlock8Stack1 := self.
            recoveredBlock8PC := 23.
        ].
        recoveredBlock8Step = 23 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) fileStructureStrategy.
            recoveredBlock8PC := 24.
        ].
        recoveredBlock8Step = 24 ifTrue: [
            recoveredBlock8Stack2 := recoveredArg2.
            recoveredBlock8PC := 27.
        ].
        recoveredBlock8Step = 27 ifTrue: [
            (recoveredBlock8Stack1) addClassModuleFileNameForClass: (recoveredBlock8Stack2).
            recoveredBlock8PC := 29.
        ].
        recoveredBlock8Step = 29 ifTrue: [
            recoveredBlock8Stack1 := SGGenericSourceObject.
            recoveredBlock8PC := 31.
        ].
        recoveredBlock8Step = 31 ifTrue: [
            recoveredBlock8Stack2 := recoveredArg2.
            recoveredBlock8PC := 34.
        ].
        recoveredBlock8Step = 34 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) fileName.
            recoveredBlock8PC := 36.
        ].
        recoveredBlock8Step = 36 ifTrue: [
            recoveredBlock8Stack3 := recoveredArg2.
            recoveredBlock8PC := 39.
        ].
        recoveredBlock8Step = 39 ifTrue: [
            recoveredBlock8Stack3 := (recoveredBlock8Stack3) moduleGenericDescription.
            recoveredBlock8PC := 41.
        ].
        recoveredBlock8Step = 41 ifTrue: [
            recoveredBlock8Stack4 := recoveredArg2.
            recoveredBlock8PC := 44.
        ].
        recoveredBlock8Step = 44 ifTrue: [
            recoveredBlock8Stack4 := (recoveredBlock8Stack4) makeModuleGenericSource.
            recoveredBlock8PC := 46.
        ].
        recoveredBlock8Step = 46 ifTrue: [
            recoveredBlock8Stack5 := self.
            recoveredBlock8PC := 47.
        ].
        recoveredBlock8Step = 47 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) fileName: (recoveredBlock8Stack2) description: (recoveredBlock8Stack3) userReference: (recoveredBlock8Stack4) sourceCollector: (recoveredBlock8Stack5).
            recoveredBlock8PC := 50.
        ].
        recoveredBlock8Step = 50 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Stack1.
            recoveredBlock8PC := 51.
        ].
        recoveredBlock8Step = 51 ifTrue: [
            recoveredBlock8Stack3 := recoveredArg1.
            recoveredBlock8PC := 54.
        ].
        recoveredBlock8Step = 54 ifTrue: [
            (recoveredBlock8Stack2) addDbSourceHandle: (recoveredBlock8Stack3).
            recoveredBlock8PC := 56.
        ].
        recoveredBlock8Step = 56 ifTrue: [
            recoveredBlock8Result := recoveredBlock8Stack1.
            recoveredBlock8Done := true.
        ].
    ].
    recoveredBlock8Result
].
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) initCodeStorageHandle.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) addDbSourceHandle: (recoveredStack1).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) needsGenerateECCOCode.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack0) bemSourceHandle: (recoveredStack1).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := (recoveredStack1) fileStructureStrategy.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := (recoveredStack1) necessaryInitCppCommandsForComponent: (recoveredStack2).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack0) preprocessorCommands: (recoveredStack1).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack0) toBeProcessedExternalSOs: (recoveredStack1).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20581714; bytecode file offset 0xe7e060"
!SGECCOSourceCollector methodsFor: 'recovered'!
makeProjectNode: recoveredArg1
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
            (recoveredStack0) makeModuleNode: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) toBeProcessedSOsTable.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) globalStructHeaderFileName.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock15Local1 recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 recoveredBlock15Value3 recoveredBlock15Value4 recoveredBlock15Value5 recoveredBlock15Value6 recoveredBlock15Value7 recoveredBlock15Value8 recoveredBlock15Value9 recoveredBlock15Value10 recoveredBlock15Value11 recoveredBlock15Value12 |
    recoveredBlock15Value0 := SGGenericSourceExternalObject.
    recoveredBlock15Value1 := recoveredArg1.
    recoveredBlock15Value2 := (recoveredBlock15Value1) globalStructHeaderFileName.
    recoveredBlock15Value3 := recoveredArg1.
    recoveredBlock15Value4 := (recoveredBlock15Value3) globalStructHeaderDescription.
    recoveredBlock15Value5 := recoveredArg1.
    recoveredBlock15Value6 := (recoveredBlock15Value5) makeGlobalStructHeaderSource.
    recoveredBlock15Value7 := (recoveredBlock15Value0) fileName: (recoveredBlock15Value2) description: (recoveredBlock15Value4) userReference: (recoveredBlock15Value6) sourceCollector: (self).
    recoveredBlock15Local1 := recoveredBlock15Value7.
    recoveredBlock15Value8 := recoveredBlock15Local1.
    recoveredBlock15Value9 := SGIlEccoExpander.
    recoveredBlock15Value10 := (recoveredBlock15Value9) new.
    recoveredBlock15Value11 := (recoveredBlock15Value10) globalStructHeaderContent.
    (recoveredBlock15Value8) bemSourceH: (recoveredBlock15Value11).
    recoveredBlock15Value12 := recoveredBlock15Local1.
    recoveredBlock15Value12
].
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) allAdditionalECCOSourceCollectors.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := [:recoveredBlock59Arg1 | 
    | recoveredBlock59Local1 recoveredBlock59Value0 recoveredBlock59Value1 recoveredBlock59Value2 recoveredBlock59Value3 recoveredBlock59Value4 |
    recoveredBlock59Value0 := recoveredBlock59Arg1.
    recoveredBlock59Value1 := (recoveredBlock59Value0) createWithCollector: (self).
    recoveredBlock59Local1 := recoveredBlock59Value1.
    recoveredBlock59Value2 := recoveredBlock59Local1.
    recoveredBlock59Value3 := recoveredArg1.
    recoveredBlock59Value4 := (recoveredBlock59Value2) anyMakeNode: (recoveredBlock59Value3).
    recoveredBlock59Value4
].
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := 'Rl'.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := 'Call_73226'.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) graph.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) genOSConfiguration.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 260].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := (recoveredStack0) toBeProcessedSOsTable.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := (recoveredStack1) osCodeStorageHandle.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock103Local1 recoveredBlock103Value0 recoveredBlock103Value1 recoveredBlock103Value2 recoveredBlock103Value3 recoveredBlock103Value4 recoveredBlock103Value5 recoveredBlock103Value6 recoveredBlock103Value7 recoveredBlock103Value8 recoveredBlock103Value9 recoveredBlock103Value10 recoveredBlock103Value11 recoveredBlock103Value12 recoveredBlock103Value13 recoveredBlock103Value14 recoveredBlock103Value15 recoveredBlock103Value16 recoveredBlock103Value17 |
    recoveredBlock103Value0 := SGGenericSourceObject.
    recoveredBlock103Value1 := recoveredArg1.
    recoveredBlock103Value2 := (recoveredBlock103Value1) osFilename.
    recoveredBlock103Value3 := recoveredArg1.
    recoveredBlock103Value4 := (recoveredBlock103Value3) osGenericDescription.
    recoveredBlock103Value5 := recoveredArg1.
    recoveredBlock103Value6 := (recoveredBlock103Value5) makeOSGenericSource.
    recoveredBlock103Value7 := (recoveredBlock103Value0) fileName: (recoveredBlock103Value2) description: (recoveredBlock103Value4) userReference: (recoveredBlock103Value6) sourceCollector: (self).
    recoveredBlock103Local1 := recoveredBlock103Value7.
    recoveredBlock103Value8 := recoveredArg1.
    recoveredBlock103Value9 := (recoveredBlock103Value8) osCode.
    recoveredBlock103Value10 := [:recoveredBlock103Block139Arg1 | 
    | recoveredBlock103Block139Value0 recoveredBlock103Block139Value1 recoveredBlock103Block139Value2 recoveredBlock103Block139Value3 |
    recoveredBlock103Block139Value0 := recoveredBlock103Local1.
    recoveredBlock103Block139Value1 := recoveredArg1.
    recoveredBlock103Block139Value2 := (recoveredBlock103Block139Value1) osCodeStorageHandle.
    recoveredBlock103Block139Value3 := (recoveredBlock103Block139Value0) bemSourceHandle: (recoveredBlock103Block139Value2).
    recoveredBlock103Block139Value3
].
    (recoveredBlock103Value9) ifNotNil: (recoveredBlock103Value10).
    recoveredBlock103Value11 := recoveredBlock103Local1.
    recoveredBlock103Value12 := recoveredBlock103Value11.
    recoveredBlock103Value13 := recoveredArg1.
    recoveredBlock103Value14 := (recoveredBlock103Value13) osCodeStorageHandle.
    (recoveredBlock103Value12) addDbSourceHandle: (recoveredBlock103Value14).
    recoveredBlock103Value15 := recoveredArg1.
    recoveredBlock103Value16 := (recoveredBlock103Value15) osNecessaryPreprocessorCommands.
    recoveredBlock103Value17 := (recoveredBlock103Value11) preprocessorCommands: (recoveredBlock103Value16).
    recoveredBlock103Value17
].
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack0 := (recoveredStack0) osCode.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack1 := [:recoveredBlock185Arg1 | 
    | recoveredBlock185Stack0 recoveredBlock185Stack1 recoveredBlock185Stack2 recoveredBlock185Stack3 recoveredBlock185Stack4 recoveredBlock185PC recoveredBlock185Step recoveredBlock185Done recoveredBlock185Result |
    recoveredBlock185Stack0 := self.
    recoveredBlock185PC := 192.
    recoveredBlock185Done := false.
    [recoveredBlock185Done not] whileTrue: [
        recoveredBlock185Step := recoveredBlock185PC.
        recoveredBlock185Step = 192 ifTrue: [
            recoveredBlock185Stack1 := nil.
            recoveredBlock185PC := 193.
        ].
        recoveredBlock185Step = 193 ifTrue: [
            recoveredBlock185Stack2 := recoveredBlock185Arg1.
            recoveredBlock185PC := 194.
        ].
        recoveredBlock185Step = 194 ifTrue: [
            recoveredBlock185Stack2 := (recoveredBlock185Stack2) codeOfOSTemplateFile.
            recoveredBlock185PC := 196.
        ].
        recoveredBlock185Step = 196 ifTrue: [
            recoveredBlock185Stack3 := recoveredBlock185Stack2.
            recoveredBlock185PC := 197.
        ].
        recoveredBlock185Step = 197 ifTrue: [
            recoveredLocal2 := recoveredBlock185Stack3.
            recoveredBlock185PC := 200.
        ].
        recoveredBlock185Step = 200 ifTrue: [
            recoveredBlock185Stack2 := (recoveredBlock185Stack2) notEmpty.
            recoveredBlock185PC := 202.
        ].
        recoveredBlock185Step = 202 ifTrue: [
            (recoveredBlock185Stack2) ifTrue: [recoveredBlock185PC := 206] ifFalse: [recoveredBlock185PC := 257].
        ].
        recoveredBlock185Step = 206 ifTrue: [
            recoveredBlock185PC := 207.
        ].
        recoveredBlock185Step = 207 ifTrue: [
            recoveredBlock185Stack1 := self.
            recoveredBlock185PC := 208.
        ].
        recoveredBlock185Step = 208 ifTrue: [
            recoveredBlock185Stack1 := (recoveredBlock185Stack1) toBeProcessedSOsTable.
            recoveredBlock185PC := 209.
        ].
        recoveredBlock185Step = 209 ifTrue: [
            recoveredBlock185Stack2 := recoveredArg1.
            recoveredBlock185PC := 212.
        ].
        recoveredBlock185Step = 212 ifTrue: [
            recoveredBlock185Stack2 := (recoveredBlock185Stack2) osDataFileName.
            recoveredBlock185PC := 214.
        ].
        recoveredBlock185Step = 214 ifTrue: [
            recoveredBlock185Stack3 := [
    | recoveredBlock185Block214Local1 recoveredBlock185Block214Value0 recoveredBlock185Block214Value1 recoveredBlock185Block214Value2 recoveredBlock185Block214Value3 recoveredBlock185Block214Value4 recoveredBlock185Block214Value5 recoveredBlock185Block214Value6 recoveredBlock185Block214Value7 recoveredBlock185Block214Value8 recoveredBlock185Block214Value9 recoveredBlock185Block214Value10 recoveredBlock185Block214Value11 recoveredBlock185Block214Value12 |
    recoveredBlock185Block214Value0 := TGCompilingSourceObject.
    recoveredBlock185Block214Value1 := recoveredArg1.
    recoveredBlock185Block214Value2 := (recoveredBlock185Block214Value1) osDataFileName.
    recoveredBlock185Block214Value3 := recoveredArg1.
    recoveredBlock185Block214Value4 := (recoveredBlock185Block214Value3) osTemplateFileDescription.
    recoveredBlock185Block214Value5 := recoveredArg1.
    recoveredBlock185Block214Value6 := (recoveredBlock185Block214Value5) makeOSTemplateSource.
    recoveredBlock185Block214Value7 := (recoveredBlock185Block214Value0) fileName: (recoveredBlock185Block214Value2) description: (recoveredBlock185Block214Value4) userReference: (recoveredBlock185Block214Value6) sourceCollector: (self).
    recoveredBlock185Block214Local1 := recoveredBlock185Block214Value7.
    recoveredBlock185Block214Value8 := recoveredBlock185Block214Local1.
    recoveredBlock185Block214Value9 := recoveredBlock185Block214Value8.
    recoveredBlock185Block214Value10 := recoveredLocal2.
    recoveredBlock185Block214Value11 := recoveredArg1.
    recoveredBlock185Block214Value12 := (recoveredBlock185Block214Value11) osDataFileName.
    (recoveredBlock185Block214Value9) oilTemplateConfigSource: (recoveredBlock185Block214Value10) fileName: (recoveredBlock185Block214Value12).
    recoveredBlock185Block214Value8
].
            recoveredBlock185PC := 255.
        ].
        recoveredBlock185Step = 255 ifTrue: [
            recoveredBlock185Stack1 := (recoveredBlock185Stack1) at: (recoveredBlock185Stack2) ifAbsentPut: (recoveredBlock185Stack3).
            recoveredBlock185PC := 257.
        ].
        recoveredBlock185Step = 257 ifTrue: [
            recoveredBlock185Result := recoveredBlock185Stack1.
            recoveredBlock185Done := true.
        ].
    ].
    recoveredBlock185Result
].
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

