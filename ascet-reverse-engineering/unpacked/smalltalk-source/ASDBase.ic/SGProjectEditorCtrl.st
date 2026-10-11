"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20007d3c; bytecode file offset 0x908be4"
!SGProjectEditorCtrl methodsFor: 'recovered'!
projectMakeConfig
    | recoveredValue0 |
    recoveredValue0 := (self) consistentMakeConfig.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20009800; bytecode file offset 0x908be4"
!SGProjectEditorCtrl methodsFor: 'recovered'!
currentSpecification
    | recoveredValue0 |
    recoveredValue0 := (self) specification.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000de30; bytecode file offset 0x90ab8c"
!SGProjectEditorCtrl methodsFor: 'recovered'!
currentProjectBindingConsistent: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) item.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20017d20; bytecode file offset 0x92209c"
!SGProjectEditorCtrl methodsFor: 'recovered'!
selectedGlobalVars
    ^#()
! !

"ASDBase.ic method 0x20028774; bytecode file offset 0x934580"
!SGProjectEditorCtrl methodsFor: 'recovered'!
classMakeConfig
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) item.
    recoveredValue1 := (recoveredValue0) createClassMakeConfig.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20029824; bytecode file offset 0x934580"
!SGProjectEditorCtrl methodsFor: 'recovered'!
exportedVariables
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) item.
    recoveredValue1 := (recoveredValue0) exportedBasicVariables.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002e944; bytecode file offset 0x934580"
!SGProjectEditorCtrl methodsFor: 'recovered'!
selectedImplementation
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) makeConfig.
    recoveredValue1 := (recoveredValue0) implementation.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20030214; bytecode file offset 0x934580"
!SGProjectEditorCtrl methodsFor: 'recovered'!
classVariableNames
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) datamodelManager.
    recoveredValue1 := (recoveredValue0) classVariableNames.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20031734; bytecode file offset 0x934580"
!SGProjectEditorCtrl methodsFor: 'recovered'!
osLogic
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) item.
    recoveredValue1 := (recoveredValue0) osLogicForCurrentTarget.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200342f4; bytecode file offset 0x934580"
!SGProjectEditorCtrl methodsFor: 'recovered'!
globalFormulas
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) item.
    recoveredValue1 := (recoveredValue0) globalFormulas.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20034864; bytecode file offset 0x934580"
!SGProjectEditorCtrl methodsFor: 'recovered'!
getEHooksConfiguration
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) item.
    recoveredValue1 := (recoveredValue0) eHooksConfiguration.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20035804; bytecode file offset 0x934580"
!SGProjectEditorCtrl methodsFor: 'recovered'!
implTypes
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) item.
    recoveredValue1 := (recoveredValue0) implTypes.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004172c; bytecode file offset 0x93e1a0"
!SGProjectEditorCtrl methodsFor: 'recovered'!
addGlobalDefaultFormula
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := datamodelManager.
    recoveredValue1 := (recoveredValue0) addGlobalDefaultFormula.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20041768; bytecode file offset 0x93e1a0"
!SGProjectEditorCtrl methodsFor: 'recovered'!
addGlobalDefaultLinearFormula
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := datamodelManager.
    recoveredValue1 := (recoveredValue0) addGlobalDefaultLinearFormula.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20049e0c; bytecode file offset 0x947128"
!SGProjectEditorCtrl methodsFor: 'recovered'!
checkAllProjectFileDirectories
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) sortedProjectFiles.
    recoveredValue1 := (self) checkAllProjectFileDirectoriesFor: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20049e3c; bytecode file offset 0x947128"
!SGProjectEditorCtrl methodsFor: 'recovered'!
checkAllSelectedProjectFileDirectories
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) selectedProjectFiles.
    recoveredValue1 := (self) checkAllProjectFileDirectoriesFor: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004a30c; bytecode file offset 0x947128"
!SGProjectEditorCtrl methodsFor: 'recovered'!
getAllProjectFiles
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) sortedProjectFiles.
    recoveredValue1 := (self) getProjectFiles: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200562d4; bytecode file offset 0x952c58"
!SGProjectEditorCtrl methodsFor: 'recovered'!
setScopeForVariable: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) setToExported.
    ^self
! !

"ASDBase.ic method 0x20058098; bytecode file offset 0x956284"
!SGProjectEditorCtrl methodsFor: 'recovered'!
implTypeNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) item.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) implTypeNamed: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20058cb8; bytecode file offset 0x956284"
!SGProjectEditorCtrl methodsFor: 'recovered'!
addClassVar: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) datamodelManager.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) addVar: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2006f718; bytecode file offset 0x96c1f4"
!SGProjectEditorCtrl methodsFor: 'recovered'!
selectedFormulas
    | recoveredValue0 |
    recoveredValue0 := selectedFormulas.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006faa0; bytecode file offset 0x96c42c"
!SGProjectEditorCtrl methodsFor: 'recovered'!
selectedProjectFiles
    | recoveredValue0 |
    recoveredValue0 := selectedProjectFiles.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006fbf8; bytecode file offset 0x96c6ac"
!SGProjectEditorCtrl methodsFor: 'recovered'!
selectedImplTypes
    | recoveredValue0 |
    recoveredValue0 := selectedImplTypes.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20082194; bytecode file offset 0x97eb24"
!SGProjectEditorCtrl methodsFor: 'recovered'!
createClassVarClass: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := datamodelManager.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) createClassVarClass: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200821ac; bytecode file offset 0x97eb24"
!SGProjectEditorCtrl methodsFor: 'recovered'!
mappedGlobalVarFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := datamodelManager.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) mappedGlobalVarFor: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200863dc; bytecode file offset 0x982e18"
!SGProjectEditorCtrl methodsFor: 'recovered'!
copyProjectFilesToCurrentTargetFromTargetType: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) item.
    recoveredValue1 := (recoveredValue0) specification.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) copyProjectFilesToCurrentTargetFromTargetType: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20086558; bytecode file offset 0x982e18"
!SGProjectEditorCtrl methodsFor: 'recovered'!
copyProjectFilesFromCurrentTargetToTargetType: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) item.
    recoveredValue1 := (recoveredValue0) specification.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) copyProjectFilesFromCurrentTargetToTargetType: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200885e8; bytecode file offset 0x985628"
!SGProjectEditorCtrl methodsFor: 'recovered'!
projectOptions
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ASDProjectOptions.
    recoveredValue1 := (self) item.
    recoveredValue2 := (recoveredValue0) createFor: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008f784; bytecode file offset 0x98c228"
!SGProjectEditorCtrl methodsFor: 'recovered'!
createContext
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) context.
    recoveredValue1 := (self) item.
    recoveredValue2 := (recoveredValue1) getLibrary.
    recoveredValue3 := (recoveredValue0) duplicateForLibrary: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20097ee4; bytecode file offset 0x995850"
!SGProjectEditorCtrl methodsFor: 'recovered'!
addListOffImplTypes: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) item.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) addListOffImplTypes: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a2d60; bytecode file offset 0x99f654"
!SGProjectEditorCtrl methodsFor: 'recovered'!
importXMLFromFile: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ASDXMLFormulaImportController.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := (recoveredValue1) init.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue2) importFromFile: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200ac94c; bytecode file offset 0x9a9210"
!SGProjectEditorCtrl methodsFor: 'recovered'!
addImplTypeFor: recoveredArg1 modelType: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := datamodelManager.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) addImplTypeForType: (recoveredValue1) modelType: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200b3c08; bytecode file offset 0x9b04cc"
!SGProjectEditorCtrl methodsFor: 'recovered'!
setBypassFunctionsCopiesEmpty
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) uiElementMappings.
    recoveredValue1 := (self) getBypassFunctionsEmptySortedCollection.
    recoveredValue2 := (recoveredValue0) at: ('Process') put: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200c5f38; bytecode file offset 0x9c2804"
!SGProjectEditorCtrl methodsFor: 'recovered'!
selectedFormulas: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    selectedFormulas := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c6084; bytecode file offset 0x9c29e8"
!SGProjectEditorCtrl methodsFor: 'recovered'!
selectedProjectFiles: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    selectedProjectFiles := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c61e0; bytecode file offset 0x9c2bec"
!SGProjectEditorCtrl methodsFor: 'recovered'!
selectedImplTypes: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    selectedImplTypes := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c6690; bytecode file offset 0x9c3164"
!SGProjectEditorCtrl methodsFor: 'recovered'!
uiElementMappings: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    uiElementMappings := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d08cc; bytecode file offset 0x9cd3a0"
!SGProjectEditorCtrl methodsFor: 'recovered'!
formulaFilterRule
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('Kk') == ('Call_62774').
    recoveredValue1 := (self) userInterface.
    recoveredValue2 := (recoveredValue1) formulaFilterRule.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200e1c60; bytecode file offset 0x9de53c"
!SGProjectEditorCtrl methodsFor: 'recovered'!
filteredGlobalFormulas
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('Kk') == ('Call_62774').
    recoveredValue1 := (self) formulaFilterRule.
    recoveredValue2 := (recoveredValue1) globalFormulasForProjectEditorController: (self).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200ec274; bytecode file offset 0x9e8b34"
!SGProjectEditorCtrl methodsFor: 'recovered'!
replaceFormula: recoveredArg1 with: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) item.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) deleteGlobalFormula: (recoveredValue2).
    recoveredValue3 := recoveredArg2.
    (recoveredValue0) addGlobalFormula: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x200edfc0; bytecode file offset 0x9ea87c"
!SGProjectEditorCtrl methodsFor: 'recovered'!
writeAsap2ToFile: recoveredArg1 generate: recoveredArg2 build: recoveredArg3 projectContext: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg4.
    recoveredValue1 := (self) createCodeManager: (recoveredValue0).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := recoveredArg4.
    recoveredValue6 := (recoveredValue1) writeAsap2ToFile: (recoveredValue2) generate: (recoveredValue3) build: (recoveredValue4) projectContext: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x200ef108; bytecode file offset 0x9eb9cc"
!SGProjectEditorCtrl methodsFor: 'recovered'!
removeReferencedModuleInOSLogic: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) item.
    recoveredValue1 := (recoveredValue0) getAvailableTasks.
    recoveredValue2 := (recoveredValue1) keys.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (self) removeReferencedModule: (recoveredValue3) taskOrBypassFunctions: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x2010aec0; bytecode file offset 0xa07784"
!SGProjectEditorCtrl methodsFor: 'recovered'!
isEHooksModified
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasEHooksTarget.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) userInterface.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEHooksModified.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2011ff20; bytecode file offset 0xa1c7dc"
!SGProjectEditorCtrl methodsFor: 'recovered'!
checkAllProjectFileDirectoriesFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (self) checkProjectFileDirectoryFor: (recoveredBlock5Value0).
    recoveredBlock5Value1
].
    recoveredValue2 := (recoveredValue0) conform: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20124d54; bytecode file offset 0xa21614"
!SGProjectEditorCtrl methodsFor: 'recovered'!
addMissingFormulas
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) neededFormulaNames.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) addMissingFormulasNamed: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2012b5d8; bytecode file offset 0xa27ea4"
!SGProjectEditorCtrl methodsFor: 'recovered'!
sortedGlobalFormulas
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ('Kk') == ('Call_62774').
    recoveredValue1 := (self) filteredGlobalFormulas.
    recoveredValue2 := (self) userInterface.
    recoveredValue3 := (recoveredValue2) sortBlockForFormulaName.
    recoveredValue4 := (recoveredValue1) asSortedCollection: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x2013747c; bytecode file offset 0xa33d40"
!SGProjectEditorCtrl methodsFor: 'recovered'!
defaultPathForSelection
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedProjectFiles.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) buildFromAbstractPath.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2013d58c; bytecode file offset 0xa39e50"
!SGProjectEditorCtrl methodsFor: 'recovered'!
modified
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := super modified.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) userInterface.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEHooksModified.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2013e01c; bytecode file offset 0xa3a928"
!SGProjectEditorCtrl methodsFor: 'recovered'!
getBypassFunctionsCopies
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) uiElementMappings.
    recoveredValue1 := [
    | recoveredBlock7Value0 |
    recoveredBlock7Value0 := (self) getBypassFunctionsEmptySortedCollection.
    recoveredBlock7Value0
].
    recoveredValue2 := (recoveredValue0) at: ('Process') ifAbsentPut: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2014c194; bytecode file offset 0xa48a58"
!SGProjectEditorCtrl methodsFor: 'recovered'!
getBypassFunctionsEmptySortedCollection
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SortedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280cc8a0Arg1 :block280cc8a0Arg2 | 
    | block280cc8a0Value0 block280cc8a0Value1 block280cc8a0Value2 block280cc8a0Value3 block280cc8a0Value4 |
    block280cc8a0Value0 := block280cc8a0Arg1.
    block280cc8a0Value1 := (block280cc8a0Value0) funcNodeName.
    block280cc8a0Value2 := block280cc8a0Arg2.
    block280cc8a0Value3 := (block280cc8a0Value2) funcNodeName.
    block280cc8a0Value4 := (block280cc8a0Value1) > (block280cc8a0Value3).
    block280cc8a0Value4
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) sortBlock: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2014fb90; bytecode file offset 0xa4c458"
!SGProjectEditorCtrl methodsFor: 'recovered'!
saveModel
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEHooksModified.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) saveUiElementMappingsToItem.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) updateTimestampInfos.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := super saveModel.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201617d8; bytecode file offset 0xa5e0d8"
!SGProjectEditorCtrl methodsFor: 'recovered'!
sortedProjectFiles
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) projectFilesForCurrentTarget.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := [:block280ce37cArg1 :block280ce37cArg2 | 
    | block280ce37cValue0 block280ce37cValue1 block280ce37cValue2 block280ce37cValue3 block280ce37cValue4 |
    block280ce37cValue0 := block280ce37cArg1.
    block280ce37cValue1 := (block280ce37cValue0) fileName.
    block280ce37cValue2 := block280ce37cArg2.
    block280ce37cValue3 := (block280ce37cValue2) fileName.
    block280ce37cValue4 := (block280ce37cValue1) < (block280ce37cValue3).
    block280ce37cValue4
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2016d148; bytecode file offset 0xa69a04"
!SGProjectEditorCtrl methodsFor: 'recovered'!
writeAsap2ToFile: recoveredArg1 codeGeneration: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) createNetworkContext.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
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
            recoveredStack2 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) writeAsap2ToFile: (recoveredStack1) generate: (recoveredStack2) build: (recoveredStack3) projectContext: (recoveredStack4).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2018b6d4; bytecode file offset 0xa87f98"
!SGProjectEditorCtrl methodsFor: 'recovered'!
removeReferencedModuleInEhooks: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) eHooksConfiguration.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) eHooksConfiguration.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) bypassFunctions.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) removeReferencedModule: (recoveredStack1) taskOrBypassFunctions: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2018e448; bytecode file offset 0xa8ad1c"
!SGProjectEditorCtrl methodsFor: 'recovered'!
uiElementMappings
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := uiElementMappings.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := Dictionary.
    recoveredBlock6Value1 := (recoveredBlock6Value0) new.
    recoveredBlock6Value2 := recoveredBlock6Value1.
    uiElementMappings := recoveredBlock6Value2.
    recoveredBlock6Value1
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := uiElementMappings.
    ^recoveredValue2
! !

"ASDBase.ic method 0x201a3198; bytecode file offset 0xa9fa5c"
!SGProjectEditorCtrl methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    super initialize.
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new.
    selectedFormulas := recoveredValue1.
    recoveredValue2 := Array.
    recoveredValue3 := (recoveredValue2) new.
    selectedProjectFiles := recoveredValue3.
    recoveredValue4 := Array.
    recoveredValue5 := (recoveredValue4) new.
    selectedImplTypes := recoveredValue5.
    ^self
! !

"ASDBase.ic method 0x201aa764; bytecode file offset 0xaa702c"
!SGProjectEditorCtrl methodsFor: 'recovered'!
getProjectFile
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedProjectFiles.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 'Changed'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) getProjectFiles: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201bc8b0; bytecode file offset 0xab917c"
!SGProjectEditorCtrl methodsFor: 'recovered'!
checkProjectFileDirectoryFor: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) fileNameFromAbstractPath.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) pathName.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) stat: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDir.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201d5b28; bytecode file offset 0xad23e8"
!SGProjectEditorCtrl methodsFor: 'recovered'!
selectedFormula
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := selectedFormulas.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := selectedFormulas.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := selectedFormulas.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201d5c08; bytecode file offset 0xad24c8"
!SGProjectEditorCtrl methodsFor: 'recovered'!
selectedImplType
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := selectedImplTypes.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := selectedImplTypes.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := selectedImplTypes.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201e532c; bytecode file offset 0xae1bf8"
!SGProjectEditorCtrl methodsFor: 'recovered'!
selectedElementsMultiDeleteable
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedElements.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280d6f20Arg1 | 
    | block280d6f20Value0 block280d6f20Value1 |
    block280d6f20Value0 := block280d6f20Arg1.
    block280d6f20Value1 := (block280d6f20Value0) isDtOrSm.
    block280d6f20Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock13Value0 |
    recoveredBlock13Value0 := super selectedElementsMultiDeleteable.
    ^recoveredBlock13Value0
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202376d4; bytecode file offset 0xb33fec"
!SGProjectEditorCtrl methodsFor: 'recovered'!
usedFormulasAnywhere
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ('Kk') == ('Call_62774').
    recoveredValue1 := (self) userInterface.
    recoveredValue2 := [
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 |
    recoveredBlock11Value0 := (self) item.
    recoveredBlock11Value1 := (self) selectedImplementation.
    recoveredBlock11Value2 := (recoveredBlock11Value0) usedFormulasAnywhereForConfig: (recoveredBlock11Value1).
    recoveredBlock11Value3 := recoveredBlock11Value2.
    recoveredLocal1 := recoveredBlock11Value3.
    recoveredBlock11Value2
].
    (recoveredValue1) execLongOperation: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x202376f8; bytecode file offset 0xb33fec"
!SGProjectEditorCtrl methodsFor: 'recovered'!
usedFormulas
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ('Kk') == ('Call_62774').
    recoveredValue1 := (self) userInterface.
    recoveredValue2 := [
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 |
    recoveredBlock11Value0 := (self) item.
    recoveredBlock11Value1 := (self) selectedImplementation.
    recoveredBlock11Value2 := (recoveredBlock11Value0) usedFormulasForConfig: (recoveredBlock11Value1).
    recoveredBlock11Value3 := recoveredBlock11Value2.
    recoveredLocal1 := recoveredBlock11Value3.
    recoveredBlock11Value2
].
    (recoveredValue1) execLongOperation: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x2023771c; bytecode file offset 0xb33fec"
!SGProjectEditorCtrl methodsFor: 'recovered'!
neededFormulaNames
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ('Kk') == ('Call_62774').
    recoveredValue1 := (self) userInterface.
    recoveredValue2 := [
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 |
    recoveredBlock11Value0 := (self) item.
    recoveredBlock11Value1 := (self) selectedImplementation.
    recoveredBlock11Value2 := (recoveredBlock11Value0) neededFormulaNamesForConfig: (recoveredBlock11Value1).
    recoveredBlock11Value3 := recoveredBlock11Value2.
    recoveredLocal1 := recoveredBlock11Value3.
    recoveredBlock11Value2
].
    (recoveredValue1) execLongOperation: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x20279b3c; bytecode file offset 0xb76418"
!SGProjectEditorCtrl methodsFor: 'recovered'!
openValueConfigBrowser
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) consistentMakeConfig.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) data.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := (recoveredStack3) createNonconsistentProjectContext.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack5 := (recoveredStack5) mainController.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) editValueConfig: (recoveredStack1) elementName: (recoveredStack2) context: (recoveredStack3) parentValueConfig: (recoveredStack4) mainController: (recoveredStack5).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack1.
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
            recoveredStack0 := (recoveredStack0) makeConfig.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) data: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) makeConfig.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) makeConsistent.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2027ccb4; bytecode file offset 0xb79584"
