"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20027e14; bytecode file offset 0x934580"
!SGProjectManager methodsFor: 'recovered'!
addGlobalDefaultLinearFormula
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) sgClass.
    recoveredValue1 := (recoveredValue0) addGlobalDefaultLinearFormula.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002d154; bytecode file offset 0x934580"
!SGProjectManager methodsFor: 'recovered'!
addGlobalDefaultFormula
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) sgClass.
    recoveredValue1 := (recoveredValue0) addGlobalDefaultFormula.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20049eac; bytecode file offset 0x947128"
!SGProjectManager methodsFor: 'recovered'!
unusedPrimitiveVars
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) sgClass.
    recoveredValue1 := (self) unusedClassPrimitiveVarsFor: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20059588; bytecode file offset 0x956284"
!SGProjectManager methodsFor: 'recovered'!
removeClassVar: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) sgClass.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) removeClassVar: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009a058; bytecode file offset 0x997194"
!SGProjectManager methodsFor: 'recovered'!
replaceGlobalFormula: recoveredArg1 with: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) sgClass.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) replaceGlobalFormula: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2009a888; bytecode file offset 0x997194"
!SGProjectManager methodsFor: 'recovered'!
addImplTypeForType: recoveredArg1 modelType: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) sgClass.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) addImplTypeForType: (recoveredValue1) modelType: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2010d074; bytecode file offset 0xa09938"
!SGProjectManager methodsFor: 'recovered'!
getImportsForResolveGlobalsClass: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ('hw') == ('call_80699').
    recoveredValue1 := (recoveredValue0) == ('call_80218').
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) allImportedVariables.
    ^recoveredValue3
! !

"ASDBase.ic method 0x20139500; bytecode file offset 0xa35dbc"
!SGProjectManager methodsFor: 'recovered'!
addInstVarClass: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := super addInstVarClass: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201780fc; bytecode file offset 0xa749e4"
!SGProjectManager methodsFor: 'recovered'!
deleteGlobalVar: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) sgClass.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := (recoveredBlock5Value0) deleteGlobalVar: (recoveredBlock5Value1).
    ^recoveredBlock5Value2
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^nil
! !

"ASDBase.ic method 0x20178110; bytecode file offset 0xa749e4"
!SGProjectManager methodsFor: 'recovered'!
mappedGlobalVarFor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) sgClass.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := (recoveredBlock5Value0) mappedGlobalVarFor: (recoveredBlock5Value1).
    ^recoveredBlock5Value2
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^nil
! !

"ASDBase.ic method 0x20178124; bytecode file offset 0xa749e4"
!SGProjectManager methodsFor: 'recovered'!
deleteGlobalFormula: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) sgClass.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := (recoveredBlock5Value0) deleteGlobalFormula: (recoveredBlock5Value1).
    ^recoveredBlock5Value2
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^nil
! !

"ASDBase.ic method 0x20178150; bytecode file offset 0xa74a10"
!SGProjectManager methodsFor: 'recovered'!
deleteImplType: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) sgClass.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := (recoveredBlock5Value0) deleteImplType: (recoveredBlock5Value1).
    ^recoveredBlock5Value2
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2017b1e8; bytecode file offset 0xa77ab0"
!SGProjectManager methodsFor: 'recovered'!
getUnusedPrimitiveVars
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) unusedPrimitiveVars.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 |
    recoveredBlock7Value0 := (self) sgClass.
    recoveredBlock7Value1 := recoveredBlock7Arg1.
    recoveredBlock7Value2 := (recoveredBlock7Value0) collectReferencesForElement: (recoveredBlock7Value1).
    recoveredBlock7Value3 := (recoveredBlock7Value2) isEmpty.
    recoveredBlock7Value3
].
    recoveredValue3 := (recoveredValue1) select: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x201b6c38; bytecode file offset 0xab34f8"
!SGProjectManager methodsFor: 'recovered'!
mappedGlobalVarFor: recoveredArg1 exportedVariables: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) sgClass.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := recoveredArg2.
    recoveredBlock5Value3 := (recoveredBlock5Value0) mappedGlobalVarFor: (recoveredBlock5Value1) exportedVariables: (recoveredBlock5Value2).
    ^recoveredBlock5Value3
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^nil
! !

"ASDBase.ic method 0x201d1e94; bytecode file offset 0xace764"
!SGProjectManager methodsFor: 'recovered'!
addClassVar: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) label.
    recoveredValue2 := (self) classVariableNames.
    recoveredValue3 := (recoveredValue1) uniqueStringFor: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredLocal1.
    (recoveredValue4) label: (recoveredValue5).
    recoveredValue6 := (self) sgClass.
    recoveredValue7 := recoveredArg1.
    (recoveredValue6) addClassVar: (recoveredValue7).
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (self) sgClass.
    (recoveredValue8) owner: (recoveredValue9).
    recoveredValue10 := recoveredArg1.
    ^recoveredValue10
! !

"ASDBase.ic method 0x201db0c4; bytecode file offset 0xad798c"
!SGProjectManager methodsFor: 'recovered'!
deleteGlobalFormulas: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('Kk') == ('Call_62774').
    recoveredValue1 := (self) sgClass.
    recoveredValue2 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 |
    recoveredBlock11Value0 := recoveredBlock11Arg1.
    recoveredBlock11Value1 := recoveredArg1.
    recoveredBlock11Value2 := (recoveredBlock11Value0) deleteGlobalFormulas: (recoveredBlock11Value1).
    ^recoveredBlock11Value2
].
    (recoveredValue1) ifNotNil: (recoveredValue2).
    ^nil
! !

"ASDBase.ic method 0x201e10d0; bytecode file offset 0xadd9a4"
!SGProjectManager methodsFor: 'recovered'!
createClassVarClass: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) label.
    recoveredValue2 := (self) classVariableNames.
    recoveredValue3 := (recoveredValue1) uniqueStringFor: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := SGVariable.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue4) create: (recoveredValue5) sgClass: (recoveredValue6).
    recoveredLocal2 := recoveredValue7.
    recoveredValue8 := recoveredLocal2.
    (recoveredValue8) setToExported.
    recoveredValue9 := recoveredLocal2.
    recoveredValue10 := (self) sgClass.
    (recoveredValue9) owner: (recoveredValue10).
    recoveredValue11 := recoveredLocal2.
    ^recoveredValue11
! !

