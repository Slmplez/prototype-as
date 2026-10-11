"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20007808; bytecode file offset 0x908be4"
!ASDExperimentComponent methodsFor: 'recovered'!
classType
    | recoveredValue0 |
    recoveredValue0 := (self) itemTypeString.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200161d8; bytecode file offset 0x92209c"
!ASDExperimentComponent methodsFor: 'recovered'!
getComponentType
    ^'ASCET_Experiment'
! !

"ASDBase.ic method 0x2001853c; bytecode file offset 0x92209c"
!ASDExperimentComponent methodsFor: 'recovered'!
itemTypeString
    ^'Experiment'
! !

"ASDBase.ic method 0x200227d8; bytecode file offset 0x92209c"
!ASDExperimentComponent methodsFor: 'recovered'!
getComponentTag
    ^'Experiment'
! !

"ASDBase.ic method 0x200285f4; bytecode file offset 0x934580"
!ASDExperimentComponent methodsFor: 'recovered'!
iconName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) iconName.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20052d88; bytecode file offset 0x9505d0"
!ASDExperimentComponent methodsFor: 'recovered'!
editPrompt: recoveredArg1
    (self) eeProtectedOpenExperimentForEmptyWorkspace.
    ^self
! !

"ASDBase.ic method 0x2005ae54; bytecode file offset 0x957a6c"
!ASDExperimentComponent methodsFor: 'recovered'!
folderModified: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) eeRefreshFiles.
    ^self
! !

"ASDBase.ic method 0x20075cd4; bytecode file offset 0x9757c8"
!ASDExperimentComponent methodsFor: 'recovered'!
editableInDBBrowser
    ^true
! !

"ASDBase.ic method 0x2008d234; bytecode file offset 0x989db0"
!ASDExperimentComponent methodsFor: 'recovered'!
eeRefreshFiles
    | recoveredValue0 |
    recoveredValue0 := (self) eeMainExperimentFile.
    (self) refreshFilesFromExperimentFile: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200c6318; bytecode file offset 0x9c2bec"
!ASDExperimentComponent methodsFor: 'recovered'!
files: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    files := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20115018; bytecode file offset 0xa118d8"
!ASDExperimentComponent methodsFor: 'recovered'!
eeProtectedOpenExperimentForEmptyWorkspace
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := EtasExperimentEnvironmentInterface.
    recoveredValue1 := [
    | recoveredBlock6Value0 |
    recoveredBlock6Value0 := (self) eeOpenExperimentForEmptyWorkspace.
    recoveredBlock6Value0
].
    (recoveredValue0) eeProtectedOperation: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20185c10; bytecode file offset 0xa824dc"
!ASDExperimentComponent methodsFor: 'recovered'!
addOverlayedIconNamesTo: recoveredArg1
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
            super addOverlayedIconNamesTo: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) files.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 'GeneralOverlayError'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2018e360; bytecode file offset 0xa8ac20"
!ASDExperimentComponent methodsFor: 'recovered'!
files
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := files.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := Dictionary.
    recoveredBlock6Value1 := (recoveredBlock6Value0) new.
    recoveredBlock6Value2 := recoveredBlock6Value1.
    files := recoveredBlock6Value2.
    recoveredBlock6Value1
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := files.
    ^recoveredValue2
! !

"ASDBase.ic method 0x201eacc4; bytecode file offset 0xae7598"
!ASDExperimentComponent methodsFor: 'recovered'!
createInfoWidget: recoveredArg1 parent: recoveredArg2 owner: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 |
    recoveredBlock10Value0 := recoveredBlock10Arg1.
    recoveredBlock10Value1 := recoveredBlock10Value0.
    recoveredBlock10Value2 := recoveredArg3.
    (recoveredBlock10Value1) owner: (recoveredBlock10Value2).
    recoveredBlock10Value3 := (recoveredBlock10Value0) item: (self).
    recoveredBlock10Value3
].
    recoveredValue3 := (recoveredValue0) createEtasNotebookExperimentComponentWidget: (recoveredValue1) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2020cda4; bytecode file offset 0xb09670"
!ASDExperimentComponent methodsFor: 'recovered'!
eeMainExperimentFile
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) files.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := nil.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            recoveredBlock5Stack3 := '.eex'.
            recoveredBlock5PC := 16.
        ].
        recoveredBlock5Step = 16 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) endsWith: (recoveredBlock5Stack3).
            recoveredBlock5PC := 17.
        ].
        recoveredBlock5Step = 17 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 20] ifFalse: [recoveredBlock5PC := 27].
        ].
        recoveredBlock5Step = 20 ifTrue: [
            recoveredBlock5PC := 21.
        ].
        recoveredBlock5Step = 21 ifTrue: [
            recoveredBlock5Stack1 := self.
            recoveredBlock5PC := 22.
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) eeExperimentPath.
            recoveredBlock5PC := 23.
        ].
        recoveredBlock5Step = 23 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 24.
        ].
        recoveredBlock5Step = 24 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) , (recoveredBlock5Stack2).
            recoveredBlock5PC := 26.
        ].
        recoveredBlock5Step = 26 ifTrue: [
            ^recoveredBlock5Stack1
        ].
        recoveredBlock5Step = 27 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) keysDo: (recoveredValue1).
    ^nil