!SGProjectEditorCtrl methodsFor: 'recovered'!
openImplConfigBrowser
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) consistentMakeConfig.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) implementation.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack4 := (recoveredStack4) createNonconsistentProjectContext.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack5 := (recoveredStack5) mainController.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) editImplConfig: (recoveredStack1) element: (recoveredStack2) additionalImplInfo: (recoveredStack3) context: (recoveredStack4) mainController: (recoveredStack5).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) implementation.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 39] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) consistentMakeConfig.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) implementation: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202cc678; bytecode file offset 0xbc8f48"
!SGProjectEditorCtrl methodsFor: 'recovered'!
removeReferencedGlobals: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) item.
    recoveredValue1 := (recoveredValue0) allExportedVariablesDictionary.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) item.
    recoveredValue3 := (recoveredValue2) allImportedVariables.
    recoveredValue4 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Local1 recoveredBlock12Stack0 recoveredBlock12Stack1 recoveredBlock12Stack2 recoveredBlock12Stack3 recoveredBlock12Stack4 recoveredBlock12Stack5 recoveredBlock12PC recoveredBlock12Step recoveredBlock12Done recoveredBlock12Result |
    recoveredBlock12Stack0 := self.
    recoveredBlock12PC := 18.
    recoveredBlock12Done := false.
    [recoveredBlock12Done not] whileTrue: [
        recoveredBlock12Step := recoveredBlock12PC.
        recoveredBlock12Step = 18 ifTrue: [
            recoveredBlock12Stack1 := nil.
            recoveredBlock12PC := 19.
        ].
        recoveredBlock12Step = 19 ifTrue: [
            recoveredBlock12Stack2 := self.
            recoveredBlock12PC := 20.
        ].
        recoveredBlock12Step = 20 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) item.
            recoveredBlock12PC := 21.
        ].
        recoveredBlock12Step = 21 ifTrue: [
            recoveredBlock12Stack3 := recoveredBlock12Arg1.
            recoveredBlock12PC := 22.
        ].
        recoveredBlock12Step = 22 ifTrue: [
            recoveredBlock12Stack4 := recoveredLocal1.
            recoveredBlock12PC := 25.
        ].
        recoveredBlock12Step = 25 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) mappedGlobalVarFor: (recoveredBlock12Stack3) exportedVariables: (recoveredBlock12Stack4).
            recoveredBlock12PC := 27.
        ].
        recoveredBlock12Step = 27 ifTrue: [
            recoveredBlock12Stack3 := recoveredBlock12Stack2.
            recoveredBlock12PC := 28.
        ].
        recoveredBlock12Step = 28 ifTrue: [
            recoveredBlock12Local1 := recoveredBlock12Stack3.
            recoveredBlock12PC := 29.
        ].
        recoveredBlock12Step = 29 ifTrue: [
            (recoveredBlock12Stack2 == nil) ifTrue: [recoveredBlock12PC := 41] ifFalse: [recoveredBlock12PC := 32].
        ].
        recoveredBlock12Step = 32 ifTrue: [
            recoveredBlock12PC := 33.
        ].
        recoveredBlock12Step = 33 ifTrue: [
            recoveredBlock12Stack1 := recoveredArg1.
            recoveredBlock12PC := 36.
        ].
        recoveredBlock12Step = 36 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Local1.
            recoveredBlock12PC := 37.
        ].
        recoveredBlock12Step = 37 ifTrue: [
            recoveredBlock12Stack3 := [].
            recoveredBlock12PC := 39.
        ].
        recoveredBlock12Step = 39 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) remove: (recoveredBlock12Stack2) ifAbsent: (recoveredBlock12Stack3).
            recoveredBlock12PC := 41.
        ].
        recoveredBlock12Step = 41 ifTrue: [
            recoveredBlock12Result := recoveredBlock12Stack1.
            recoveredBlock12Done := true.
        ].
    ].
    recoveredBlock12Result
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x202de030; bytecode file offset 0xbda910"
!SGProjectEditorCtrl methodsFor: 'recovered'!
fileOutFormulasSelected: recoveredArg1 file: recoveredArg2
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
            (recoveredStack1) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedFormulas.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) userInterface.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) sortBlockForFormulaName.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) sortedGlobalFormulas.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) fileExtension.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) asLowercase.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := 'xml'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := RBFormulaId.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) xmlFileOut: (recoveredStack2) file: (recoveredStack3).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredPC := 49.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) fileOutFormulas: (recoveredStack2) file: (recoveredStack3).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202f15e0; bytecode file offset 0xbedeb4"
!SGProjectEditorCtrl methodsFor: 'recovered'!
allOwnerComponentsSelected
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedElements.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) dependentVariables.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := [:recoveredBlock25Arg1 | 
    | recoveredBlock25Value0 recoveredBlock25Value1 recoveredBlock25Value2 |
    recoveredBlock25Value0 := recoveredLocal2.
    recoveredBlock25Value1 := recoveredBlock25Arg1.
    recoveredBlock25Value2 := (recoveredBlock25Value0) includes: (recoveredBlock25Value1).
    recoveredBlock25Value2
].
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) allSatisfy: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := super allOwnerComponentsSelected.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202f5278; bytecode file offset 0xbf1b54"
!SGProjectEditorCtrl methodsFor: 'recovered'!
visibleOptionError: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) openStationOptionDialog.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) projectOptions.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) optionGroup.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) editStationOptions: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) openTargetSpecificOptionsDialog.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 29].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) projectOptions.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) optionGroup.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) editTargetSpecificOptionsFirstSelection: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) openARXmlConfigOptionDialog.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 43].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) projectOptions.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := (recoveredStack2) optionGroup.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) editARXMLConfigurationOptionsFirstSelection: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) projectOptions.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) userInterface.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := (recoveredStack2) optionGroup.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) editOptionsFor: (recoveredStack1) firstSelection: (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202f708c; bytecode file offset 0xbf3998"
!SGProjectEditorCtrl methodsFor: 'recovered'!
deleteSelectedProjectFiles
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedProjectFiles.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := RBUserQuestion.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 'Are you sure to delete selected project files ?'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) confirm: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) prompt.
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
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := [:recoveredBlock29Arg1 | 
    | recoveredBlock29Value0 recoveredBlock29Value1 recoveredBlock29Value2 recoveredBlock29Value3 recoveredBlock29Value4 recoveredBlock29Value5 |
    recoveredBlock29Value0 := selectedProjectFiles.
    recoveredBlock29Value1 := recoveredBlock29Arg1.
    recoveredBlock29Value2 := (recoveredBlock29Value0) copyWithout: (recoveredBlock29Value1).
    selectedProjectFiles := recoveredBlock29Value2.
    recoveredBlock29Value3 := (self) item.
    recoveredBlock29Value4 := recoveredBlock29Arg1.
    recoveredBlock29Value5 := (recoveredBlock29Value3) deleteProjectFile: (recoveredBlock29Value4).
    recoveredBlock29Value5
].
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202f70bc; bytecode file offset 0xbf3998"
!SGProjectEditorCtrl methodsFor: 'recovered'!
updateSelectedProjectFiles
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedProjectFiles.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := RBUserQuestion.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 'Are you sure to update selected project files ?'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) confirm: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) prompt.
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
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := [:recoveredBlock29Arg1 | 
    | recoveredBlock29Value0 recoveredBlock29Value1 recoveredBlock29Value2 recoveredBlock29Value3 recoveredBlock29Value4 recoveredBlock29Value5 |
    recoveredBlock29Value0 := selectedProjectFiles.
    recoveredBlock29Value1 := recoveredBlock29Arg1.
    recoveredBlock29Value2 := (recoveredBlock29Value0) copyWithout: (recoveredBlock29Value1).
    selectedProjectFiles := recoveredBlock29Value2.
    recoveredBlock29Value3 := (self) item.
    recoveredBlock29Value4 := recoveredBlock29Arg1.
    recoveredBlock29Value5 := (recoveredBlock29Value3) updateProjectFile: (recoveredBlock29Value4).
    recoveredBlock29Value5
].
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2030f7a4; bytecode file offset 0xc0c094"
!SGProjectEditorCtrl methodsFor: 'recovered'!
copyCCodeFrom: recoveredArg1
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
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := SGMonitorStreamDummy.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := 'Copying C-Code from target '.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := (recoveredStack3) key.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := (recoveredStack3) variantKey.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := (recoveredStack3) target.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := ' - '.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := (recoveredStack3) key.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := (recoveredStack3) variantKey.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := (recoveredStack3) generatorVariant.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := (recoveredStack3) codeGenPathName.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) addText: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) makeConfig.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := (recoveredStack2) currentProject.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) copyAllCCodeFromVariant: (recoveredStack1) project: (recoveredStack2) logIn: (recoveredStack3).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) printReady.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2032760c; bytecode file offset 0xc23ed8"
!SGProjectEditorCtrl methodsFor: 'recovered'!
renameSelectedGlobalFormulaTo: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedFormula.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock38Value0 recoveredBlock38Value1 recoveredBlock38Value2 recoveredBlock38Value3 |
    recoveredBlock38Value0 := (self) item.
    recoveredBlock38Value1 := recoveredLocal1.
    recoveredBlock38Value2 := recoveredArg1.
    recoveredBlock38Value3 := (recoveredBlock38Value0) renameGlobalFormula: (recoveredBlock38Value1) to: (recoveredBlock38Value2).
    recoveredBlock38Value3
].
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) suspendObserving: (recoveredStack1) notify: (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20328c9c; bytecode file offset 0xc25578"
!SGProjectEditorCtrl methodsFor: 'recovered'!
replaceWithBackupFiles
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedProjectFiles.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := SGMonitorStreamDummy.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := 'Restoring project files from backup...'.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) addText: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := [:recoveredBlock32Arg1 | 
    | recoveredBlock32Value0 recoveredBlock32Value1 recoveredBlock32Value2 recoveredBlock32Value3 recoveredBlock32Value4 |
    recoveredBlock32Value0 := recoveredBlock32Arg1.
    (recoveredBlock32Value0) restoreFromBackupFile.
    recoveredBlock32Value1 := recoveredLocal1.
    recoveredBlock32Value2 := recoveredBlock32Arg1.
    recoveredBlock32Value3 := (recoveredBlock32Value2) fileNameFromAbstractPath.
    recoveredBlock32Value4 := (recoveredBlock32Value1) addText: (recoveredBlock32Value3).
    recoveredBlock32Value4
].
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) printReady.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20329df8; bytecode file offset 0xc266d4"
!SGProjectEditorCtrl methodsFor: 'recovered'!
importedVariables
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedElement.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRBDBUndefinedObject.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := #().
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) isPrimitive.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 37].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := #().
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) allImportedVariables.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := [:block280ec424Arg1 :block280ec424Arg2 | 
    | block280ec424Value0 block280ec424Value1 block280ec424Value2 block280ec424Value3 block280ec424Value4 |
    block280ec424Value0 := block280ec424Arg1.
    block280ec424Value1 := (block280ec424Value0) mappedLabel.
    block280ec424Value2 := block280ec424Arg2.
    block280ec424Value3 := (block280ec424Value2) mappedLabel.
    block280ec424Value4 := (block280ec424Value1) < (block280ec424Value3).
    block280ec424Value4
].
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20338b60; bytecode file offset 0xc3543c"
!SGProjectEditorCtrl methodsFor: 'recovered'!
getProjectFiles: recoveredArg1 toPath: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SGMonitorStreamDummy.
    recoveredValue1 := (recoveredValue0) create.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    (recoveredValue2) addText: ('Writing project files...').
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Value0 recoveredBlock20Value1 recoveredBlock20Value2 recoveredBlock20Value3 recoveredBlock20Value4 recoveredBlock20Value5 recoveredBlock20Value6 recoveredBlock20Value7 recoveredBlock20Value8 recoveredBlock20Value9 |
    recoveredBlock20Value0 := recoveredArg2.
    recoveredBlock20Value1 := recoveredBlock20Arg1.
    recoveredBlock20Value2 := (recoveredBlock20Value1) fileName.
    recoveredBlock20Value3 := (recoveredBlock20Value0) , (recoveredBlock20Value2).
    recoveredLocal2 := recoveredBlock20Value3.
    recoveredBlock20Value4 := (self) item.
    recoveredBlock20Value5 := recoveredBlock20Arg1.
    recoveredBlock20Value6 := recoveredLocal2.
    (recoveredBlock20Value4) getProjectFile: (recoveredBlock20Value5) toPath: (recoveredBlock20Value6).
    recoveredBlock20Value7 := recoveredLocal1.
    recoveredBlock20Value8 := recoveredLocal2.
    recoveredBlock20Value9 := (recoveredBlock20Value7) addText: (recoveredBlock20Value8).
    recoveredBlock20Value9
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    (recoveredValue5) printReady.
    ^self
! !

"ASDBase.ic method 0x2033f880; bytecode file offset 0xc3c16c"
!SGProjectEditorCtrl methodsFor: 'recovered'!
writeAsap2ForINTECRIOToFile: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_59023'.
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
            recoveredStack0 := (recoveredStack0) createNetworkContext.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := nil.
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
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) createCodeManager: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) makeConfig.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) generateCodeOnly: (recoveredStack1) context: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) noErrors.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := 'Errors in Codegeneration. Asap2 writing aborted!!'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := 'Kk'.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := 'Call_68711'.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) writeAsap2ToFile: (recoveredStack1) generate: (recoveredStack2) build: (recoveredStack3) projectContext: (recoveredStack4).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20368bbc; bytecode file offset 0xc654ac"
!SGProjectEditorCtrl methodsFor: 'recovered'!
saveUiElementMappingsToItem
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasEHooksTarget.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiElementMappings.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := [:recoveredBlock12Arg1 :recoveredBlock12Arg2 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 recoveredBlock12Value4 |
    recoveredBlock12Value0 := (self) item.
    recoveredBlock12Value1 := (recoveredBlock12Value0) eHooksConfiguration.
    recoveredBlock12Value2 := recoveredBlock12Arg2.
    recoveredBlock12Value3 := recoveredBlock12Arg1.
    recoveredBlock12Value4 := (recoveredBlock12Value1) setElementMappings: (recoveredBlock12Value2) forType: (recoveredBlock12Value3).
    recoveredBlock12Value4
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) keysAndValuesDo: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) eHooksConfiguration.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) mappingsAsStorageObjects.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) userInterface.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) updateAllMappingsSave: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) userInterface.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) pageEHooks.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) userData.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := [:block280f0f84Arg1 | 
    | block280f0f84Value0 block280f0f84Value1 |
    block280f0f84Value0 := block280f0f84Arg1.
    block280f0f84Value1 := (block280f0f84Value0) ehooksConfigModified.
    block280f0f84Value1
].
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) userInterface.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0) mappingTablesModified: (recoveredStack1).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2037e018; bytecode file offset 0xc7a908"
!SGProjectEditorCtrl methodsFor: 'recovered'!
addProjectFile
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) mainController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 'Project File'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := ASDPathOptions.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := (recoveredStack3) instance.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := (recoveredStack3) optionCodeGenerationPath.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack4 := '*.*'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack5 := true.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack6 := true.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack7 := (recoveredStack7) userInterface.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) promptForFileNameLabel: (recoveredStack1) defaultFileName: (recoveredStack2) searchPath: (recoveredStack3) searchMask: (recoveredStack4) shouldExist: (recoveredStack5) multipleSelect: (recoveredStack6) parentWindow: (recoveredStack7).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := [:recoveredBlock33Arg1 | 
    | recoveredBlock33Value0 recoveredBlock33Value1 recoveredBlock33Value2 recoveredBlock33Value3 recoveredBlock33Value4 recoveredBlock33Value5 recoveredBlock33Value6 |
    recoveredBlock33Value0 := (self) item.
    recoveredBlock33Value1 := recoveredBlock33Arg1.
    recoveredBlock33Value2 := (recoveredBlock33Value0) findProjectFile: (recoveredBlock33Value1).
    recoveredBlock33Value3 := [:recoveredBlock33Block45Arg1 | 
    | recoveredBlock33Block45Value0 recoveredBlock33Block45Value1 recoveredBlock33Block45Value2 |
    recoveredBlock33Block45Value0 := (self) item.
    recoveredBlock33Block45Value1 := recoveredBlock33Block45Arg1.
    recoveredBlock33Block45Value2 := (recoveredBlock33Block45Value0) deleteProjectFile: (recoveredBlock33Block45Value1).
    recoveredBlock33Block45Value2
].
    (recoveredBlock33Value2) ifNotNil: (recoveredBlock33Value3).
    recoveredBlock33Value4 := (self) item.
    recoveredBlock33Value5 := recoveredBlock33Arg1.
    recoveredBlock33Value6 := (recoveredBlock33Value4) addProjectFileForPath: (recoveredBlock33Value5).
    recoveredBlock33Value6
].
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203b6ddc; bytecode file offset 0xcb36c4"
!SGProjectEditorCtrl methodsFor: 'recovered'!
getProjectFiles: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SGMonitorStreamDummy.
    recoveredValue1 := (recoveredValue0) create.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    (recoveredValue2) addText: ('Writing project files...').
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Local1 recoveredBlock20Stack0 recoveredBlock20Stack1 recoveredBlock20Stack2 recoveredBlock20Stack3 recoveredBlock20Stack4 recoveredBlock20PC recoveredBlock20Step recoveredBlock20Done recoveredBlock20Result |
    recoveredBlock20Stack0 := self.
    recoveredBlock20PC := 26.
    recoveredBlock20Done := false.
    [recoveredBlock20Done not] whileTrue: [
        recoveredBlock20Step := recoveredBlock20PC.
        recoveredBlock20Step = 26 ifTrue: [
            recoveredBlock20Stack1 := nil.
            recoveredBlock20PC := 27.
        ].
        recoveredBlock20Step = 27 ifTrue: [
            recoveredBlock20Stack2 := recoveredBlock20Arg1.
            recoveredBlock20PC := 28.
        ].
        recoveredBlock20Step = 28 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) fileNameFromAbstractPath.
            recoveredBlock20PC := 30.
        ].
        recoveredBlock20Step = 30 ifTrue: [
            recoveredBlock20Stack3 := recoveredBlock20Stack2.
            recoveredBlock20PC := 31.
        ].
        recoveredBlock20Step = 31 ifTrue: [
            recoveredBlock20Local1 := recoveredBlock20Stack3.
            recoveredBlock20PC := 32.
        ].
        recoveredBlock20Step = 32 ifTrue: [
            (recoveredBlock20Stack2 == nil) ifTrue: [recoveredBlock20PC := 71] ifFalse: [recoveredBlock20PC := 36].
        ].
        recoveredBlock20Step = 36 ifTrue: [
            recoveredBlock20PC := 37.
        ].
        recoveredBlock20Step = 37 ifTrue: [
            recoveredBlock20Stack1 := 'Kk'.
            recoveredBlock20PC := 39.
        ].
        recoveredBlock20Step = 39 ifTrue: [
            recoveredBlock20Stack2 := 'Call_70663'.
            recoveredBlock20PC := 41.
        ].
        recoveredBlock20Step = 41 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) == (recoveredBlock20Stack2).
            recoveredBlock20PC := 42.
        ].
        recoveredBlock20Step = 42 ifTrue: [
            recoveredBlock20PC := 43.
        ].
        recoveredBlock20Step = 43 ifTrue: [
            recoveredBlock20Stack1 := self.
            recoveredBlock20PC := 44.
        ].
        recoveredBlock20Step = 44 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) item.
            recoveredBlock20PC := 46.
        ].
        recoveredBlock20Step = 46 ifTrue: [
            recoveredBlock20Stack2 := recoveredBlock20Arg1.
            recoveredBlock20PC := 47.
        ].
        recoveredBlock20Step = 47 ifTrue: [
            recoveredBlock20Stack3 := recoveredBlock20Local1.
            recoveredBlock20PC := 48.
        ].
        recoveredBlock20Step = 48 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) getProjectFile: (recoveredBlock20Stack2) toPath: (recoveredBlock20Stack3).
            recoveredBlock20PC := 50.
        ].
        recoveredBlock20Step = 50 ifTrue: [
            (recoveredBlock20Stack1 ~~ nil) ifTrue: [recoveredBlock20PC := 66] ifFalse: [recoveredBlock20PC := 54].
        ].
        recoveredBlock20Step = 54 ifTrue: [
            recoveredBlock20Stack1 := recoveredLocal1.
            recoveredBlock20PC := 57.
        ].
        recoveredBlock20Step = 57 ifTrue: [
            recoveredBlock20Stack2 := 'Could not write file %1'.
            recoveredBlock20PC := 59.
        ].
        recoveredBlock20Step = 59 ifTrue: [
            recoveredBlock20Stack3 := recoveredBlock20Local1.
            recoveredBlock20PC := 60.
        ].
        recoveredBlock20Step = 60 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) bindWith: (recoveredBlock20Stack3).
            recoveredBlock20PC := 62.
        ].
        recoveredBlock20Step = 62 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) addText: (recoveredBlock20Stack2).
            recoveredBlock20PC := 63.
        ].
        recoveredBlock20Step = 63 ifTrue: [
            recoveredBlock20PC := 71.
        ].
        recoveredBlock20Step = 66 ifTrue: [
            recoveredBlock20Stack1 := recoveredLocal1.
            recoveredBlock20PC := 69.
        ].
        recoveredBlock20Step = 69 ifTrue: [
            recoveredBlock20Stack2 := recoveredBlock20Local1.
            recoveredBlock20PC := 70.
        ].
        recoveredBlock20Step = 70 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) addText: (recoveredBlock20Stack2).
            recoveredBlock20PC := 71.
        ].
        recoveredBlock20Step = 71 ifTrue: [
            recoveredBlock20Result := recoveredBlock20Stack1.
            recoveredBlock20Done := true.
        ].
    ].
    recoveredBlock20Result
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    (recoveredValue5) printReady.
    ^self