"ASDBase.ic method 0x20332c48; bytecode file offset 0xc2f524"
!SGProjectManager methodsFor: 'recovered'!
resolveGlobalsUnresolved: recoveredArg1 dialog: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := ('hw') == ('call_80699').
    recoveredValue1 := (recoveredValue0) == ('call_80218').
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := ('hw') == ('call_89985').
    recoveredValue5 := (self) sgClass.
    recoveredValue6 := [
    | recoveredBlock28Value0 recoveredBlock28Value1 recoveredBlock28Value2 recoveredBlock28Value3 recoveredBlock28Value4 recoveredBlock28Value5 |
    recoveredBlock28Value0 := recoveredArg1.
    recoveredBlock28Value1 := (self) sgClass.
    recoveredBlock28Value2 := recoveredLocal1.
    recoveredBlock28Value3 := recoveredArg2.
    recoveredBlock28Value4 := (self) createAndMapClassVarsFor: (recoveredBlock28Value1) newVars: (recoveredBlock28Value2) dialog: (recoveredBlock28Value3).
    recoveredBlock28Value5 := (recoveredBlock28Value0) addAll: (recoveredBlock28Value4).
    recoveredBlock28Value5
].
    (recoveredValue5) suspendObserving: (recoveredValue6) notify: (false).
    recoveredValue7 := recoveredLocal1.
    ^recoveredValue7
! !