! !

"ASDBase.ic method 0x2035ec1c; bytecode file offset 0xc5b518"
!ASDExperimentComponent methodsFor: 'recovered'!
eeOpenExperimentForEmptyWorkspace
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := EtasExperimentEnvironmentInterface.
    recoveredValue1 := (recoveredValue0) eeGetEE.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := recoveredLocal2.
    recoveredValue3 := (recoveredValue2) workspace.
    (recoveredValue3) close.
    recoveredValue4 := recoveredLocal2.
    recoveredValue5 := (recoveredValue4) commands.
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := SGMonitorStreamDummy.
    recoveredValue7 := (recoveredValue6) create.
    recoveredValue8 := [
    | recoveredBlock20Value0 recoveredBlock20Value1 recoveredBlock20Value2 recoveredBlock20Value3 recoveredBlock20Value4 recoveredBlock20Value5 |
    recoveredBlock20Value0 := CfsDirectoryDescriptor.
    recoveredBlock20Value1 := (self) eeExperimentPath.
    (recoveredBlock20Value0) deletePathRecursive: (recoveredBlock20Value1).
    recoveredBlock20Value2 := CfsDirectoryDescriptor.
    recoveredBlock20Value3 := (self) eeWorkspacePath.
    (recoveredBlock20Value2) deletePathRecursive: (recoveredBlock20Value3).
    recoveredBlock20Value4 := (self) eeExperimentPath.
    recoveredBlock20Value5 := (self) exportExperimentFilesToPath: (recoveredBlock20Value4).
    recoveredBlock20Value5
].
    (recoveredValue7) measureTimeFor: (recoveredValue8) description: ('Writing Experiment Files').
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := (self) eeLabel.
    recoveredValue11 := (self) eeWorkspacePath.
    (recoveredValue9) createWorkspace: (recoveredValue10) path: (recoveredValue11).
    recoveredValue12 := recoveredLocal1.
    recoveredValue13 := (self) eeMainExperimentFile.
    (recoveredValue12) openExperiment: (recoveredValue13).
    ^self
! !