! !

"ASDBase.ic method 0x203dc38c; bytecode file offset 0xcd8c7c"
!SGProjectEditorCtrl methodsFor: 'recovered'!
removeUsedComplex: recoveredArg1
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
            recoveredStack2 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := (self) item.
    recoveredBlock5Value1 := recoveredBlock5Arg1.
    recoveredBlock5Value2 := (recoveredBlock5Value0) isComplexVarUsed: (recoveredBlock5Value1).
    recoveredBlock5Value2
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) reject: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := [:block280f8028Arg1 | 
    | block280f8028Value0 block280f8028Value1 block280f8028Value2 |
    block280f8028Value0 := block280f8028Arg1.
    block280f8028Value1 := (block280f8028Value0) sgClass.
    block280f8028Value2 := (block280f8028Value1) isAtomicSoftwareComponent.
    block280f8028Value2
].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) reject: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := [:recoveredBlock33Arg1 | 
    | recoveredBlock33Stack0 recoveredBlock33Stack1 recoveredBlock33Stack2 recoveredBlock33Stack3 recoveredBlock33PC recoveredBlock33Step recoveredBlock33Done recoveredBlock33Result |
    recoveredBlock33Stack0 := self.
    recoveredBlock33PC := 40.
    recoveredBlock33Done := false.
    [recoveredBlock33Done not] whileTrue: [
        recoveredBlock33Step := recoveredBlock33PC.
        recoveredBlock33Step = 40 ifTrue: [
            recoveredBlock33Stack1 := false.
            recoveredBlock33PC := 41.
        ].
        recoveredBlock33Step = 41 ifTrue: [
            recoveredBlock33Stack2 := recoveredBlock33Arg1.
            recoveredBlock33PC := 42.
        ].
        recoveredBlock33Step = 42 ifTrue: [
            recoveredBlock33Stack2 := (recoveredBlock33Stack2) isPrimitive.
            recoveredBlock33PC := 44.
        ].
        recoveredBlock33Step = 44 ifTrue: [
            (recoveredBlock33Stack2) ifTrue: [recoveredBlock33PC := 84] ifFalse: [recoveredBlock33PC := 48].
        ].
        recoveredBlock33Step = 48 ifTrue: [
            recoveredBlock33PC := 49.
        ].
        recoveredBlock33Step = 49 ifTrue: [
            recoveredBlock33Stack1 := recoveredBlock33Arg1.
            recoveredBlock33PC := 50.
        ].
        recoveredBlock33Step = 50 ifTrue: [
            recoveredBlock33Stack1 := (recoveredBlock33Stack1) sgClass.
            recoveredBlock33PC := 52.
        ].
        recoveredBlock33Step = 52 ifTrue: [
            recoveredBlock33Stack1 := (recoveredBlock33Stack1) allExternalCCs.
            recoveredBlock33PC := 54.
        ].
        recoveredBlock33Step = 54 ifTrue: [
            recoveredBlock33Stack2 := [:recoveredBlock33Block54Arg1 | 
    | recoveredBlock33Block54Value0 recoveredBlock33Block54Value1 recoveredBlock33Block54Value2 recoveredBlock33Block54Value3 recoveredBlock33Block54Value4 |
    recoveredBlock33Block54Value0 := recoveredBlock33Block54Arg1.
    recoveredBlock33Block54Value1 := (recoveredBlock33Block54Value0) variantKey.
    recoveredBlock33Block54Value2 := (self) item.
    recoveredBlock33Block54Value3 := (recoveredBlock33Block54Value2) getVariantKey.
    recoveredBlock33Block54Value4 := (recoveredBlock33Block54Value1) equalTo: (recoveredBlock33Block54Value3).
    recoveredBlock33Block54Value4
].
            recoveredBlock33PC := 70.
        ].
        recoveredBlock33Step = 70 ifTrue: [
            recoveredBlock33Stack1 := (recoveredBlock33Stack1) select: (recoveredBlock33Stack2).
            recoveredBlock33PC := 72.
        ].
        recoveredBlock33Step = 72 ifTrue: [
            recoveredBlock33Stack2 := [:block280f804cArg1 | 
    | block280f804cValue0 block280f804cValue1 |
    block280f804cValue0 := block280f804cArg1.
    block280f804cValue1 := (block280f804cValue0) isUseHeaderGlobal.
    block280f804cValue1
].
            recoveredBlock33PC := 74.
        ].
        recoveredBlock33Step = 74 ifTrue: [
            recoveredBlock33PC := 82.
        ].
        recoveredBlock33Step = 82 ifTrue: [
            recoveredBlock33Stack1 := (recoveredBlock33Stack1) anySatisfy: (recoveredBlock33Stack2).
            recoveredBlock33PC := 84.
        ].
        recoveredBlock33Step = 84 ifTrue: [
            recoveredBlock33Result := recoveredBlock33Stack1.
            recoveredBlock33Done := true.
        ].
    ].
    recoveredBlock33Result
].
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := (recoveredStack1) reject: (recoveredStack2).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2041c248; bytecode file offset 0xd18b2c"
!SGProjectEditorCtrl methodsFor: 'recovered'!
globalFormulaReplaceOldName: recoveredArg1 newFormula: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_68013'.
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
            recoveredStack1 := Set.
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
            recoveredStack1 := SGMonitorStreamDummy.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := [:recoveredBlock23Arg1 | 
    | recoveredBlock23Value0 recoveredBlock23Value1 recoveredBlock23Value2 recoveredBlock23Value3 recoveredBlock23Value4 recoveredBlock23Value5 |
    recoveredBlock23Value0 := recoveredBlock23Arg1.
    recoveredBlock23Value1 := recoveredArg1.
    recoveredBlock23Value2 := recoveredArg2.
    recoveredBlock23Value3 := recoveredLocal4.
    recoveredBlock23Value4 := recoveredLocal1.
    recoveredBlock23Value5 := (recoveredBlock23Value0) replaceFormulaNamed: (recoveredBlock23Value1) withFormula: (recoveredBlock23Value2) monitor: (recoveredBlock23Value3) visited: (recoveredBlock23Value4).
    recoveredBlock23Value5
].
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) makeConfig.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) implementation.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 71] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0) doWithReferencesNonPrimitiveItems: (recoveredStack1) recursive: (recoveredStack2).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) classMakeConfig.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) implementation.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 93] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack0) doWithReferencesNonPrimitiveItems: (recoveredStack1) recursive: (recoveredStack2).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack0) printReady.
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