"ASDBase.ic method 0x203b8728; bytecode file offset 0xcb5018"
!SGProjectManager methodsFor: 'recovered'!
unusedClassPrimitiveVarsFor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) allExportedVariablesDictionary.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) allVariables.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) asOrderedCollection.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := [:block280f60ccArg1 | 
    | block280f60ccValue0 block280f60ccValue1 block280f60ccValue2 block280f60ccValue3 block280f60ccValue4 block280f60ccValue5 block280f60ccValue6 block280f60ccValue7 block280f60ccValue8 |
    block280f60ccValue0 := block280f60ccArg1.
    block280f60ccValue1 := (block280f60ccValue0) isDeltaT.
    block280f60ccValue2 := block280f60ccArg1.
    block280f60ccValue3 := (block280f60ccValue2) isSmVariable.
    block280f60ccValue4 := (block280f60ccValue1) | (block280f60ccValue3).
    block280f60ccValue5 := block280f60ccArg1.
    block280f60ccValue6 := (block280f60ccValue5) isPrimitive.
    block280f60ccValue7 := (block280f60ccValue6) not.
    block280f60ccValue8 := (block280f60ccValue4) | (block280f60ccValue7).
    block280f60ccValue8
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) reject: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) allImportedVariables.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := [:recoveredBlock43Arg1 | 
    | recoveredBlock43Local1 recoveredBlock43Stack0 recoveredBlock43Stack1 recoveredBlock43Stack2 recoveredBlock43Stack3 recoveredBlock43Stack4 recoveredBlock43Stack5 recoveredBlock43PC recoveredBlock43Step recoveredBlock43Done recoveredBlock43Result |
    recoveredBlock43Stack0 := self.
    recoveredBlock43PC := 50.
    recoveredBlock43Done := false.
    [recoveredBlock43Done not] whileTrue: [
        recoveredBlock43Step := recoveredBlock43PC.
        recoveredBlock43Step = 50 ifTrue: [
            recoveredBlock43Stack1 := nil.
            recoveredBlock43PC := 51.
        ].
        recoveredBlock43Step = 51 ifTrue: [
            recoveredBlock43Stack2 := self.
            recoveredBlock43PC := 52.
        ].
        recoveredBlock43Step = 52 ifTrue: [
            recoveredBlock43Stack3 := recoveredBlock43Arg1.
            recoveredBlock43PC := 53.
        ].
        recoveredBlock43Step = 53 ifTrue: [
            recoveredBlock43Stack4 := recoveredLocal1.
            recoveredBlock43PC := 56.
        ].
        recoveredBlock43Step = 56 ifTrue: [
            recoveredBlock43Stack2 := (recoveredBlock43Stack2) mappedGlobalVarFor: (recoveredBlock43Stack3) exportedVariables: (recoveredBlock43Stack4).
            recoveredBlock43PC := 58.
        ].
        recoveredBlock43Step = 58 ifTrue: [
            recoveredBlock43Stack3 := recoveredBlock43Stack2.
            recoveredBlock43PC := 59.
        ].
        recoveredBlock43Step = 59 ifTrue: [
            recoveredBlock43Local1 := recoveredBlock43Stack3.
            recoveredBlock43PC := 60.
        ].
        recoveredBlock43Step = 60 ifTrue: [
            (recoveredBlock43Stack2 == nil) ifTrue: [recoveredBlock43PC := 73] ifFalse: [recoveredBlock43PC := 64].
        ].
        recoveredBlock43Step = 64 ifTrue: [
            recoveredBlock43PC := 65.
        ].
        recoveredBlock43Step = 65 ifTrue: [
            recoveredBlock43Stack1 := recoveredLocal2.
            recoveredBlock43PC := 68.
        ].
        recoveredBlock43Step = 68 ifTrue: [
            recoveredBlock43Stack2 := recoveredBlock43Local1.
            recoveredBlock43PC := 69.
        ].
        recoveredBlock43Step = 69 ifTrue: [
            recoveredBlock43Stack3 := [].
            recoveredBlock43PC := 71.
        ].
        recoveredBlock43Step = 71 ifTrue: [
            recoveredBlock43Stack1 := (recoveredBlock43Stack1) remove: (recoveredBlock43Stack2) ifAbsent: (recoveredBlock43Stack3).
            recoveredBlock43PC := 73.
        ].
        recoveredBlock43Step = 73 ifTrue: [
            recoveredBlock43Result := recoveredBlock43Stack1.
            recoveredBlock43Done := true.
        ].
    ].
    recoveredBlock43Result
].
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2041b560; bytecode file offset 0xd17e50"
!SGProjectManager methodsFor: 'recovered'!
deleteUnusedGlobalPrimitiveVars
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getUnusedPrimitiveVars.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280fbe50Arg1 | 
    | block280fbe50Value0 block280fbe50Value1 |
    block280fbe50Value0 := block280fbe50Arg1.
    block280fbe50Value1 := (block280fbe50Value0) isExported.
    block280fbe50Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock27Value0 recoveredBlock27Value1 recoveredBlock27Value2 |
    recoveredBlock27Value0 := recoveredLocal2.
    recoveredBlock27Value1 := [:recoveredBlock27Block37Arg1 | 
    | recoveredBlock27Block37Value0 recoveredBlock27Block37Value1 |
    recoveredBlock27Block37Value0 := recoveredBlock27Block37Arg1.
    recoveredBlock27Block37Value1 := (self) removeClassVar: (recoveredBlock27Block37Value0).
    recoveredBlock27Block37Value1
].
    recoveredBlock27Value2 := (recoveredBlock27Value0) do: (recoveredBlock27Value1).
    recoveredBlock27Value2
].
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) suspendObserving: (recoveredStack1) notify: (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := SGMonitorStreamDummy.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := 'The following globals have been deleted...'.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0) addText: (recoveredStack1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := [:recoveredBlock71Arg1 | 
    | recoveredBlock71Value0 recoveredBlock71Value1 recoveredBlock71Value2 recoveredBlock71Value3 |
    recoveredBlock71Value0 := recoveredLocal1.
    recoveredBlock71Value1 := recoveredBlock71Arg1.
    recoveredBlock71Value2 := (recoveredBlock71Value1) typeLabel.
    recoveredBlock71Value3 := (recoveredBlock71Value0) addText: (recoveredBlock71Value2).
    recoveredBlock71Value3
].
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack0) printReady.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204829f0; bytecode file offset 0xd7f2e4"
!SGProjectManager methodsFor: 'recovered'!
checkIfInMappedVariables: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) allDirectElements.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := [:block28102700Arg1 | 
    | block28102700Local1 block28102700Stack0 block28102700Stack1 block28102700Stack2 block28102700Stack3 block28102700Stack4 block28102700PC block28102700Step block28102700Done block28102700Result |
    block28102700Stack0 := self.
    block28102700PC := 4.
    block28102700Done := false.
    [block28102700Done not] whileTrue: [
        block28102700Step := block28102700PC.
        block28102700Step = 4 ifTrue: [
            block28102700Stack1 := false.
            block28102700PC := 5.
        ].
        block28102700Step = 5 ifTrue: [
            block28102700Stack2 := block28102700Arg1.
            block28102700PC := 6.
        ].
        block28102700Step = 6 ifTrue: [
            block28102700Stack3 := [:block28102724Arg1 | 
    nil
].
            block28102700PC := 8.
        ].
        block28102700Step = 8 ifTrue: [
            block28102700PC := 14.
        ].
        block28102700Step = 14 ifTrue: [
            block28102700Stack2 := (block28102700Stack2) sgClassIfUndefined: (block28102700Stack3).
            block28102700PC := 16.
        ].
        block28102700Step = 16 ifTrue: [
            block28102700Stack3 := block28102700Stack2.
            block28102700PC := 17.
        ].
        block28102700Step = 17 ifTrue: [
            block28102700Local1 := block28102700Stack3.
            block28102700PC := 18.
        ].
        block28102700Step = 18 ifTrue: [
            (block28102700Stack2 == nil) ifTrue: [block28102700PC := 26] ifFalse: [block28102700PC := 22].
        ].
        block28102700Step = 22 ifTrue: [
            block28102700PC := 23.
        ].
        block28102700Step = 23 ifTrue: [
            block28102700Stack1 := block28102700Local1.
            block28102700PC := 24.
        ].
        block28102700Step = 24 ifTrue: [
            block28102700Stack1 := (block28102700Stack1) isAtomicSoftwareComponent.
            block28102700PC := 26.
        ].
        block28102700Step = 26 ifTrue: [
            block28102700Result := block28102700Stack1.
            block28102700Done := true.
        ].
    ].
    block28102700Result
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := [:recoveredBlock51Arg1 | 
    | recoveredBlock51Stack0 recoveredBlock51Stack1 recoveredBlock51Stack2 recoveredBlock51Stack3 recoveredBlock51Stack4 recoveredBlock51PC recoveredBlock51Step recoveredBlock51Done recoveredBlock51Result |
    recoveredBlock51Stack0 := self.
    recoveredBlock51PC := 58.
    recoveredBlock51Done := false.
    [recoveredBlock51Done not] whileTrue: [
        recoveredBlock51Step := recoveredBlock51PC.
        recoveredBlock51Step = 58 ifTrue: [
            recoveredBlock51Stack1 := nil.
            recoveredBlock51PC := 59.
        ].
        recoveredBlock51Step = 59 ifTrue: [
            recoveredBlock51Stack2 := recoveredBlock51Arg1.
            recoveredBlock51PC := 60.
        ].
        recoveredBlock51Step = 60 ifTrue: [
            recoveredBlock51Stack3 := [:block28102748Arg1 | 
    nil
].
            recoveredBlock51PC := 62.
        ].
        recoveredBlock51Step = 62 ifTrue: [
            recoveredBlock51PC := 68.
        ].
        recoveredBlock51Step = 68 ifTrue: [
            recoveredBlock51Stack2 := (recoveredBlock51Stack2) sgClassIfUndefined: (recoveredBlock51Stack3).
            recoveredBlock51PC := 70.
        ].
        recoveredBlock51Step = 70 ifTrue: [
            recoveredBlock51Stack3 := [:recoveredBlock51Block70Arg1 | 
    | recoveredBlock51Block70Local1 recoveredBlock51Block70Stack0 recoveredBlock51Block70Stack1 recoveredBlock51Block70Stack2 recoveredBlock51Block70Stack3 recoveredBlock51Block70Stack4 recoveredBlock51Block70PC recoveredBlock51Block70Step recoveredBlock51Block70Done recoveredBlock51Block70Result |
    recoveredBlock51Block70Stack0 := nil.
    recoveredBlock51Block70PC := 76.
    recoveredBlock51Block70Done := false.
    [recoveredBlock51Block70Done not] whileTrue: [
        recoveredBlock51Block70Step := recoveredBlock51Block70PC.
        recoveredBlock51Block70Step = 76 ifTrue: [
            recoveredBlock51Block70Stack1 := false.
            recoveredBlock51Block70PC := 77.
        ].
        recoveredBlock51Block70Step = 77 ifTrue: [
            recoveredBlock51Block70Stack2 := recoveredBlock51Block70Arg1.
            recoveredBlock51Block70PC := 78.
        ].
        recoveredBlock51Block70Step = 78 ifTrue: [
            recoveredBlock51Block70Stack3 := recoveredArg1.
            recoveredBlock51Block70PC := 81.
        ].
        recoveredBlock51Block70Step = 81 ifTrue: [
            recoveredBlock51Block70Stack2 := (recoveredBlock51Block70Stack2) mappedVariableFor: (recoveredBlock51Block70Stack3).
            recoveredBlock51Block70PC := 83.
        ].
        recoveredBlock51Block70Step = 83 ifTrue: [
            recoveredBlock51Block70Stack3 := recoveredBlock51Block70Stack2.
            recoveredBlock51Block70PC := 84.
        ].
        recoveredBlock51Block70Step = 84 ifTrue: [
            recoveredBlock51Block70Local1 := recoveredBlock51Block70Stack3.
            recoveredBlock51Block70PC := 85.
        ].
        recoveredBlock51Block70Step = 85 ifTrue: [
            (recoveredBlock51Block70Stack2 == nil) ifTrue: [recoveredBlock51Block70PC := 110] ifFalse: [recoveredBlock51Block70PC := 88].
        ].
        recoveredBlock51Block70Step = 88 ifTrue: [
            recoveredBlock51Block70PC := 89.
        ].
        recoveredBlock51Block70Step = 89 ifTrue: [
            recoveredBlock51Block70Stack1 := false.
            recoveredBlock51Block70PC := 90.
        ].
        recoveredBlock51Block70Step = 90 ifTrue: [
            recoveredBlock51Block70Stack2 := recoveredBlock51Block70Arg1.
            recoveredBlock51Block70PC := 91.
        ].
        recoveredBlock51Block70Step = 91 ifTrue: [
            recoveredBlock51Block70Stack3 := recoveredBlock51Block70Local1.
            recoveredBlock51Block70PC := 92.
        ].
        recoveredBlock51Block70Step = 92 ifTrue: [
            recoveredBlock51Block70Stack3 := (recoveredBlock51Block70Stack3) aliasName.
            recoveredBlock51Block70PC := 94.
        ].
        recoveredBlock51Block70Step = 94 ifTrue: [
            recoveredBlock51Block70Stack2 := (recoveredBlock51Block70Stack2) getModelPathFor: (recoveredBlock51Block70Stack3).
            recoveredBlock51Block70PC := 96.
        ].
        recoveredBlock51Block70Step = 96 ifTrue: [
            recoveredBlock51Block70Stack3 := recoveredBlock51Block70Stack2.
            recoveredBlock51Block70PC := 97.
        ].
        recoveredBlock51Block70Step = 97 ifTrue: [
            recoveredLocal1 := recoveredBlock51Block70Stack3.
            recoveredBlock51Block70PC := 100.
        ].
        recoveredBlock51Block70Step = 100 ifTrue: [
            (recoveredBlock51Block70Stack2 == nil) ifTrue: [recoveredBlock51Block70PC := 110] ifFalse: [recoveredBlock51Block70PC := 104].
        ].
        recoveredBlock51Block70Step = 104 ifTrue: [
            recoveredBlock51Block70PC := 105.
        ].
        recoveredBlock51Block70Step = 105 ifTrue: [
            recoveredBlock51Block70Stack1 := recoveredLocal1.
            recoveredBlock51Block70PC := 108.
        ].
        recoveredBlock51Block70Step = 108 ifTrue: [
            recoveredBlock51Block70Stack1 := (recoveredBlock51Block70Stack1) notEmpty.
            recoveredBlock51Block70PC := 110.
        ].
        recoveredBlock51Block70Step = 110 ifTrue: [
            recoveredBlock51Block70Result := recoveredBlock51Block70Stack1.
            recoveredBlock51Block70Done := true.
        ].
    ].
    recoveredBlock51Block70Result
].
            recoveredBlock51PC := 111.
        ].
        recoveredBlock51Step = 111 ifTrue: [
            recoveredBlock51Stack2 := (recoveredBlock51Stack2) ifNotNil: (recoveredBlock51Stack3).
            recoveredBlock51PC := 113.
        ].
        recoveredBlock51Step = 113 ifTrue: [
            (recoveredBlock51Stack2) ifTrue: [recoveredBlock51PC := 116] ifFalse: [recoveredBlock51PC := 123].
        ].
        recoveredBlock51Step = 116 ifTrue: [
            recoveredBlock51PC := 117.
        ].
        recoveredBlock51Step = 117 ifTrue: [
            recoveredBlock51Stack1 := recoveredLocal1.
            recoveredBlock51PC := 120.
        ].
        recoveredBlock51Step = 120 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) last.
            recoveredBlock51PC := 122.
        ].
        recoveredBlock51Step = 122 ifTrue: [
            ^recoveredBlock51Stack1
        ].
        recoveredBlock51Step = 123 ifTrue: [
            recoveredBlock51Result := recoveredBlock51Stack1.
            recoveredBlock51Done := true.
        ].
    ].
    recoveredBlock51Result
].
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20495020; bytecode file offset 0xd9191c"
!SGProjectManager methodsFor: 'recovered'!
checkIfInMappedParameter: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'call_90440'.
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
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) allDirectElements.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := [:block28103900Arg1 | 
    | block28103900Local1 block28103900Stack0 block28103900Stack1 block28103900Stack2 block28103900Stack3 block28103900Stack4 block28103900PC block28103900Step block28103900Done block28103900Result |
    block28103900Stack0 := self.
    block28103900PC := 4.
    block28103900Done := false.
    [block28103900Done not] whileTrue: [
        block28103900Step := block28103900PC.
        block28103900Step = 4 ifTrue: [
            block28103900Stack1 := false.
            block28103900PC := 5.
        ].
        block28103900Step = 5 ifTrue: [
            block28103900Stack2 := block28103900Arg1.
            block28103900PC := 6.
        ].
        block28103900Step = 6 ifTrue: [
            block28103900Stack3 := [:block28103924Arg1 | 
    nil
].
            block28103900PC := 8.
        ].
        block28103900Step = 8 ifTrue: [
            block28103900PC := 14.
        ].
        block28103900Step = 14 ifTrue: [
            block28103900Stack2 := (block28103900Stack2) sgClassIfUndefined: (block28103900Stack3).
            block28103900PC := 16.
        ].
        block28103900Step = 16 ifTrue: [
            block28103900Stack3 := block28103900Stack2.
            block28103900PC := 17.
        ].
        block28103900Step = 17 ifTrue: [
            block28103900Local1 := block28103900Stack3.
            block28103900PC := 18.
        ].
        block28103900Step = 18 ifTrue: [
            (block28103900Stack2 == nil) ifTrue: [block28103900PC := 26] ifFalse: [block28103900PC := 22].
        ].
        block28103900Step = 22 ifTrue: [
            block28103900PC := 23.
        ].
        block28103900Step = 23 ifTrue: [
            block28103900Stack1 := block28103900Local1.
            block28103900PC := 24.
        ].
        block28103900Step = 24 ifTrue: [
            block28103900Stack1 := (block28103900Stack1) isAtomicSoftwareComponent.
            block28103900PC := 26.
        ].
        block28103900Step = 26 ifTrue: [
            block28103900Result := block28103900Stack1.
            block28103900Done := true.
        ].
    ].
    block28103900Result
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := [:recoveredBlock57Arg1 | 
    | recoveredBlock57Stack0 recoveredBlock57Stack1 recoveredBlock57Stack2 recoveredBlock57Stack3 recoveredBlock57Stack4 recoveredBlock57PC recoveredBlock57Step recoveredBlock57Done recoveredBlock57Result |
    recoveredBlock57Stack0 := self.
    recoveredBlock57PC := 64.
    recoveredBlock57Done := false.
    [recoveredBlock57Done not] whileTrue: [
        recoveredBlock57Step := recoveredBlock57PC.
        recoveredBlock57Step = 64 ifTrue: [
            recoveredBlock57Stack1 := nil.
            recoveredBlock57PC := 65.
        ].
        recoveredBlock57Step = 65 ifTrue: [
            recoveredBlock57Stack2 := recoveredBlock57Arg1.
            recoveredBlock57PC := 66.
        ].
        recoveredBlock57Step = 66 ifTrue: [
            recoveredBlock57Stack3 := [:block28103948Arg1 | 
    nil
].
            recoveredBlock57PC := 68.
        ].
        recoveredBlock57Step = 68 ifTrue: [
            recoveredBlock57PC := 74.
        ].
        recoveredBlock57Step = 74 ifTrue: [
            recoveredBlock57Stack2 := (recoveredBlock57Stack2) sgClassIfUndefined: (recoveredBlock57Stack3).
            recoveredBlock57PC := 76.
        ].
        recoveredBlock57Step = 76 ifTrue: [
            recoveredBlock57Stack3 := [:recoveredBlock57Block76Arg1 | 
    | recoveredBlock57Block76Local1 recoveredBlock57Block76Stack0 recoveredBlock57Block76Stack1 recoveredBlock57Block76Stack2 recoveredBlock57Block76Stack3 recoveredBlock57Block76Stack4 recoveredBlock57Block76PC recoveredBlock57Block76Step recoveredBlock57Block76Done recoveredBlock57Block76Result |
    recoveredBlock57Block76Stack0 := nil.
    recoveredBlock57Block76PC := 82.
    recoveredBlock57Block76Done := false.
    [recoveredBlock57Block76Done not] whileTrue: [
        recoveredBlock57Block76Step := recoveredBlock57Block76PC.
        recoveredBlock57Block76Step = 82 ifTrue: [
            recoveredBlock57Block76Stack1 := false.
            recoveredBlock57Block76PC := 83.
        ].
        recoveredBlock57Block76Step = 83 ifTrue: [
            recoveredBlock57Block76Stack2 := recoveredBlock57Block76Arg1.
            recoveredBlock57Block76PC := 84.
        ].
        recoveredBlock57Block76Step = 84 ifTrue: [
            recoveredBlock57Block76Stack3 := recoveredArg1.
            recoveredBlock57Block76PC := 87.
        ].
        recoveredBlock57Block76Step = 87 ifTrue: [
            recoveredBlock57Block76Stack2 := (recoveredBlock57Block76Stack2) mappedParameterFor: (recoveredBlock57Block76Stack3).
            recoveredBlock57Block76PC := 89.
        ].
        recoveredBlock57Block76Step = 89 ifTrue: [
            recoveredBlock57Block76Stack3 := recoveredBlock57Block76Stack2.
            recoveredBlock57Block76PC := 90.
        ].
        recoveredBlock57Block76Step = 90 ifTrue: [
            recoveredBlock57Block76Local1 := recoveredBlock57Block76Stack3.
            recoveredBlock57Block76PC := 91.
        ].
        recoveredBlock57Block76Step = 91 ifTrue: [
            (recoveredBlock57Block76Stack2 == nil) ifTrue: [recoveredBlock57Block76PC := 116] ifFalse: [recoveredBlock57Block76PC := 94].
        ].
        recoveredBlock57Block76Step = 94 ifTrue: [
            recoveredBlock57Block76PC := 95.
        ].
        recoveredBlock57Block76Step = 95 ifTrue: [
            recoveredBlock57Block76Stack1 := false.
            recoveredBlock57Block76PC := 96.
        ].
        recoveredBlock57Block76Step = 96 ifTrue: [
            recoveredBlock57Block76Stack2 := recoveredBlock57Block76Arg1.
            recoveredBlock57Block76PC := 97.
        ].
        recoveredBlock57Block76Step = 97 ifTrue: [
            recoveredBlock57Block76Stack3 := recoveredBlock57Block76Local1.
            recoveredBlock57Block76PC := 98.
        ].
        recoveredBlock57Block76Step = 98 ifTrue: [
            recoveredBlock57Block76Stack3 := (recoveredBlock57Block76Stack3) aliasName.
            recoveredBlock57Block76PC := 100.
        ].
        recoveredBlock57Block76Step = 100 ifTrue: [
            recoveredBlock57Block76Stack2 := (recoveredBlock57Block76Stack2) getModelPathFor: (recoveredBlock57Block76Stack3).
            recoveredBlock57Block76PC := 102.
        ].
        recoveredBlock57Block76Step = 102 ifTrue: [
            recoveredBlock57Block76Stack3 := recoveredBlock57Block76Stack2.
            recoveredBlock57Block76PC := 103.
        ].
        recoveredBlock57Block76Step = 103 ifTrue: [
            recoveredLocal1 := recoveredBlock57Block76Stack3.
            recoveredBlock57Block76PC := 106.
        ].
        recoveredBlock57Block76Step = 106 ifTrue: [
            (recoveredBlock57Block76Stack2 == nil) ifTrue: [recoveredBlock57Block76PC := 116] ifFalse: [recoveredBlock57Block76PC := 110].
        ].
        recoveredBlock57Block76Step = 110 ifTrue: [
            recoveredBlock57Block76PC := 111.
        ].
        recoveredBlock57Block76Step = 111 ifTrue: [
            recoveredBlock57Block76Stack1 := recoveredLocal1.
            recoveredBlock57Block76PC := 114.
        ].
        recoveredBlock57Block76Step = 114 ifTrue: [
            recoveredBlock57Block76Stack1 := (recoveredBlock57Block76Stack1) notEmpty.
            recoveredBlock57Block76PC := 116.
        ].
        recoveredBlock57Block76Step = 116 ifTrue: [
            recoveredBlock57Block76Result := recoveredBlock57Block76Stack1.
            recoveredBlock57Block76Done := true.
        ].
    ].
    recoveredBlock57Block76Result
].
            recoveredBlock57PC := 117.
        ].
        recoveredBlock57Step = 117 ifTrue: [
            recoveredBlock57Stack2 := (recoveredBlock57Stack2) ifNotNil: (recoveredBlock57Stack3).
            recoveredBlock57PC := 119.
        ].
        recoveredBlock57Step = 119 ifTrue: [
            (recoveredBlock57Stack2) ifTrue: [recoveredBlock57PC := 122] ifFalse: [recoveredBlock57PC := 129].
        ].
        recoveredBlock57Step = 122 ifTrue: [
            recoveredBlock57PC := 123.
        ].
        recoveredBlock57Step = 123 ifTrue: [
            recoveredBlock57Stack1 := recoveredLocal1.
            recoveredBlock57PC := 126.
        ].
        recoveredBlock57Step = 126 ifTrue: [
            recoveredBlock57Stack1 := (recoveredBlock57Stack1) last.
            recoveredBlock57PC := 128.
        ].
        recoveredBlock57Step = 128 ifTrue: [
            ^recoveredBlock57Stack1
        ].
        recoveredBlock57Step = 129 ifTrue: [
            recoveredBlock57Result := recoveredBlock57Stack1.
            recoveredBlock57Done := true.
        ].
    ].
    recoveredBlock57Result
].
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2055ff60; bytecode file offset 0xe5c884"
!SGProjectManager methodsFor: 'recovered'!
createAndMapClassVarsFor: recoveredArg1 newVars: recoveredArg2 dialog: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'call_80699'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := 'call_80218'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 'call_82316'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := Set.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) allExportedVariablesDictionary.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) allVariables.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := [:block28110704Arg1 | 
    | block28110704Value0 block28110704Value1 |
    block28110704Value0 := block28110704Arg1.
    block28110704Value1 := (block28110704Value0) elementName.
    block28110704Value1
].
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSet.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) getImportsForResolveGlobalsClass: (recoveredStack1).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := [:recoveredBlock65Arg1 :recoveredBlock65Arg2 | 
    | recoveredBlock65Local1 recoveredBlock65Stack0 recoveredBlock65Stack1 recoveredBlock65Stack2 recoveredBlock65Stack3 recoveredBlock65Stack4 recoveredBlock65Stack5 recoveredBlock65Stack6 recoveredBlock65PC recoveredBlock65Step recoveredBlock65Done recoveredBlock65Result |
    recoveredBlock65Stack0 := self.
    recoveredBlock65PC := 72.
    recoveredBlock65Done := false.
    [recoveredBlock65Done not] whileTrue: [
        recoveredBlock65Step := recoveredBlock65PC.
        recoveredBlock65Step = 72 ifTrue: [
            recoveredBlock65Stack1 := recoveredArg3.
            recoveredBlock65PC := 75.
        ].
        recoveredBlock65Step = 75 ifTrue: [
            (recoveredBlock65Stack1 == nil) ifTrue: [recoveredBlock65PC := 94] ifFalse: [recoveredBlock65PC := 78].
        ].
        recoveredBlock65Step = 78 ifTrue: [
            recoveredBlock65Stack1 := recoveredArg3.
            recoveredBlock65PC := 81.
        ].
        recoveredBlock65Step = 81 ifTrue: [
            recoveredBlock65Stack1 := (recoveredBlock65Stack1) cancelled.
            recoveredBlock65PC := 83.
        ].
        recoveredBlock65Step = 83 ifTrue: [
            (recoveredBlock65Stack1) ifTrue: [recoveredBlock65PC := 86] ifFalse: [recoveredBlock65PC := 94].
        ].
        recoveredBlock65Step = 86 ifTrue: [
            recoveredBlock65Stack1 := true.
            recoveredBlock65PC := 87.
        ].
        recoveredBlock65Step = 87 ifTrue: [
            recoveredBlock65Stack2 := recoveredBlock65Stack1.
            recoveredBlock65PC := 88.
        ].
        recoveredBlock65Step = 88 ifTrue: [
            recoveredLocal3 := recoveredBlock65Stack2.
            recoveredBlock65PC := 91.
        ].
        recoveredBlock65Step = 91 ifTrue: [
            recoveredBlock65PC := 224.
        ].
        recoveredBlock65Step = 94 ifTrue: [
            recoveredBlock65Stack1 := nil.
            recoveredBlock65PC := 95.
        ].
        recoveredBlock65Step = 95 ifTrue: [
            recoveredBlock65Stack2 := recoveredLocal3.
            recoveredBlock65PC := 98.
        ].
        recoveredBlock65Step = 98 ifTrue: [
            (recoveredBlock65Stack2) ifTrue: [recoveredBlock65PC := 224] ifFalse: [recoveredBlock65PC := 102].
        ].
        recoveredBlock65Step = 102 ifTrue: [
            recoveredBlock65PC := 103.
        ].
        recoveredBlock65Step = 103 ifTrue: [
            recoveredBlock65Stack1 := recoveredArg3.
            recoveredBlock65PC := 106.
        ].
        recoveredBlock65Step = 106 ifTrue: [
            (recoveredBlock65Stack1 == nil) ifTrue: [recoveredBlock65PC := 125] ifFalse: [recoveredBlock65PC := 110].
        ].
        recoveredBlock65Step = 110 ifTrue: [
            recoveredBlock65Stack1 := recoveredArg3.
            recoveredBlock65PC := 113.
        ].
        recoveredBlock65Step = 113 ifTrue: [
            recoveredBlock65Stack2 := recoveredBlock65Arg2.
            recoveredBlock65PC := 116.
        ].
        recoveredBlock65Step = 116 ifTrue: [
            recoveredBlock65Stack3 := recoveredLocal6.
            recoveredBlock65PC := 119.
        ].
        recoveredBlock65Step = 119 ifTrue: [
            recoveredBlock65Stack3 := (recoveredBlock65Stack3) size.
            recoveredBlock65PC := 121.
        ].
        recoveredBlock65Step = 121 ifTrue: [
            recoveredBlock65Stack2 := (recoveredBlock65Stack2) / (recoveredBlock65Stack3).
            recoveredBlock65PC := 123.
        ].
        recoveredBlock65Step = 123 ifTrue: [
            (recoveredBlock65Stack1) fractionComplete: (recoveredBlock65Stack2).
            recoveredBlock65PC := 125.
        ].
        recoveredBlock65Step = 125 ifTrue: [
            recoveredBlock65Stack1 := self.
            recoveredBlock65PC := 126.
        ].
        recoveredBlock65Step = 126 ifTrue: [
            recoveredBlock65Stack2 := recoveredBlock65Arg1.
            recoveredBlock65PC := 129.
        ].
        recoveredBlock65Step = 129 ifTrue: [
            recoveredBlock65Stack3 := recoveredLocal4.
            recoveredBlock65PC := 132.
        ].
        recoveredBlock65Step = 132 ifTrue: [
            recoveredBlock65Stack4 := recoveredLocal2.
            recoveredBlock65PC := 135.
        ].
        recoveredBlock65Step = 135 ifTrue: [
            recoveredBlock65Stack5 := recoveredArg2.
            recoveredBlock65PC := 138.
        ].
        recoveredBlock65Step = 138 ifTrue: [
            recoveredBlock65Stack1 := (recoveredBlock65Stack1) getOrCreateGlobalVarForImportVar: (recoveredBlock65Stack2) exportedVariables: (recoveredBlock65Stack3) allVariableNames: (recoveredBlock65Stack4) newVars: (recoveredBlock65Stack5).
            recoveredBlock65PC := 141.
        ].
        recoveredBlock65Step = 141 ifTrue: [
            recoveredBlock65Stack2 := recoveredBlock65Stack1.
            recoveredBlock65PC := 142.
        ].
        recoveredBlock65Step = 142 ifTrue: [
            recoveredBlock65Local1 := recoveredBlock65Stack2.
            recoveredBlock65PC := 145.
        ].
        recoveredBlock65Step = 145 ifTrue: [
            recoveredBlock65Stack1 := (recoveredBlock65Stack1) isError.
            recoveredBlock65PC := 147.
        ].
        recoveredBlock65Step = 147 ifTrue: [
            (recoveredBlock65Stack1) ifTrue: [recoveredBlock65PC := 150] ifFalse: [recoveredBlock65PC := 162].
        ].
        recoveredBlock65Step = 150 ifTrue: [
            recoveredBlock65Stack1 := recoveredLocal5.
            recoveredBlock65PC := 153.
        ].
        recoveredBlock65Step = 153 ifTrue: [
            recoveredBlock65Stack2 := recoveredBlock65Local1.
            recoveredBlock65PC := 156.
        ].
        recoveredBlock65Step = 156 ifTrue: [
            recoveredBlock65Stack1 := (recoveredBlock65Stack1) add: (recoveredBlock65Stack2).
            recoveredBlock65PC := 158.
        ].
        recoveredBlock65Step = 158 ifTrue: [
            recoveredBlock65PC := 220.
        ].
        recoveredBlock65Step = 162 ifTrue: [
            recoveredBlock65Stack1 := recoveredLocal4.
            recoveredBlock65PC := 165.
        ].
        recoveredBlock65Step = 165 ifTrue: [
            recoveredBlock65Stack2 := recoveredBlock65Local1.
            recoveredBlock65PC := 168.
        ].
        recoveredBlock65Step = 168 ifTrue: [
            recoveredBlock65Stack2 := (recoveredBlock65Stack2) defaultGlobalLabel.
            recoveredBlock65PC := 170.
        ].
        recoveredBlock65Step = 170 ifTrue: [
            recoveredBlock65Stack3 := [
    | recoveredBlock65Block170Value0 recoveredBlock65Block170Value1 recoveredBlock65Block170Value2 recoveredBlock65Block170Value3 recoveredBlock65Block170Value4 recoveredBlock65Block170Value5 recoveredBlock65Block170Value6 |
    recoveredBlock65Block170Value0 := recoveredLocal4.
    recoveredBlock65Block170Value1 := recoveredBlock65Local1.
    recoveredBlock65Block170Value2 := (recoveredBlock65Block170Value1) defaultGlobalLabel.
    recoveredBlock65Block170Value3 := OrderedCollection.
    recoveredBlock65Block170Value4 := recoveredBlock65Local1.
    recoveredBlock65Block170Value5 := (recoveredBlock65Block170Value3) with: (recoveredBlock65Block170Value4).
    recoveredBlock65Block170Value6 := (recoveredBlock65Block170Value0) at: (recoveredBlock65Block170Value2) put: (recoveredBlock65Block170Value5).
    recoveredBlock65Block170Value6
].
            recoveredBlock65PC := 194.
        ].
        recoveredBlock65Step = 194 ifTrue: [
            recoveredBlock65Stack4 := [:recoveredBlock65Block194Arg1 | 
    | recoveredBlock65Block194Value0 recoveredBlock65Block194Value1 recoveredBlock65Block194Value2 recoveredBlock65Block194Value3 recoveredBlock65Block194Value4 recoveredBlock65Block194Value5 |
    recoveredBlock65Block194Value0 := recoveredLocal2.
    recoveredBlock65Block194Value1 := recoveredBlock65Local1.
    recoveredBlock65Block194Value2 := (recoveredBlock65Block194Value1) defaultGlobalLabel.
    (recoveredBlock65Block194Value0) add: (recoveredBlock65Block194Value2).
    recoveredBlock65Block194Value3 := recoveredBlock65Block194Arg1.
    recoveredBlock65Block194Value4 := recoveredBlock65Local1.
    recoveredBlock65Block194Value5 := (recoveredBlock65Block194Value3) add: (recoveredBlock65Block194Value4).
    recoveredBlock65Block194Value5
].
            recoveredBlock65PC := 217.
        ].
        recoveredBlock65Step = 217 ifTrue: [
            recoveredBlock65Stack1 := (recoveredBlock65Stack1) at: (recoveredBlock65Stack2) ifAbsent: (recoveredBlock65Stack3) ifPresent: (recoveredBlock65Stack4).
            recoveredBlock65PC := 220.
        ].
        recoveredBlock65Step = 220 ifTrue: [
            recoveredBlock65Stack2 := nil.
            recoveredBlock65PC := 221.
        ].
        recoveredBlock65Step = 221 ifTrue: [
            recoveredBlock65Local1 := recoveredBlock65Stack2.
            recoveredBlock65PC := 224.
        ].
        recoveredBlock65Step = 224 ifTrue: [
            recoveredBlock65Result := recoveredBlock65Stack1.
            recoveredBlock65Done := true.
        ].
    ].
    recoveredBlock65Result
].
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            (recoveredStack0) doWithIndex: (recoveredStack1).
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack0 := (recoveredStack0) asArray.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205e7598; bytecode file offset 0xee3f20"
!SGProjectManager methodsFor: 'recovered'!
getOrCreateGlobalVarForImportVar: recoveredArg1 exportedVariables: recoveredArg2 allVariableNames: recoveredArg3 newVars: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'call_80699'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := 'call_80218'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 'call_82316'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Value0 recoveredBlock19Value1 recoveredBlock19Value2 recoveredBlock19Value3 |
    recoveredBlock19Value0 := ASDResolveGlobalsError.
    recoveredBlock19Value1 := (recoveredBlock19Value0) create: ('missing component info').
    recoveredBlock19Value2 := recoveredBlock19Value1.
    recoveredBlock19Value3 := recoveredArg1.
    (recoveredBlock19Value2) import: (recoveredBlock19Value3).
    ^recoveredBlock19Value1
].
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClassIfUndefined: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) mappedGlobalVarFor: (recoveredStack1) exportedVariables: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkIfInMappedParameter: (recoveredStack1).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkIfInMappedVariables: (recoveredStack1).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := (recoveredStack0) newTypeForExport.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 125] ifFalse: [recoveredPC := 112].
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := ASDResolveGlobalsError.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := 'type error'.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := (recoveredStack0) create: (recoveredStack1).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            (recoveredStack1) import: (recoveredStack2).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := [:recoveredBlock128Arg1 | 
    | recoveredBlock128Value0 recoveredBlock128Value1 recoveredBlock128Value2 recoveredBlock128Value3 |
    recoveredBlock128Value0 := recoveredBlock128Arg1.
    recoveredBlock128Value1 := recoveredArg1.
    recoveredBlock128Value2 := (recoveredBlock128Value1) defaultGlobalLabel.
    recoveredBlock128Value3 := (recoveredBlock128Value0) equalsIgnoringCase: (recoveredBlock128Value2).
    recoveredBlock128Value3
].
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack1 := [:recoveredBlock147Arg1 | 
    | recoveredBlock147Value0 recoveredBlock147Value1 recoveredBlock147Value2 recoveredBlock147Value3 recoveredBlock147Value4 recoveredBlock147Value5 recoveredBlock147Value6 recoveredBlock147Value7 recoveredBlock147Value8 |
    recoveredBlock147Value0 := ASDResolveGlobalsError.
    recoveredBlock147Value1 := (recoveredBlock147Value0) create: ('name conflict').
    recoveredBlock147Value2 := recoveredBlock147Value1.
    recoveredBlock147Value3 := recoveredArg1.
    (recoveredBlock147Value2) import: (recoveredBlock147Value3).
    recoveredBlock147Value4 := recoveredBlock147Value1.
    recoveredBlock147Value5 := recoveredArg2.
    recoveredBlock147Value6 := recoveredBlock147Arg1.
    recoveredBlock147Value7 := [].
    recoveredBlock147Value8 := (recoveredBlock147Value5) at: (recoveredBlock147Value6) ifAbsent: (recoveredBlock147Value7).
    (recoveredBlock147Value4) incompatibleExports: (recoveredBlock147Value8).
    ^recoveredBlock147Value1
].
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack0 := (recoveredStack0) createClassVarClass: (recoveredStack1).
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 207] ifFalse: [recoveredPC := 194].
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack0 := ASDResolveGlobalsError.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack1 := 'unknown error'.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack0 := (recoveredStack0) create: (recoveredStack1).
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            (recoveredStack1) import: (recoveredStack2).
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultGlobalLabel.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            (recoveredStack0) label: (recoveredStack1).
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSystemConstant.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 226] ifFalse: [recoveredPC := 234].
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            (recoveredStack1) setNonVolatile.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            (recoveredStack0) setSystemConstant.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack0 := (recoveredStack0) isConstant.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 242] ifFalse: [recoveredPC := 250].
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            (recoveredStack1) setNonVolatile.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            (recoveredStack0) setConstant.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack1 := (recoveredStack1) isParameter.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            (recoveredStack0) setParameter: (recoveredStack1).
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMessage.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 268] ifFalse: [recoveredPC := 279].
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            (recoveredStack1) setMessage.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            (recoveredStack1) setSend.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            (recoveredStack0) setReceive.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCalibrationRead.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 288] ifFalse: [recoveredPC := 293].
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            (recoveredStack0) setCalibrationRead.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCalibrationWrite.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 302] ifFalse: [recoveredPC := 307].
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            (recoveredStack0) setCalibrationWrite.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack0 := (recoveredStack0) isReference.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 316] ifFalse: [recoveredPC := 321].
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            (recoveredStack0) setReference.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack0 := (recoveredStack0) isWrite.
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 335] ifFalse: [recoveredPC := 330].
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            (recoveredStack0) clearWrite.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRead.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 349] ifFalse: [recoveredPC := 344].
        ].
        recoveredStep = 344 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            (recoveredStack0) clearRead.
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            (recoveredStack0) addClassVar: (recoveredStack1).
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultGlobalLabel.
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredStack2 := OrderedCollection.
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 368.
        ].
        recoveredStep = 368 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 374.
        ].
        recoveredStep = 374 ifTrue: [
            recoveredStack1 := 'Call_64917'.
            recoveredPC := 376.
        ].
        recoveredStep = 376 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            recoveredPC := 378.
        ].
        recoveredStep = 378 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 381.
        ].
        recoveredStep = 381 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 384.
        ].
        recoveredStep = 384 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 386.
        ].
        recoveredStep = 386 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