"ASDBase.ic method 0x20495e6c; bytecode file offset 0xd92778"
!ASDExperimentComponent methodsFor: 'recovered'!
exportExperimentFilesToPath: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SGMonitorStreamDummy.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) files.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := [:recoveredBlock11Arg1 :recoveredBlock11Arg2 | 
    | recoveredBlock11Local1 recoveredBlock11Local2 recoveredBlock11Stack0 recoveredBlock11Stack1 recoveredBlock11Stack2 recoveredBlock11Stack3 recoveredBlock11Stack4 recoveredBlock11Stack5 recoveredBlock11PC recoveredBlock11Step recoveredBlock11Done recoveredBlock11Result |
    recoveredBlock11Stack0 := self.
    recoveredBlock11PC := 18.
    recoveredBlock11Done := false.
    [recoveredBlock11Done not] whileTrue: [
        recoveredBlock11Step := recoveredBlock11PC.
        recoveredBlock11Step = 18 ifTrue: [
            recoveredBlock11Stack1 := recoveredArg1.
            recoveredBlock11PC := 21.
        ].
        recoveredBlock11Step = 21 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 24.
        ].
        recoveredBlock11Step = 24 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) , (recoveredBlock11Stack2).
            recoveredBlock11PC := 25.
        ].
        recoveredBlock11Step = 25 ifTrue: [
            recoveredBlock11Local2 := recoveredBlock11Stack1.
            recoveredBlock11PC := 28.
        ].
        recoveredBlock11Step = 28 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Local2.
            recoveredBlock11PC := 31.
        ].
        recoveredBlock11Step = 31 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Local2.
            recoveredBlock11PC := 34.
        ].
        recoveredBlock11Step = 34 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) splitPath.
            recoveredBlock11PC := 36.
        ].
        recoveredBlock11Step = 36 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) last.
            recoveredBlock11PC := 38.
        ].
        recoveredBlock11Step = 38 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) removeSubstring: (recoveredBlock11Stack2).
            recoveredBlock11PC := 40.
        ].
        recoveredBlock11Step = 40 ifTrue: [
            recoveredBlock11Local1 := recoveredBlock11Stack1.
            recoveredBlock11PC := 43.
        ].
        recoveredBlock11Step = 43 ifTrue: [
            recoveredBlock11Stack1 := CfsStat.
            recoveredBlock11PC := 45.
        ].
        recoveredBlock11Step = 45 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Local1.
            recoveredBlock11PC := 48.
        ].
        recoveredBlock11Step = 48 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) ensurePath: (recoveredBlock11Stack2).
            recoveredBlock11PC := 50.
        ].
        recoveredBlock11Step = 50 ifTrue: [
            (recoveredBlock11Stack1) ifTrue: [recoveredBlock11PC := 54] ifFalse: [recoveredBlock11PC := 86].
        ].
        recoveredBlock11Step = 54 ifTrue: [
            recoveredBlock11Stack1 := recoveredLocal2.
            recoveredBlock11PC := 57.
        ].
        recoveredBlock11Step = 57 ifTrue: [
            recoveredBlock11Stack2 := [
    | recoveredBlock11Block57Value0 recoveredBlock11Block57Value1 |
    recoveredBlock11Block57Value0 := recoveredBlock11Arg1.
    recoveredBlock11Block57Value1 := ('Writing file %1') bindWith: (recoveredBlock11Block57Value0).
    recoveredBlock11Block57Value1
].
            recoveredBlock11PC := 72.
        ].
        recoveredBlock11Step = 72 ifTrue: [
            (recoveredBlock11Stack1) addInfoTextBlock: (recoveredBlock11Stack2).
            recoveredBlock11PC := 74.
        ].
        recoveredBlock11Step = 74 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Arg2.
            recoveredBlock11PC := 77.
        ].
        recoveredBlock11Step = 77 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Local2.
            recoveredBlock11PC := 80.
        ].
        recoveredBlock11Step = 80 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) writeToFile: (recoveredBlock11Stack2).
            recoveredBlock11PC := 82.
        ].
        recoveredBlock11Step = 82 ifTrue: [
            recoveredBlock11PC := 101.
        ].
        recoveredBlock11Step = 86 ifTrue: [
            recoveredBlock11Stack1 := recoveredLocal2.
            recoveredBlock11PC := 89.
        ].
        recoveredBlock11Step = 89 ifTrue: [
            recoveredBlock11Stack2 := 'Error writing file %1 because the directory %2 could not be created.'.
            recoveredBlock11PC := 91.
        ].
        recoveredBlock11Step = 91 ifTrue: [
            recoveredBlock11Stack3 := recoveredBlock11Local2.
            recoveredBlock11PC := 94.
        ].
        recoveredBlock11Step = 94 ifTrue: [
            recoveredBlock11Stack4 := recoveredBlock11Local1.
            recoveredBlock11PC := 97.
        ].
        recoveredBlock11Step = 97 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) bindWith: (recoveredBlock11Stack3) with: (recoveredBlock11Stack4).
            recoveredBlock11PC := 99.
        ].
        recoveredBlock11Step = 99 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) addErrorText: (recoveredBlock11Stack2).
            recoveredBlock11PC := 101.
        ].
        recoveredBlock11Step = 101 ifTrue: [
            recoveredBlock11Result := recoveredBlock11Stack1.
            recoveredBlock11Done := true.
        ].
    ].
    recoveredBlock11Result
].
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack0) keysAndValuesDo: (recoveredStack1).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := ASDGenericComponentsFolderWatcher.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := (recoveredStack0) instance.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
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
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := ASDGenericComponentFolderModifiedCallback.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack3 := 'folderModified:clientData:callData:'.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20591f0c; bytecode file offset 0xe8e860"
!ASDExperimentComponent methodsFor: 'recovered'!
refreshFilesFromExperimentFile: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isComponentEditable.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := SGMonitorStreamDummy.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) splitPath.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) last.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) removeSubstring: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := Dictionary.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := CfsDirectoryDescriptor.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := '*'.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) findFileNames: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := [:recoveredBlock50Arg1 | 
    | recoveredBlock50Value0 recoveredBlock50Value1 recoveredBlock50Value2 recoveredBlock50Value3 recoveredBlock50Value4 recoveredBlock50Value5 recoveredBlock50Value6 recoveredBlock50Value7 recoveredBlock50Value8 |
    recoveredBlock50Value0 := ('Rnz') == ('ToDo').
    recoveredBlock50Value1 := recoveredLocal3.
    recoveredBlock50Value2 := recoveredBlock50Arg1.
    recoveredBlock50Value3 := recoveredLocal4.
    recoveredBlock50Value4 := (recoveredBlock50Value2) removeSubstring: (recoveredBlock50Value3).
    recoveredBlock50Value5 := CfsStat.
    recoveredBlock50Value6 := recoveredBlock50Arg1.
    recoveredBlock50Value7 := (recoveredBlock50Value5) statLocalTime: (recoveredBlock50Value6).
    recoveredBlock50Value8 := (recoveredBlock50Value1) at: (recoveredBlock50Value4) put: (recoveredBlock50Value7).
    recoveredBlock50Value8
].
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := [:recoveredBlock84Arg1 :recoveredBlock84Arg2 | 
    | recoveredBlock84Local1 recoveredBlock84Local2 recoveredBlock84Value0 recoveredBlock84Value1 recoveredBlock84Value2 recoveredBlock84Value3 recoveredBlock84Value4 recoveredBlock84Value5 recoveredBlock84Value6 recoveredBlock84Value7 recoveredBlock84Value8 |
    recoveredBlock84Value0 := recoveredLocal4.
    recoveredBlock84Value1 := (recoveredBlock84Value0) , ('\').
    recoveredBlock84Value2 := recoveredBlock84Arg1.
    recoveredBlock84Value3 := (recoveredBlock84Value1) , (recoveredBlock84Value2).
    recoveredBlock84Local1 := recoveredBlock84Value3.
    recoveredBlock84Value4 := (self) files.
    recoveredBlock84Value5 := recoveredBlock84Arg1.
    recoveredBlock84Value6 := [
    | recoveredBlock84Block110Stack0 recoveredBlock84Block110Stack1 recoveredBlock84Block110Stack2 recoveredBlock84Block110Stack3 recoveredBlock84Block110Stack4 recoveredBlock84Block110Stack5 recoveredBlock84Block110PC recoveredBlock84Block110Step recoveredBlock84Block110Done recoveredBlock84Block110Result |
    recoveredBlock84Block110Stack0 := self.
    recoveredBlock84Block110PC := 116.
    recoveredBlock84Block110Done := false.
    [recoveredBlock84Block110Done not] whileTrue: [
        recoveredBlock84Block110Step := recoveredBlock84Block110PC.
        recoveredBlock84Block110Step = 116 ifTrue: [
            recoveredBlock84Block110Stack1 := recoveredLocal2.
            recoveredBlock84Block110PC := 119.
        ].
        recoveredBlock84Block110Step = 119 ifTrue: [
            recoveredBlock84Block110Stack2 := '[%1] Adding file %2'.
            recoveredBlock84Block110PC := 121.
        ].
        recoveredBlock84Block110Step = 121 ifTrue: [
            recoveredBlock84Block110Stack3 := self.
            recoveredBlock84Block110PC := 122.
        ].
        recoveredBlock84Block110Step = 122 ifTrue: [
            recoveredBlock84Block110Stack3 := (recoveredBlock84Block110Stack3) label.
            recoveredBlock84Block110PC := 124.
        ].
        recoveredBlock84Block110Step = 124 ifTrue: [
            recoveredBlock84Block110Stack4 := recoveredBlock84Arg1.
            recoveredBlock84Block110PC := 127.
        ].
        recoveredBlock84Block110Step = 127 ifTrue: [
            recoveredBlock84Block110Stack2 := (recoveredBlock84Block110Stack2) bindWith: (recoveredBlock84Block110Stack3) with: (recoveredBlock84Block110Stack4).
            recoveredBlock84Block110PC := 129.
        ].
        recoveredBlock84Block110Step = 129 ifTrue: [
            (recoveredBlock84Block110Stack1) addImportantInfoText: (recoveredBlock84Block110Stack2).
            recoveredBlock84Block110PC := 131.
        ].
        recoveredBlock84Block110Step = 131 ifTrue: [
            recoveredBlock84Block110Stack1 := SGFileString.
            recoveredBlock84Block110PC := 133.
        ].
        recoveredBlock84Block110Step = 133 ifTrue: [
            recoveredBlock84Block110Stack2 := recoveredBlock84Local1.
            recoveredBlock84Block110PC := 136.
        ].
        recoveredBlock84Block110Step = 136 ifTrue: [
            recoveredBlock84Block110Stack3 := self.
            recoveredBlock84Block110PC := 137.
        ].
        recoveredBlock84Block110Step = 137 ifTrue: [
            recoveredBlock84Block110Stack1 := (recoveredBlock84Block110Stack1) createForFileName: (recoveredBlock84Block110Stack2) owner: (recoveredBlock84Block110Stack3).
            recoveredBlock84Block110PC := 139.
        ].
        recoveredBlock84Block110Step = 139 ifTrue: [
            recoveredBlock84Block110Stack2 := recoveredBlock84Block110Stack1.
            recoveredBlock84Block110PC := 140.
        ].
        recoveredBlock84Block110Step = 140 ifTrue: [
            recoveredBlock84Local2 := recoveredBlock84Block110Stack2.
            recoveredBlock84Block110PC := 143.
        ].
        recoveredBlock84Block110Step = 143 ifTrue: [
            (recoveredBlock84Block110Stack1 ~~ nil) ifTrue: [recoveredBlock84Block110PC := 164] ifFalse: [recoveredBlock84Block110PC := 146].
        ].
        recoveredBlock84Block110Step = 146 ifTrue: [
            recoveredBlock84Block110Stack1 := recoveredLocal2.
            recoveredBlock84Block110PC := 149.
        ].
        recoveredBlock84Block110Step = 149 ifTrue: [
            recoveredBlock84Block110Stack2 := '[%1] Error adding file %2'.
            recoveredBlock84Block110PC := 151.
        ].
        recoveredBlock84Block110Step = 151 ifTrue: [
            recoveredBlock84Block110Stack3 := self.
            recoveredBlock84Block110PC := 152.
        ].
        recoveredBlock84Block110Step = 152 ifTrue: [
            recoveredBlock84Block110Stack3 := (recoveredBlock84Block110Stack3) label.
            recoveredBlock84Block110PC := 154.
        ].
        recoveredBlock84Block110Step = 154 ifTrue: [
            recoveredBlock84Block110Stack4 := recoveredBlock84Local1.
            recoveredBlock84Block110PC := 157.
        ].
        recoveredBlock84Block110Step = 157 ifTrue: [
            recoveredBlock84Block110Stack2 := (recoveredBlock84Block110Stack2) bindWith: (recoveredBlock84Block110Stack3) with: (recoveredBlock84Block110Stack4).
            recoveredBlock84Block110PC := 159.
        ].
        recoveredBlock84Block110Step = 159 ifTrue: [
            recoveredBlock84Block110Stack1 := (recoveredBlock84Block110Stack1) addErrorText: (recoveredBlock84Block110Stack2).
            recoveredBlock84Block110PC := 161.
        ].
        recoveredBlock84Block110Step = 161 ifTrue: [
            recoveredBlock84Block110PC := 179.
        ].
        recoveredBlock84Block110Step = 164 ifTrue: [
            recoveredBlock84Block110Stack1 := files.
            recoveredBlock84Block110PC := 166.
        ].
        recoveredBlock84Block110Step = 166 ifTrue: [
            recoveredBlock84Block110Stack2 := recoveredBlock84Arg1.
            recoveredBlock84Block110PC := 169.
        ].
        recoveredBlock84Block110Step = 169 ifTrue: [
            recoveredBlock84Block110Stack3 := recoveredBlock84Local2.
            recoveredBlock84Block110PC := 172.
        ].
        recoveredBlock84Block110Step = 172 ifTrue: [
            (recoveredBlock84Block110Stack1) at: (recoveredBlock84Block110Stack2) put: (recoveredBlock84Block110Stack3).
            recoveredBlock84Block110PC := 174.
        ].
        recoveredBlock84Block110Step = 174 ifTrue: [
            recoveredBlock84Block110Stack1 := true.
            recoveredBlock84Block110PC := 175.
        ].
        recoveredBlock84Block110Step = 175 ifTrue: [
            recoveredBlock84Block110Stack2 := recoveredBlock84Block110Stack1.
            recoveredBlock84Block110PC := 176.
        ].
        recoveredBlock84Block110Step = 176 ifTrue: [
            recoveredLocal1 := recoveredBlock84Block110Stack2.
            recoveredBlock84Block110PC := 179.
        ].
        recoveredBlock84Block110Step = 179 ifTrue: [
            recoveredBlock84Block110Result := recoveredBlock84Block110Stack1.
            recoveredBlock84Block110Done := true.
        ].
    ].
    recoveredBlock84Block110Result
].
    recoveredBlock84Value7 := [:recoveredBlock84Block180Arg1 | 
    | recoveredBlock84Block180Local1 recoveredBlock84Block180Local2 recoveredBlock84Block180Stack0 recoveredBlock84Block180Stack1 recoveredBlock84Block180Stack2 recoveredBlock84Block180Stack3 recoveredBlock84Block180Stack4 recoveredBlock84Block180Stack5 recoveredBlock84Block180PC recoveredBlock84Block180Step recoveredBlock84Block180Done recoveredBlock84Block180Result |
    recoveredBlock84Block180Stack0 := self.
    recoveredBlock84Block180PC := 186.
    recoveredBlock84Block180Done := false.
    [recoveredBlock84Block180Done not] whileTrue: [
        recoveredBlock84Block180Step := recoveredBlock84Block180PC.
        recoveredBlock84Block180Step = 186 ifTrue: [
            recoveredBlock84Block180Stack1 := recoveredBlock84Arg2.
            recoveredBlock84Block180PC := 189.
        ].
        recoveredBlock84Block180Step = 189 ifTrue: [
            recoveredBlock84Block180Stack1 := (recoveredBlock84Block180Stack1) stMtime.
            recoveredBlock84Block180PC := 191.
        ].
        recoveredBlock84Block180Step = 191 ifTrue: [
            recoveredBlock84Block180Local2 := recoveredBlock84Block180Stack1.
            recoveredBlock84Block180PC := 192.
        ].
        recoveredBlock84Block180Step = 192 ifTrue: [
            recoveredBlock84Block180Stack1 := recoveredBlock84Block180Arg1.
            recoveredBlock84Block180PC := 193.
        ].
        recoveredBlock84Block180Step = 193 ifTrue: [
            recoveredBlock84Block180Stack1 := (recoveredBlock84Block180Stack1) fileInformations.
            recoveredBlock84Block180PC := 195.
        ].
        recoveredBlock84Block180Step = 195 ifTrue: [
            recoveredBlock84Block180Stack2 := recoveredBlock84Block180Arg1.
            recoveredBlock84Block180PC := 196.
        ].
        recoveredBlock84Block180Step = 196 ifTrue: [
            recoveredBlock84Block180Stack2 := (recoveredBlock84Block180Stack2) class.
            recoveredBlock84Block180PC := 198.
        ].
        recoveredBlock84Block180Step = 198 ifTrue: [
            recoveredBlock84Block180Stack2 := (recoveredBlock84Block180Stack2) timeStampKey.
            recoveredBlock84Block180PC := 200.
        ].
        recoveredBlock84Block180Step = 200 ifTrue: [
            recoveredBlock84Block180Stack3 := [].
            recoveredBlock84Block180PC := 202.
        ].
        recoveredBlock84Block180Step = 202 ifTrue: [
            recoveredBlock84Block180Stack1 := (recoveredBlock84Block180Stack1) at: (recoveredBlock84Block180Stack2) ifAbsent: (recoveredBlock84Block180Stack3).
            recoveredBlock84Block180PC := 204.
        ].
        recoveredBlock84Block180Step = 204 ifTrue: [
            recoveredBlock84Block180Local1 := recoveredBlock84Block180Stack1.
            recoveredBlock84Block180PC := 205.
        ].
        recoveredBlock84Block180Step = 205 ifTrue: [
            recoveredBlock84Block180Stack1 := nil.
            recoveredBlock84Block180PC := 206.
        ].
        recoveredBlock84Block180Step = 206 ifTrue: [
            recoveredBlock84Block180Stack2 := recoveredBlock84Block180Local2.
            recoveredBlock84Block180PC := 207.
        ].
        recoveredBlock84Block180Step = 207 ifTrue: [
            (recoveredBlock84Block180Stack2 == nil) ifTrue: [recoveredBlock84Block180PC := 234] ifFalse: [recoveredBlock84Block180PC := 210].
        ].
        recoveredBlock84Block180Step = 210 ifTrue: [
            recoveredBlock84Block180Stack2 := recoveredBlock84Block180Local1.
            recoveredBlock84Block180PC := 211.
        ].
        recoveredBlock84Block180Step = 211 ifTrue: [
            (recoveredBlock84Block180Stack2 == nil) ifTrue: [recoveredBlock84Block180PC := 234] ifFalse: [recoveredBlock84Block180PC := 214].
        ].
        recoveredBlock84Block180Step = 214 ifTrue: [
            recoveredBlock84Block180Stack2 := recoveredBlock84Block180Local2.
            recoveredBlock84Block180PC := 215.
        ].
        recoveredBlock84Block180Step = 215 ifTrue: [
            recoveredBlock84Block180Stack2 := (recoveredBlock84Block180Stack2) last.
            recoveredBlock84Block180PC := 217.
        ].
        recoveredBlock84Block180Step = 217 ifTrue: [
            recoveredBlock84Block180Stack3 := recoveredBlock84Block180Local1.
            recoveredBlock84Block180PC := 218.
        ].
        recoveredBlock84Block180Step = 218 ifTrue: [
            recoveredBlock84Block180Stack3 := (recoveredBlock84Block180Stack3) last.
            recoveredBlock84Block180PC := 220.
        ].
        recoveredBlock84Block180Step = 220 ifTrue: [
            recoveredBlock84Block180Stack2 := (recoveredBlock84Block180Stack2) > (recoveredBlock84Block180Stack3).
            recoveredBlock84Block180PC := 221.
        ].
        recoveredBlock84Block180Step = 221 ifTrue: [
            (recoveredBlock84Block180Stack2) ifTrue: [recoveredBlock84Block180PC := 234] ifFalse: [recoveredBlock84Block180PC := 224].
        ].
        recoveredBlock84Block180Step = 224 ifTrue: [
            recoveredBlock84Block180Stack2 := recoveredBlock84Block180Local2.
            recoveredBlock84Block180PC := 225.
        ].
        recoveredBlock84Block180Step = 225 ifTrue: [
            recoveredBlock84Block180Stack2 := (recoveredBlock84Block180Stack2) first.
            recoveredBlock84Block180PC := 227.
        ].
        recoveredBlock84Block180Step = 227 ifTrue: [
            recoveredBlock84Block180Stack3 := recoveredBlock84Block180Local1.
            recoveredBlock84Block180PC := 228.
        ].
        recoveredBlock84Block180Step = 228 ifTrue: [
            recoveredBlock84Block180Stack3 := (recoveredBlock84Block180Stack3) first.
            recoveredBlock84Block180PC := 230.
        ].
        recoveredBlock84Block180Step = 230 ifTrue: [
            recoveredBlock84Block180Stack2 := (recoveredBlock84Block180Stack2) > (recoveredBlock84Block180Stack3).
            recoveredBlock84Block180PC := 231.
        ].
        recoveredBlock84Block180Step = 231 ifTrue: [
            (recoveredBlock84Block180Stack2) ifTrue: [recoveredBlock84Block180PC := 234] ifFalse: [recoveredBlock84Block180PC := 261].
        ].
        recoveredBlock84Block180Step = 234 ifTrue: [
            recoveredBlock84Block180PC := 235.
        ].
        recoveredBlock84Block180Step = 235 ifTrue: [
            recoveredBlock84Block180Stack1 := recoveredLocal2.
            recoveredBlock84Block180PC := 238.
        ].
        recoveredBlock84Block180Step = 238 ifTrue: [
            recoveredBlock84Block180Stack2 := '[%1] Updating file %2'.
            recoveredBlock84Block180PC := 240.
        ].
        recoveredBlock84Block180Step = 240 ifTrue: [
            recoveredBlock84Block180Stack3 := self.
            recoveredBlock84Block180PC := 241.
        ].
        recoveredBlock84Block180Step = 241 ifTrue: [
            recoveredBlock84Block180Stack3 := (recoveredBlock84Block180Stack3) label.
            recoveredBlock84Block180PC := 243.
        ].
        recoveredBlock84Block180Step = 243 ifTrue: [
            recoveredBlock84Block180Stack4 := recoveredBlock84Arg1.
            recoveredBlock84Block180PC := 246.
        ].
        recoveredBlock84Block180Step = 246 ifTrue: [
            recoveredBlock84Block180Stack2 := (recoveredBlock84Block180Stack2) bindWith: (recoveredBlock84Block180Stack3) with: (recoveredBlock84Block180Stack4).
            recoveredBlock84Block180PC := 248.
        ].
        recoveredBlock84Block180Step = 248 ifTrue: [
            (recoveredBlock84Block180Stack1) addImportantInfoText: (recoveredBlock84Block180Stack2).
            recoveredBlock84Block180PC := 250.
        ].
        recoveredBlock84Block180Step = 250 ifTrue: [
            recoveredBlock84Block180Stack1 := recoveredBlock84Block180Arg1.
            recoveredBlock84Block180PC := 251.
        ].
        recoveredBlock84Block180Step = 251 ifTrue: [
            recoveredBlock84Block180Stack2 := recoveredBlock84Local1.
            recoveredBlock84Block180PC := 254.
        ].
        recoveredBlock84Block180Step = 254 ifTrue: [
            (recoveredBlock84Block180Stack1) updateForFile: (recoveredBlock84Block180Stack2).
            recoveredBlock84Block180PC := 256.
        ].
        recoveredBlock84Block180Step = 256 ifTrue: [
            recoveredBlock84Block180Stack1 := true.
            recoveredBlock84Block180PC := 257.
        ].
        recoveredBlock84Block180Step = 257 ifTrue: [
            recoveredBlock84Block180Stack2 := recoveredBlock84Block180Stack1.
            recoveredBlock84Block180PC := 258.
        ].
        recoveredBlock84Block180Step = 258 ifTrue: [
            recoveredLocal1 := recoveredBlock84Block180Stack2.
            recoveredBlock84Block180PC := 261.
        ].
        recoveredBlock84Block180Step = 261 ifTrue: [
            recoveredBlock84Block180Result := recoveredBlock84Block180Stack1.
            recoveredBlock84Block180Done := true.
        ].
    ].
    recoveredBlock84Block180Result
].
    recoveredBlock84Value8 := (recoveredBlock84Value4) at: (recoveredBlock84Value5) ifAbsent: (recoveredBlock84Value6) ifPresent: (recoveredBlock84Value7).
    recoveredBlock84Value8
].
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            (recoveredStack0) keysAndValuesDo: (recoveredStack1).
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 274] ifFalse: [recoveredPC := 277].
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            (recoveredStack0) modified.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205bc6e4; bytecode file offset 0xeb9054"
!ASDExperimentComponent methodsFor: 'recovered'!
eeOpenExperiment: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) eeMainExperimentFile.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := RBUserInfo.
    recoveredBlock5Value1 := (recoveredBlock5Value0) errorMessage: ('Sorry, you need to load some experiment data first.').
    (recoveredBlock5Value1) prompt.
    ^self
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifNil: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) isProject.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 39] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := 'Sorry, only projects are supported so far.'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorMessage: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := ASDPathOptions.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) instance.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionCodeGenerationPath.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := [
    ^self
].
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) ifNil: (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) label.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := '.a2l'.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) eeWriteAsap2ToFile: (recoveredStack1).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 97] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := 'Sorry, there were code generation errors.'.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorMessage: (recoveredStack1).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := EtasExperimentEnvironmentInterface.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := (recoveredStack0) eeGetEE.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := (recoveredStack0) commands.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := EtasExperimentEnvironmentInterface.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock114Value0 recoveredBlock114Value1 |
    recoveredBlock114Value0 := recoveredLocal1.
    recoveredBlock114Value1 := (recoveredBlock114Value0) closeExperiment.
    recoveredBlock114Value1
].
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            (recoveredStack0) eeIgnoreErrorsOperation: (recoveredStack1).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := EtasExperimentEnvironmentInterface.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock130Value0 recoveredBlock130Value1 |
    recoveredBlock130Value0 := recoveredLocal1.
    recoveredBlock130Value1 := (recoveredBlock130Value0) closeWorkspace.
    recoveredBlock130Value1
].
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            (recoveredStack0) eeIgnoreErrorsOperation: (recoveredStack1).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := SGMonitorStreamDummy.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock148Value0 recoveredBlock148Value1 recoveredBlock148Value2 recoveredBlock148Value3 |
    recoveredBlock148Value0 := CfsDirectoryDescriptor.
    recoveredBlock148Value1 := (self) eeExperimentPath.
    (recoveredBlock148Value0) deletePathRecursive: (recoveredBlock148Value1).
    recoveredBlock148Value2 := (self) eeExperimentPath.
    recoveredBlock148Value3 := (self) exportExperimentFilesToPath: (recoveredBlock148Value2).
    recoveredBlock148Value3
].
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack2 := 'Writing Experiment Files'.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            (recoveredStack0) measureTimeFor: (recoveredStack1) description: (recoveredStack2).
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack0 := (recoveredStack0) target.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRtsTarget.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 182] ifFalse: [recoveredPC := 216].
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack1 := (recoveredStack1) dbObject.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack1 := (recoveredStack1) globalId.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := (recoveredStack1) aliasAsIdString.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack2 := (recoveredStack2) pathString.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack5 := '.cod'.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack4 := (recoveredStack4) , (recoveredStack5).
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            (recoveredStack0) declareVPSignalSource: (recoveredStack1) name: (recoveredStack2) a2lFile: (recoveredStack3) hexFile: (recoveredStack4).
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredPC := 246.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack1 := (recoveredStack1) dbObject.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack1 := (recoveredStack1) globalId.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack1 := (recoveredStack1) aliasAsIdString.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack2 := (recoveredStack2) pathString.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack5 := '.cod'.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack4 := (recoveredStack4) , (recoveredStack5).
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            (recoveredStack0) declareETargetSignalSource: (recoveredStack1) name: (recoveredStack2) a2lFile: (recoveredStack3) hexFile: (recoveredStack4).
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack0 := CfsStat.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack1 := (recoveredStack1) eeWorkspaceFile.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack0 := (recoveredStack0) exists: (recoveredStack1).
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 258] ifFalse: [recoveredPC := 272].
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack1 := (recoveredStack1) eeWorkspaceFile.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            (recoveredStack0) openWorkspace: (recoveredStack1).
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredPC := 286.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack1 := (recoveredStack1) eeLabel.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack2 := EtasExperimentEnvironmentInterface.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack2 := (recoveredStack2) eeWorkspacesPath.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            (recoveredStack0) createWorkspace: (recoveredStack1) path: (recoveredStack2).
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack0 := EtasExperimentEnvironmentInterface.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock288Value0 recoveredBlock288Value1 |
    recoveredBlock288Value0 := recoveredLocal1.
    recoveredBlock288Value1 := (recoveredBlock288Value0) closeExperiment.
    recoveredBlock288Value1
].
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            (recoveredStack0) eeIgnoreErrorsOperation: (recoveredStack1).
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack0 := EtasExperimentEnvironmentInterface.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock304Value0 recoveredBlock304Value1 recoveredBlock304Value2 |
    recoveredBlock304Value0 := recoveredLocal1.
    recoveredBlock304Value1 := (self) eeMainExperimentFile.
    recoveredBlock304Value2 := (recoveredBlock304Value0) openExperiment: (recoveredBlock304Value1).
    recoveredBlock304Value2
].
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            (recoveredStack0) eeIgnoreErrorsOperation: (recoveredStack1).
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