"ASDBase.ic method 0x204451b0; bytecode file offset 0xd41aa4"
!SGProjectEditorCtrl methodsFor: 'recovered'!
unboundedImports
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
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
            recoveredStack1 := OrderedCollection.
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
            recoveredStack1 := [:block280fead0Arg1 | 
    | block280fead0Value0 block280fead0Value1 |
    block280fead0Value0 := block280fead0Arg1.
    block280fead0Value1 := (block280fead0Value0) isImported.
    block280fead0Value1
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := [:block280feaf4Arg1 | 
    | block280feaf4Value0 block280feaf4Value1 |
    block280feaf4Value0 := block280feaf4Arg1.
    block280feaf4Value1 := (block280feaf4Value0) isExported.
    block280feaf4Value1
].
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) collectVariablesTo: (recoveredStack1) expressions: (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := [:recoveredBlock61Arg1 | 
    | recoveredBlock61Local1 recoveredBlock61Stack0 recoveredBlock61Stack1 recoveredBlock61Stack2 recoveredBlock61Stack3 recoveredBlock61Stack4 recoveredBlock61PC recoveredBlock61Step recoveredBlock61Done recoveredBlock61Result |
    recoveredBlock61Stack0 := self.
    recoveredBlock61PC := 68.
    recoveredBlock61Done := false.
    [recoveredBlock61Done not] whileTrue: [
        recoveredBlock61Step := recoveredBlock61PC.
        recoveredBlock61Step = 68 ifTrue: [
            recoveredBlock61Stack1 := recoveredBlock61Arg1.
            recoveredBlock61PC := 69.
        ].
        recoveredBlock61Step = 69 ifTrue: [
            recoveredBlock61Stack2 := 2.
            recoveredBlock61PC := 71.
        ].
        recoveredBlock61Step = 71 ifTrue: [
            recoveredBlock61Stack1 := (recoveredBlock61Stack1) at: (recoveredBlock61Stack2).
            recoveredBlock61PC := 73.
        ].
        recoveredBlock61Step = 73 ifTrue: [
            recoveredBlock61Stack2 := 2.
            recoveredBlock61PC := 75.
        ].
        recoveredBlock61Step = 75 ifTrue: [
            recoveredBlock61Stack1 := (recoveredBlock61Stack1) at: (recoveredBlock61Stack2).
            recoveredBlock61PC := 77.
        ].
        recoveredBlock61Step = 77 ifTrue: [
            recoveredBlock61Local1 := recoveredBlock61Stack1.
            recoveredBlock61PC := 78.
        ].
        recoveredBlock61Step = 78 ifTrue: [
            recoveredBlock61Stack1 := nil.
            recoveredBlock61PC := 79.
        ].
        recoveredBlock61Step = 79 ifTrue: [
            recoveredBlock61Stack2 := recoveredBlock61Local1.
            recoveredBlock61PC := 80.
        ].
        recoveredBlock61Step = 80 ifTrue: [
            recoveredBlock61Stack2 := (recoveredBlock61Stack2) isEmpty.
            recoveredBlock61PC := 82.
        ].
        recoveredBlock61Step = 82 ifTrue: [
            (recoveredBlock61Stack2) ifTrue: [recoveredBlock61PC := 92] ifFalse: [recoveredBlock61PC := 86].
        ].
        recoveredBlock61Step = 86 ifTrue: [
            recoveredBlock61Stack2 := recoveredBlock61Local1.
            recoveredBlock61PC := 87.
        ].
        recoveredBlock61Step = 87 ifTrue: [
            recoveredBlock61Stack2 := (recoveredBlock61Stack2) first.
            recoveredBlock61PC := 89.
        ].
        recoveredBlock61Step = 89 ifTrue: [
            (recoveredBlock61Stack2 ~~ nil) ifTrue: [recoveredBlock61PC := 103] ifFalse: [recoveredBlock61PC := 92].
        ].
        recoveredBlock61Step = 92 ifTrue: [
            recoveredBlock61PC := 93.
        ].
        recoveredBlock61Step = 93 ifTrue: [
            recoveredBlock61Stack1 := recoveredLocal1.
            recoveredBlock61PC := 96.
        ].
        recoveredBlock61Step = 96 ifTrue: [
            recoveredBlock61Stack2 := recoveredBlock61Arg1.
            recoveredBlock61PC := 97.
        ].
        recoveredBlock61Step = 97 ifTrue: [
            recoveredBlock61Stack3 := 1.
            recoveredBlock61PC := 99.
        ].
        recoveredBlock61Step = 99 ifTrue: [
            recoveredBlock61Stack2 := (recoveredBlock61Stack2) at: (recoveredBlock61Stack3).
            recoveredBlock61PC := 101.
        ].
        recoveredBlock61Step = 101 ifTrue: [
            recoveredBlock61Stack1 := (recoveredBlock61Stack1) add: (recoveredBlock61Stack2).
            recoveredBlock61PC := 103.
        ].
        recoveredBlock61Step = 103 ifTrue: [
            recoveredBlock61Result := recoveredBlock61Stack1.
            recoveredBlock61Done := true.
        ].
    ].
    recoveredBlock61Result
].
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20452200; bytecode file offset 0xd4eae8"
!SGProjectEditorCtrl methodsFor: 'recovered'!
uiMappings: recoveredArg1 type: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 'Process'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) getBypassFunctionsEmptySortedCollection.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Value0 recoveredBlock20Value1 recoveredBlock20Value2 recoveredBlock20Value3 |
    recoveredBlock20Value0 := recoveredLocal1.
    recoveredBlock20Value1 := recoveredBlock20Arg1.
    recoveredBlock20Value2 := (recoveredBlock20Value1) copyWithCollCopy.
    recoveredBlock20Value3 := (recoveredBlock20Value0) add: (recoveredBlock20Value2).
    recoveredBlock20Value3
].
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredPC := 102.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
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
            recoveredStack2 := [:recoveredBlock48Arg1 | 
    | recoveredBlock48Local1 recoveredBlock48Value0 recoveredBlock48Value1 recoveredBlock48Value2 recoveredBlock48Value3 recoveredBlock48Value4 recoveredBlock48Value5 recoveredBlock48Value6 recoveredBlock48Value7 recoveredBlock48Value8 |
    recoveredBlock48Value0 := recoveredLocal1.
    recoveredBlock48Value1 := recoveredBlock48Arg1.
    recoveredBlock48Value2 := (recoveredBlock48Value1) sourceObject.
    recoveredBlock48Value3 := (recoveredBlock48Value2) displayName.
    recoveredBlock48Value4 := [
    | recoveredBlock48Block64Value0 recoveredBlock48Block64Value1 recoveredBlock48Block64Value2 recoveredBlock48Block64Value3 recoveredBlock48Block64Value4 recoveredBlock48Block64Value5 recoveredBlock48Block64Value6 |
    recoveredBlock48Block64Value0 := recoveredLocal1.
    recoveredBlock48Block64Value1 := recoveredBlock48Arg1.
    recoveredBlock48Block64Value2 := (recoveredBlock48Block64Value1) sourceObject.
    recoveredBlock48Block64Value3 := (recoveredBlock48Block64Value2) displayName.
    recoveredBlock48Block64Value4 := OrderedCollection.
    recoveredBlock48Block64Value5 := (recoveredBlock48Block64Value4) new.
    recoveredBlock48Block64Value6 := (recoveredBlock48Block64Value0) at: (recoveredBlock48Block64Value3) put: (recoveredBlock48Block64Value5).
    recoveredBlock48Block64Value6
].
    recoveredBlock48Value5 := (recoveredBlock48Value0) at: (recoveredBlock48Value3) ifAbsent: (recoveredBlock48Value4).
    recoveredBlock48Local1 := recoveredBlock48Value5.
    recoveredBlock48Value6 := recoveredBlock48Local1.
    recoveredBlock48Value7 := recoveredBlock48Arg1.
    recoveredBlock48Value8 := (recoveredBlock48Value6) add: (recoveredBlock48Value7).
    recoveredBlock48Value8
].
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiElementMappings.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20466eac; bytecode file offset 0xd637a8"
!SGProjectEditorCtrl methodsFor: 'recovered'!
fileOutFormulas: recoveredArg1 file: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := CfsWriteFileStream.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) openEmpty: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 53].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := RBUserInfo.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := 'Could not open file '.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) prompt.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := MainController.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) asdImportExportOptions.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionExportEditorProjectFormelDatFormatOptions.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := [:recoveredBlock65Arg1 | 
    | recoveredBlock65Value0 recoveredBlock65Value1 recoveredBlock65Value2 recoveredBlock65Value3 recoveredBlock65Value4 |
    recoveredBlock65Value0 := recoveredLocal1.
    recoveredBlock65Value1 := recoveredBlock65Value0.
    recoveredBlock65Value2 := recoveredBlock65Arg1.
    recoveredBlock65Value3 := (recoveredBlock65Value2) fileOutString.
    (recoveredBlock65Value1) nextPutAll: (recoveredBlock65Value3).
    recoveredBlock65Value4 := (recoveredBlock65Value0) cr.
    recoveredBlock65Value4
].
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredPC := 114.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := [:recoveredBlock93Arg1 | 
    | recoveredBlock93Value0 recoveredBlock93Value1 recoveredBlock93Value2 recoveredBlock93Value3 recoveredBlock93Value4 |
    recoveredBlock93Value0 := recoveredLocal1.
    recoveredBlock93Value1 := recoveredBlock93Value0.
    recoveredBlock93Value2 := recoveredBlock93Arg1.
    recoveredBlock93Value3 := (recoveredBlock93Value2) fileOutStringForOldVersionWithoutComment.
    (recoveredBlock93Value1) nextPutAll: (recoveredBlock93Value3).
    recoveredBlock93Value4 := (recoveredBlock93Value0) cr.
    recoveredBlock93Value4
].
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack1) close.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20483ef8; bytecode file offset 0xd807e8"
!SGProjectEditorCtrl methodsFor: 'recovered'!
removeReferencedModule: recoveredArg1 taskOrBypassFunctions: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := [:block28102868Arg1 | 
    | block28102868Value0 block28102868Value1 block28102868Value2 |
    block28102868Value0 := block28102868Arg1.
    block28102868Value1 := (block28102868Value0) sgClass.
    block28102868Value2 := (block28102868Value1) isProcessClass.
    block28102868Value2
].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := [:recoveredBlock43Arg1 | 
    | recoveredBlock43Local1 recoveredBlock43Stack0 recoveredBlock43Stack1 recoveredBlock43Stack2 recoveredBlock43Stack3 recoveredBlock43Stack4 recoveredBlock43PC recoveredBlock43Step recoveredBlock43Done recoveredBlock43Result |
    recoveredBlock43Stack0 := self.
    recoveredBlock43PC := 50.
    recoveredBlock43Done := false.
    [recoveredBlock43Done not] whileTrue: [
        recoveredBlock43Step := recoveredBlock43PC.
        recoveredBlock43Step = 50 ifTrue: [
            recoveredBlock43Stack1 := OrderedCollection.
            recoveredBlock43PC := 52.
        ].
        recoveredBlock43Step = 52 ifTrue: [
            recoveredBlock43Stack2 := recoveredBlock43Arg1.
            recoveredBlock43PC := 55.
        ].
        recoveredBlock43Step = 55 ifTrue: [
            recoveredBlock43Stack1 := (recoveredBlock43Stack1) with: (recoveredBlock43Stack2).
            recoveredBlock43PC := 57.
        ].
        recoveredBlock43Step = 57 ifTrue: [
            recoveredBlock43Local1 := recoveredBlock43Stack1.
            recoveredBlock43PC := 60.
        ].
        recoveredBlock43Step = 60 ifTrue: [
            recoveredBlock43Stack1 := recoveredBlock43Arg1.
            recoveredBlock43PC := 63.
        ].
        recoveredBlock43Step = 63 ifTrue: [
            recoveredBlock43Stack1 := (recoveredBlock43Stack1) sgClass.
            recoveredBlock43PC := 64.
        ].
        recoveredBlock43Step = 64 ifTrue: [
            recoveredBlock43Stack2 := recoveredBlock43Local1.
            recoveredBlock43PC := 67.
        ].
        recoveredBlock43Step = 67 ifTrue: [
            recoveredBlock43Stack3 := OrderedCollection.
            recoveredBlock43PC := 69.
        ].
        recoveredBlock43Step = 69 ifTrue: [
            recoveredBlock43Stack3 := (recoveredBlock43Stack3) new.
            recoveredBlock43PC := 71.
        ].
        recoveredBlock43Step = 71 ifTrue: [
            (recoveredBlock43Stack1) collectProcessInstVarsTo: (recoveredBlock43Stack2) visitColl: (recoveredBlock43Stack3).
            recoveredBlock43PC := 73.
        ].
        recoveredBlock43Step = 73 ifTrue: [
            recoveredBlock43Stack1 := nil.
            recoveredBlock43PC := 74.
        ].
        recoveredBlock43Step = 74 ifTrue: [
            recoveredBlock43Stack2 := recoveredArg2.
            recoveredBlock43PC := 77.
        ].
        recoveredBlock43Step = 77 ifTrue: [
            recoveredBlock43Stack3 := [:recoveredBlock43Block77Arg1 | 
    | recoveredBlock43Block77Value0 recoveredBlock43Block77Value1 recoveredBlock43Block77Value2 |
    recoveredBlock43Block77Value0 := recoveredBlock43Block77Arg1.
    recoveredBlock43Block77Value1 := recoveredBlock43Local1.
    recoveredBlock43Block77Value2 := (recoveredBlock43Block77Value0) isProcessInstVarsUsed: (recoveredBlock43Block77Value1).
    recoveredBlock43Block77Value2
].
            recoveredBlock43PC := 91.
        ].
        recoveredBlock43Step = 91 ifTrue: [
            recoveredBlock43Stack2 := (recoveredBlock43Stack2) anySatisfy: (recoveredBlock43Stack3).
            recoveredBlock43PC := 93.
        ].
        recoveredBlock43Step = 93 ifTrue: [
            (recoveredBlock43Stack2) ifTrue: [recoveredBlock43PC := 96] ifFalse: [recoveredBlock43PC := 105].
        ].
        recoveredBlock43Step = 96 ifTrue: [
            recoveredBlock43PC := 97.
        ].
        recoveredBlock43Step = 97 ifTrue: [
            recoveredBlock43Stack1 := recoveredLocal3.
            recoveredBlock43PC := 100.
        ].
        recoveredBlock43Step = 100 ifTrue: [
            recoveredBlock43Stack2 := recoveredBlock43Arg1.
            recoveredBlock43PC := 103.
        ].
        recoveredBlock43Step = 103 ifTrue: [
            recoveredBlock43Stack1 := (recoveredBlock43Stack1) add: (recoveredBlock43Stack2).
            recoveredBlock43PC := 105.
        ].
        recoveredBlock43Step = 105 ifTrue: [
            recoveredBlock43Result := recoveredBlock43Stack1.
            recoveredBlock43Done := true.
        ].
    ].
    recoveredBlock43Result
].
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack2 := [:recoveredBlock111Arg1 | 
    | recoveredBlock111Value0 recoveredBlock111Value1 recoveredBlock111Value2 |
    recoveredBlock111Value0 := recoveredLocal3.
    recoveredBlock111Value1 := recoveredBlock111Arg1.
    recoveredBlock111Value2 := (recoveredBlock111Value0) includes: (recoveredBlock111Value1).
    recoveredBlock111Value2
].
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := (recoveredStack1) reject: (recoveredStack2).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2049ce5c; bytecode file offset 0xd99784"
!SGProjectEditorCtrl methodsFor: 'recovered'!
getProjectFileWithDestination
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedProjectFiles.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := RBFileSelectionPrompter.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) first.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) buildFromAbstractPath.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) removeDoubleBackslashes.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) removeDoubleBackslashes.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) searchPath: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := '*.*'.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) searchMask: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) accessType: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := 'Project File'.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) title: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := (recoveredStack2) first.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := (recoveredStack2) fileName.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1) fileName: (recoveredStack2).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) prompt.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) getProjectFile: (recoveredStack1) toPath: (recoveredStack2).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := RBPathDialog.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := (recoveredStack2) first.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := (recoveredStack2) buildFromAbstractPath.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack1) firstSelection: (recoveredStack2).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := (recoveredStack0) prompt.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 102] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := (recoveredStack0) path.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := CfsDirectoryDescriptor.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := (recoveredStack1) pathSeparator.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 128] ifFalse: [recoveredPC := 120].
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := CfsDirectoryDescriptor.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := (recoveredStack1) pathSeparatorString.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack0 := (recoveredStack0) getProjectFiles: (recoveredStack1) toPath: (recoveredStack2).
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204a8f8c; bytecode file offset 0xda5894"
!SGProjectEditorCtrl methodsFor: 'recovered'!
fileInFormulasFile: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CfsReadFileStream.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) open: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 43].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := RBUserInfo.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := 'Could not open file '.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) prompt.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredPC := 85.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) nextLine.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) subStrings.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 81].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyWith: (recoveredStack2).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := (recoveredStack1) atEnd.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 92] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack1) close.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := [:recoveredBlock107Arg1 | 
    | recoveredBlock107Local1 recoveredBlock107Stack0 recoveredBlock107Stack1 recoveredBlock107Stack2 recoveredBlock107Stack3 recoveredBlock107Stack4 recoveredBlock107PC recoveredBlock107Step recoveredBlock107Done recoveredBlock107Result |
    recoveredBlock107Stack0 := self.
    recoveredBlock107PC := 114.
    recoveredBlock107Done := false.
    [recoveredBlock107Done not] whileTrue: [
        recoveredBlock107Step := recoveredBlock107PC.
        recoveredBlock107Step = 114 ifTrue: [
            recoveredBlock107Stack1 := nil.
            recoveredBlock107PC := 115.
        ].
        recoveredBlock107Step = 115 ifTrue: [
            recoveredBlock107Stack2 := RBFormulaId.
            recoveredBlock107PC := 117.
        ].
        recoveredBlock107Step = 117 ifTrue: [
            recoveredBlock107Stack3 := recoveredBlock107Arg1.
            recoveredBlock107PC := 118.
        ].
        recoveredBlock107Step = 118 ifTrue: [
            recoveredBlock107Stack2 := (recoveredBlock107Stack2) createFromFileOutString: (recoveredBlock107Stack3).
            recoveredBlock107PC := 120.
        ].
        recoveredBlock107Step = 120 ifTrue: [
            recoveredBlock107Stack3 := recoveredBlock107Stack2.
            recoveredBlock107PC := 121.
        ].
        recoveredBlock107Step = 121 ifTrue: [
            recoveredBlock107Local1 := recoveredBlock107Stack3.
            recoveredBlock107PC := 122.
        ].
        recoveredBlock107Step = 122 ifTrue: [
            (recoveredBlock107Stack2 == nil) ifTrue: [recoveredBlock107PC := 133] ifFalse: [recoveredBlock107PC := 126].
        ].
        recoveredBlock107Step = 126 ifTrue: [
            recoveredBlock107PC := 127.
        ].
        recoveredBlock107Step = 127 ifTrue: [
            recoveredBlock107Stack1 := recoveredLocal2.
            recoveredBlock107PC := 130.
        ].
        recoveredBlock107Step = 130 ifTrue: [
            recoveredBlock107Stack2 := recoveredBlock107Local1.
            recoveredBlock107PC := 131.
        ].
        recoveredBlock107Step = 131 ifTrue: [
            recoveredBlock107Stack1 := (recoveredBlock107Stack1) add: (recoveredBlock107Stack2).
            recoveredBlock107PC := 133.
        ].
        recoveredBlock107Step = 133 ifTrue: [
            recoveredBlock107Result := recoveredBlock107Stack1.
            recoveredBlock107Done := true.
        ].
    ].
    recoveredBlock107Result
].
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x204bdcb4; bytecode file offset 0xdba5c0"
!SGProjectEditorCtrl methodsFor: 'recovered'!
getUnusedElementsRecursive: recoveredArg1 withProcessDialog: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := Set.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal5 := recoveredValue1.
    recoveredValue2 := recoveredLocal5.
    recoveredValue3 := (self) item.
    (recoveredValue2) add: (recoveredValue3).
    recoveredValue4 := (self) item.
    recoveredValue5 := (recoveredValue4) complexVariables.
    recoveredLocal4 := recoveredValue5.
    recoveredValue6 := recoveredLocal4.
    recoveredValue7 := (recoveredValue6) size.
    recoveredLocal3 := recoveredValue7.
    recoveredLocal1 := 0.
    recoveredValue8 := recoveredLocal4.
    recoveredValue9 := [:recoveredBlock39Arg1 | 
    | recoveredBlock39Stack0 recoveredBlock39Stack1 recoveredBlock39Stack2 recoveredBlock39Stack3 recoveredBlock39Stack4 recoveredBlock39Stack5 recoveredBlock39Stack6 recoveredBlock39Stack7 recoveredBlock39PC recoveredBlock39Step recoveredBlock39Done recoveredBlock39Result |
    recoveredBlock39Stack0 := self.
    recoveredBlock39PC := 46.
    recoveredBlock39Done := false.
    [recoveredBlock39Done not] whileTrue: [
        recoveredBlock39Step := recoveredBlock39PC.
        recoveredBlock39Step = 46 ifTrue: [
            recoveredBlock39Stack1 := recoveredBlock39Arg1.
            recoveredBlock39PC := 47.
        ].
        recoveredBlock39Step = 47 ifTrue: [
            recoveredBlock39Stack1 := (recoveredBlock39Stack1) isReference.
            recoveredBlock39PC := 49.
        ].
        recoveredBlock39Step = 49 ifTrue: [
            recoveredBlock39Stack2 := recoveredBlock39Arg1.
            recoveredBlock39PC := 50.
        ].
        recoveredBlock39Step = 50 ifTrue: [
            recoveredBlock39Stack2 := (recoveredBlock39Stack2) isImported.
            recoveredBlock39PC := 52.
        ].
        recoveredBlock39Step = 52 ifTrue: [
            recoveredBlock39Stack1 := (recoveredBlock39Stack1) | (recoveredBlock39Stack2).
            recoveredBlock39PC := 54.
        ].
        recoveredBlock39Step = 54 ifTrue: [
            (recoveredBlock39Stack1) ifTrue: [recoveredBlock39PC := 75] ifFalse: [recoveredBlock39PC := 58].
        ].
        recoveredBlock39Step = 58 ifTrue: [
            recoveredBlock39Stack1 := self.
            recoveredBlock39PC := 59.
        ].
        recoveredBlock39Step = 59 ifTrue: [
            recoveredBlock39Stack2 := recoveredArg1.
            recoveredBlock39PC := 62.
        ].
        recoveredBlock39Step = 62 ifTrue: [
            recoveredBlock39Stack3 := recoveredBlock39Arg1.
            recoveredBlock39PC := 63.
        ].
        recoveredBlock39Step = 63 ifTrue: [
            recoveredBlock39Stack4 := recoveredLocal5.
            recoveredBlock39PC := 66.
        ].
        recoveredBlock39Step = 66 ifTrue: [
            recoveredBlock39Stack5 := OrderedCollection.
            recoveredBlock39PC := 68.
        ].
        recoveredBlock39Step = 68 ifTrue: [
            recoveredBlock39Stack5 := (recoveredBlock39Stack5) new.
            recoveredBlock39PC := 69.
        ].
        recoveredBlock39Step = 69 ifTrue: [
            recoveredBlock39Stack6 := recoveredArg2.
            recoveredBlock39PC := 72.
        ].
        recoveredBlock39Step = 72 ifTrue: [
            (recoveredBlock39Stack1) getUnusedElementsRecursive: (recoveredBlock39Stack2) complexVariable: (recoveredBlock39Stack3) visited: (recoveredBlock39Stack4) parentCollection: (recoveredBlock39Stack5) withProcessDialog: (recoveredBlock39Stack6).
            recoveredBlock39PC := 75.
        ].
        recoveredBlock39Step = 75 ifTrue: [
            recoveredBlock39Stack1 := recoveredLocal1.
            recoveredBlock39PC := 78.
        ].
        recoveredBlock39Step = 78 ifTrue: [
            recoveredBlock39Stack1 := (recoveredBlock39Stack1) + (1).
            recoveredBlock39PC := 79.
        ].
        recoveredBlock39Step = 79 ifTrue: [
            recoveredLocal1 := recoveredBlock39Stack1.
            recoveredBlock39PC := 82.
        ].
        recoveredBlock39Step = 82 ifTrue: [
            recoveredBlock39Stack1 := nil.
            recoveredBlock39PC := 83.
        ].
        recoveredBlock39Step = 83 ifTrue: [
            recoveredBlock39Stack2 := recoveredArg2.
            recoveredBlock39PC := 86.
        ].
        recoveredBlock39Step = 86 ifTrue: [
            (recoveredBlock39Stack2 == nil) ifTrue: [recoveredBlock39PC := 141] ifFalse: [recoveredBlock39PC := 90].
        ].
        recoveredBlock39Step = 90 ifTrue: [
            recoveredBlock39PC := 91.
        ].
        recoveredBlock39Step = 91 ifTrue: [
            recoveredBlock39Stack1 := recoveredArg2.
            recoveredBlock39PC := 94.
        ].
        recoveredBlock39Step = 94 ifTrue: [
            recoveredBlock39Stack2 := recoveredLocal1.
            recoveredBlock39PC := 97.
        ].
        recoveredBlock39Step = 97 ifTrue: [
            recoveredBlock39Stack3 := recoveredLocal3.
            recoveredBlock39PC := 100.
        ].
        recoveredBlock39Step = 100 ifTrue: [
            recoveredBlock39Stack2 := (recoveredBlock39Stack2) / (recoveredBlock39Stack3).
            recoveredBlock39PC := 102.
        ].
        recoveredBlock39Step = 102 ifTrue: [
            (recoveredBlock39Stack1) fractionComplete: (recoveredBlock39Stack2).
            recoveredBlock39PC := 104.
        ].
        recoveredBlock39Step = 104 ifTrue: [
            recoveredBlock39Stack1 := recoveredArg2.
            recoveredBlock39PC := 107.
        ].
        recoveredBlock39Step = 107 ifTrue: [
            recoveredBlock39Stack2 := recoveredBlock39Arg1.
            recoveredBlock39PC := 108.
        ].
        recoveredBlock39Step = 108 ifTrue: [
            recoveredBlock39Stack2 := (recoveredBlock39Stack2) label.
            recoveredBlock39PC := 110.
        ].
        recoveredBlock39Step = 110 ifTrue: [
            (recoveredBlock39Stack1) messageString: (recoveredBlock39Stack2).
            recoveredBlock39PC := 112.
        ].
        recoveredBlock39Step = 112 ifTrue: [
            recoveredBlock39Stack1 := [
    | block281063c0Value0 block281063c0Value1 block281063c0Value2 |
    block281063c0Value0 := CwAppContext.
    block281063c0Value1 := (block281063c0Value0) default.
    block281063c0Value2 := (block281063c0Value1) readAndDispatch.
    block281063c0Value2
].
            recoveredBlock39PC := 114.
        ].
        recoveredBlock39Step = 114 ifTrue: [
            recoveredBlock39PC := 125.
        ].
        recoveredBlock39Step = 125 ifTrue: [
            (recoveredBlock39Stack1) whileTrue.
            recoveredBlock39PC := 127.
        ].
        recoveredBlock39Step = 127 ifTrue: [
            recoveredBlock39Stack1 := nil.
            recoveredBlock39PC := 128.
        ].
        recoveredBlock39Step = 128 ifTrue: [
            recoveredBlock39Stack2 := recoveredArg2.
            recoveredBlock39PC := 131.
        ].
        recoveredBlock39Step = 131 ifTrue: [
            recoveredBlock39Stack2 := (recoveredBlock39Stack2) cancelled.
            recoveredBlock39PC := 133.
        ].
        recoveredBlock39Step = 133 ifTrue: [
            (recoveredBlock39Stack2) ifTrue: [recoveredBlock39PC := 136] ifFalse: [recoveredBlock39PC := 141].
        ].
        recoveredBlock39Step = 136 ifTrue: [
            recoveredBlock39PC := 137.
        ].
        recoveredBlock39Step = 137 ifTrue: [
            recoveredBlock39Stack1 := recoveredArg1.
            recoveredBlock39PC := 140.
        ].
        recoveredBlock39Step = 140 ifTrue: [
            ^recoveredBlock39Stack1
        ].
        recoveredBlock39Step = 141 ifTrue: [
            recoveredBlock39Result := recoveredBlock39Stack1.
            recoveredBlock39Done := true.
        ].
    ].
    recoveredBlock39Result
].
    (recoveredValue8) do: (recoveredValue9).
    recoveredValue10 := recoveredArg1.
    ^recoveredValue10
! !

