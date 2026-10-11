"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200191b4; bytecode file offset 0x92209c"
!EtasNotebookExperimentComponentWidget methodsFor: 'recovered'!
contentsPageName
    ^'Experiment'
! !

"ASDBase.ic method 0x2004662c; bytecode file offset 0x9451f8"
!EtasNotebookExperimentComponentWidget methodsFor: 'recovered'!
experimentFilesLabel
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('experimentFilesLabel').
    ^recoveredValue0
! !

"ASDBase.ic method 0x202a0bcc; bytecode file offset 0xb9d4a0"
!EtasNotebookExperimentComponentWidget methodsFor: 'recovered'!
menuEditExperimentFocus
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItemsForEdit.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := EtasExperimentEnvironmentInterface.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock16Value0 recoveredBlock16Value1 recoveredBlock16Value2 recoveredBlock16Value3 recoveredBlock16Value4 recoveredBlock16Value5 |
    recoveredBlock16Value0 := (self) item.
    recoveredBlock16Value1 := (self) selectedItemsForEdit.
    recoveredBlock16Value2 := (recoveredBlock16Value1) first.
    recoveredBlock16Value3 := [:recoveredBlock16Block27Arg1 | 
    ^nil
].
    recoveredBlock16Value4 := (recoveredBlock16Value2) getObjectIfUndefined: (recoveredBlock16Value3).
    recoveredBlock16Value5 := (recoveredBlock16Value0) eeOpenExperiment: (recoveredBlock16Value4).
    recoveredBlock16Value5
].
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) eeProtectedOperation: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20323ef0; bytecode file offset 0xc207e4"
!EtasNotebookExperimentComponentWidget methodsFor: 'recovered'!
updateItemsForPageHierarchyContents
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            super updateItemsForPageHierarchyContents.
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
            recoveredStack0 := (recoveredStack0) files.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) experimentFilesLabel.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := CgRGBColor.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) blue.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) foregroundColor: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := 'No Experiment Data'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 57.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) experimentFilesLabel.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := CgRGBColor.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := (recoveredStack2) black.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1) foregroundColor: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := 'Contains Experiment Data (%1 files)'.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := (recoveredStack2) item.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := (recoveredStack2) files.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
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