"ASDBase.ic method 0x204e71e0; bytecode file offset 0xde3af0"
!SGProjectEditorCtrl methodsFor: 'recovered'!
getUnusedElementsRecursive: recoveredArg1 makeConfigDict: recoveredArg2 withProcessDialog: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := Set.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal5 := recoveredValue1.
    recoveredValue2 := recoveredLocal5.
    recoveredValue3 := (self) item.
    (recoveredValue2) add: (recoveredValue3).
    recoveredValue4 := (self) item.
    recoveredValue5 := (recoveredValue4) complexVariables.
    recoveredLocal4 := recoveredValue5.
    recoveredValue6 := recoveredLocal4.
    recoveredValue7 := (recoveredValue6) size.
    recoveredLocal3 := recoveredValue7.
    recoveredLocal1 := 0.
    recoveredValue8 := recoveredLocal4.
    recoveredValue9 := [:recoveredBlock39Arg1 | 
    | recoveredBlock39Stack0 recoveredBlock39Stack1 recoveredBlock39Stack2 recoveredBlock39Stack3 recoveredBlock39Stack4 recoveredBlock39Stack5 recoveredBlock39Stack6 recoveredBlock39Stack7 recoveredBlock39Stack8 recoveredBlock39PC recoveredBlock39Step recoveredBlock39Done recoveredBlock39Result |
    recoveredBlock39Stack0 := self.
    recoveredBlock39PC := 46.
    recoveredBlock39Done := false.
    [recoveredBlock39Done not] whileTrue: [
        recoveredBlock39Step := recoveredBlock39PC.
        recoveredBlock39Step = 46 ifTrue: [
            recoveredBlock39Stack1 := recoveredBlock39Arg1.
            recoveredBlock39PC := 47.
        ].
        recoveredBlock39Step = 47 ifTrue: [
            recoveredBlock39Stack1 := (recoveredBlock39Stack1) isReference.
            recoveredBlock39PC := 49.
        ].
        recoveredBlock39Step = 49 ifTrue: [
            recoveredBlock39Stack2 := recoveredBlock39Arg1.
            recoveredBlock39PC := 50.
        ].
        recoveredBlock39Step = 50 ifTrue: [
            recoveredBlock39Stack2 := (recoveredBlock39Stack2) isImported.
            recoveredBlock39PC := 52.
        ].
        recoveredBlock39Step = 52 ifTrue: [
            recoveredBlock39Stack1 := (recoveredBlock39Stack1) | (recoveredBlock39Stack2).
            recoveredBlock39PC := 54.
        ].
        recoveredBlock39Step = 54 ifTrue: [
            (recoveredBlock39Stack1) ifTrue: [recoveredBlock39PC := 78] ifFalse: [recoveredBlock39PC := 58].
        ].
        recoveredBlock39Step = 58 ifTrue: [
            recoveredBlock39Stack1 := self.
            recoveredBlock39PC := 59.
        ].
        recoveredBlock39Step = 59 ifTrue: [
            recoveredBlock39Stack2 := recoveredArg1.
            recoveredBlock39PC := 62.
        ].
        recoveredBlock39Step = 62 ifTrue: [
            recoveredBlock39Stack3 := recoveredArg2.
            recoveredBlock39PC := 65.
        ].
        recoveredBlock39Step = 65 ifTrue: [
            recoveredBlock39Stack4 := recoveredBlock39Arg1.
            recoveredBlock39PC := 66.
        ].
        recoveredBlock39Step = 66 ifTrue: [
            recoveredBlock39Stack5 := recoveredLocal5.
            recoveredBlock39PC := 69.
        ].
        recoveredBlock39Step = 69 ifTrue: [
            recoveredBlock39Stack6 := OrderedCollection.
            recoveredBlock39PC := 71.
        ].
        recoveredBlock39Step = 71 ifTrue: [
            recoveredBlock39Stack6 := (recoveredBlock39Stack6) new.
            recoveredBlock39PC := 72.
        ].
        recoveredBlock39Step = 72 ifTrue: [
            recoveredBlock39Stack7 := recoveredArg3.
            recoveredBlock39PC := 75.
        ].
        recoveredBlock39Step = 75 ifTrue: [
            (recoveredBlock39Stack1) getUnusedElementsRecursive: (recoveredBlock39Stack2) makeConfigDict: (recoveredBlock39Stack3) complexVariable: (recoveredBlock39Stack4) visited: (recoveredBlock39Stack5) parentCollection: (recoveredBlock39Stack6) withProcessDialog: (recoveredBlock39Stack7).
            recoveredBlock39PC := 78.
        ].
        recoveredBlock39Step = 78 ifTrue: [
            recoveredBlock39Stack1 := recoveredLocal1.
            recoveredBlock39PC := 81.
        ].
        recoveredBlock39Step = 81 ifTrue: [
            recoveredBlock39Stack1 := (recoveredBlock39Stack1) + (1).
            recoveredBlock39PC := 82.
        ].
        recoveredBlock39Step = 82 ifTrue: [
            recoveredLocal1 := recoveredBlock39Stack1.
            recoveredBlock39PC := 85.
        ].
        recoveredBlock39Step = 85 ifTrue: [
            recoveredBlock39Stack1 := nil.
            recoveredBlock39PC := 86.
        ].
        recoveredBlock39Step = 86 ifTrue: [
            recoveredBlock39Stack2 := recoveredArg3.
            recoveredBlock39PC := 89.
        ].
        recoveredBlock39Step = 89 ifTrue: [
            (recoveredBlock39Stack2 == nil) ifTrue: [recoveredBlock39PC := 150] ifFalse: [recoveredBlock39PC := 92].
        ].
        recoveredBlock39Step = 92 ifTrue: [
            recoveredBlock39PC := 93.
        ].
        recoveredBlock39Step = 93 ifTrue: [
            recoveredBlock39Stack1 := recoveredArg3.
            recoveredBlock39PC := 96.
        ].
        recoveredBlock39Step = 96 ifTrue: [
            recoveredBlock39Stack2 := recoveredLocal1.
            recoveredBlock39PC := 99.
        ].
        recoveredBlock39Step = 99 ifTrue: [
            recoveredBlock39Stack3 := recoveredLocal3.
            recoveredBlock39PC := 102.
        ].
        recoveredBlock39Step = 102 ifTrue: [
            recoveredBlock39Stack2 := (recoveredBlock39Stack2) / (recoveredBlock39Stack3).
            recoveredBlock39PC := 104.
        ].
        recoveredBlock39Step = 104 ifTrue: [
            (recoveredBlock39Stack1) fractionComplete: (recoveredBlock39Stack2).
            recoveredBlock39PC := 106.
        ].
        recoveredBlock39Step = 106 ifTrue: [
            recoveredBlock39Stack1 := recoveredArg3.
            recoveredBlock39PC := 109.
        ].
        recoveredBlock39Step = 109 ifTrue: [
            recoveredBlock39Stack2 := recoveredBlock39Arg1.
            recoveredBlock39PC := 110.
        ].
        recoveredBlock39Step = 110 ifTrue: [
            recoveredBlock39Stack2 := (recoveredBlock39Stack2) label.
            recoveredBlock39PC := 112.
        ].
        recoveredBlock39Step = 112 ifTrue: [
            (recoveredBlock39Stack1) messageString: (recoveredBlock39Stack2).
            recoveredBlock39PC := 114.
        ].
        recoveredBlock39Step = 114 ifTrue: [
            recoveredBlock39Stack1 := [
    | block28108d3cValue0 block28108d3cValue1 block28108d3cValue2 |
    block28108d3cValue0 := CwAppContext.
    block28108d3cValue1 := (block28108d3cValue0) default.
    block28108d3cValue2 := (block28108d3cValue1) readAndDispatch.
    block28108d3cValue2
].
            recoveredBlock39PC := 116.
        ].
        recoveredBlock39Step = 116 ifTrue: [
            recoveredBlock39PC := 127.
        ].
        recoveredBlock39Step = 127 ifTrue: [
            (recoveredBlock39Stack1) whileTrue.
            recoveredBlock39PC := 129.
        ].
        recoveredBlock39Step = 129 ifTrue: [
            recoveredBlock39Stack1 := nil.
            recoveredBlock39PC := 130.
        ].
        recoveredBlock39Step = 130 ifTrue: [
            recoveredBlock39Stack2 := recoveredArg3.
            recoveredBlock39PC := 133.
        ].
        recoveredBlock39Step = 133 ifTrue: [
            recoveredBlock39Stack2 := (recoveredBlock39Stack2) cancelled.
            recoveredBlock39PC := 135.
        ].
        recoveredBlock39Step = 135 ifTrue: [
            (recoveredBlock39Stack2) ifTrue: [recoveredBlock39PC := 138] ifFalse: [recoveredBlock39PC := 150].
        ].
        recoveredBlock39Step = 138 ifTrue: [
            recoveredBlock39PC := 139.
        ].
        recoveredBlock39Step = 139 ifTrue: [
            recoveredBlock39Stack1 := OrderedCollection.
            recoveredBlock39PC := 141.
        ].
        recoveredBlock39Step = 141 ifTrue: [
            recoveredBlock39Stack2 := recoveredArg1.
            recoveredBlock39PC := 144.
        ].
        recoveredBlock39Step = 144 ifTrue: [
            recoveredBlock39Stack3 := recoveredArg2.
            recoveredBlock39PC := 147.
        ].
        recoveredBlock39Step = 147 ifTrue: [
            recoveredBlock39Stack1 := (recoveredBlock39Stack1) with: (recoveredBlock39Stack2) with: (recoveredBlock39Stack3).
            recoveredBlock39PC := 149.
        ].
        recoveredBlock39Step = 149 ifTrue: [
            ^recoveredBlock39Stack1
        ].
        recoveredBlock39Step = 150 ifTrue: [
            recoveredBlock39Result := recoveredBlock39Stack1.
            recoveredBlock39Done := true.
        ].
    ].
    recoveredBlock39Result
].
    (recoveredValue8) do: (recoveredValue9).
    recoveredValue10 := OrderedCollection.
    recoveredValue11 := recoveredArg1.
    recoveredValue12 := recoveredArg2.
    recoveredValue13 := (recoveredValue10) with: (recoveredValue11) with: (recoveredValue12).
    ^recoveredValue13
! !

"ASDBase.ic method 0x20512f1c; bytecode file offset 0xe0f818"
!SGProjectEditorCtrl methodsFor: 'recovered'!
unReferencedElementsWithMakeConfigDict
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := super unReferencedElementsProjectRecursive.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 46.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) removeReferencedModuleInOSLogic: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) removeReferencedModuleInEhooks: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := IdentityDictionary.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := IdentityDictionary.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) userInterface.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) outlineTree.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0) getUnusedElementsRecursive: (recoveredStack1) makeConfigDict: (recoveredStack2) withProcessDialog: (recoveredStack3).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredPC := 121.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) userInterface.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) outlineTree.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock85Value0 recoveredBlock85Value1 recoveredBlock85Value2 |
    recoveredBlock85Value0 := (self) userInterface.
    recoveredBlock85Value1 := [:recoveredBlock85Block94Arg1 | 
    | recoveredBlock85Block94Value0 recoveredBlock85Block94Value1 recoveredBlock85Block94Value2 recoveredBlock85Block94Value3 |
    recoveredBlock85Block94Value0 := recoveredLocal2.
    recoveredBlock85Block94Value1 := recoveredLocal1.
    recoveredBlock85Block94Value2 := recoveredBlock85Block94Arg1.
    recoveredBlock85Block94Value3 := (self) getUnusedElementsRecursive: (recoveredBlock85Block94Value0) makeConfigDict: (recoveredBlock85Block94Value1) withProcessDialog: (recoveredBlock85Block94Value2).
    recoveredBlock85Block94Value3
].
    recoveredBlock85Value2 := (recoveredBlock85Value0) execLongOperation: (recoveredBlock85Value1) message: ('Searching for unUsed elements..') allowCancel: (true) showProgress: (true).
    recoveredBlock85Value2
].
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack0) deferRedraw: (recoveredStack1).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := [:recoveredBlock124Arg1 | 
    | recoveredBlock124Value0 recoveredBlock124Value1 recoveredBlock124Value2 |
    recoveredBlock124Value0 := recoveredLocal6.
    recoveredBlock124Value1 := recoveredBlock124Arg1.
    recoveredBlock124Value2 := (recoveredBlock124Value0) addAll: (recoveredBlock124Value1).
    recoveredBlock124Value2
].
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack0 := (recoveredStack0) removeReferencedModuleInOSLogic: (recoveredStack1).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := (recoveredStack0) removeReferencedModuleInEhooks: (recoveredStack1).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack0 := (recoveredStack0) removeUsedComplexProjectRecursive: (recoveredStack1).
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := (recoveredStack0) removeReferencedGlobals: (recoveredStack1).
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack0 := (recoveredStack0) with: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2052dff8; bytecode file offset 0xe2a92c"
!SGProjectEditorCtrl methodsFor: 'recovered'!
deleteSelectedImplTypes
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedImplTypes.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := ReadWriteStream.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := Locale.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) current.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) preferredStringClass.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) on: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := 'Delete impl. type '.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := (recoveredStack2) implTypeName.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredPC := 124.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := 'Delete the following impl. types: '.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := [:recoveredBlock74Arg1 :recoveredBlock74Arg2 | 
    | recoveredBlock74Stack0 recoveredBlock74Stack1 recoveredBlock74Stack2 recoveredBlock74Stack3 recoveredBlock74Stack4 recoveredBlock74PC recoveredBlock74Step recoveredBlock74Done recoveredBlock74Result |
    recoveredBlock74Stack0 := self.
    recoveredBlock74PC := 80.
    recoveredBlock74Done := false.
    [recoveredBlock74Done not] whileTrue: [
        recoveredBlock74Step := recoveredBlock74PC.
        recoveredBlock74Step = 80 ifTrue: [
            recoveredBlock74Stack1 := recoveredBlock74Arg2.
            recoveredBlock74PC := 81.
        ].
        recoveredBlock74Step = 81 ifTrue: [
            recoveredBlock74Stack2 := 50.
            recoveredBlock74PC := 83.
        ].
        recoveredBlock74Step = 83 ifTrue: [
            recoveredBlock74Stack1 := (recoveredBlock74Stack1) < (recoveredBlock74Stack2).
            recoveredBlock74PC := 84.
        ].
        recoveredBlock74Step = 84 ifTrue: [
            (recoveredBlock74Stack1) ifTrue: [recoveredBlock74PC := 88] ifFalse: [recoveredBlock74PC := 102].
        ].
        recoveredBlock74Step = 88 ifTrue: [
            recoveredBlock74Stack1 := recoveredLocal2.
            recoveredBlock74PC := 91.
        ].
        recoveredBlock74Step = 91 ifTrue: [
            recoveredBlock74Stack2 := recoveredBlock74Stack1.
            recoveredBlock74PC := 92.
        ].
        recoveredBlock74Step = 92 ifTrue: [
            (recoveredBlock74Stack2) cr.
            recoveredBlock74PC := 94.
        ].
        recoveredBlock74Step = 94 ifTrue: [
            recoveredBlock74Stack2 := recoveredBlock74Arg1.
            recoveredBlock74PC := 95.
        ].
        recoveredBlock74Step = 95 ifTrue: [
            recoveredBlock74Stack2 := (recoveredBlock74Stack2) implTypeName.
            recoveredBlock74PC := 97.
        ].
        recoveredBlock74Step = 97 ifTrue: [
            recoveredBlock74Stack1 := (recoveredBlock74Stack1) nextPutAll: (recoveredBlock74Stack2).
            recoveredBlock74PC := 99.
        ].
        recoveredBlock74Step = 99 ifTrue: [
            recoveredBlock74PC := 121.
        ].
        recoveredBlock74Step = 102 ifTrue: [
            recoveredBlock74Stack1 := nil.
            recoveredBlock74PC := 103.
        ].
        recoveredBlock74Step = 103 ifTrue: [
            recoveredBlock74Stack2 := recoveredBlock74Arg2.
            recoveredBlock74PC := 104.
        ].
        recoveredBlock74Step = 104 ifTrue: [
            recoveredBlock74Stack3 := 50.
            recoveredBlock74PC := 106.
        ].
        recoveredBlock74Step = 106 ifTrue: [
            recoveredBlock74Stack2 := (recoveredBlock74Stack2) = (recoveredBlock74Stack3).
            recoveredBlock74PC := 107.
        ].
        recoveredBlock74Step = 107 ifTrue: [
            (recoveredBlock74Stack2) ifTrue: [recoveredBlock74PC := 110] ifFalse: [recoveredBlock74PC := 121].
        ].
        recoveredBlock74Step = 110 ifTrue: [
            recoveredBlock74PC := 111.
        ].
        recoveredBlock74Step = 111 ifTrue: [
            recoveredBlock74Stack1 := recoveredLocal2.
            recoveredBlock74PC := 114.
        ].
        recoveredBlock74Step = 114 ifTrue: [
            recoveredBlock74Stack2 := recoveredBlock74Stack1.
            recoveredBlock74PC := 115.
        ].
        recoveredBlock74Step = 115 ifTrue: [
            (recoveredBlock74Stack2) cr.
            recoveredBlock74PC := 117.
        ].
        recoveredBlock74Step = 117 ifTrue: [
            recoveredBlock74Stack2 := '...'.
            recoveredBlock74PC := 119.
        ].
        recoveredBlock74Step = 119 ifTrue: [
            recoveredBlock74Stack1 := (recoveredBlock74Stack1) nextPutAll: (recoveredBlock74Stack2).
            recoveredBlock74PC := 121.
        ].
        recoveredBlock74Step = 121 ifTrue: [
            recoveredBlock74Result := recoveredBlock74Stack1.
            recoveredBlock74Done := true.
        ].
    ].
    recoveredBlock74Result
].
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            (recoveredStack0) doWithIndex: (recoveredStack1).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := ' ?'.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack0 := EtasUserQuestion.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := (recoveredStack1) contents.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack2 := 'ASDDeleteImplTypeInEditor'.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            (recoveredStack1) prompterID: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack2 := 'OKCANCEL'.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            (recoveredStack1) buttonStyle: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack2 := 'question'.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            (recoveredStack1) type: (recoveredStack2).
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack0 := (recoveredStack0) prompt.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 166] ifFalse: [recoveredPC := 164].
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 174] ifFalse: [recoveredPC := 172].
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack1 := [:recoveredBlock177Arg1 | 
    | recoveredBlock177Value0 recoveredBlock177Value1 recoveredBlock177Value2 recoveredBlock177Value3 recoveredBlock177Value4 recoveredBlock177Value5 |
    recoveredBlock177Value0 := selectedImplTypes.
    recoveredBlock177Value1 := recoveredBlock177Arg1.
    recoveredBlock177Value2 := (recoveredBlock177Value0) copyWithout: (recoveredBlock177Value1).
    selectedImplTypes := recoveredBlock177Value2.
    recoveredBlock177Value3 := datamodelManager.
    recoveredBlock177Value4 := recoveredBlock177Arg1.
    recoveredBlock177Value5 := (recoveredBlock177Value3) deleteImplType: (recoveredBlock177Value4).
    recoveredBlock177Value5
].
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20537100; bytecode file offset 0xe33a04"
!SGProjectEditorCtrl methodsFor: 'recovered'!
unReferencedElements
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := super unReferencedElementsProjectRecursive.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 46.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) removeReferencedModuleInOSLogic: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) removeReferencedModuleInEhooks: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := IdentityDictionary.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := IdentityDictionary.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) userInterface.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) outlineTree.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0) getUnusedElementsRecursive: (recoveredStack1) makeConfigDict: (recoveredStack2) withProcessDialog: (recoveredStack3).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredPC := 121.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) userInterface.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) outlineTree.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock85Value0 recoveredBlock85Value1 recoveredBlock85Value2 |
    recoveredBlock85Value0 := (self) userInterface.
    recoveredBlock85Value1 := [:recoveredBlock85Block94Arg1 | 
    | recoveredBlock85Block94Value0 recoveredBlock85Block94Value1 recoveredBlock85Block94Value2 recoveredBlock85Block94Value3 |
    recoveredBlock85Block94Value0 := recoveredLocal2.
    recoveredBlock85Block94Value1 := recoveredLocal1.
    recoveredBlock85Block94Value2 := recoveredBlock85Block94Arg1.
    recoveredBlock85Block94Value3 := (self) getUnusedElementsRecursive: (recoveredBlock85Block94Value0) makeConfigDict: (recoveredBlock85Block94Value1) withProcessDialog: (recoveredBlock85Block94Value2).
    recoveredBlock85Block94Value3
].
    recoveredBlock85Value2 := (recoveredBlock85Value0) execLongOperation: (recoveredBlock85Value1) message: ('Searching for unUsed elements..') allowCancel: (true) showProgress: (true).
    recoveredBlock85Value2
].
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack0) deferRedraw: (recoveredStack1).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := [:recoveredBlock124Arg1 | 
    | recoveredBlock124Value0 recoveredBlock124Value1 recoveredBlock124Value2 |
    recoveredBlock124Value0 := recoveredLocal6.
    recoveredBlock124Value1 := recoveredBlock124Arg1.
    recoveredBlock124Value2 := (recoveredBlock124Value0) addAll: (recoveredBlock124Value1).
    recoveredBlock124Value2
].
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack0 := (recoveredStack0) removeReferencedModuleInOSLogic: (recoveredStack1).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := (recoveredStack0) removeReferencedModuleInEhooks: (recoveredStack1).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack0 := (recoveredStack0) removeUsedComplexProjectRecursive: (recoveredStack1).
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := (recoveredStack0) removeReferencedGlobals: (recoveredStack1).
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack0 := (recoveredStack0) userInterface.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            (recoveredStack0) updateWidgetSearchResultsFor: (recoveredStack1).
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack0 := (recoveredStack0) userInterface.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetSearchResults.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 202] ifFalse: [recoveredPC := 192].
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack0 := (recoveredStack0) userInterface.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetSearchResults.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            (recoveredStack0) makeConfigDict: (recoveredStack1).
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2056c030; bytecode file offset 0xe68980"
!SGProjectEditorCtrl methodsFor: 'recovered'!
deleteSelectedFormulas
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedFormulas.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := ReadWriteStream.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := Locale.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) current.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) preferredStringClass.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) on: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := 'Delete formula '.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := (recoveredStack2) formulaLabel.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredPC := 124.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := 'Delete the following formulas: '.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := [:recoveredBlock74Arg1 :recoveredBlock74Arg2 | 
    | recoveredBlock74Stack0 recoveredBlock74Stack1 recoveredBlock74Stack2 recoveredBlock74Stack3 recoveredBlock74Stack4 recoveredBlock74PC recoveredBlock74Step recoveredBlock74Done recoveredBlock74Result |
    recoveredBlock74Stack0 := self.
    recoveredBlock74PC := 80.
    recoveredBlock74Done := false.
    [recoveredBlock74Done not] whileTrue: [
        recoveredBlock74Step := recoveredBlock74PC.
        recoveredBlock74Step = 80 ifTrue: [
            recoveredBlock74Stack1 := recoveredBlock74Arg2.
            recoveredBlock74PC := 81.
        ].
        recoveredBlock74Step = 81 ifTrue: [
            recoveredBlock74Stack2 := 50.
            recoveredBlock74PC := 83.
        ].
        recoveredBlock74Step = 83 ifTrue: [
            recoveredBlock74Stack1 := (recoveredBlock74Stack1) < (recoveredBlock74Stack2).
            recoveredBlock74PC := 84.
        ].
        recoveredBlock74Step = 84 ifTrue: [
            (recoveredBlock74Stack1) ifTrue: [recoveredBlock74PC := 88] ifFalse: [recoveredBlock74PC := 102].
        ].
        recoveredBlock74Step = 88 ifTrue: [
            recoveredBlock74Stack1 := recoveredLocal1.
            recoveredBlock74PC := 91.
        ].
        recoveredBlock74Step = 91 ifTrue: [
            recoveredBlock74Stack2 := recoveredBlock74Stack1.
            recoveredBlock74PC := 92.
        ].
        recoveredBlock74Step = 92 ifTrue: [
            (recoveredBlock74Stack2) cr.
            recoveredBlock74PC := 94.
        ].
        recoveredBlock74Step = 94 ifTrue: [
            recoveredBlock74Stack2 := recoveredBlock74Arg1.
            recoveredBlock74PC := 95.
        ].
        recoveredBlock74Step = 95 ifTrue: [
            recoveredBlock74Stack2 := (recoveredBlock74Stack2) formulaLabel.
            recoveredBlock74PC := 97.
        ].
        recoveredBlock74Step = 97 ifTrue: [
            recoveredBlock74Stack1 := (recoveredBlock74Stack1) nextPutAll: (recoveredBlock74Stack2).
            recoveredBlock74PC := 99.
        ].
        recoveredBlock74Step = 99 ifTrue: [
            recoveredBlock74PC := 121.
        ].
        recoveredBlock74Step = 102 ifTrue: [
            recoveredBlock74Stack1 := nil.
            recoveredBlock74PC := 103.
        ].
        recoveredBlock74Step = 103 ifTrue: [
            recoveredBlock74Stack2 := recoveredBlock74Arg2.
            recoveredBlock74PC := 104.
        ].
        recoveredBlock74Step = 104 ifTrue: [
            recoveredBlock74Stack3 := 50.
            recoveredBlock74PC := 106.
        ].
        recoveredBlock74Step = 106 ifTrue: [
            recoveredBlock74Stack2 := (recoveredBlock74Stack2) = (recoveredBlock74Stack3).
            recoveredBlock74PC := 107.
        ].
        recoveredBlock74Step = 107 ifTrue: [
            (recoveredBlock74Stack2) ifTrue: [recoveredBlock74PC := 110] ifFalse: [recoveredBlock74PC := 121].
        ].
        recoveredBlock74Step = 110 ifTrue: [
            recoveredBlock74PC := 111.
        ].
        recoveredBlock74Step = 111 ifTrue: [
            recoveredBlock74Stack1 := recoveredLocal1.
            recoveredBlock74PC := 114.
        ].
        recoveredBlock74Step = 114 ifTrue: [
            recoveredBlock74Stack2 := recoveredBlock74Stack1.
            recoveredBlock74PC := 115.
        ].
        recoveredBlock74Step = 115 ifTrue: [
            (recoveredBlock74Stack2) cr.
            recoveredBlock74PC := 117.
        ].
        recoveredBlock74Step = 117 ifTrue: [
            recoveredBlock74Stack2 := '...'.
            recoveredBlock74PC := 119.
        ].
        recoveredBlock74Step = 119 ifTrue: [
            recoveredBlock74Stack1 := (recoveredBlock74Stack1) nextPutAll: (recoveredBlock74Stack2).
            recoveredBlock74PC := 121.
        ].
        recoveredBlock74Step = 121 ifTrue: [
            recoveredBlock74Result := recoveredBlock74Stack1.
            recoveredBlock74Done := true.
        ].
    ].
    recoveredBlock74Result
].
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            (recoveredStack0) doWithIndex: (recoveredStack1).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := ' ?'.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack0 := EtasUserQuestion.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := (recoveredStack1) contents.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack2 := 'ASDDeleteFormulaInEditor'.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            (recoveredStack1) prompterID: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack2 := 'OKCANCEL'.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            (recoveredStack1) buttonStyle: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack2 := 'question'.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            (recoveredStack1) type: (recoveredStack2).
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack0 := (recoveredStack0) prompt.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 166] ifFalse: [recoveredPC := 164].
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 174] ifFalse: [recoveredPC := 172].
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack0 := 'Kk'.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := 'Call_62774'.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack0 := datamodelManager.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            (recoveredStack0) deleteGlobalFormulas: (recoveredStack1).
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack0 := SGMonitorStreamDummy.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack1 := 'Deleted formulas:'.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            (recoveredStack0) addText: (recoveredStack1).
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack1 := [:recoveredBlock204Arg1 | 
    | recoveredBlock204Value0 recoveredBlock204Value1 recoveredBlock204Value2 recoveredBlock204Value3 |
    recoveredBlock204Value0 := recoveredLocal3.
    recoveredBlock204Value1 := recoveredBlock204Arg1.
    recoveredBlock204Value2 := (recoveredBlock204Value1) formulaLabel.
    recoveredBlock204Value3 := (recoveredBlock204Value0) addText: (recoveredBlock204Value2).
    recoveredBlock204Value3
].
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack0 := selectedFormulas.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack1 := [:recoveredBlock223Arg1 | 
    | recoveredBlock223Value0 recoveredBlock223Value1 recoveredBlock223Value2 |
    recoveredBlock223Value0 := recoveredLocal4.
    recoveredBlock223Value1 := recoveredBlock223Arg1.
    recoveredBlock223Value2 := (recoveredBlock223Value0) includes: (recoveredBlock223Value1).
    recoveredBlock223Value2
].
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack0 := (recoveredStack0) reject: (recoveredStack1).
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            selectedFormulas := recoveredStack0.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20572554; bytecode file offset 0xe6ee80"
!SGProjectEditorCtrl methodsFor: 'recovered'!
getUnusedElementsRecursive: recoveredArg1 complexVariable: recoveredArg2 visited: recoveredArg3 parentCollection: recoveredArg4 withProcessDialog: recoveredArg5
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
            recoveredStack2 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := recoveredArg2.
    recoveredBlock7Value2 := (recoveredBlock7Value0) includes: (recoveredBlock7Value1).
    recoveredBlock7Value2
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) anySatisfy: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 244] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClass.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 244] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClass.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) isGenericComponent.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 244] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := recoveredArg4.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) getEditorForComplexElement: (recoveredStack2) parentCollection: (recoveredStack3).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 244] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) uiController.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) initDatamodelManager.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) unReferencedElementsProjectRecursive.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := [
    #()
].
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) ifNil: (recoveredStack2).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := (recoveredStack2) sgClass.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock87Value0 recoveredBlock87Value1 recoveredBlock87Value2 recoveredBlock87Value3 recoveredBlock87Value4 |
    recoveredBlock87Value0 := recoveredArg1.
    recoveredBlock87Value1 := recoveredArg2.
    recoveredBlock87Value2 := (recoveredBlock87Value1) sgClass.
    recoveredBlock87Value3 := recoveredLocal2.
    recoveredBlock87Value4 := (recoveredBlock87Value0) at: (recoveredBlock87Value2) put: (recoveredBlock87Value3).
    recoveredBlock87Value4
].
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack4 := [:recoveredBlock107Arg1 | 
    | recoveredBlock107Value0 recoveredBlock107Value1 recoveredBlock107Value2 recoveredBlock107Value3 recoveredBlock107Value4 recoveredBlock107Value5 recoveredBlock107Value6 |
    recoveredBlock107Value0 := recoveredArg1.
    recoveredBlock107Value1 := recoveredArg2.
    recoveredBlock107Value2 := (recoveredBlock107Value1) sgClass.
    recoveredBlock107Value3 := recoveredBlock107Arg1.
    recoveredBlock107Value4 := recoveredLocal2.
    recoveredBlock107Value5 := (recoveredBlock107Value3) intersection: (recoveredBlock107Value4).
    recoveredBlock107Value6 := (recoveredBlock107Value0) at: (recoveredBlock107Value2) put: (recoveredBlock107Value5).
    recoveredBlock107Value6
].
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3) ifPresent: (recoveredStack4).
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := (recoveredStack1) isReference.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack2 := (recoveredStack2) isImported.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := (recoveredStack1) | (recoveredStack2).
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 244] ifFalse: [recoveredPC := 164].
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClass.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := (recoveredStack1) complexVariables.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack2 := [:recoveredBlock170Arg1 | 
    | recoveredBlock170Stack0 recoveredBlock170Stack1 recoveredBlock170Stack2 recoveredBlock170Stack3 recoveredBlock170Stack4 recoveredBlock170Stack5 recoveredBlock170Stack6 recoveredBlock170PC recoveredBlock170Step recoveredBlock170Done recoveredBlock170Result |
    recoveredBlock170Stack0 := self.
    recoveredBlock170PC := 176.
    recoveredBlock170Done := false.
    [recoveredBlock170Done not] whileTrue: [
        recoveredBlock170Step := recoveredBlock170PC.
        recoveredBlock170Step = 176 ifTrue: [
            recoveredBlock170Stack1 := recoveredArg1.
            recoveredBlock170PC := 179.
        ].
        recoveredBlock170Step = 179 ifTrue: [
            recoveredBlock170Stack2 := recoveredBlock170Arg1.
            recoveredBlock170PC := 180.
        ].
        recoveredBlock170Step = 180 ifTrue: [
            recoveredBlock170Stack3 := recoveredArg3.
            recoveredBlock170PC := 183.
        ].
        recoveredBlock170Step = 183 ifTrue: [
            recoveredBlock170Stack4 := recoveredArg4.
            recoveredBlock170PC := 186.
        ].
        recoveredBlock170Step = 186 ifTrue: [
            recoveredBlock170Stack4 := (recoveredBlock170Stack4) copy.
            recoveredBlock170PC := 188.
        ].
        recoveredBlock170Step = 188 ifTrue: [
            recoveredBlock170Stack5 := recoveredArg5.
            recoveredBlock170PC := 191.
        ].
        recoveredBlock170Step = 191 ifTrue: [
            (recoveredBlock170Stack0) getUnusedElementsRecursive: (recoveredBlock170Stack1) complexVariable: (recoveredBlock170Stack2) visited: (recoveredBlock170Stack3) parentCollection: (recoveredBlock170Stack4) withProcessDialog: (recoveredBlock170Stack5).
            recoveredBlock170PC := 194.
        ].
        recoveredBlock170Step = 194 ifTrue: [
            recoveredBlock170Stack0 := nil.
            recoveredBlock170PC := 195.
        ].
        recoveredBlock170Step = 195 ifTrue: [
            recoveredBlock170Stack1 := recoveredArg5.
            recoveredBlock170PC := 198.
        ].
        recoveredBlock170Step = 198 ifTrue: [
            (recoveredBlock170Stack1 == nil) ifTrue: [recoveredBlock170PC := 241] ifFalse: [recoveredBlock170PC := 202].
        ].
        recoveredBlock170Step = 202 ifTrue: [
            recoveredBlock170PC := 203.
        ].
        recoveredBlock170Step = 203 ifTrue: [
            recoveredBlock170Stack0 := recoveredArg5.
            recoveredBlock170PC := 206.
        ].
        recoveredBlock170Step = 206 ifTrue: [
            recoveredBlock170Stack1 := recoveredArg2.
            recoveredBlock170PC := 209.
        ].
        recoveredBlock170Step = 209 ifTrue: [
            recoveredBlock170Stack1 := (recoveredBlock170Stack1) label.
            recoveredBlock170PC := 211.
        ].
        recoveredBlock170Step = 211 ifTrue: [
            (recoveredBlock170Stack0) messageString: (recoveredBlock170Stack1).
            recoveredBlock170PC := 213.
        ].
        recoveredBlock170Step = 213 ifTrue: [
            recoveredBlock170Stack0 := [
    | block28111eecValue0 block28111eecValue1 block28111eecValue2 |
    block28111eecValue0 := CwAppContext.
    block28111eecValue1 := (block28111eecValue0) default.
    block28111eecValue2 := (block28111eecValue1) readAndDispatch.
    block28111eecValue2
].
            recoveredBlock170PC := 215.
        ].
        recoveredBlock170Step = 215 ifTrue: [
            recoveredBlock170PC := 225.
        ].
        recoveredBlock170Step = 225 ifTrue: [
            (recoveredBlock170Stack0) whileTrue.
            recoveredBlock170PC := 227.
        ].
        recoveredBlock170Step = 227 ifTrue: [
            recoveredBlock170Stack0 := nil.
            recoveredBlock170PC := 228.
        ].
        recoveredBlock170Step = 228 ifTrue: [
            recoveredBlock170Stack1 := recoveredArg5.
            recoveredBlock170PC := 231.
        ].
        recoveredBlock170Step = 231 ifTrue: [
            recoveredBlock170Stack1 := (recoveredBlock170Stack1) cancelled.
            recoveredBlock170PC := 233.
        ].
        recoveredBlock170Step = 233 ifTrue: [
            (recoveredBlock170Stack1) ifTrue: [recoveredBlock170PC := 236] ifFalse: [recoveredBlock170PC := 241].
        ].
        recoveredBlock170Step = 236 ifTrue: [
            recoveredBlock170PC := 237.
        ].
        recoveredBlock170Step = 237 ifTrue: [
            recoveredBlock170Stack0 := recoveredArg1.
            recoveredBlock170PC := 240.
        ].
        recoveredBlock170Step = 240 ifTrue: [
            ^recoveredBlock170Stack0
        ].
        recoveredBlock170Step = 241 ifTrue: [
            recoveredBlock170Result := recoveredBlock170Stack0.
            recoveredBlock170Done := true.
        ].
    ].
    recoveredBlock170Result
].
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2057f048; bytecode file offset 0xe7b964"
!SGProjectEditorCtrl methodsFor: 'recovered'!
fileOutList: recoveredArg1 toFile: recoveredArg2 header: recoveredArg3
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
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := CfsWriteFileStream.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) openEmpty: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 53].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := RBUserInfo.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := 'Could not open file '.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) prompt.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := [:recoveredBlock63Arg1 | 
    | recoveredBlock63Value0 recoveredBlock63Value1 recoveredBlock63Value2 recoveredBlock63Value3 |
    recoveredBlock63Value0 := recoveredLocal1.
    recoveredBlock63Value1 := recoveredBlock63Arg1.
    recoveredBlock63Value2 := (recoveredBlock63Value1) , (';').
    recoveredBlock63Value3 := (recoveredBlock63Value0) nextPutAll: (recoveredBlock63Value2).
    recoveredBlock63Value3
].
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := (recoveredStack1) keys.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := [:recoveredBlock95Arg1 | 
    | recoveredBlock95Value0 recoveredBlock95Value1 recoveredBlock95Value2 recoveredBlock95Value3 recoveredBlock95Value4 |
    recoveredBlock95Value0 := recoveredArg1.
    recoveredBlock95Value1 := recoveredBlock95Arg1.
    recoveredBlock95Value2 := (recoveredBlock95Value0) at: (recoveredBlock95Value1).
    recoveredBlock95Value3 := [:recoveredBlock95Block112Arg1 | 
    | recoveredBlock95Block112Stack0 recoveredBlock95Block112Stack1 recoveredBlock95Block112Stack2 recoveredBlock95Block112Stack3 recoveredBlock95Block112Stack4 recoveredBlock95Block112Stack5 recoveredBlock95Block112PC recoveredBlock95Block112Step recoveredBlock95Block112Done recoveredBlock95Block112Result |
    recoveredBlock95Block112Stack0 := nil.
    recoveredBlock95Block112PC := 118.
    recoveredBlock95Block112Done := false.
    [recoveredBlock95Block112Done not] whileTrue: [
        recoveredBlock95Block112Step := recoveredBlock95Block112PC.
        recoveredBlock95Block112Step = 118 ifTrue: [
            recoveredBlock95Block112Stack1 := nil.
            recoveredBlock95Block112PC := 119.
        ].
        recoveredBlock95Block112Step = 119 ifTrue: [
            recoveredBlock95Block112Stack2 := recoveredBlock95Block112Arg1.
            recoveredBlock95Block112PC := 122.
        ].
        recoveredBlock95Block112Step = 122 ifTrue: [
            recoveredBlock95Block112Stack2 := (recoveredBlock95Block112Stack2) size.
            recoveredBlock95Block112PC := 124.
        ].
        recoveredBlock95Block112Step = 124 ifTrue: [
            recoveredBlock95Block112Stack3 := 2.
            recoveredBlock95Block112PC := 126.
        ].
        recoveredBlock95Block112Step = 126 ifTrue: [
            recoveredBlock95Block112Stack2 := (recoveredBlock95Block112Stack2) equals: (recoveredBlock95Block112Stack3).
            recoveredBlock95Block112PC := 128.
        ].
        recoveredBlock95Block112Step = 128 ifTrue: [
            (recoveredBlock95Block112Stack2) ifTrue: [recoveredBlock95Block112PC := 132] ifFalse: [recoveredBlock95Block112PC := 248].
        ].
        recoveredBlock95Block112Step = 132 ifTrue: [
            recoveredBlock95Block112PC := 133.
        ].
        recoveredBlock95Block112Step = 133 ifTrue: [
            recoveredBlock95Block112Stack1 := 1.
            recoveredBlock95Block112PC := 135.
        ].
        recoveredBlock95Block112Step = 135 ifTrue: [
            recoveredBlock95Block112Stack2 := recoveredBlock95Block112Arg1.
            recoveredBlock95Block112PC := 138.
        ].
        recoveredBlock95Block112Step = 138 ifTrue: [
            recoveredBlock95Block112Stack3 := 1.
            recoveredBlock95Block112PC := 140.
        ].
        recoveredBlock95Block112Step = 140 ifTrue: [
            recoveredBlock95Block112Stack2 := (recoveredBlock95Block112Stack2) at: (recoveredBlock95Block112Stack3).
            recoveredBlock95Block112PC := 142.
        ].
        recoveredBlock95Block112Step = 142 ifTrue: [
            recoveredBlock95Block112Stack2 := (recoveredBlock95Block112Stack2) size.
            recoveredBlock95Block112PC := 144.
        ].
        recoveredBlock95Block112Step = 144 ifTrue: [
            recoveredBlock95Block112Stack3 := recoveredBlock95Block112Arg1.
            recoveredBlock95Block112PC := 147.
        ].
        recoveredBlock95Block112Step = 147 ifTrue: [
            recoveredBlock95Block112Stack4 := 2.
            recoveredBlock95Block112PC := 149.
        ].
        recoveredBlock95Block112Step = 149 ifTrue: [
            recoveredBlock95Block112Stack3 := (recoveredBlock95Block112Stack3) at: (recoveredBlock95Block112Stack4).
            recoveredBlock95Block112PC := 151.
        ].
        recoveredBlock95Block112Step = 151 ifTrue: [
            recoveredBlock95Block112Stack3 := (recoveredBlock95Block112Stack3) size.
            recoveredBlock95Block112PC := 153.
        ].
        recoveredBlock95Block112Step = 153 ifTrue: [
            recoveredBlock95Block112Stack2 := (recoveredBlock95Block112Stack2) max: (recoveredBlock95Block112Stack3).
            recoveredBlock95Block112PC := 155.
        ].
        recoveredBlock95Block112Step = 155 ifTrue: [
            recoveredBlock95Block112Stack1 := (recoveredBlock95Block112Stack1) to: (recoveredBlock95Block112Stack2).
            recoveredBlock95Block112PC := 157.
        ].
        recoveredBlock95Block112Step = 157 ifTrue: [
            recoveredBlock95Block112Stack2 := [:recoveredBlock95Block112Block157Arg1 | 
    | recoveredBlock95Block112Block157Local1 recoveredBlock95Block112Block157Local2 recoveredBlock95Block112Block157Stack0 recoveredBlock95Block112Block157Stack1 recoveredBlock95Block112Block157Stack2 recoveredBlock95Block112Block157Stack3 recoveredBlock95Block112Block157Stack4 recoveredBlock95Block112Block157Stack5 recoveredBlock95Block112Block157PC recoveredBlock95Block112Block157Step recoveredBlock95Block112Block157Done recoveredBlock95Block112Block157Result |
    recoveredBlock95Block112Block157Stack0 := nil.
    recoveredBlock95Block112Block157PC := 164.
    recoveredBlock95Block112Block157Done := false.
    [recoveredBlock95Block112Block157Done not] whileTrue: [
        recoveredBlock95Block112Block157Step := recoveredBlock95Block112Block157PC.
        recoveredBlock95Block112Block157Step = 164 ifTrue: [
            recoveredBlock95Block112Block157Stack1 := recoveredBlock95Block112Arg1.
            recoveredBlock95Block112Block157PC := 167.
        ].
        recoveredBlock95Block112Block157Step = 167 ifTrue: [
            recoveredBlock95Block112Block157Stack2 := 1.
            recoveredBlock95Block112Block157PC := 169.
        ].
        recoveredBlock95Block112Block157Step = 169 ifTrue: [
            recoveredBlock95Block112Block157Stack1 := (recoveredBlock95Block112Block157Stack1) at: (recoveredBlock95Block112Block157Stack2).
            recoveredBlock95Block112Block157PC := 171.
        ].
        recoveredBlock95Block112Block157Step = 171 ifTrue: [
            recoveredBlock95Block112Block157Stack2 := recoveredBlock95Block112Block157Arg1.
            recoveredBlock95Block112Block157PC := 172.
        ].
        recoveredBlock95Block112Block157Step = 172 ifTrue: [
            recoveredBlock95Block112Block157Stack3 := [].
            recoveredBlock95Block112Block157PC := 174.
        ].
        recoveredBlock95Block112Block157Step = 174 ifTrue: [
            recoveredBlock95Block112Block157Stack1 := (recoveredBlock95Block112Block157Stack1) at: (recoveredBlock95Block112Block157Stack2) ifAbsent: (recoveredBlock95Block112Block157Stack3).
            recoveredBlock95Block112Block157PC := 176.
        ].
        recoveredBlock95Block112Block157Step = 176 ifTrue: [
            recoveredBlock95Block112Block157Local2 := recoveredBlock95Block112Block157Stack1.
            recoveredBlock95Block112Block157PC := 177.
        ].
        recoveredBlock95Block112Block157Step = 177 ifTrue: [
            recoveredBlock95Block112Block157Stack1 := recoveredBlock95Block112Arg1.
            recoveredBlock95Block112Block157PC := 180.
        ].
        recoveredBlock95Block112Block157Step = 180 ifTrue: [
            recoveredBlock95Block112Block157Stack2 := 2.
            recoveredBlock95Block112Block157PC := 182.
        ].
        recoveredBlock95Block112Block157Step = 182 ifTrue: [
            recoveredBlock95Block112Block157Stack1 := (recoveredBlock95Block112Block157Stack1) at: (recoveredBlock95Block112Block157Stack2).
            recoveredBlock95Block112Block157PC := 184.
        ].
        recoveredBlock95Block112Block157Step = 184 ifTrue: [
            recoveredBlock95Block112Block157Stack2 := recoveredBlock95Block112Block157Arg1.
            recoveredBlock95Block112Block157PC := 185.
        ].
        recoveredBlock95Block112Block157Step = 185 ifTrue: [
            recoveredBlock95Block112Block157Stack3 := [].
            recoveredBlock95Block112Block157PC := 187.
        ].
        recoveredBlock95Block112Block157Step = 187 ifTrue: [
            recoveredBlock95Block112Block157Stack1 := (recoveredBlock95Block112Block157Stack1) at: (recoveredBlock95Block112Block157Stack2) ifAbsent: (recoveredBlock95Block112Block157Stack3).
            recoveredBlock95Block112Block157PC := 189.
        ].
        recoveredBlock95Block112Block157Step = 189 ifTrue: [
            recoveredBlock95Block112Block157Local1 := recoveredBlock95Block112Block157Stack1.
            recoveredBlock95Block112Block157PC := 190.
        ].
        recoveredBlock95Block112Block157Step = 190 ifTrue: [
            recoveredBlock95Block112Block157Stack1 := recoveredLocal1.
            recoveredBlock95Block112Block157PC := 193.
        ].
        recoveredBlock95Block112Block157Step = 193 ifTrue: [
            recoveredBlock95Block112Block157Stack2 := recoveredBlock95Block112Block157Stack1.
            recoveredBlock95Block112Block157PC := 194.
        ].
        recoveredBlock95Block112Block157Step = 194 ifTrue: [
            recoveredBlock95Block112Block157Stack3 := recoveredBlock95Arg1.
            recoveredBlock95Block112Block157PC := 197.
        ].
        recoveredBlock95Block112Block157Step = 197 ifTrue: [
            recoveredBlock95Block112Block157Stack4 := ';'.
            recoveredBlock95Block112Block157PC := 199.
        ].
        recoveredBlock95Block112Block157Step = 199 ifTrue: [
            recoveredBlock95Block112Block157Stack3 := (recoveredBlock95Block112Block157Stack3) , (recoveredBlock95Block112Block157Stack4).
            recoveredBlock95Block112Block157PC := 201.
        ].
        recoveredBlock95Block112Block157Step = 201 ifTrue: [
            recoveredBlock95Block112Block157Stack4 := recoveredBlock95Block112Block157Local2.
            recoveredBlock95Block112Block157PC := 202.
        ].
        recoveredBlock95Block112Block157Step = 202 ifTrue: [
            (recoveredBlock95Block112Block157Stack4 ~~ nil) ifTrue: [recoveredBlock95Block112Block157PC := 212] ifFalse: [recoveredBlock95Block112Block157PC := 206].
        ].
        recoveredBlock95Block112Block157Step = 206 ifTrue: [
            recoveredBlock95Block112Block157Stack4 := '-'.
            recoveredBlock95Block112Block157PC := 208.
        ].
        recoveredBlock95Block112Block157Step = 208 ifTrue: [
            recoveredBlock95Block112Block157PC := 215.
        ].
        recoveredBlock95Block112Block157Step = 212 ifTrue: [
            recoveredBlock95Block112Block157Stack4 := recoveredBlock95Block112Block157Local2.
            recoveredBlock95Block112Block157PC := 213.
        ].
        recoveredBlock95Block112Block157Step = 213 ifTrue: [
            recoveredBlock95Block112Block157Stack4 := (recoveredBlock95Block112Block157Stack4) label.
            recoveredBlock95Block112Block157PC := 215.
        ].
        recoveredBlock95Block112Block157Step = 215 ifTrue: [
            recoveredBlock95Block112Block157Stack3 := (recoveredBlock95Block112Block157Stack3) , (recoveredBlock95Block112Block157Stack4).
            recoveredBlock95Block112Block157PC := 217.
        ].
        recoveredBlock95Block112Block157Step = 217 ifTrue: [
            recoveredBlock95Block112Block157Stack4 := ';'.
            recoveredBlock95Block112Block157PC := 219.
        ].
        recoveredBlock95Block112Block157Step = 219 ifTrue: [
            recoveredBlock95Block112Block157Stack3 := (recoveredBlock95Block112Block157Stack3) , (recoveredBlock95Block112Block157Stack4).
            recoveredBlock95Block112Block157PC := 221.
        ].
        recoveredBlock95Block112Block157Step = 221 ifTrue: [
            recoveredBlock95Block112Block157Stack4 := recoveredBlock95Block112Block157Local1.
            recoveredBlock95Block112Block157PC := 222.
        ].
        recoveredBlock95Block112Block157Step = 222 ifTrue: [
            (recoveredBlock95Block112Block157Stack4 ~~ nil) ifTrue: [recoveredBlock95Block112Block157PC := 232] ifFalse: [recoveredBlock95Block112Block157PC := 226].
        ].
        recoveredBlock95Block112Block157Step = 226 ifTrue: [
            recoveredBlock95Block112Block157Stack4 := '-'.
            recoveredBlock95Block112Block157PC := 228.
        ].
        recoveredBlock95Block112Block157Step = 228 ifTrue: [
            recoveredBlock95Block112Block157PC := 235.
        ].
        recoveredBlock95Block112Block157Step = 232 ifTrue: [
            recoveredBlock95Block112Block157Stack4 := recoveredBlock95Block112Block157Local1.
            recoveredBlock95Block112Block157PC := 233.
        ].
        recoveredBlock95Block112Block157Step = 233 ifTrue: [
            recoveredBlock95Block112Block157Stack4 := (recoveredBlock95Block112Block157Stack4) label.
            recoveredBlock95Block112Block157PC := 235.
        ].
        recoveredBlock95Block112Block157Step = 235 ifTrue: [
            recoveredBlock95Block112Block157Stack3 := (recoveredBlock95Block112Block157Stack3) , (recoveredBlock95Block112Block157Stack4).
            recoveredBlock95Block112Block157PC := 237.
        ].
        recoveredBlock95Block112Block157Step = 237 ifTrue: [
            recoveredBlock95Block112Block157Stack4 := ';'.
            recoveredBlock95Block112Block157PC := 239.
        ].
        recoveredBlock95Block112Block157Step = 239 ifTrue: [
            recoveredBlock95Block112Block157Stack3 := (recoveredBlock95Block112Block157Stack3) , (recoveredBlock95Block112Block157Stack4).
            recoveredBlock95Block112Block157PC := 241.
        ].
        recoveredBlock95Block112Block157Step = 241 ifTrue: [
            (recoveredBlock95Block112Block157Stack2) nextPutAll: (recoveredBlock95Block112Block157Stack3).
            recoveredBlock95Block112Block157PC := 243.
        ].
        recoveredBlock95Block112Block157Step = 243 ifTrue: [
            recoveredBlock95Block112Block157Stack1 := (recoveredBlock95Block112Block157Stack1) cr.
            recoveredBlock95Block112Block157PC := 245.
        ].
        recoveredBlock95Block112Block157Step = 245 ifTrue: [
            recoveredBlock95Block112Block157Result := recoveredBlock95Block112Block157Stack1.
            recoveredBlock95Block112Block157Done := true.
        ].
    ].
    recoveredBlock95Block112Block157Result
].
            recoveredBlock95Block112PC := 246.
        ].
        recoveredBlock95Block112Step = 246 ifTrue: [
            recoveredBlock95Block112Stack1 := (recoveredBlock95Block112Stack1) do: (recoveredBlock95Block112Stack2).
            recoveredBlock95Block112PC := 248.
        ].
        recoveredBlock95Block112Step = 248 ifTrue: [
            recoveredBlock95Block112Result := recoveredBlock95Block112Stack1.
            recoveredBlock95Block112Done := true.
        ].
    ].
    recoveredBlock95Block112Result
].
    recoveredBlock95Value4 := (recoveredBlock95Value2) at: (2) ifPresent: (recoveredBlock95Value3).
    recoveredBlock95Value4
].
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            (recoveredStack1) close.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20580cc0; bytecode file offset 0xe7d630"
!SGProjectEditorCtrl methodsFor: 'recovered'!
fileInFormulasSelected: recoveredArg1 file: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) fileExtension.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) asLowercase.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := 'xml'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) importXMLFromFile: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) fileInFormulasFile: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := RBUserInfo.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := 'Wrong file format.'.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) prompt.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := RBUserInfo.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := 'No formulas found.'.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack1) prompt.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := [:block281130c8Arg1 | 
    | block281130c8Local1 block281130c8Value0 block281130c8Value1 block281130c8Value2 block281130c8Value3 block281130c8Value4 block281130c8Value5 block281130c8Value6 block281130c8Value7 block281130c8Value8 block281130c8Value9 block281130c8Value10 block281130c8Value11 block281130c8Value12 |
    block281130c8Value0 := ReadWriteStream.
    block281130c8Value1 := (block281130c8Value0) on: ('').
    block281130c8Local1 := block281130c8Value1.
    block281130c8Value2 := block281130c8Local1.
    block281130c8Value3 := block281130c8Arg1.
    block281130c8Value4 := (block281130c8Value3) name.
    block281130c8Value5 := (block281130c8Value4) fillBlankTo: (10).
    block281130c8Value6 := (block281130c8Value5) , (' ').
    block281130c8Value7 := block281130c8Arg1.
    block281130c8Value8 := (block281130c8Value7) class.
    block281130c8Value9 := (block281130c8Value8) formulaType.
    block281130c8Value10 := (block281130c8Value6) , (block281130c8Value9).
    (block281130c8Value2) nextPutAll: (block281130c8Value10).
    block281130c8Value11 := block281130c8Local1.
    block281130c8Value12 := (block281130c8Value11) contents.
    block281130c8Value12
].
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 116] ifFalse: [recoveredPC := 164].
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := CwListPrompter.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            (recoveredStack2) items: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack2) selectedItems: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            (recoveredStack2) printBlock: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack3 := 'Formulas'.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            (recoveredStack2) title: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack3 := 'Select Formulas:'.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            (recoveredStack2) messageString: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            (recoveredStack2) selectionPolicy: (recoveredStack3).
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := (recoveredStack1) prompt.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 164] ifFalse: [recoveredPC := 162].
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack2 := [:recoveredBlock174Arg1 | 
    | recoveredBlock174Local1 recoveredBlock174Stack0 recoveredBlock174Stack1 recoveredBlock174Stack2 recoveredBlock174Stack3 recoveredBlock174Stack4 recoveredBlock174PC recoveredBlock174Step recoveredBlock174Done recoveredBlock174Result |
    recoveredBlock174Stack0 := self.
    recoveredBlock174PC := 180.
    recoveredBlock174Done := false.
    [recoveredBlock174Done not] whileTrue: [
        recoveredBlock174Step := recoveredBlock174PC.
        recoveredBlock174Step = 180 ifTrue: [
            recoveredBlock174Stack1 := recoveredBlock174Arg1.
            recoveredBlock174PC := 181.
        ].
        recoveredBlock174Step = 181 ifTrue: [
            recoveredBlock174Stack1 := (recoveredBlock174Stack1) name.
            recoveredBlock174PC := 183.
        ].
        recoveredBlock174Step = 183 ifTrue: [
            recoveredBlock174Local1 := recoveredBlock174Stack1.
            recoveredBlock174PC := 184.
        ].
        recoveredBlock174Step = 184 ifTrue: [
            recoveredBlock174Stack1 := nil.
            recoveredBlock174PC := 185.
        ].
        recoveredBlock174Step = 185 ifTrue: [
            recoveredBlock174Stack2 := self.
            recoveredBlock174PC := 186.
        ].
        recoveredBlock174Step = 186 ifTrue: [
            recoveredBlock174Stack2 := (recoveredBlock174Stack2) item.
            recoveredBlock174PC := 188.
        ].
        recoveredBlock174Step = 188 ifTrue: [
            recoveredBlock174Stack3 := recoveredBlock174Local1.
            recoveredBlock174PC := 189.
        ].
        recoveredBlock174Step = 189 ifTrue: [
            recoveredBlock174Stack2 := (recoveredBlock174Stack2) formulaNamed: (recoveredBlock174Stack3).
            recoveredBlock174PC := 191.
        ].
        recoveredBlock174Step = 191 ifTrue: [
            (recoveredBlock174Stack2 == nil) ifTrue: [recoveredBlock174PC := 201] ifFalse: [recoveredBlock174PC := 194].
        ].
        recoveredBlock174Step = 194 ifTrue: [
            recoveredBlock174PC := 195.
        ].
        recoveredBlock174Step = 195 ifTrue: [
            recoveredBlock174Stack1 := recoveredLocal1.
            recoveredBlock174PC := 198.
        ].
        recoveredBlock174Step = 198 ifTrue: [
            recoveredBlock174Stack2 := recoveredBlock174Local1.
            recoveredBlock174PC := 199.
        ].
        recoveredBlock174Step = 199 ifTrue: [
            recoveredBlock174Stack1 := (recoveredBlock174Stack1) add: (recoveredBlock174Stack2).
            recoveredBlock174PC := 201.
        ].
        recoveredBlock174Step = 201 ifTrue: [
            recoveredBlock174Result := recoveredBlock174Stack1.
            recoveredBlock174Done := true.
        ].
    ].
    recoveredBlock174Result
].
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 212] ifFalse: [recoveredPC := 244].
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack1 := (recoveredStack1) mainController.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack2 := 'Overwrite formulas:'.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack3 := 'Continue ?'.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack1 := (recoveredStack1) queryUserQuestionLabel: (recoveredStack2) question: (recoveredStack3) strings: (recoveredStack4).
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 230] ifFalse: [recoveredPC := 228].
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack2 := 'Call_62774'.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            (recoveredStack1) deleteGlobalFormulasByName: (recoveredStack2).
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack2 := 'Call_62774'.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            (recoveredStack0) addGlobalFormulas: (recoveredStack1).
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205a39c0; bytecode file offset 0xea0300"
!SGProjectEditorCtrl methodsFor: 'recovered'!
getUnusedElementsRecursive: recoveredArg1 makeConfigDict: recoveredArg2 complexVariable: recoveredArg3 visited: recoveredArg4 parentCollection: recoveredArg5 withProcessDialog: recoveredArg6
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
            recoveredStack2 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := recoveredArg3.
    recoveredBlock7Value2 := (recoveredBlock7Value0) includes: (recoveredBlock7Value1).
    recoveredBlock7Value2
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) anySatisfy: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 291] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClass.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 291] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClass.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) isGenericComponent.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 291] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := recoveredArg5.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) getEditorForComplexElement: (recoveredStack2) parentCollection: (recoveredStack3).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 291] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) uiController.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) initDatamodelManager.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) unReferencedElementsProjectRecursive.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := [
    #()
].
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) ifNil: (recoveredStack2).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := (recoveredStack2) sgClass.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock87Value0 recoveredBlock87Value1 recoveredBlock87Value2 recoveredBlock87Value3 recoveredBlock87Value4 recoveredBlock87Value5 recoveredBlock87Value6 recoveredBlock87Value7 recoveredBlock87Value8 recoveredBlock87Value9 recoveredBlock87Value10 recoveredBlock87Value11 recoveredBlock87Value12 |
    recoveredBlock87Value0 := recoveredArg1.
    recoveredBlock87Value1 := recoveredArg3.
    recoveredBlock87Value2 := (recoveredBlock87Value1) sgClass.
    recoveredBlock87Value3 := recoveredLocal2.
    (recoveredBlock87Value0) at: (recoveredBlock87Value2) put: (recoveredBlock87Value3).
    recoveredBlock87Value4 := recoveredArg2.
    recoveredBlock87Value5 := recoveredArg3.
    recoveredBlock87Value6 := (recoveredBlock87Value5) sgClass.
    recoveredBlock87Value7 := OrderedCollection.
    recoveredBlock87Value8 := recoveredLocal3.
    recoveredBlock87Value9 := (recoveredBlock87Value8) uiController.
    recoveredBlock87Value10 := (recoveredBlock87Value9) makeConfig.
    recoveredBlock87Value11 := (recoveredBlock87Value7) with: (recoveredBlock87Value10).
    recoveredBlock87Value12 := (recoveredBlock87Value4) at: (recoveredBlock87Value6) put: (recoveredBlock87Value11).
    recoveredBlock87Value12
].
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack4 := [:recoveredBlock127Arg1 | 
    | recoveredBlock127Value0 recoveredBlock127Value1 recoveredBlock127Value2 recoveredBlock127Value3 recoveredBlock127Value4 recoveredBlock127Value5 recoveredBlock127Value6 recoveredBlock127Value7 recoveredBlock127Value8 recoveredBlock127Value9 recoveredBlock127Value10 recoveredBlock127Value11 recoveredBlock127Value12 recoveredBlock127Value13 |
    recoveredBlock127Value0 := recoveredArg1.
    recoveredBlock127Value1 := recoveredArg3.
    recoveredBlock127Value2 := (recoveredBlock127Value1) sgClass.
    recoveredBlock127Value3 := recoveredBlock127Arg1.
    recoveredBlock127Value4 := recoveredLocal2.
    recoveredBlock127Value5 := (recoveredBlock127Value3) intersection: (recoveredBlock127Value4).
    (recoveredBlock127Value0) at: (recoveredBlock127Value2) put: (recoveredBlock127Value5).
    recoveredBlock127Value6 := recoveredArg2.
    recoveredBlock127Value7 := recoveredArg3.
    recoveredBlock127Value8 := (recoveredBlock127Value7) sgClass.
    recoveredBlock127Value9 := (recoveredBlock127Value6) at: (recoveredBlock127Value8).
    recoveredBlock127Value10 := recoveredLocal3.
    recoveredBlock127Value11 := (recoveredBlock127Value10) uiController.
    recoveredBlock127Value12 := (recoveredBlock127Value11) makeConfig.
    recoveredBlock127Value13 := (recoveredBlock127Value9) add: (recoveredBlock127Value12).
    recoveredBlock127Value13
].
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3) ifPresent: (recoveredStack4).
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack1 := recoveredArg5.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack1 := (recoveredStack1) isReference.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack2 := (recoveredStack2) isImported.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack1 := (recoveredStack1) | (recoveredStack2).
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 291] ifFalse: [recoveredPC := 202].
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClass.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack1 := (recoveredStack1) complexVariables.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack2 := [:recoveredBlock208Arg1 | 
    | recoveredBlock208Stack0 recoveredBlock208Stack1 recoveredBlock208Stack2 recoveredBlock208Stack3 recoveredBlock208Stack4 recoveredBlock208Stack5 recoveredBlock208Stack6 recoveredBlock208Stack7 recoveredBlock208PC recoveredBlock208Step recoveredBlock208Done recoveredBlock208Result |
    recoveredBlock208Stack0 := self.
    recoveredBlock208PC := 214.
    recoveredBlock208Done := false.
    [recoveredBlock208Done not] whileTrue: [
        recoveredBlock208Step := recoveredBlock208PC.
        recoveredBlock208Step = 214 ifTrue: [
            recoveredBlock208Stack1 := recoveredArg1.
            recoveredBlock208PC := 217.
        ].
        recoveredBlock208Step = 217 ifTrue: [
            recoveredBlock208Stack2 := recoveredArg2.
            recoveredBlock208PC := 220.
        ].
        recoveredBlock208Step = 220 ifTrue: [
            recoveredBlock208Stack3 := recoveredBlock208Arg1.
            recoveredBlock208PC := 221.
        ].
        recoveredBlock208Step = 221 ifTrue: [
            recoveredBlock208Stack4 := recoveredArg4.
            recoveredBlock208PC := 224.
        ].
        recoveredBlock208Step = 224 ifTrue: [
            recoveredBlock208Stack5 := recoveredArg5.
            recoveredBlock208PC := 227.
        ].
        recoveredBlock208Step = 227 ifTrue: [
            recoveredBlock208Stack5 := (recoveredBlock208Stack5) copy.
            recoveredBlock208PC := 229.
        ].
        recoveredBlock208Step = 229 ifTrue: [
            recoveredBlock208Stack6 := recoveredArg6.
            recoveredBlock208PC := 232.
        ].
        recoveredBlock208Step = 232 ifTrue: [
            (recoveredBlock208Stack0) getUnusedElementsRecursive: (recoveredBlock208Stack1) makeConfigDict: (recoveredBlock208Stack2) complexVariable: (recoveredBlock208Stack3) visited: (recoveredBlock208Stack4) parentCollection: (recoveredBlock208Stack5) withProcessDialog: (recoveredBlock208Stack6).
            recoveredBlock208PC := 235.
        ].
        recoveredBlock208Step = 235 ifTrue: [
            recoveredBlock208Stack0 := nil.
            recoveredBlock208PC := 236.
        ].
        recoveredBlock208Step = 236 ifTrue: [
            recoveredBlock208Stack1 := recoveredArg6.
            recoveredBlock208PC := 239.
        ].
        recoveredBlock208Step = 239 ifTrue: [
            (recoveredBlock208Stack1 == nil) ifTrue: [recoveredBlock208PC := 288] ifFalse: [recoveredBlock208PC := 242].
        ].
        recoveredBlock208Step = 242 ifTrue: [
            recoveredBlock208PC := 243.
        ].
        recoveredBlock208Step = 243 ifTrue: [
            recoveredBlock208Stack0 := recoveredArg6.
            recoveredBlock208PC := 246.
        ].
        recoveredBlock208Step = 246 ifTrue: [
            recoveredBlock208Stack1 := recoveredArg3.
            recoveredBlock208PC := 249.
        ].
        recoveredBlock208Step = 249 ifTrue: [
            recoveredBlock208Stack1 := (recoveredBlock208Stack1) label.
            recoveredBlock208PC := 251.
        ].
        recoveredBlock208Step = 251 ifTrue: [
            (recoveredBlock208Stack0) messageString: (recoveredBlock208Stack1).
            recoveredBlock208PC := 253.
        ].
        recoveredBlock208Step = 253 ifTrue: [
            recoveredBlock208Stack0 := [
    | block28115990Value0 block28115990Value1 block28115990Value2 |
    block28115990Value0 := CwAppContext.
    block28115990Value1 := (block28115990Value0) default.
    block28115990Value2 := (block28115990Value1) readAndDispatch.
    block28115990Value2
].
            recoveredBlock208PC := 255.
        ].
        recoveredBlock208Step = 255 ifTrue: [
            recoveredBlock208PC := 265.
        ].
        recoveredBlock208Step = 265 ifTrue: [
            (recoveredBlock208Stack0) whileTrue.
            recoveredBlock208PC := 267.
        ].
        recoveredBlock208Step = 267 ifTrue: [
            recoveredBlock208Stack0 := nil.
            recoveredBlock208PC := 268.
        ].
        recoveredBlock208Step = 268 ifTrue: [
            recoveredBlock208Stack1 := recoveredArg6.
            recoveredBlock208PC := 271.
        ].
        recoveredBlock208Step = 271 ifTrue: [
            recoveredBlock208Stack1 := (recoveredBlock208Stack1) cancelled.
            recoveredBlock208PC := 273.
        ].
        recoveredBlock208Step = 273 ifTrue: [
            (recoveredBlock208Stack1) ifTrue: [recoveredBlock208PC := 276] ifFalse: [recoveredBlock208PC := 288].
        ].
        recoveredBlock208Step = 276 ifTrue: [
            recoveredBlock208PC := 277.
        ].
        recoveredBlock208Step = 277 ifTrue: [
            recoveredBlock208Stack0 := OrderedCollection.
            recoveredBlock208PC := 279.
        ].
        recoveredBlock208Step = 279 ifTrue: [
            recoveredBlock208Stack1 := recoveredArg1.
            recoveredBlock208PC := 282.
        ].
        recoveredBlock208Step = 282 ifTrue: [
            recoveredBlock208Stack2 := recoveredArg2.
            recoveredBlock208PC := 285.
        ].
        recoveredBlock208Step = 285 ifTrue: [
            recoveredBlock208Stack0 := (recoveredBlock208Stack0) with: (recoveredBlock208Stack1) with: (recoveredBlock208Stack2).
            recoveredBlock208PC := 287.
        ].
        recoveredBlock208Step = 287 ifTrue: [
            ^recoveredBlock208Stack0
        ].
        recoveredBlock208Step = 288 ifTrue: [
            recoveredBlock208Result := recoveredBlock208Stack0.
            recoveredBlock208Done := true.
        ].
    ].
    recoveredBlock208Result
].
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x205cb188; bytecode file offset 0xec7b18"
!SGProjectEditorCtrl methodsFor: 'recovered'!
checkElementsReferenced: recoveredArg1 postString: recoveredArg2 exceptDiagrams: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Shikhar'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'call70940'.
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
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := [:block28118d74Arg1 | 
    | block28118d74Value0 block28118d74Value1 block28118d74Value2 |
    block28118d74Value0 := block28118d74Arg1.
    block28118d74Value1 := (block28118d74Value0) isPrimitive.
    block28118d74Value2 := (block28118d74Value1) not.
    block28118d74Value2
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := 'Call_71575'.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := [:block28118d98Arg1 | 
    | block28118d98Stack0 block28118d98Stack1 block28118d98Stack2 block28118d98Stack3 block28118d98PC block28118d98Step block28118d98Done block28118d98Result |
    block28118d98Stack0 := self.
    block28118d98PC := 4.
    block28118d98Done := false.
    [block28118d98Done not] whileTrue: [
        block28118d98Step := block28118d98PC.
        block28118d98Step = 4 ifTrue: [
            block28118d98Stack1 := false.
            block28118d98PC := 5.
        ].
        block28118d98Step = 5 ifTrue: [
            block28118d98Stack2 := block28118d98Arg1.
            block28118d98PC := 6.
        ].
        block28118d98Step = 6 ifTrue: [
            block28118d98Stack2 := (block28118d98Stack2) sgClass.
            block28118d98PC := 8.
        ].
        block28118d98Step = 8 ifTrue: [
            (block28118d98Stack2 == nil) ifTrue: [block28118d98PC := 18] ifFalse: [block28118d98PC := 12].
        ].
        block28118d98Step = 12 ifTrue: [
            block28118d98PC := 13.
        ].
        block28118d98Step = 13 ifTrue: [
            block28118d98Stack1 := block28118d98Arg1.
            block28118d98PC := 14.
        ].
        block28118d98Step = 14 ifTrue: [
            block28118d98Stack1 := (block28118d98Stack1) sgClass.
            block28118d98PC := 16.
        ].
        block28118d98Step = 16 ifTrue: [
            block28118d98Stack1 := (block28118d98Stack1) isCTClass.
            block28118d98PC := 18.
        ].
        block28118d98Step = 18 ifTrue: [
            block28118d98Result := block28118d98Stack1.
            block28118d98Done := true.
        ].
    ].
    block28118d98Result
].
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) notNil.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := super checkElementsReferenced: (recoveredStack1) postString: (recoveredStack2) exceptDiagrams: (recoveredStack3).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 92].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := (recoveredStack0) specification.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := (recoveredStack0) osLogicForCurrentTarget.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := (recoveredStack0) getTasks.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := [:recoveredBlock108Arg1 | 
    | recoveredBlock108Local1 recoveredBlock108Stack0 recoveredBlock108Stack1 recoveredBlock108Stack2 recoveredBlock108Stack3 recoveredBlock108Stack4 recoveredBlock108Stack5 recoveredBlock108PC recoveredBlock108Step recoveredBlock108Done recoveredBlock108Result |
    recoveredBlock108Stack0 := self.
    recoveredBlock108PC := 114.
    recoveredBlock108Done := false.
    [recoveredBlock108Done not] whileTrue: [
        recoveredBlock108Step := recoveredBlock108PC.
        recoveredBlock108Step = 114 ifTrue: [
            recoveredBlock108Stack1 := recoveredBlock108Arg1.
            recoveredBlock108PC := 115.
        ].
        recoveredBlock108Step = 115 ifTrue: [
            recoveredBlock108Stack2 := self.
            recoveredBlock108PC := 116.
        ].
        recoveredBlock108Step = 116 ifTrue: [
            recoveredBlock108Stack2 := (recoveredBlock108Stack2) item.
            recoveredBlock108PC := 118.
        ].
        recoveredBlock108Step = 118 ifTrue: [
            recoveredBlock108Stack3 := recoveredLocal4.
            recoveredBlock108PC := 121.
        ].
        recoveredBlock108Step = 121 ifTrue: [
            recoveredBlock108Stack4 := false.
            recoveredBlock108PC := 122.
        ].
        recoveredBlock108Step = 122 ifTrue: [
            recoveredBlock108Stack1 := (recoveredBlock108Stack1) instVarProcessesForProject: (recoveredBlock108Stack2) processInstVars: (recoveredBlock108Stack3) removeMissing: (recoveredBlock108Stack4).
            recoveredBlock108PC := 125.
        ].
        recoveredBlock108Step = 125 ifTrue: [
            recoveredBlock108Local1 := recoveredBlock108Stack1.
            recoveredBlock108PC := 126.
        ].
        recoveredBlock108Step = 126 ifTrue: [
            recoveredBlock108Stack1 := recoveredLocal3.
            recoveredBlock108PC := 129.
        ].
        recoveredBlock108Step = 129 ifTrue: [
            (recoveredBlock108Stack1) ifTrue: [recoveredBlock108PC := 132] ifFalse: [recoveredBlock108PC := 141].
        ].
        recoveredBlock108Step = 132 ifTrue: [
            recoveredBlock108Stack1 := recoveredBlock108Local1.
            recoveredBlock108PC := 133.
        ].
        recoveredBlock108Step = 133 ifTrue: [
            recoveredBlock108Stack2 := recoveredBlock108Arg1.
            recoveredBlock108PC := 134.
        ].
        recoveredBlock108Step = 134 ifTrue: [
            recoveredBlock108Stack3 := self.
            recoveredBlock108PC := 135.
        ].
        recoveredBlock108Step = 135 ifTrue: [
            recoveredBlock108Stack3 := (recoveredBlock108Stack3) item.
            recoveredBlock108PC := 137.
        ].
        recoveredBlock108Step = 137 ifTrue: [
            recoveredBlock108Stack2 := (recoveredBlock108Stack2) ctProcessesForProject: (recoveredBlock108Stack3).
            recoveredBlock108PC := 139.
        ].
        recoveredBlock108Step = 139 ifTrue: [
            (recoveredBlock108Stack1) addAll: (recoveredBlock108Stack2).
            recoveredBlock108PC := 141.
        ].
        recoveredBlock108Step = 141 ifTrue: [
            recoveredBlock108Stack1 := recoveredBlock108Local1.
            recoveredBlock108PC := 142.
        ].
        recoveredBlock108Step = 142 ifTrue: [
            recoveredBlock108Stack2 := [:block28118dbcArg1 | 
    | block28118dbcStack0 block28118dbcStack1 block28118dbcStack2 block28118dbcStack3 block28118dbcStack4 block28118dbcStack5 block28118dbcPC block28118dbcStep block28118dbcDone block28118dbcResult |
    block28118dbcStack0 := self.
    block28118dbcPC := 4.
    block28118dbcDone := false.
    [block28118dbcDone not] whileTrue: [
        block28118dbcStep := block28118dbcPC.
        block28118dbcStep = 4 ifTrue: [
            block28118dbcStack1 := true.
            block28118dbcPC := 5.
        ].
        block28118dbcStep = 5 ifTrue: [
            block28118dbcStack2 := block28118dbcArg1.
            block28118dbcPC := 6.
        ].
        block28118dbcStep = 6 ifTrue: [
            block28118dbcStack3 := 1.
            block28118dbcPC := 8.
        ].
        block28118dbcStep = 8 ifTrue: [
            block28118dbcStack4 := [].
            block28118dbcPC := 10.
        ].
        block28118dbcStep = 10 ifTrue: [
            block28118dbcStack2 := (block28118dbcStack2) at: (block28118dbcStack3) ifAbsent: (block28118dbcStack4).
            block28118dbcPC := 12.
        ].
        block28118dbcStep = 12 ifTrue: [
            (block28118dbcStack2 == nil) ifTrue: [block28118dbcPC := 25] ifFalse: [block28118dbcPC := 16].
        ].
        block28118dbcStep = 16 ifTrue: [
            block28118dbcPC := 17.
        ].
        block28118dbcStep = 17 ifTrue: [
            block28118dbcStack1 := block28118dbcArg1.
            block28118dbcPC := 18.
        ].
        block28118dbcStep = 18 ifTrue: [
            block28118dbcStack2 := 2.
            block28118dbcPC := 20.
        ].
        block28118dbcStep = 20 ifTrue: [
            block28118dbcStack3 := [].
            block28118dbcPC := 22.
        ].
        block28118dbcStep = 22 ifTrue: [
            block28118dbcStack1 := (block28118dbcStack1) at: (block28118dbcStack2) ifAbsent: (block28118dbcStack3).
            block28118dbcPC := 24.
        ].
        block28118dbcStep = 24 ifTrue: [
            block28118dbcStack1 := (block28118dbcStack1) isNil.
            block28118dbcPC := 25.
        ].
        block28118dbcStep = 25 ifTrue: [
            block28118dbcResult := block28118dbcStack1.
            block28118dbcDone := true.
        ].
    ].
    block28118dbcResult
].
            recoveredBlock108PC := 144.
        ].
        recoveredBlock108Step = 144 ifTrue: [
            recoveredBlock108PC := 170.
        ].
        recoveredBlock108Step = 170 ifTrue: [
            recoveredBlock108Stack1 := (recoveredBlock108Stack1) reject: (recoveredBlock108Stack2).
            recoveredBlock108PC := 172.
        ].
        recoveredBlock108Step = 172 ifTrue: [
            recoveredBlock108Local1 := recoveredBlock108Stack1.
            recoveredBlock108PC := 173.
        ].
        recoveredBlock108Step = 173 ifTrue: [
            recoveredBlock108Stack1 := nil.
            recoveredBlock108PC := 174.
        ].
        recoveredBlock108Step = 174 ifTrue: [
            recoveredBlock108Stack2 := recoveredBlock108Local1.
            recoveredBlock108PC := 175.
        ].
        recoveredBlock108Step = 175 ifTrue: [
            recoveredBlock108Stack2 := (recoveredBlock108Stack2) notEmpty.
            recoveredBlock108PC := 177.
        ].
        recoveredBlock108Step = 177 ifTrue: [
            (recoveredBlock108Stack2) ifTrue: [recoveredBlock108PC := 180] ifFalse: [recoveredBlock108PC := 194].
        ].
        recoveredBlock108Step = 180 ifTrue: [
            recoveredBlock108PC := 181.
        ].
        recoveredBlock108Step = 181 ifTrue: [
            recoveredBlock108Stack1 := recoveredLocal5.
            recoveredBlock108PC := 184.
        ].
        recoveredBlock108Step = 184 ifTrue: [
            recoveredBlock108Stack2 := Association.
            recoveredBlock108PC := 186.
        ].
        recoveredBlock108Step = 186 ifTrue: [
            recoveredBlock108Stack3 := recoveredBlock108Arg1.
            recoveredBlock108PC := 187.
        ].
        recoveredBlock108Step = 187 ifTrue: [
            recoveredBlock108Stack3 := (recoveredBlock108Stack3) name.
            recoveredBlock108PC := 189.
        ].
        recoveredBlock108Step = 189 ifTrue: [
            recoveredBlock108Stack4 := recoveredBlock108Local1.
            recoveredBlock108PC := 190.
        ].
        recoveredBlock108Step = 190 ifTrue: [
            recoveredBlock108Stack2 := (recoveredBlock108Stack2) key: (recoveredBlock108Stack3) value: (recoveredBlock108Stack4).
            recoveredBlock108PC := 192.
        ].
        recoveredBlock108Step = 192 ifTrue: [
            recoveredBlock108Stack1 := (recoveredBlock108Stack1) add: (recoveredBlock108Stack2).
            recoveredBlock108PC := 194.
        ].
        recoveredBlock108Step = 194 ifTrue: [
            recoveredBlock108Result := recoveredBlock108Stack1.
            recoveredBlock108Done := true.
        ].
    ].
    recoveredBlock108Result
].
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 206] ifFalse: [recoveredPC := 342].
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack1 := 'Call_66125'.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack1 := [:recoveredBlock222Arg1 :recoveredBlock222Arg2 | 
    | recoveredBlock222Value0 recoveredBlock222Value1 recoveredBlock222Value2 recoveredBlock222Value3 |
    recoveredBlock222Value0 := recoveredBlock222Arg1.
    recoveredBlock222Value1 := (recoveredBlock222Value0) value.
    recoveredBlock222Value2 := [:recoveredBlock222Block233Arg1 | 
    | recoveredBlock222Block233Value0 recoveredBlock222Block233Value1 recoveredBlock222Block233Value2 recoveredBlock222Block233Value3 recoveredBlock222Block233Value4 recoveredBlock222Block233Value5 recoveredBlock222Block233Value6 recoveredBlock222Block233Value7 recoveredBlock222Block233Value8 recoveredBlock222Block233Value9 recoveredBlock222Block233Value10 recoveredBlock222Block233Value11 recoveredBlock222Block233Value12 recoveredBlock222Block233Value13 |
    recoveredBlock222Block233Value0 := recoveredLocal1.
    recoveredBlock222Block233Value1 := recoveredBlock222Arg1.
    recoveredBlock222Block233Value2 := (recoveredBlock222Block233Value1) key.
    recoveredBlock222Block233Value3 := (recoveredBlock222Block233Value2) , (': ').
    recoveredBlock222Block233Value4 := recoveredBlock222Block233Arg1.
    recoveredBlock222Block233Value5 := (recoveredBlock222Block233Value4) at: (1).
    recoveredBlock222Block233Value6 := (recoveredBlock222Block233Value5) label.
    recoveredBlock222Block233Value7 := (recoveredBlock222Block233Value3) , (recoveredBlock222Block233Value6).
    recoveredBlock222Block233Value8 := (recoveredBlock222Block233Value7) , (' -> ').
    recoveredBlock222Block233Value9 := recoveredBlock222Block233Arg1.
    recoveredBlock222Block233Value10 := (recoveredBlock222Block233Value9) at: (2).
    recoveredBlock222Block233Value11 := (recoveredBlock222Block233Value10) label.
    recoveredBlock222Block233Value12 := (recoveredBlock222Block233Value8) , (recoveredBlock222Block233Value11).
    recoveredBlock222Block233Value13 := (recoveredBlock222Block233Value0) add: (recoveredBlock222Block233Value12).
    recoveredBlock222Block233Value13
].
    recoveredBlock222Value3 := (recoveredBlock222Value1) do: (recoveredBlock222Value2).
    recoveredBlock222Value3
].
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            (recoveredStack0) doWithIndex: (recoveredStack1).
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack0 := EtasListConfirmationPrompter.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack2 := (recoveredStack2) userInterface.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack2 := (recoveredStack2) shell.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            (recoveredStack1) parent: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack2 := 'The following processes are assigned and will be deassigned:'.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            (recoveredStack1) messageString: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack2 := #().
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            (recoveredStack1) selectedItems: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            (recoveredStack1) items: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack2 := [:block28118de0Arg1 | 
    | block28118de0Value0 |
    block28118de0Value0 := block28118de0Arg1.
    block28118de0Value0
].
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            (recoveredStack1) printBlock: (recoveredStack2).
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack0 := (recoveredStack0) prompt.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 334] ifFalse: [recoveredPC := 332].
        ].
        recoveredStep = 332 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 334 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