"ASDBase.ic method 0x203e1eac; bytecode file offset 0xcde7a8"
!EtasNotebookExperimentComponentWidget methodsFor: 'recovered'!
hierarchyContentsTableDefaultActionCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEditingInProgress.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) doit: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := [:recoveredBlock24Arg1 | 
    ^nil
].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) getObjectIfUndefined: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := ASDUserActionObserver.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := '->'.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := (recoveredStack3) item.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := (recoveredStack3) printString.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := 'DefaultAction'.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack4 := (recoveredStack4) class.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack5 := (recoveredStack5) owner.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack5 := (recoveredStack5) title.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack1) addUserAction: (recoveredStack2) type: (recoveredStack3) windowClass: (recoveredStack4) windowTitle: (recoveredStack5).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := EtasExperimentEnvironmentInterface.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock72Value0 recoveredBlock72Value1 recoveredBlock72Value2 |
    recoveredBlock72Value0 := (self) item.
    recoveredBlock72Value1 := recoveredLocal1.
    recoveredBlock72Value2 := (recoveredBlock72Value0) eeOpenExperiment: (recoveredBlock72Value1).
    recoveredBlock72Value2
].
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack1) eeProtectedOperation: (recoveredStack2).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204603dc; bytecode file offset 0xd5cd08"
!EtasNotebookExperimentComponentWidget methodsFor: 'recovered'!
menuFileImportExperiment
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
            recoveredStack0 := (recoveredStack0) isComponentEditable.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
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
            recoveredStack0 := (recoveredStack0) files.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := RBUserQuestion.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := 'Do you want to overwrite the current experiment configuration?'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) withCrs.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) confirm: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) cancelOk.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) prompt.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := [
    ^nil
].
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) ifNil: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := RBFileSelectionPrompter.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := 'Choose Experiment File'.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) title: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := '*.eex'.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack1) searchMask: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := EtasExperimentEnvironmentInterface.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := (recoveredStack2) eeExperimentsPath.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack1) searchPath: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := Dictionary.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack4 := '*.eex'.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack5 := 'Experiment '.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack3) at: (recoveredStack4) put: (recoveredStack5).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack1) filterDictionary: (recoveredStack2).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) prompt.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := SGMonitorStreamDummy.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock94Value0 recoveredBlock94Value1 recoveredBlock94Value2 recoveredBlock94Value3 |
    recoveredBlock94Value0 := (self) item.
    (recoveredBlock94Value0) files: (nil).
    recoveredBlock94Value1 := (self) item.
    recoveredBlock94Value2 := recoveredLocal1.
    recoveredBlock94Value3 := (recoveredBlock94Value1) refreshFilesFromExperimentFile: (recoveredBlock94Value2).
    recoveredBlock94Value3
].
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := 'Importing Experiment Files'.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack0) measureTimeFor: (recoveredStack1) description: (recoveredStack2).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205c5c94; bytecode file offset 0xec2630"
!EtasNotebookExperimentComponentWidget methodsFor: 'recovered'!
createHierarchyContentsPopUpMenu
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasMenu.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultMenuClass.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := 'C~ontents'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) title: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := 'menuFileImportExperiment'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack4 := '~Import Experiment...'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock19Value0 recoveredBlock19Value1 |
    recoveredBlock19Value0 := (self) item.
    recoveredBlock19Value1 := (recoveredBlock19Value0) isComponentEditable.
    recoveredBlock19Value1
].
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack6 := [
    true
].
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack8 := nil.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack9 := nil.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack2) addWithID: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) visible: (recoveredStack6) for: (recoveredStack7) accelerator: (recoveredStack8) acceleratorText: (recoveredStack9).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := 'menuFileExportExperiment'.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack4 := 'Ex~port Experiment...'.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock48Value0 recoveredBlock48Value1 |
    recoveredBlock48Value0 := (self) item.
    recoveredBlock48Value1 := (recoveredBlock48Value0) isComponentEditable.
    recoveredBlock48Value1
].
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack6 := [
    true
].
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack8 := nil.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack9 := nil.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack2) addWithID: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) visible: (recoveredStack6) for: (recoveredStack7) accelerator: (recoveredStack8) acceleratorText: (recoveredStack9).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack2) addSingleLine.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack3 := 'menuEditExperimentFocus'.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack4 := 'E~xperiment'.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock79Value0 recoveredBlock79Value1 recoveredBlock79Value2 |
    recoveredBlock79Value0 := (self) selectedItemsForEdit.
    recoveredBlock79Value1 := (recoveredBlock79Value0) size.
    recoveredBlock79Value2 := (recoveredBlock79Value1) = (1).
    recoveredBlock79Value2
].
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack6 := [
    true
].
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack8 := nil.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack9 := 'Return'.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack2) addWithID: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) visible: (recoveredStack6) for: (recoveredStack7) accelerator: (recoveredStack8) acceleratorText: (recoveredStack9).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack3 := 'menuEditEditFocus'.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack4 := '~Edit'.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock113Value0 recoveredBlock113Value1 recoveredBlock113Value2 |
    recoveredBlock113Value0 := (self) selectedItemsForEdit.
    recoveredBlock113Value1 := (recoveredBlock113Value0) size.
    recoveredBlock113Value2 := (recoveredBlock113Value1) = (1).
    recoveredBlock113Value2
].
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack6 := [
    true
].
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack8 := nil.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack9 := nil.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            (recoveredStack2) addWithID: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) visible: (recoveredStack6) for: (recoveredStack7) accelerator: (recoveredStack8) acceleratorText: (recoveredStack9).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack3 := 'menuEditAdd'.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack4 := '~Add'.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock146Value0 |
    recoveredBlock146Value0 := (self) isAddPossible.
    recoveredBlock146Value0
].
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack6 := [
    | recoveredBlock155Value0 recoveredBlock155Value1 |
    recoveredBlock155Value0 := (self) item.
    recoveredBlock155Value1 := (recoveredBlock155Value0) isContainer.
    recoveredBlock155Value1
].
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack8 := nil.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack9 := nil.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            (recoveredStack2) addWithID: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) visible: (recoveredStack6) for: (recoveredStack7) accelerator: (recoveredStack8) acceleratorText: (recoveredStack9).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack3 := 'menuEditRenameFocus'.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack4 := '~Rename'.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock177Value0 |
    recoveredBlock177Value0 := (self) isRenamePossible.
    recoveredBlock177Value0
].
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack6 := [
    true
].
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack8 := CwAccelerator.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack9 := 0.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack10 := XKF2.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack8 := (recoveredStack8) mask: (recoveredStack9) keysym: (recoveredStack10).
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack9 := 'F2'.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            (recoveredStack2) addWithID: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) visible: (recoveredStack6) for: (recoveredStack7) accelerator: (recoveredStack8) acceleratorText: (recoveredStack9).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack3 := 'menuEditDeleteFocus'.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack4 := '~Delete'.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock212Value0 |
    recoveredBlock212Value0 := (self) isDeletePossible.
    recoveredBlock212Value0
].
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack6 := [
    true
].
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack8 := CwAccelerator.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack9 := 0.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack10 := XKDelete.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack8 := (recoveredStack8) mask: (recoveredStack9) keysym: (recoveredStack10).
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack9 := 'Del'.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            (recoveredStack2) addWithID: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) visible: (recoveredStack6) for: (recoveredStack7) accelerator: (recoveredStack8) acceleratorText: (recoveredStack9).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            (recoveredStack2) addSingleLine.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack3 := 'createPageSelectionSubMenu'.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack4 := '~Page'.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock249Value0 |
    recoveredBlock249Value0 := (self) pageSelectionSubMenuEnable.
    recoveredBlock249Value0
].
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack6 := [
    true
].
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            (recoveredStack2) addSubMenuWithID: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) visible: (recoveredStack6) for: (recoveredStack7).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack3 := 'createHierarchyContentsColumnSelectionSubMenu'.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack4 := '~Sort by'.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock274Value0 recoveredBlock274Value1 |
    recoveredBlock274Value0 := (self) currentTableList.
    recoveredBlock274Value1 := (recoveredBlock274Value0) notNil.
    recoveredBlock274Value1
].
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack6 := [
    true
].
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            (recoveredStack2) addSubMenuWithID: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) visible: (recoveredStack6) for: (recoveredStack7).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            (recoveredStack2) addSingleLine.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack2 := 'menuEditSelectAllFocus'.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack3 := 'Se~lect all'.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack4 := [
    true
].
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack5 := [
    true
].
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack7 := CwAccelerator.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack8 := ControlMask.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack9 := XKA.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack7 := (recoveredStack7) mask: (recoveredStack8) keysym: (recoveredStack9).
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            recoveredStack8 := 'Ctrl+A'.
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            (recoveredStack1) addWithID: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4) visible: (recoveredStack5) for: (recoveredStack6) accelerator: (recoveredStack7) acceleratorText: (recoveredStack8).
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20603038; bytecode file offset 0xeffa04"
!EtasNotebookExperimentComponentWidget methodsFor: 'recovered'!
appendWidgetHierarchy: recoveredArg1 parent: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 'pageHierarchyContentsTabStrip'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := [:recoveredBlock9Arg1 | 
    | recoveredBlock9Value0 recoveredBlock9Value1 recoveredBlock9Value2 recoveredBlock9Value3 recoveredBlock9Value4 recoveredBlock9Value5 recoveredBlock9Value6 recoveredBlock9Value7 recoveredBlock9Value8 |
    recoveredBlock9Value0 := recoveredBlock9Arg1.
    recoveredBlock9Value1 := recoveredBlock9Value0.
    recoveredBlock9Value2 := (self) contentsPageName.
    (recoveredBlock9Value1) labelString: (recoveredBlock9Value2).
    recoveredBlock9Value3 := RBUserInterface.
    recoveredBlock9Value4 := (recoveredBlock9Value3) resourceManager.
    recoveredBlock9Value5 := ASDExperimentComponent.
    recoveredBlock9Value6 := (recoveredBlock9Value5) iconName.
    recoveredBlock9Value7 := (recoveredBlock9Value4) returnIcon16WithName: (recoveredBlock9Value6).
    recoveredBlock9Value8 := (recoveredBlock9Value0) image: (recoveredBlock9Value7).
    recoveredBlock9Value8
].
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) createTab: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := 'pageHierarchyContents'.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := 'pageHierarchyContents'.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := [:block2811cbe4Arg1 | 
    nil
].
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack1) userData: (recoveredStack2).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := 'experimentFilesLabel'.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack3 := [:block2811cc08Arg1 | 
    | block2811cc08Value0 block2811cc08Value1 block2811cc08Value2 block2811cc08Value3 block2811cc08Value4 block2811cc08Value5 block2811cc08Value6 |
    block2811cc08Value0 := block2811cc08Arg1.
    block2811cc08Value1 := block2811cc08Value0.
    (block2811cc08Value1) labelString: ('Empty').
    block2811cc08Value2 := block2811cc08Value0.
    block2811cc08Value3 := CgRGBColor.
    block2811cc08Value4 := (block2811cc08Value3) blue.
    (block2811cc08Value2) foregroundColor: (block2811cc08Value4).
    block2811cc08Value5 := XmALIGNMENTBEGINNING.
    block2811cc08Value6 := (block2811cc08Value0) alignment: (block2811cc08Value5).
    block2811cc08Value6
].
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack2 := 'experimentFilesLabel'.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := 'tableWidgetHierarchyContents'.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack3 := [:recoveredBlock128Arg1 | 
    | recoveredBlock128Value0 recoveredBlock128Value1 recoveredBlock128Value2 recoveredBlock128Value3 recoveredBlock128Value4 recoveredBlock128Value5 recoveredBlock128Value6 recoveredBlock128Value7 recoveredBlock128Value8 recoveredBlock128Value9 recoveredBlock128Value10 recoveredBlock128Value11 recoveredBlock128Value12 |
    recoveredBlock128Value0 := recoveredBlock128Arg1.
    recoveredBlock128Value1 := recoveredBlock128Value0.
    (recoveredBlock128Value1) itemHeight: (20).
    recoveredBlock128Value2 := recoveredBlock128Value0.
    (recoveredBlock128Value2) applicationDrawnBackground: (true).
    recoveredBlock128Value3 := recoveredBlock128Value0.
    recoveredBlock128Value4 := (self) columnsHierarchyContents.
    (recoveredBlock128Value3) columns: (recoveredBlock128Value4).
    recoveredBlock128Value5 := recoveredBlock128Value0.
    (recoveredBlock128Value5) editable: (false).
    recoveredBlock128Value6 := recoveredBlock128Value0.
    (recoveredBlock128Value6) selectableColumns: (true).
    recoveredBlock128Value7 := recoveredBlock128Value0.
    (recoveredBlock128Value7) lockedColumns: (1).
    recoveredBlock128Value8 := recoveredBlock128Value0.
    (recoveredBlock128Value8) headingSeparatorThickness: (0).
    recoveredBlock128Value9 := recoveredBlock128Value0.
    recoveredBlock128Value10 := XmETCHCELLS.
    (recoveredBlock128Value9) headingVisualStyle: (recoveredBlock128Value10).
    recoveredBlock128Value11 := XmEXTENDEDSELECT.
    recoveredBlock128Value12 := (recoveredBlock128Value0) selectionPolicy: (recoveredBlock128Value11).
    recoveredBlock128Value12
].
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := (recoveredStack1) createScrolledTableList: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack2 := 'scrolledTableWidgetHierarchyContents'.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack2 := 'tableWidgetHierarchyContents'.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack2 := XmNfocusCallback.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack4 := 'etasWidgetFocus:clientData:callData:'.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack5 := true.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack2 := XmNlosingFocusCallback.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack4 := 'etasWidgetFocus:clientData:callData:'.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack5 := false.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack0 := (recoveredStack0) mainWidgetForPage.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack0 := (recoveredStack0) popupMenuForWidget.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock253Value0 |
    recoveredBlock253Value0 := (self) createHierarchyContentsPopUpMenu.
    recoveredBlock253Value0
].
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack1 := XmNcolumnHeadingSelectionCallback.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack3 := 'hierachieContentsTableColumnHeadingSelectionCallback:clientData:callData:'.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack1 := XmNextendedSelectionCallback.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack3 := 'hierarchyContentsTableExtendedSelectionCallback:clientData:callData:'.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack1 := XmNdefaultActionCallback.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack3 := 'hierarchyContentsTableDefaultActionCallback:clientData:callData:'.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack1 := [:block2811cc2cArg1 | 
    | block2811cc2cValue0 block2811cc2cValue1 block2811cc2cValue2 block2811cc2cValue3 block2811cc2cValue4 block2811cc2cValue5 block2811cc2cValue6 block2811cc2cValue7 block2811cc2cValue8 block2811cc2cValue9 |
    block2811cc2cValue0 := block2811cc2cArg1.
    block2811cc2cValue1 := block2811cc2cValue0.
    block2811cc2cValue2 := XmATTACHFORM.
    (block2811cc2cValue1) topAttachment: (block2811cc2cValue2).
    block2811cc2cValue3 := block2811cc2cValue0.
    (block2811cc2cValue3) topOffset: (5).
    block2811cc2cValue4 := block2811cc2cValue0.
    block2811cc2cValue5 := XmATTACHFORM.
    (block2811cc2cValue4) leftAttachment: (block2811cc2cValue5).
    block2811cc2cValue6 := block2811cc2cValue0.
    (block2811cc2cValue6) leftOffset: (0).
    block2811cc2cValue7 := block2811cc2cValue0.
    block2811cc2cValue8 := XmATTACHFORM.
    (block2811cc2cValue7) rightAttachment: (block2811cc2cValue8).
    block2811cc2cValue9 := (block2811cc2cValue0) rightOffset: (0).
    block2811cc2cValue9
].
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            recoveredStack1 := [:recoveredBlock366Arg1 | 
    | recoveredBlock366Value0 recoveredBlock366Value1 recoveredBlock366Value2 recoveredBlock366Value3 recoveredBlock366Value4 recoveredBlock366Value5 recoveredBlock366Value6 recoveredBlock366Value7 recoveredBlock366Value8 recoveredBlock366Value9 recoveredBlock366Value10 recoveredBlock366Value11 recoveredBlock366Value12 recoveredBlock366Value13 recoveredBlock366Value14 |
    recoveredBlock366Value0 := recoveredBlock366Arg1.
    recoveredBlock366Value1 := recoveredBlock366Value0.
    recoveredBlock366Value2 := XmATTACHFORM.
    (recoveredBlock366Value1) bottomAttachment: (recoveredBlock366Value2).
    recoveredBlock366Value3 := recoveredBlock366Value0.
    (recoveredBlock366Value3) bottomOffset: (0).
    recoveredBlock366Value4 := recoveredBlock366Value0.
    recoveredBlock366Value5 := XmATTACHWIDGET.
    (recoveredBlock366Value4) topAttachment: (recoveredBlock366Value5).
    recoveredBlock366Value6 := recoveredBlock366Value0.
    recoveredBlock366Value7 := recoveredLocal1.
    (recoveredBlock366Value6) topWidget: (recoveredBlock366Value7).
    recoveredBlock366Value8 := recoveredBlock366Value0.
    (recoveredBlock366Value8) topOffset: (3).
    recoveredBlock366Value9 := recoveredBlock366Value0.
    recoveredBlock366Value10 := XmATTACHFORM.
    (recoveredBlock366Value9) leftAttachment: (recoveredBlock366Value10).
    recoveredBlock366Value11 := recoveredBlock366Value0.
    (recoveredBlock366Value11) leftOffset: (0).
    recoveredBlock366Value12 := recoveredBlock366Value0.
    recoveredBlock366Value13 := XmATTACHFORM.
    (recoveredBlock366Value12) rightAttachment: (recoveredBlock366Value13).
    recoveredBlock366Value14 := (recoveredBlock366Value0) rightOffset: (0).
    recoveredBlock366Value14
].
            recoveredPC := 440.
        ].
        recoveredStep = 440 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 445.
        ].
        recoveredStep = 445 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 448.
        ].
        recoveredStep = 448 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

