"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20012ea0; bytecode file offset 0x912098"
!ASDWorkspaceConversionWizard methodsFor: 'recovered'!
getConvertableItemsCollectionClass
    | recoveredValue0 |
    recoveredValue0 := ASDXMLExportCollection.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20013128; bytecode file offset 0x912098"
!ASDWorkspaceConversionWizard methodsFor: 'recovered'!
getExportParameterClass
    | recoveredValue0 |
    recoveredValue0 := ASDXMLExportParameters.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2003de58; bytecode file offset 0x93bf94"
!ASDWorkspaceConversionWizard methodsFor: 'recovered'!
maxPathLen
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Util.
    recoveredValue1 := (recoveredValue0) maxPathLen.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200441dc; bytecode file offset 0x9451f8"
!ASDWorkspaceConversionWizard methodsFor: 'recovered'!
widgetOpenWorkspaceCheckBox
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('openWorkspaceCheckBox').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20044fcc; bytecode file offset 0x9451f8"
!ASDWorkspaceConversionWizard methodsFor: 'recovered'!
widgetFileField
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('fileField').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20071074; bytecode file offset 0x96d928"
!ASDWorkspaceConversionWizard methodsFor: 'recovered'!
convertableItems
    | recoveredValue0 |
    recoveredValue0 := convertableItems.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200712ac; bytecode file offset 0x96db68"
!ASDWorkspaceConversionWizard methodsFor: 'recovered'!
issues
    | recoveredValue0 |
    recoveredValue0 := issues.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200789ac; bytecode file offset 0x9757c8"
!ASDWorkspaceConversionWizard methodsFor: 'recovered'!
maxPathLengthHandling
    ^true
! !

"ASDBase.ic method 0x200831d8; bytecode file offset 0x97fa8c"
!ASDWorkspaceConversionWizard methodsFor: 'recovered'!
workspaceFileName: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    workspaceFileName := recoveredValue1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008be18; bytecode file offset 0x9886d0"
!ASDWorkspaceConversionWizard methodsFor: 'recovered'!
cancelled
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := conversionStatus.
    recoveredValue1 := (recoveredValue0) == ('cancelled').
    ^recoveredValue1
! !

"ASDBase.ic method 0x200d234c; bytecode file offset 0x9ced10"
!ASDWorkspaceConversionWizard methodsFor: 'recovered'!
cancelConversion
    (self) setState: ('cancelled').
    (self) lastPage.
    ^self
! !

"ASDBase.ic method 0x200e1d60; bytecode file offset 0x9de890"
!ASDWorkspaceConversionWizard methodsFor: 'recovered'!
conversionIntroText
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) maxPathLen.
    recoveredValue1 := (recoveredValue0) asString.
    recoveredValue2 := ('This wizard will guide you through the conversion of the currently opened database from a binary format into an XML based workspace. The conversion procedure may take some time depending on the size of the database. The conversion will not change anything in the database.

If one or more items in the database can not be converted, the complete conversion will fail!!

Known reasons for failure are:
- paths longer than ') , (recoveredValue1).
    recoveredValue3 := (recoveredValue2) , (' characters
- damaged items in the database
- insufficient free disk space').
    ^recoveredValue3
! !

"ASDBase.ic method 0x200f7ecc; bytecode file offset 0x9f4e38"
!ASDWorkspaceConversionWizard methodsFor: 'recovered'!
convertableItemsNoFolders
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) convertableItems.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c5430Arg1 | 
    | block280c5430Value0 block280c5430Value1 |
    block280c5430Value0 := block280c5430Arg1.
    block280c5430Value1 := (block280c5430Value0) isFolder.
    block280c5430Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) reject: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20107474; bytecode file offset 0xa03d3c"
!ASDWorkspaceConversionWizard methodsFor: 'recovered'!
descriptionText
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := workspaceLimit.
    recoveredValue1 := (recoveredValue0) asString.
    recoveredValue2 := ('Please select a file and a location for the workspace to be created.\The filename you specify will be the name of the workspace.\All files belonging to the workspace will be stored in the folder of the workspace.\The path to the workspace must be shorter than ') , (recoveredValue1).
    recoveredValue3 := (recoveredValue2) , (' characters!!').
    recoveredValue4 := (recoveredValue3) withCrs.
    ^recoveredValue4
! !

"ASDBase.ic method 0x20117c80; bytecode file offset 0xa14540"
!ASDWorkspaceConversionWizard methodsFor: 'recovered'!
openWorkspacePossible
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) failedState.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := workspaceFileName.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) exists: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2016d468; bytecode file offset 0xa69d24"
!ASDWorkspaceConversionWizard methodsFor: 'recovered'!
fileButtonActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) promptForFile.
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
            recoveredStack0 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            workspaceFileName := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201a953c; bytecode file offset 0xaa5e08"
!ASDWorkspaceConversionWizard methodsFor: 'recovered'!
fileFieldValue: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) currentStep.
    (recoveredValue0) nextState: (true).
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue1) value.
    recoveredValue3 := (recoveredValue2) trimBlanks.
    workspaceFileName := recoveredValue3.
    recoveredValue4 := (self) currentStep.
    recoveredValue5 := (self) isWorkspaceFileValid.
    (recoveredValue4) nextState: (recoveredValue5).
    (self) update.
    ^self
! !

"ASDBase.ic method 0x201af028; bytecode file offset 0xaab8e4"
!ASDWorkspaceConversionWizard methodsFor: 'recovered'!
failedState
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := conversionStatus.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'cancelled'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := conversionStatus.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := 'failed'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202172e8; bytecode file offset 0xb13bb8"
!ASDWorkspaceConversionWizard methodsFor: 'recovered'!
autorun
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) pageActions.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) currentPage.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) value.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) finalState.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentPage.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) wizardPages.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2022fb40; bytecode file offset 0xb2c418"
!ASDWorkspaceConversionWizard methodsFor: 'recovered'!
defaultWorkspaceFile
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := ASDPathOptions.
    recoveredValue1 := (recoveredValue0) instance.
    recoveredValue2 := (recoveredValue1) optionWorkspacePath.
    recoveredValue3 := MainController.
    recoveredValue4 := (recoveredValue3) databaseAccess.
    recoveredValue5 := (recoveredValue4) label.
    recoveredValue6 := (recoveredValue2) , (recoveredValue5).
    recoveredValue7 := (recoveredValue6) , ('\').
    recoveredValue8 := MainController.
    recoveredValue9 := (recoveredValue8) databaseAccess.
    recoveredValue10 := (recoveredValue9) label.
    recoveredValue11 := (recoveredValue7) , (recoveredValue10).
    recoveredValue12 := MainController.
    recoveredValue13 := (recoveredValue12) workspaceExtension.
    recoveredValue14 := (recoveredValue11) , (recoveredValue13).
    ^recoveredValue14
! !

"ASDBase.ic method 0x2025a348; bytecode file offset 0xb56c14"
!ASDWorkspaceConversionWizard methodsFor: 'recovered'!
resultText
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredLocal1 := ''.
    recoveredValue0 := (self) detectedProblems.
    recoveredValue1 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 recoveredBlock10Value4 recoveredBlock10Value5 |
    recoveredBlock10Value0 := recoveredLocal1.
    recoveredBlock10Value1 := ('\') withCrs.
    recoveredBlock10Value2 := (recoveredBlock10Value0) , (recoveredBlock10Value1).
    recoveredBlock10Value3 := recoveredBlock10Arg1.
    recoveredBlock10Value4 := (recoveredBlock10Value2) , (recoveredBlock10Value3).
    recoveredBlock10Value5 := recoveredBlock10Value4.
    recoveredLocal1 := recoveredBlock10Value5.
    recoveredBlock10Value4
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20283390; bytecode file offset 0xb7fc58"
!ASDWorkspaceConversionWizard methodsFor: 'recovered'!
isFinishPossible
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) convertableItems.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := diskSize.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) isWorkspaceFileValid.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentStep.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) nextState.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202a0f18; bytecode file offset 0xb9d7ec"
!ASDWorkspaceConversionWizard methodsFor: 'recovered'!
addIssue: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := issues.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) isInformation.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) displayString.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) addInformationMessage: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) isWarning.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) displayString.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) addWarningMessage: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) isError.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := (recoveredStack2) displayString.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) addErrorMessage: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202a6e20; bytecode file offset 0xba36f8"
!ASDWorkspaceConversionWizard methodsFor: 'recovered'!
exportItems
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) finalState.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := MainController.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) createExportManagerUserInterface: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) convertableItems.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := workspaceFileName.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) exportItemsForWorkspace: (recoveredStack1) toAmdFile: (recoveredStack2) ui: (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 43].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := 'Export failed!! Please see monitor window for details.'.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) addErrorMessage: (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := 'failed'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) setState: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
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

"ASDBase.ic method 0x202a88a0; bytecode file offset 0xba5164"
!ASDWorkspaceConversionWizard methodsFor: 'recovered'!
finalState
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := conversionStatus.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'successful'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := conversionStatus.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := 'cancelled'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := conversionStatus.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := 'failed'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := conversionStatus.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := 'finished'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202f6dc8; bytecode file offset 0xbf36ac"
!ASDWorkspaceConversionWizard methodsFor: 'recovered'!
createPages
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) createConversionIntroPage.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) createCollectionProgressPage.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) createConversionDataPage.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) createConversionProgressPage.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := ASDAscetController.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSCMActive.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) scmAddPages: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := (recoveredStack2) createConversionResultPage.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) wizardPages: (recoveredStack1).
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

"ASDBase.ic method 0x203075a8; bytecode file offset 0xc03e80"
!ASDWorkspaceConversionWizard methodsFor: 'recovered'!
finish
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentPage.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) wizardPages.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) pageActions.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) value.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack0) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 14] ifFalse: [recoveredLocal1 := nil. recoveredPC := 35]] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 33] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := conversionStatus.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := 'failed'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) nextPage.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredPC := 53.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2031b404; bytecode file offset 0xc17ce0"
!ASDWorkspaceConversionWizard methodsFor: 'recovered'!
resultInfo
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := conversionStatus.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'successful'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 'Conversion successfully finished!!'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := conversionStatus.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := 'cancelled'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := 'Conversion canceled by user!!'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := conversionStatus.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := 'finished'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 41].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := 'Conversion successfully finished!!\One ore more problems were detected.\Please read the problem report in monitor.'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) withCrs.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := conversionStatus.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := 'failed'.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 55].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := 'Conversion failed!!\One or more problems were detected that prevent a conversion.\Please read the problem report in monitor.'.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) withCrs.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := 'Conversion finished!!'.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203522c8; bytecode file offset 0xc4eba8"
!ASDWorkspaceConversionWizard methodsFor: 'recovered'!
statusIcon
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := conversionStatus.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'successful'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) resourceManager.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := 'GeneralCheck48'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) returnIconWithName: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := conversionStatus.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := 'cancelled'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) resourceManager.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := 'GeneralCancel48'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) returnIconWithName: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := conversionStatus.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := 'failed'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) resourceManager.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := 'GeneralError48'.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) returnIconWithName: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := conversionStatus.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := 'finished'.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) resourceManager.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := 'GeneralWarning48'.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) returnIconWithName: (recoveredStack2).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) resourceManager.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := 'GeneralTransparent'.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) returnIconWithName: (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203622ec; bytecode file offset 0xc5ebd8"
!ASDWorkspaceConversionWizard methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    super initialize.
    wizardTitle := 'Database to Workspace Conversion '.
    wizardHeadLine := 'Database to Workspace Conversion'.
    recoveredValue0 := (self) resourceManager.
    recoveredValue1 := (recoveredValue0) returnIconWithName: ('GeneralWizard48').
    wizardIcon := recoveredValue1.
    currentPage := 1.
    (self) createPages.
    conversionStatus := 'notStarted'.
    recoveredValue2 := Set.
    recoveredValue3 := (recoveredValue2) new.
    detectedProblems := recoveredValue3.
    convertableItems := nil.
    recoveredValue4 := OrderedCollection.
    recoveredValue5 := (recoveredValue4) new.
    issues := recoveredValue5.
    diskSize := 0.
    recoveredValue6 := (self) maxPathLen.
    workspaceLimit := recoveredValue6.
    recoveredValue7 := (self) defaultWorkspaceFile.
    workspaceFileName := recoveredValue7.
    ^self
! !

"ASDBase.ic method 0x203b9e68; bytecode file offset 0xcb6770"
!ASDWorkspaceConversionWizard methodsFor: 'recovered'!
createConversionIntroPage
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasInformationWizardPage.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack2) initialize.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := 'General Information'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack2) stepDescription: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := 'Introduction'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack2) stepLabel: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := (recoveredStack3) conversionIntroText.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack2) infoText: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := [
    'Finish'
].
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack2) actionLabel: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock38Value0 |
    recoveredBlock38Value0 := (self) isFinishPossible.
    recoveredBlock38Value0
].
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack2) actionState: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock50Value0 |
    recoveredBlock50Value0 := (self) finish.
    recoveredBlock50Value0
].
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack2) actionAction: (recoveredStack3).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock61Value0 recoveredBlock61Value1 recoveredBlock61Value2 recoveredBlock61Value3 |
    recoveredBlock61Value0 := (self) pageActions.
    recoveredBlock61Value1 := (self) currentPage.
    recoveredBlock61Value2 := (recoveredBlock61Value0) at: (recoveredBlock61Value1).
    recoveredBlock61Value3 := (recoveredBlock61Value2) value.
    recoveredBlock61Value3
].
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) nextAction: (recoveredStack2).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203de754; bytecode file offset 0xcdb054"
!ASDWorkspaceConversionWizard methodsFor: 'recovered'!
openWorkspace
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetOpenWorkspaceCheckBox.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) set.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) openWorkspacePossible.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := MainController.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) storeEnvironment.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) library.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataStoragePath.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) asPathname.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := EnvironmentXML.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := CfsStat.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) exists: (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := CfsStat.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := workspaceFileName.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) pathName.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) ensurePath: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := CfsFileDescriptor.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := EnvironmentXML.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) copy: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := MainController.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := workspaceFileName.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := MainController.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := (recoveredStack2) userInterface.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack0) changeDatabaseTo: (recoveredStack1) view: (recoveredStack2) useEmptyOnFail: (recoveredStack3).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20402ba0; bytecode file offset 0xcff480"
!ASDWorkspaceConversionWizard methodsFor: 'recovered'!
pageActions
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock10Value0 |
    (self) nextPage.
    recoveredBlock10Value0 := (self) doCollection.
    recoveredBlock10Value0
].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock24Stack0 recoveredBlock24Stack1 recoveredBlock24Stack2 recoveredBlock24Stack3 recoveredBlock24PC recoveredBlock24Step recoveredBlock24Done recoveredBlock24Result |
    recoveredBlock24Stack0 := self.
    recoveredBlock24PC := 30.
    recoveredBlock24Done := false.
    [recoveredBlock24Done not] whileTrue: [
        recoveredBlock24Step := recoveredBlock24PC.
        recoveredBlock24Step = 30 ifTrue: [
            recoveredBlock24Stack1 := nil.
            recoveredBlock24PC := 31.
        ].
        recoveredBlock24Step = 31 ifTrue: [
            recoveredBlock24Stack2 := self.
            recoveredBlock24PC := 32.
        ].
        recoveredBlock24Step = 32 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) isWorkspaceFileValid.
            recoveredBlock24PC := 34.
        ].
        recoveredBlock24Step = 34 ifTrue: [
            (recoveredBlock24Stack2) ifTrue: [recoveredBlock24PC := 38] ifFalse: [recoveredBlock24PC := 41].
        ].
        recoveredBlock24Step = 38 ifTrue: [
            recoveredBlock24PC := 39.
        ].
        recoveredBlock24Step = 39 ifTrue: [
            recoveredBlock24Stack1 := self.
            recoveredBlock24PC := 40.
        ].
        recoveredBlock24Step = 40 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) nextPage.
            recoveredBlock24PC := 41.
        ].
        recoveredBlock24Step = 41 ifTrue: [
            recoveredBlock24Result := recoveredBlock24Stack1.
            recoveredBlock24Done := true.
        ].
    ].
    recoveredBlock24Result
].
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock44Value0 |
    (self) nextPage.
    recoveredBlock44Value0 := (self) doConversion.
    recoveredBlock44Value0
].
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := ASDAscetController.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSCMActive.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack1) scmAddActions: (recoveredStack2).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock72Value0 |
    recoveredBlock72Value0 := (self) nextPage.
    recoveredBlock72Value0
].
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock82Value0 |
    recoveredBlock82Value0 := (self) openWorkspace.
    recoveredBlock82Value0
].
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2040b70c; bytecode file offset 0xd0802c"
!ASDWorkspaceConversionWizard methodsFor: 'recovered'!
exported: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentStep.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isProgressWizardPage.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 95].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentStep.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetProgressLabel.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := 'Converted '.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := ' of '.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) convertableItems.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := ' items...'.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentStep.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetProgressBar.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDestroyed.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := Transcript.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := 'Tying to update Progress Bar which is already destroyed!!!!!!'.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) show: (recoveredStack1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredPC := 81.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentStep.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetProgressBar.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := (recoveredStack2) convertableItems.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) / (recoveredStack2).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := #[154 153 153 153 153 153 185 63].
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := #[0 0 0 0 0 0 0 0].
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) max: (recoveredStack2).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0) fractionComplete: (recoveredStack1).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := [
    | block280fad70Value0 block280fad70Value1 block280fad70Value2 |
    block280fad70Value0 := CwAppContext.
    block280fad70Value1 := (block280fad70Value0) default.
    block280fad70Value2 := (block280fad70Value1) readAndDispatch.
    block280fad70Value2
].
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack0) whileTrue.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20412b24; bytecode file offset 0xd0f444"
!ASDWorkspaceConversionWizard methodsFor: 'recovered'!
promptForFile
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := workspaceFileName.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := RBFileSelectionPrompter.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) shell.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) for: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) fileName: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := EtasGeneralDllApi.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) getAppDataPath.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) searchPath: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredPC := 48.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := CfsFileStream.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := (recoveredStack3) asFilename.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := (recoveredStack2) pathNameIn: (recoveredStack3).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) searchPath: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := '*'.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack4 := MainController.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack4 := (recoveredStack4) workspaceExtension.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack2) searchMask: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := Dictionary.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack3 := (recoveredStack3) new.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack5 := '*'.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack6 := MainController.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack6 := (recoveredStack6) workspaceExtension.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack5 := (recoveredStack5) , (recoveredStack6).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack6 := 'ASCET Workspace files'.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack4) at: (recoveredStack5) put: (recoveredStack6).
            recoveredStack4 := recoveredStack3.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack5 := '*.*'.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack6 := 'All files'.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack4) at: (recoveredStack5) put: (recoveredStack6).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack2) filterDictionary: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack2) appendDefaultExtension.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := 'Select Workspace File'.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack1) title: (recoveredStack2).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := (recoveredStack1) prompt.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2041a540; bytecode file offset 0xd16e28"
!ASDWorkspaceConversionWizard methodsFor: 'recovered'!
setState: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 'successful'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 31] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := conversionStatus.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := 'errorsFound'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1 == recoveredStack2) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := conversionStatus.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := 'warningsFound'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 31] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := 'finished'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := 'notStarted'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := 'started'.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := 'ready'.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := 'successful'.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := 'warningsFound'.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack3 := 'errorsFound'.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack3 := 'finished'.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack3 := 'cancelled'.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack3 := 'failed'.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexOf: (recoveredStack2).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack3 := conversionStatus.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := (recoveredStack2) indexOf: (recoveredStack3).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 99].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            conversionStatus := recoveredStack1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20482324; bytecode file offset 0xd7ec2c"
!ASDWorkspaceConversionWizard methodsFor: 'recovered'!
doCollection
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) finalState.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := [
    | recoveredBlock10Stack0 recoveredBlock10Stack1 recoveredBlock10Stack2 recoveredBlock10Stack3 recoveredBlock10PC recoveredBlock10Step recoveredBlock10Done recoveredBlock10Result |
    recoveredBlock10Stack0 := self.
    recoveredBlock10PC := 16.
    recoveredBlock10Done := false.
    [recoveredBlock10Done not] whileTrue: [
        recoveredBlock10Step := recoveredBlock10PC.
        recoveredBlock10Step = 16 ifTrue: [
            recoveredBlock10Stack1 := 'started'.
            recoveredBlock10PC := 18.
        ].
        recoveredBlock10Step = 18 ifTrue: [
            (recoveredBlock10Stack0) setState: (recoveredBlock10Stack1).
            recoveredBlock10PC := 20.
        ].
        recoveredBlock10Step = 20 ifTrue: [
            recoveredBlock10Stack0 := 'started'.
            recoveredBlock10PC := 22.
        ].
        recoveredBlock10Step = 22 ifTrue: [
            recoveredLocal1 := recoveredBlock10Stack0.
            recoveredBlock10PC := 25.
        ].
        recoveredBlock10Step = 25 ifTrue: [
            recoveredBlock10Stack0 := self.
            recoveredBlock10PC := 26.
        ].
        recoveredBlock10Step = 26 ifTrue: [
            (recoveredBlock10Stack0) collectDatabaseInformation.
            recoveredBlock10PC := 28.
        ].
        recoveredBlock10Step = 28 ifTrue: [
            recoveredBlock10Stack0 := self.
            recoveredBlock10PC := 29.
        ].
        recoveredBlock10Step = 29 ifTrue: [
            recoveredBlock10Stack1 := 'ready'.
            recoveredBlock10PC := 31.
        ].
        recoveredBlock10Step = 31 ifTrue: [
            (recoveredBlock10Stack0) setState: (recoveredBlock10Stack1).
            recoveredBlock10PC := 33.
        ].
        recoveredBlock10Step = 33 ifTrue: [
            recoveredBlock10Stack0 := 'ready'.
            recoveredBlock10PC := 35.
        ].
        recoveredBlock10Step = 35 ifTrue: [
            recoveredLocal1 := recoveredBlock10Stack0.
            recoveredBlock10PC := 38.
        ].
        recoveredBlock10Step = 38 ifTrue: [
            recoveredBlock10Stack0 := nil.
            recoveredBlock10PC := 39.
        ].
        recoveredBlock10Step = 39 ifTrue: [
            recoveredBlock10Stack1 := conversionStatus.
            recoveredBlock10PC := 41.
        ].
        recoveredBlock10Step = 41 ifTrue: [
            recoveredBlock10Stack2 := 'errorsFound'.
            recoveredBlock10PC := 43.
        ].
        recoveredBlock10Step = 43 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) = (recoveredBlock10Stack2).
            recoveredBlock10PC := 44.
        ].
        recoveredBlock10Step = 44 ifTrue: [
            (recoveredBlock10Stack1) ifTrue: [recoveredBlock10PC := 48] ifFalse: [recoveredBlock10PC := 53].
        ].
        recoveredBlock10Step = 48 ifTrue: [
            recoveredBlock10PC := 49.
        ].
        recoveredBlock10Step = 49 ifTrue: [
            recoveredBlock10Stack0 := self.
            recoveredBlock10PC := 50.
        ].
        recoveredBlock10Step = 50 ifTrue: [
            recoveredBlock10Stack1 := 'failed'.
            recoveredBlock10PC := 52.
        ].
        recoveredBlock10Step = 52 ifTrue: [
            recoveredBlock10Stack0 := (recoveredBlock10Stack0) setState: (recoveredBlock10Stack1).
            recoveredBlock10PC := 53.
        ].
        recoveredBlock10Step = 53 ifTrue: [
            recoveredBlock10Result := recoveredBlock10Stack0.
            recoveredBlock10Done := true.
        ].
    ].
    recoveredBlock10Result
].
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) fork.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := CwAppContext.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock60Stack0 recoveredBlock60Stack1 recoveredBlock60Stack2 recoveredBlock60Stack3 recoveredBlock60PC recoveredBlock60Step recoveredBlock60Done recoveredBlock60Result |
    recoveredBlock60Stack0 := self.
    recoveredBlock60PC := 66.
    recoveredBlock60Done := false.
    [recoveredBlock60Done not] whileTrue: [
        recoveredBlock60Step := recoveredBlock60PC.
        recoveredBlock60Step = 66 ifTrue: [
            recoveredBlock60Stack1 := false.
            recoveredBlock60PC := 67.
        ].
        recoveredBlock60Step = 67 ifTrue: [
            recoveredBlock60Stack2 := self.
            recoveredBlock60PC := 68.
        ].
        recoveredBlock60Step = 68 ifTrue: [
            recoveredBlock60Stack2 := (recoveredBlock60Stack2) finalState.
            recoveredBlock60PC := 69.
        ].
        recoveredBlock60Step = 69 ifTrue: [
            (recoveredBlock60Stack2) ifTrue: [recoveredBlock60PC := 79] ifFalse: [recoveredBlock60PC := 72].
        ].
        recoveredBlock60Step = 72 ifTrue: [
            recoveredBlock60PC := 73.
        ].
        recoveredBlock60Step = 73 ifTrue: [
            recoveredBlock60Stack1 := recoveredLocal1.
            recoveredBlock60PC := 76.
        ].
        recoveredBlock60Step = 76 ifTrue: [
            recoveredBlock60Stack2 := 'ready'.
            recoveredBlock60PC := 78.
        ].
        recoveredBlock60Step = 78 ifTrue: [
            recoveredBlock60Stack1 := (recoveredBlock60Stack1) ~= (recoveredBlock60Stack2).
            recoveredBlock60PC := 79.
        ].
        recoveredBlock60Step = 79 ifTrue: [
            recoveredBlock60Result := recoveredBlock60Stack1.
            recoveredBlock60Done := true.
        ].
    ].
    recoveredBlock60Result
].
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0) readAndDispatchAndSleepWhile: (recoveredStack1).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentStep.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := [
    true
].
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack1) nextState: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := [
    true
].
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack1) backState: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock107Value0 |
    recoveredBlock107Value0 := (self) isFinishPossible.
    recoveredBlock107Value0
].
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack1) actionState: (recoveredStack2).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := [].
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack0) cancelAction: (recoveredStack1).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            (recoveredStack0) nextPage.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20487aa0; bytecode file offset 0xd84398"
!ASDWorkspaceConversionWizard methodsFor: 'recovered'!
isWorkspaceFileValid
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := workspaceFileName.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := workspaceFileName.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) pathName.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := workspaceLimit.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) library.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := workspaceFileName.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) pathName.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) existsFilesInPath: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := CfsStat.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := workspaceFileName.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) stat: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCfsError.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := SGReservedNames.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) ambiguousComponentNames.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := [:recoveredBlock52Arg1 | 
    | recoveredBlock52Stack0 recoveredBlock52Stack1 recoveredBlock52Stack2 recoveredBlock52Stack3 recoveredBlock52Stack4 recoveredBlock52PC recoveredBlock52Step recoveredBlock52Done recoveredBlock52Result |
    recoveredBlock52Stack0 := self.
    recoveredBlock52PC := 58.
    recoveredBlock52Done := false.
    [recoveredBlock52Done not] whileTrue: [
        recoveredBlock52Step := recoveredBlock52PC.
        recoveredBlock52Step = 58 ifTrue: [
            recoveredBlock52Stack1 := true.
            recoveredBlock52PC := 59.
        ].
        recoveredBlock52Step = 59 ifTrue: [
            recoveredBlock52Stack2 := recoveredBlock52Arg1.
            recoveredBlock52PC := 60.
        ].
        recoveredBlock52Step = 60 ifTrue: [
            recoveredBlock52Stack3 := workspaceFileName.
            recoveredBlock52PC := 62.
        ].
        recoveredBlock52Step = 62 ifTrue: [
            recoveredBlock52Stack3 := (recoveredBlock52Stack3) fileNameOnly.
            recoveredBlock52PC := 64.
        ].
        recoveredBlock52Step = 64 ifTrue: [
            recoveredBlock52Stack2 := (recoveredBlock52Stack2) equalsIgnoringCase: (recoveredBlock52Stack3).
            recoveredBlock52PC := 66.
        ].
        recoveredBlock52Step = 66 ifTrue: [
            (recoveredBlock52Stack2) ifTrue: [recoveredBlock52PC := 78] ifFalse: [recoveredBlock52PC := 70].
        ].
        recoveredBlock52Step = 70 ifTrue: [
            recoveredBlock52PC := 71.
        ].
        recoveredBlock52Step = 71 ifTrue: [
            recoveredBlock52Stack1 := recoveredBlock52Arg1.
            recoveredBlock52PC := 72.
        ].
        recoveredBlock52Step = 72 ifTrue: [
            recoveredBlock52Stack2 := workspaceFileName.
            recoveredBlock52PC := 74.
        ].
        recoveredBlock52Step = 74 ifTrue: [
            recoveredBlock52Stack2 := (recoveredBlock52Stack2) fileExtension.
            recoveredBlock52PC := 76.
        ].
        recoveredBlock52Step = 76 ifTrue: [
            recoveredBlock52Stack1 := (recoveredBlock52Stack1) equalsIgnoringCase: (recoveredBlock52Stack2).
            recoveredBlock52PC := 78.
        ].
        recoveredBlock52Step = 78 ifTrue: [
            recoveredBlock52Result := recoveredBlock52Stack1.
            recoveredBlock52Done := true.
        ].
    ].
    recoveredBlock52Result
].
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) anySatisfy: (recoveredStack1).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := workspaceFileName.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileNameOnly.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := workspaceFileName.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := (recoveredStack0) driveName.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 108] ifFalse: [recoveredPC := 110].
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := workspaceFileName.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := (recoveredStack0) pathName.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := (recoveredStack0) asPathname.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := workspaceFileName.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := (recoveredStack1) driveName.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := (recoveredStack1) asPathname.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 126] ifFalse: [recoveredPC := 128].
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20497bec; bytecode file offset 0xd94528"
!ASDWorkspaceConversionWizard methodsFor: 'recovered'!
createConversionProgressPage
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasProgressWizardPage.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack2) initialize.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := 'Converting Database'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack2) stepDescription: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := 'Converting Database'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := (recoveredStack3) withCrs.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack2) stepLabel: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := 'The database is now being converted. This might take some minutes.'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := (recoveredStack3) withCrs.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack2) progressDescriptionText: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := 'Converted 0 of '.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack4 := (recoveredStack4) convertableItems.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack4 := (recoveredStack4) size.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack4 := (recoveredStack4) asString.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack4 := ' items...'.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack2) progressText: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := [
    false
].
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack2) backState: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := [
    false
].
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack2) nextState: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock69Value0 recoveredBlock69Value1 recoveredBlock69Value2 recoveredBlock69Value3 |
    recoveredBlock69Value0 := (self) pageActions.
    recoveredBlock69Value1 := (self) currentPage.
    recoveredBlock69Value2 := (recoveredBlock69Value0) at: (recoveredBlock69Value1).
    recoveredBlock69Value3 := (recoveredBlock69Value2) value.
    recoveredBlock69Value3
].
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack2) nextAction: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock89Value0 |
    recoveredBlock89Value0 := (self) cancelConversion.
    recoveredBlock89Value0
].
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack2) cancelAction: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack3 := [
    'Finish'
].
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack2) actionLabel: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock114Value0 |
    recoveredBlock114Value0 := (self) finish.
    recoveredBlock114Value0
].
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack2) actionAction: (recoveredStack3).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := [
    false
].
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := (recoveredStack1) actionState: (recoveredStack2).
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20497d04; bytecode file offset 0xd94634"
!ASDWorkspaceConversionWizard methodsFor: 'recovered'!
createCollectionProgressPage
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasProgressWizardPage.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack2) initialize.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := 'Collecting Database Information'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack2) stepDescription: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := 'Collecting Information'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := (recoveredStack3) withCrs.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack2) stepLabel: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := 'Collecting required information. This may take some minutes.'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := (recoveredStack3) withCrs.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack2) progressDescriptionText: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := 'Collecting database information ...'.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack2) progressText: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := [
    false
].
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack2) backState: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := [
    false
].
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack2) nextState: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock55Value0 recoveredBlock55Value1 recoveredBlock55Value2 recoveredBlock55Value3 |
    recoveredBlock55Value0 := (self) pageActions.
    recoveredBlock55Value1 := (self) currentPage.
    recoveredBlock55Value2 := (recoveredBlock55Value0) at: (recoveredBlock55Value1).
    recoveredBlock55Value3 := (recoveredBlock55Value2) value.
    recoveredBlock55Value3
].
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack2) nextAction: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack3 := [
    convertableItems := nil.
    nil
].
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack2) backAction: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock90Value0 |
    recoveredBlock90Value0 := (self) cancelConversion.
    recoveredBlock90Value0
].
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack2) cancelAction: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack3 := [
    'Finish'
].
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack2) actionLabel: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock114Value0 |
    recoveredBlock114Value0 := (self) finish.
    recoveredBlock114Value0
].
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack2) actionAction: (recoveredStack3).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := [
    false
].
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := (recoveredStack1) actionState: (recoveredStack2).
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x204de6ac; bytecode file offset 0xddafe4"
!ASDWorkspaceConversionWizard methodsFor: 'recovered'!
collectDatabaseInformation
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) finalState.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            diskSize := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) maxPathLen.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            workspaceLimit := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := DBInterface.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileSize.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := 3.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := 3.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) / (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) rounded.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            diskSize := recoveredStack0.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentStep.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) isProgressWizardPage.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 53].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentStep.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetProgressLabel.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := 'Collecting database information ...'.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock55Local1 recoveredBlock55Stack0 recoveredBlock55Stack1 recoveredBlock55Stack2 recoveredBlock55Stack3 recoveredBlock55Stack4 recoveredBlock55Stack5 recoveredBlock55PC recoveredBlock55Step recoveredBlock55Done recoveredBlock55Result |
    recoveredBlock55Stack0 := self.
    recoveredBlock55PC := 62.
    recoveredBlock55Done := false.
    [recoveredBlock55Done not] whileTrue: [
        recoveredBlock55Step := recoveredBlock55PC.
        recoveredBlock55Step = 62 ifTrue: [
            recoveredBlock55Stack0 := (recoveredBlock55Stack0) getConvertableItemsCollectionClass.
            recoveredBlock55PC := 64.
        ].
        recoveredBlock55Step = 64 ifTrue: [
            recoveredBlock55Stack1 := self.
            recoveredBlock55PC := 65.
        ].
        recoveredBlock55Step = 65 ifTrue: [
            recoveredBlock55Stack1 := (recoveredBlock55Stack1) getExportParameterClass.
            recoveredBlock55PC := 67.
        ].
        recoveredBlock55Step = 67 ifTrue: [
            recoveredBlock55Stack1 := (recoveredBlock55Stack1) new.
            recoveredBlock55PC := 69.
        ].
        recoveredBlock55Step = 69 ifTrue: [
            recoveredBlock55Stack1 := (recoveredBlock55Stack1) initForDBXml.
            recoveredBlock55PC := 71.
        ].
        recoveredBlock55Step = 71 ifTrue: [
            recoveredBlock55Stack2 := MainController.
            recoveredBlock55PC := 73.
        ].
        recoveredBlock55Step = 73 ifTrue: [
            recoveredBlock55Stack2 := (recoveredBlock55Stack2) sortedLibraryKeys.
            recoveredBlock55PC := 75.
        ].
        recoveredBlock55Step = 75 ifTrue: [
            recoveredBlock55Stack3 := workspaceFileName.
            recoveredBlock55PC := 77.
        ].
        recoveredBlock55Step = 77 ifTrue: [
            recoveredBlock55Stack3 := (recoveredBlock55Stack3) pathName.
            recoveredBlock55PC := 79.
        ].
        recoveredBlock55Step = 79 ifTrue: [
            recoveredBlock55Stack4 := self.
            recoveredBlock55PC := 80.
        ].
        recoveredBlock55Step = 80 ifTrue: [
            recoveredBlock55Stack0 := (recoveredBlock55Stack0) createFor: (recoveredBlock55Stack1) roots: (recoveredBlock55Stack2) destDir: (recoveredBlock55Stack3) exportController: (recoveredBlock55Stack4).
            recoveredBlock55PC := 83.
        ].
        recoveredBlock55Step = 83 ifTrue: [
            convertableItems := recoveredBlock55Stack0.
            recoveredBlock55PC := 85.
        ].
        recoveredBlock55Step = 85 ifTrue: [
            recoveredBlock55Stack0 := issues.
            recoveredBlock55PC := 87.
        ].
        recoveredBlock55Step = 87 ifTrue: [
            recoveredBlock55Stack0 := (recoveredBlock55Stack0) notEmpty.
            recoveredBlock55PC := 89.
        ].
        recoveredBlock55Step = 89 ifTrue: [
            (recoveredBlock55Stack0) ifTrue: [recoveredBlock55PC := 92] ifFalse: [recoveredBlock55PC := 97].
        ].
        recoveredBlock55Step = 92 ifTrue: [
            recoveredBlock55Stack0 := self.
            recoveredBlock55PC := 93.
        ].
        recoveredBlock55Step = 93 ifTrue: [
            recoveredBlock55Stack1 := 'warningsFound'.
            recoveredBlock55PC := 95.
        ].
        recoveredBlock55Step = 95 ifTrue: [
            (recoveredBlock55Stack0) setState: (recoveredBlock55Stack1).
            recoveredBlock55PC := 97.
        ].
        recoveredBlock55Step = 97 ifTrue: [
            recoveredBlock55Stack0 := nil.
            recoveredBlock55PC := 98.
        ].
        recoveredBlock55Step = 98 ifTrue: [
            recoveredBlock55Stack1 := issues.
            recoveredBlock55PC := 100.
        ].
        recoveredBlock55Step = 100 ifTrue: [
            recoveredBlock55Stack2 := [:block28108220Arg1 | 
    | block28108220Value0 block28108220Value1 |
    block28108220Value0 := block28108220Arg1.
    block28108220Value1 := (block28108220Value0) isError.
    block28108220Value1
].
            recoveredBlock55PC := 102.
        ].
        recoveredBlock55Step = 102 ifTrue: [
            recoveredBlock55PC := 110.
        ].
        recoveredBlock55Step = 110 ifTrue: [
            recoveredBlock55Stack1 := (recoveredBlock55Stack1) anySatisfy: (recoveredBlock55Stack2).
            recoveredBlock55PC := 112.
        ].
        recoveredBlock55Step = 112 ifTrue: [
            (recoveredBlock55Stack1) ifTrue: [recoveredBlock55PC := 116] ifFalse: [recoveredBlock55PC := 122].
        ].
        recoveredBlock55Step = 116 ifTrue: [
            recoveredBlock55PC := 117.
        ].
        recoveredBlock55Step = 117 ifTrue: [
            recoveredBlock55Stack0 := self.
            recoveredBlock55PC := 118.
        ].
        recoveredBlock55Step = 118 ifTrue: [
            recoveredBlock55Stack1 := 'errorsFound'.
            recoveredBlock55PC := 120.
        ].
        recoveredBlock55Step = 120 ifTrue: [
            recoveredBlock55Stack0 := (recoveredBlock55Stack0) setState: (recoveredBlock55Stack1).
            recoveredBlock55PC := 122.
        ].
        recoveredBlock55Step = 122 ifTrue: [
            recoveredBlock55Result := recoveredBlock55Stack0.
            recoveredBlock55Done := true.
        ].
    ].
    recoveredBlock55Result
].
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack0) showBusyCursorWhile: (recoveredStack1).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := workspaceLimit.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack2 := 36.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack2 := convertableItems.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack2 := (recoveredStack2) maxPathSize.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack0 := (recoveredStack0) max: (recoveredStack1).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            workspaceLimit := recoveredStack0.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentStep.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := (recoveredStack0) isProgressWizardPage.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 150] ifFalse: [recoveredPC := 159].
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentStep.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetProgressBar.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            (recoveredStack0) fractionComplete: (recoveredStack1).
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2050f25c; bytecode file offset 0xe0bba0"
!ASDWorkspaceConversionWizard methodsFor: 'recovered'!
addItemsToWorkspace
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) finalState.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentStep.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) isProgressWizardPage.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentStep.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetProgressLabel.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := 'Add converted items to workspace ...'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := workspaceFileName.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileExtension.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) asLowercase.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := 'aws'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := workspaceFileName.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := MainController.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) workspaceExtension.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            workspaceFileName := recoveredStack0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := '"'.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := EtasGeneralDllApi.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) getAppProgramPath.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := 'Tools\WorkspaceCreator\WSCreator.exe"'.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := '"'.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := workspaceFileName.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) pathName.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) trimPathSeparatorAtEnd.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := '"'.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := '"'.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := workspaceFileName.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) trimPathSeparatorAtEnd.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := '"'.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := '"'.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := EtasGeneralDllApi.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := (recoveredStack1) getETASLogFilePath.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := 'WSCreator.log.xml"'.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := ' --amd-root='.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := ' --dest-file='.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := ' --log-file='.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := OSCall.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := (recoveredStack0) createProcess: (recoveredStack1) showWindow: (recoveredStack2).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := (recoveredStack0) isInteger.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 148] ifFalse: [recoveredPC := 161].
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := 'Workspace creation failed!!\The Workspace Creator could not be started.!!'.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := (recoveredStack1) withCrs.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            (recoveredStack0) addErrorMessage: (recoveredStack1).
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := 'failed'.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack0 := (recoveredStack0) setState: (recoveredStack1).
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            (recoveredStack0) waitUntilTerminates: (recoveredStack1).
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            (recoveredStack0) free.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentStep.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := (recoveredStack0) isProgressWizardPage.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 174] ifFalse: [recoveredPC := 182].
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentStep.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetProgressBar.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            (recoveredStack0) fractionComplete: (recoveredStack1).
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20538efc; bytecode file offset 0xe3586c"
!ASDWorkspaceConversionWizard methodsFor: 'recovered'!
doConversion
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) finalState.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := CfsDirectoryDescriptor.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := '*.*'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := workspaceFileName.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) pathName.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasFilesRecursive: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := RBUserQuestion.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := 'The directory '.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := workspaceFileName.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) pathName.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := ' is not empty.\All files and folders in this directory will be deleted.\Are you sure to use this directory?'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) withCrs.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) confirm: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) cancelOk.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) prompt.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) prevPage.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := CfsDirectoryEntry.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := workspaceFileName.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) pathName.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) stat: (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCfsError.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 71] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := CfsDirectoryDescriptor.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := workspaceFileName.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) pathName.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0) deletePathRecursive: (recoveredStack1).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := CfsStat.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := workspaceFileName.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) pathName.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) ensurePath: (recoveredStack1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := [
    | recoveredBlock78Stack0 recoveredBlock78Stack1 recoveredBlock78Stack2 recoveredBlock78PC recoveredBlock78Step recoveredBlock78Done recoveredBlock78Result |
    recoveredBlock78Stack0 := self.
    recoveredBlock78PC := 84.
    recoveredBlock78Done := false.
    [recoveredBlock78Done not] whileTrue: [
        recoveredBlock78Step := recoveredBlock78PC.
        recoveredBlock78Step = 84 ifTrue: [
            recoveredBlock78Stack1 := 'started'.
            recoveredBlock78PC := 86.
        ].
        recoveredBlock78Step = 86 ifTrue: [
            recoveredLocal1 := recoveredBlock78Stack1.
            recoveredBlock78PC := 89.
        ].
        recoveredBlock78Step = 89 ifTrue: [
            (recoveredBlock78Stack0) exportItems.
            recoveredBlock78PC := 91.
        ].
        recoveredBlock78Step = 91 ifTrue: [
            recoveredBlock78Stack0 := self.
            recoveredBlock78PC := 92.
        ].
        recoveredBlock78Step = 92 ifTrue: [
            (recoveredBlock78Stack0) addItemsToWorkspace.
            recoveredBlock78PC := 94.
        ].
        recoveredBlock78Step = 94 ifTrue: [
            recoveredBlock78Stack0 := CfsStat.
            recoveredBlock78PC := 96.
        ].
        recoveredBlock78Step = 96 ifTrue: [
            recoveredBlock78Stack1 := workspaceFileName.
            recoveredBlock78PC := 98.
        ].
        recoveredBlock78Step = 98 ifTrue: [
            recoveredBlock78Stack0 := (recoveredBlock78Stack0) exists: (recoveredBlock78Stack1).
            recoveredBlock78PC := 100.
        ].
        recoveredBlock78Step = 100 ifTrue: [
            (recoveredBlock78Stack0) ifTrue: [recoveredBlock78PC := 116] ifFalse: [recoveredBlock78PC := 104].
        ].
        recoveredBlock78Step = 104 ifTrue: [
            recoveredBlock78Stack0 := self.
            recoveredBlock78PC := 105.
        ].
        recoveredBlock78Step = 105 ifTrue: [
            recoveredBlock78Stack1 := 'Workspace creation failed!!\No *.aws file was generated.\Please check access rights of workspace folder!!'.
            recoveredBlock78PC := 107.
        ].
        recoveredBlock78Step = 107 ifTrue: [
            recoveredBlock78Stack1 := (recoveredBlock78Stack1) withCrs.
            recoveredBlock78PC := 109.
        ].
        recoveredBlock78Step = 109 ifTrue: [
            (recoveredBlock78Stack0) addErrorMessage: (recoveredBlock78Stack1).
            recoveredBlock78PC := 111.
        ].
        recoveredBlock78Step = 111 ifTrue: [
            recoveredBlock78Stack0 := self.
            recoveredBlock78PC := 112.
        ].
        recoveredBlock78Step = 112 ifTrue: [
            recoveredBlock78Stack1 := 'failed'.
            recoveredBlock78PC := 114.
        ].
        recoveredBlock78Step = 114 ifTrue: [
            (recoveredBlock78Stack0) setState: (recoveredBlock78Stack1).
            recoveredBlock78PC := 116.
        ].
        recoveredBlock78Step = 116 ifTrue: [
            recoveredBlock78Stack0 := self.
            recoveredBlock78PC := 117.
        ].
        recoveredBlock78Step = 117 ifTrue: [
            recoveredBlock78Stack1 := 'successful'.
            recoveredBlock78PC := 119.
        ].
        recoveredBlock78Step = 119 ifTrue: [
            (recoveredBlock78Stack0) setState: (recoveredBlock78Stack1).
            recoveredBlock78PC := 121.
        ].
        recoveredBlock78Step = 121 ifTrue: [
            recoveredBlock78Stack0 := 'ready'.
            recoveredBlock78PC := 123.
        ].
        recoveredBlock78Step = 123 ifTrue: [
            recoveredBlock78Stack1 := recoveredBlock78Stack0.
            recoveredBlock78PC := 124.
        ].
        recoveredBlock78Step = 124 ifTrue: [
            recoveredLocal1 := recoveredBlock78Stack1.
            recoveredBlock78PC := 127.
        ].
        recoveredBlock78Step = 127 ifTrue: [
            recoveredBlock78Result := recoveredBlock78Stack0.
            recoveredBlock78Done := true.
        ].
    ].
    recoveredBlock78Result
].
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            (recoveredStack0) fork.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := CwAppContext.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock134Stack0 recoveredBlock134Stack1 recoveredBlock134Stack2 recoveredBlock134Stack3 recoveredBlock134PC recoveredBlock134Step recoveredBlock134Done recoveredBlock134Result |
    recoveredBlock134Stack0 := self.
    recoveredBlock134PC := 140.
    recoveredBlock134Done := false.
    [recoveredBlock134Done not] whileTrue: [
        recoveredBlock134Step := recoveredBlock134PC.
        recoveredBlock134Step = 140 ifTrue: [
            recoveredBlock134Stack1 := false.
            recoveredBlock134PC := 141.
        ].
        recoveredBlock134Step = 141 ifTrue: [
            recoveredBlock134Stack2 := self.
            recoveredBlock134PC := 142.
        ].
        recoveredBlock134Step = 142 ifTrue: [
            recoveredBlock134Stack2 := (recoveredBlock134Stack2) finalState.
            recoveredBlock134PC := 143.
        ].
        recoveredBlock134Step = 143 ifTrue: [
            (recoveredBlock134Stack2) ifTrue: [recoveredBlock134PC := 153] ifFalse: [recoveredBlock134PC := 146].
        ].
        recoveredBlock134Step = 146 ifTrue: [
            recoveredBlock134PC := 147.
        ].
        recoveredBlock134Step = 147 ifTrue: [
            recoveredBlock134Stack1 := recoveredLocal1.
            recoveredBlock134PC := 150.
        ].
        recoveredBlock134Step = 150 ifTrue: [
            recoveredBlock134Stack2 := 'ready'.
            recoveredBlock134PC := 152.
        ].
        recoveredBlock134Step = 152 ifTrue: [
            recoveredBlock134Stack1 := (recoveredBlock134Stack1) ~= (recoveredBlock134Stack2).
            recoveredBlock134PC := 153.
        ].
        recoveredBlock134Step = 153 ifTrue: [
            recoveredBlock134Result := recoveredBlock134Stack1.
            recoveredBlock134Done := true.
        ].
    ].
    recoveredBlock134Result
].
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            (recoveredStack0) readAndDispatchAndSleepWhile: (recoveredStack1).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentStep.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock159Value0 |
    recoveredBlock159Value0 := (self) isFinishPossible.
    recoveredBlock159Value0
].
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            (recoveredStack0) actionState: (recoveredStack1).
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack1 := [:block2810dc20Arg1 | 
    | block2810dc20Value0 block2810dc20Value1 block2810dc20Value2 |
    block2810dc20Value0 := MainController.
    block2810dc20Value1 := block2810dc20Arg1.
    block2810dc20Value2 := (block2810dc20Value0) commitDBViewPerformanceDialog: (block2810dc20Value1).
    block2810dc20Value2
].
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack2 := 'Saving '.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack3 := (recoveredStack3) library.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack3 := (recoveredStack3) interfaceName.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack3 := '...'.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack4 := SCEtas.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            (recoveredStack0) execWithProgressDialog: (recoveredStack1) message: (recoveredStack2) showProgress: (recoveredStack3) title: (recoveredStack4).
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            (recoveredStack0) nextPage.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20635c04; bytecode file offset 0xf325f8"
!ASDWorkspaceConversionWizard methodsFor: 'recovered'!
createConversionResultPage
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:recoveredBlock4Arg1 | 
    | recoveredBlock4Local1 recoveredBlock4Local2 recoveredBlock4Local3 recoveredBlock4Local4 recoveredBlock4Local5 recoveredBlock4Local6 recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4Stack4 recoveredBlock4Stack5 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack1 := CwForm.
            recoveredBlock4PC := 12.
        ].
        recoveredBlock4Step = 12 ifTrue: [
            recoveredBlock4Stack2 := 'innerForm'.
            recoveredBlock4PC := 14.
        ].
        recoveredBlock4Step = 14 ifTrue: [
            recoveredBlock4Stack3 := recoveredBlock4Arg1.
            recoveredBlock4PC := 17.
        ].
        recoveredBlock4Step = 17 ifTrue: [
            recoveredBlock4Stack4 := [:recoveredBlock4Block17Arg1 | 
    | recoveredBlock4Block17Value0 recoveredBlock4Block17Value1 recoveredBlock4Block17Value2 recoveredBlock4Block17Value3 |
    recoveredBlock4Block17Value0 := recoveredBlock4Block17Arg1.
    recoveredBlock4Block17Value1 := recoveredBlock4Arg1.
    recoveredBlock4Block17Value2 := (recoveredBlock4Block17Value1) backgroundColor.
    recoveredBlock4Block17Value3 := (recoveredBlock4Block17Value0) backgroundColor: (recoveredBlock4Block17Value2).
    recoveredBlock4Block17Value3
].
            recoveredBlock4PC := 31.
        ].
        recoveredBlock4Step = 31 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) createWidget: (recoveredBlock4Stack2) parent: (recoveredBlock4Stack3) argBlock: (recoveredBlock4Stack4).
            recoveredBlock4PC := 34.
        ].
        recoveredBlock4Step = 34 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) manageChild.
            recoveredBlock4PC := 36.
        ].
        recoveredBlock4Step = 36 ifTrue: [
            recoveredBlock4Local6 := recoveredBlock4Stack1.
            recoveredBlock4PC := 39.
        ].
        recoveredBlock4Step = 39 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Local6.
            recoveredBlock4PC := 42.
        ].
        recoveredBlock4Step = 42 ifTrue: [
            recoveredBlock4Stack2 := 'descriptionLabel'.
            recoveredBlock4PC := 44.
        ].
        recoveredBlock4Step = 44 ifTrue: [
            recoveredBlock4Stack3 := [:recoveredBlock4Block44Arg1 | 
    | recoveredBlock4Block44Value0 recoveredBlock4Block44Value1 recoveredBlock4Block44Value2 recoveredBlock4Block44Value3 recoveredBlock4Block44Value4 recoveredBlock4Block44Value5 recoveredBlock4Block44Value6 recoveredBlock4Block44Value7 recoveredBlock4Block44Value8 |
    recoveredBlock4Block44Value0 := recoveredBlock4Block44Arg1.
    recoveredBlock4Block44Value1 := recoveredBlock4Block44Value0.
    recoveredBlock4Block44Value2 := XmALIGNMENTBEGINNING.
    (recoveredBlock4Block44Value1) alignment: (recoveredBlock4Block44Value2).
    recoveredBlock4Block44Value3 := recoveredBlock4Block44Value0.
    recoveredBlock4Block44Value4 := recoveredBlock4Local6.
    recoveredBlock4Block44Value5 := (recoveredBlock4Block44Value4) backgroundColor.
    (recoveredBlock4Block44Value3) backgroundColor: (recoveredBlock4Block44Value5).
    recoveredBlock4Block44Value6 := recoveredBlock4Block44Value0.
    recoveredBlock4Block44Value7 := (self) resultInfo.
    (recoveredBlock4Block44Value6) labelString: (recoveredBlock4Block44Value7).
    recoveredBlock4Block44Value8 := (recoveredBlock4Block44Value0) height: (50).
    recoveredBlock4Block44Value8
].
            recoveredBlock4PC := 74.
        ].
        recoveredBlock4Step = 74 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) createLabel: (recoveredBlock4Stack2) argBlock: (recoveredBlock4Stack3).
            recoveredBlock4PC := 76.
        ].
        recoveredBlock4Step = 76 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) manageChild.
            recoveredBlock4PC := 78.
        ].
        recoveredBlock4Step = 78 ifTrue: [
            recoveredBlock4Local5 := recoveredBlock4Stack1.
            recoveredBlock4PC := 81.
        ].
        recoveredBlock4Step = 81 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Local6.
            recoveredBlock4PC := 84.
        ].
        recoveredBlock4Step = 84 ifTrue: [
            recoveredBlock4Stack2 := 'statusIcon'.
            recoveredBlock4PC := 86.
        ].
        recoveredBlock4Step = 86 ifTrue: [
            recoveredBlock4Stack3 := [:recoveredBlock4Block86Arg1 | 
    | recoveredBlock4Block86Value0 recoveredBlock4Block86Value1 recoveredBlock4Block86Value2 recoveredBlock4Block86Value3 recoveredBlock4Block86Value4 recoveredBlock4Block86Value5 recoveredBlock4Block86Value6 recoveredBlock4Block86Value7 recoveredBlock4Block86Value8 recoveredBlock4Block86Value9 recoveredBlock4Block86Value10 recoveredBlock4Block86Value11 |
    recoveredBlock4Block86Value0 := recoveredBlock4Block86Arg1.
    recoveredBlock4Block86Value1 := recoveredBlock4Block86Value0.
    recoveredBlock4Block86Value2 := recoveredBlock4Local6.
    recoveredBlock4Block86Value3 := (recoveredBlock4Block86Value2) backgroundColor.
    (recoveredBlock4Block86Value1) backgroundColor: (recoveredBlock4Block86Value3).
    recoveredBlock4Block86Value4 := recoveredBlock4Block86Value0.
    recoveredBlock4Block86Value5 := XmICON.
    (recoveredBlock4Block86Value4) labelType: (recoveredBlock4Block86Value5).
    recoveredBlock4Block86Value6 := recoveredBlock4Block86Value0.
    recoveredBlock4Block86Value7 := (self) statusIcon.
    (recoveredBlock4Block86Value6) labelIcon: (recoveredBlock4Block86Value7).
    recoveredBlock4Block86Value8 := recoveredBlock4Block86Value0.
    (recoveredBlock4Block86Value8) width: (50).
    recoveredBlock4Block86Value9 := recoveredBlock4Block86Value0.
    (recoveredBlock4Block86Value9) height: (50).
    recoveredBlock4Block86Value10 := XmALIGNMENTBEGINNING.
    recoveredBlock4Block86Value11 := (recoveredBlock4Block86Value0) alignment: (recoveredBlock4Block86Value10).
    recoveredBlock4Block86Value11
].
            recoveredBlock4PC := 126.
        ].
        recoveredBlock4Step = 126 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) createLabel: (recoveredBlock4Stack2) argBlock: (recoveredBlock4Stack3).
            recoveredBlock4PC := 128.
        ].
        recoveredBlock4Step = 128 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) manageChild.
            recoveredBlock4PC := 130.
        ].
        recoveredBlock4Step = 130 ifTrue: [
            recoveredBlock4Local4 := recoveredBlock4Stack1.
            recoveredBlock4PC := 133.
        ].
        recoveredBlock4Step = 133 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) widgetDictionary.
            recoveredBlock4PC := 135.
        ].
        recoveredBlock4Step = 135 ifTrue: [
            recoveredBlock4Stack1 := 'statusIcon'.
            recoveredBlock4PC := 137.
        ].
        recoveredBlock4Step = 137 ifTrue: [
            recoveredBlock4Stack2 := recoveredBlock4Local4.
            recoveredBlock4PC := 140.
        ].
        recoveredBlock4Step = 140 ifTrue: [
            (recoveredBlock4Stack0) at: (recoveredBlock4Stack1) put: (recoveredBlock4Stack2).
            recoveredBlock4PC := 142.
        ].
        recoveredBlock4Step = 142 ifTrue: [
            recoveredBlock4Stack0 := recoveredBlock4Local6.
            recoveredBlock4PC := 145.
        ].
        recoveredBlock4Step = 145 ifTrue: [
            recoveredBlock4Stack1 := 'resultText'.
            recoveredBlock4PC := 147.
        ].
        recoveredBlock4Step = 147 ifTrue: [
            recoveredBlock4Stack2 := [:recoveredBlock4Block147Arg1 | 
    | recoveredBlock4Block147Value0 recoveredBlock4Block147Value1 recoveredBlock4Block147Value2 recoveredBlock4Block147Value3 recoveredBlock4Block147Value4 recoveredBlock4Block147Value5 recoveredBlock4Block147Value6 recoveredBlock4Block147Value7 recoveredBlock4Block147Value8 recoveredBlock4Block147Value9 |
    recoveredBlock4Block147Value0 := recoveredBlock4Block147Arg1.
    recoveredBlock4Block147Value1 := recoveredBlock4Block147Value0.
    recoveredBlock4Block147Value2 := XmALIGNMENTBEGINNING.
    (recoveredBlock4Block147Value1) alignment: (recoveredBlock4Block147Value2).
    recoveredBlock4Block147Value3 := recoveredBlock4Block147Value0.
    recoveredBlock4Block147Value4 := recoveredBlock4Local6.
    recoveredBlock4Block147Value5 := (recoveredBlock4Block147Value4) backgroundColor.
    (recoveredBlock4Block147Value3) backgroundColor: (recoveredBlock4Block147Value5).
    recoveredBlock4Block147Value6 := recoveredBlock4Block147Value0.
    recoveredBlock4Block147Value7 := XmMULTILINEEDIT.
    (recoveredBlock4Block147Value6) editMode: (recoveredBlock4Block147Value7).
    recoveredBlock4Block147Value8 := (self) resultText.
    recoveredBlock4Block147Value9 := (recoveredBlock4Block147Value0) value: (recoveredBlock4Block147Value8).
    recoveredBlock4Block147Value9
].
            recoveredBlock4PC := 178.
        ].
        recoveredBlock4Step = 178 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) createScrolledText: (recoveredBlock4Stack1) argBlock: (recoveredBlock4Stack2).
            recoveredBlock4PC := 180.
        ].
        recoveredBlock4Step = 180 ifTrue: [
            recoveredBlock4Local3 := recoveredBlock4Stack0.
            recoveredBlock4PC := 183.
        ].
        recoveredBlock4Step = 183 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 184.
        ].
        recoveredBlock4Step = 184 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) resultText.
            recoveredBlock4PC := 186.
        ].
        recoveredBlock4Step = 186 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) notEmpty.
            recoveredBlock4PC := 188.
        ].
        recoveredBlock4Step = 188 ifTrue: [
            (recoveredBlock4Stack0) ifTrue: [recoveredBlock4PC := 192] ifFalse: [recoveredBlock4PC := 197].
        ].
        recoveredBlock4Step = 192 ifTrue: [
            recoveredBlock4Stack0 := recoveredBlock4Local3.
            recoveredBlock4PC := 195.
        ].
        recoveredBlock4Step = 195 ifTrue: [
            (recoveredBlock4Stack0) manageChild.
            recoveredBlock4PC := 197.
        ].
        recoveredBlock4Step = 197 ifTrue: [
            recoveredBlock4Stack0 := recoveredBlock4Local3.
            recoveredBlock4PC := 200.
        ].
        recoveredBlock4Step = 200 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) parent.
            recoveredBlock4PC := 202.
        ].
        recoveredBlock4Step = 202 ifTrue: [
            recoveredBlock4Local2 := recoveredBlock4Stack0.
            recoveredBlock4PC := 205.
        ].
        recoveredBlock4Step = 205 ifTrue: [
            recoveredBlock4Stack0 := recoveredBlock4Local6.
            recoveredBlock4PC := 208.
        ].
        recoveredBlock4Step = 208 ifTrue: [
            recoveredBlock4Stack1 := 'openWorkspaceCheckBox'.
            recoveredBlock4PC := 210.
        ].
        recoveredBlock4Step = 210 ifTrue: [
            recoveredBlock4Stack2 := [:block28120b74Arg1 | 
    | block28120b74Value0 block28120b74Value1 block28120b74Value2 block28120b74Value3 |
    block28120b74Value0 := block28120b74Arg1.
    block28120b74Value1 := block28120b74Value0.
    (block28120b74Value1) height: (22).
    block28120b74Value2 := block28120b74Value0.
    (block28120b74Value2) labelString: ('Open Workspace now').
    block28120b74Value3 := (block28120b74Value0) set: (true).
    block28120b74Value3
].
            recoveredBlock4PC := 212.
        ].
        recoveredBlock4Step = 212 ifTrue: [
            recoveredBlock4PC := 231.
        ].
        recoveredBlock4Step = 231 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) createToggleButton: (recoveredBlock4Stack1) argBlock: (recoveredBlock4Stack2).
            recoveredBlock4PC := 233.
        ].
        recoveredBlock4Step = 233 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) manageChild.
            recoveredBlock4PC := 235.
        ].
        recoveredBlock4Step = 235 ifTrue: [
            recoveredBlock4Local1 := recoveredBlock4Stack0.
            recoveredBlock4PC := 238.
        ].
        recoveredBlock4Step = 238 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 239.
        ].
        recoveredBlock4Step = 239 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) widgetDictionary.
            recoveredBlock4PC := 241.
        ].
        recoveredBlock4Step = 241 ifTrue: [
            recoveredBlock4Stack1 := 'openWorkspaceCheckBox'.
            recoveredBlock4PC := 243.
        ].
        recoveredBlock4Step = 243 ifTrue: [
            recoveredBlock4Stack2 := recoveredBlock4Local1.
            recoveredBlock4PC := 246.
        ].
        recoveredBlock4Step = 246 ifTrue: [
            (recoveredBlock4Stack0) at: (recoveredBlock4Stack1) put: (recoveredBlock4Stack2).
            recoveredBlock4PC := 248.
        ].
        recoveredBlock4Step = 248 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 249.
        ].
        recoveredBlock4Step = 249 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) openWorkspacePossible.
            recoveredBlock4PC := 251.
        ].
        recoveredBlock4Step = 251 ifTrue: [
            (recoveredBlock4Stack0) ifTrue: [recoveredBlock4PC := 266] ifFalse: [recoveredBlock4PC := 254].
        ].
        recoveredBlock4Step = 254 ifTrue: [
            recoveredBlock4Stack0 := recoveredBlock4Local1.
            recoveredBlock4PC := 257.
        ].
        recoveredBlock4Step = 257 ifTrue: [
            recoveredBlock4Stack1 := false.
            recoveredBlock4PC := 258.
        ].
        recoveredBlock4Step = 258 ifTrue: [
            (recoveredBlock4Stack0) set: (recoveredBlock4Stack1).
            recoveredBlock4PC := 260.
        ].
        recoveredBlock4Step = 260 ifTrue: [
            recoveredBlock4Stack0 := recoveredBlock4Local1.
            recoveredBlock4PC := 263.
        ].
        recoveredBlock4Step = 263 ifTrue: [
            recoveredBlock4Stack1 := false.
            recoveredBlock4PC := 264.
        ].
        recoveredBlock4Step = 264 ifTrue: [
            (recoveredBlock4Stack0) sensitive: (recoveredBlock4Stack1).
            recoveredBlock4PC := 266.
        ].
        recoveredBlock4Step = 266 ifTrue: [
            recoveredBlock4Stack0 := recoveredBlock4Local6.
            recoveredBlock4PC := 269.
        ].
        recoveredBlock4Step = 269 ifTrue: [
            recoveredBlock4Stack1 := [:block28120b98Arg1 | 
    | block28120b98Value0 block28120b98Value1 block28120b98Value2 block28120b98Value3 block28120b98Value4 block28120b98Value5 block28120b98Value6 block28120b98Value7 block28120b98Value8 |
    block28120b98Value0 := block28120b98Arg1.
    block28120b98Value1 := block28120b98Value0.
    block28120b98Value2 := XmATTACHFORM.
    (block28120b98Value1) topAttachment: (block28120b98Value2).
    block28120b98Value3 := block28120b98Value0.
    block28120b98Value4 := XmATTACHFORM.
    (block28120b98Value3) bottomAttachment: (block28120b98Value4).
    block28120b98Value5 := block28120b98Value0.
    block28120b98Value6 := XmATTACHFORM.
    (block28120b98Value5) leftAttachment: (block28120b98Value6).
    block28120b98Value7 := XmATTACHFORM.
    block28120b98Value8 := (block28120b98Value0) rightAttachment: (block28120b98Value7).
    block28120b98Value8
].
            recoveredBlock4PC := 271.
        ].
        recoveredBlock4Step = 271 ifTrue: [
            recoveredBlock4PC := 295.
        ].
        recoveredBlock4Step = 295 ifTrue: [
            (recoveredBlock4Stack0) setValuesBlock: (recoveredBlock4Stack1).
            recoveredBlock4PC := 297.
        ].
        recoveredBlock4Step = 297 ifTrue: [
            recoveredBlock4Stack0 := recoveredBlock4Local5.
            recoveredBlock4PC := 300.
        ].
        recoveredBlock4Step = 300 ifTrue: [
            recoveredBlock4Stack1 := [:recoveredBlock4Block300Arg1 | 
    | recoveredBlock4Block300Value0 recoveredBlock4Block300Value1 recoveredBlock4Block300Value2 recoveredBlock4Block300Value3 recoveredBlock4Block300Value4 recoveredBlock4Block300Value5 recoveredBlock4Block300Value6 recoveredBlock4Block300Value7 recoveredBlock4Block300Value8 recoveredBlock4Block300Value9 recoveredBlock4Block300Value10 recoveredBlock4Block300Value11 |
    recoveredBlock4Block300Value0 := recoveredBlock4Block300Arg1.
    recoveredBlock4Block300Value1 := recoveredBlock4Block300Value0.
    recoveredBlock4Block300Value2 := XmATTACHFORM.
    (recoveredBlock4Block300Value1) topAttachment: (recoveredBlock4Block300Value2).
    recoveredBlock4Block300Value3 := recoveredBlock4Block300Value0.
    (recoveredBlock4Block300Value3) topOffset: (5).
    recoveredBlock4Block300Value4 := recoveredBlock4Block300Value0.
    recoveredBlock4Block300Value5 := XmATTACHNONE.
    (recoveredBlock4Block300Value4) bottomAttachment: (recoveredBlock4Block300Value5).
    recoveredBlock4Block300Value6 := recoveredBlock4Block300Value0.
    recoveredBlock4Block300Value7 := XmATTACHFORM.
    (recoveredBlock4Block300Value6) leftAttachment: (recoveredBlock4Block300Value7).
    recoveredBlock4Block300Value8 := recoveredBlock4Block300Value0.
    (recoveredBlock4Block300Value8) leftOffset: (5).
    recoveredBlock4Block300Value9 := recoveredBlock4Block300Value0.
    recoveredBlock4Block300Value10 := recoveredBlock4Local4.
    (recoveredBlock4Block300Value9) rightWidget: (recoveredBlock4Block300Value10).
    recoveredBlock4Block300Value11 := (recoveredBlock4Block300Value0) rightOffset: (5).
    recoveredBlock4Block300Value11
].
            recoveredBlock4PC := 343.
        ].
        recoveredBlock4Step = 343 ifTrue: [
            (recoveredBlock4Stack0) setValuesBlock: (recoveredBlock4Stack1).
            recoveredBlock4PC := 345.
        ].
        recoveredBlock4Step = 345 ifTrue: [
            recoveredBlock4Stack0 := recoveredBlock4Local4.
            recoveredBlock4PC := 348.
        ].
        recoveredBlock4Step = 348 ifTrue: [
            recoveredBlock4Stack1 := [:block28120bbcArg1 | 
    | block28120bbcValue0 block28120bbcValue1 block28120bbcValue2 block28120bbcValue3 block28120bbcValue4 block28120bbcValue5 block28120bbcValue6 block28120bbcValue7 block28120bbcValue8 block28120bbcValue9 block28120bbcValue10 |
    block28120bbcValue0 := block28120bbcArg1.
    block28120bbcValue1 := block28120bbcValue0.
    block28120bbcValue2 := XmATTACHFORM.
    (block28120bbcValue1) topAttachment: (block28120bbcValue2).
    block28120bbcValue3 := block28120bbcValue0.
    (block28120bbcValue3) topOffset: (5).
    block28120bbcValue4 := block28120bbcValue0.
    block28120bbcValue5 := XmATTACHNONE.
    (block28120bbcValue4) bottomAttachment: (block28120bbcValue5).
    block28120bbcValue6 := block28120bbcValue0.
    block28120bbcValue7 := XmATTACHNONE.
    (block28120bbcValue6) leftAttachment: (block28120bbcValue7).
    block28120bbcValue8 := block28120bbcValue0.
    block28120bbcValue9 := XmATTACHFORM.
    (block28120bbcValue8) rightAttachment: (block28120bbcValue9).
    block28120bbcValue10 := (block28120bbcValue0) rightOffset: (5).
    block28120bbcValue10
].
            recoveredBlock4PC := 350.
        ].
        recoveredBlock4Step = 350 ifTrue: [
            recoveredBlock4PC := 385.
        ].
        recoveredBlock4Step = 385 ifTrue: [
            (recoveredBlock4Stack0) setValuesBlock: (recoveredBlock4Stack1).
            recoveredBlock4PC := 387.
        ].
        recoveredBlock4Step = 387 ifTrue: [
            recoveredBlock4Stack0 := recoveredBlock4Local2.
            recoveredBlock4PC := 390.
        ].
        recoveredBlock4Step = 390 ifTrue: [
            recoveredBlock4Stack1 := [:recoveredBlock4Block390Arg1 | 
    | recoveredBlock4Block390Value0 recoveredBlock4Block390Value1 recoveredBlock4Block390Value2 recoveredBlock4Block390Value3 recoveredBlock4Block390Value4 recoveredBlock4Block390Value5 recoveredBlock4Block390Value6 recoveredBlock4Block390Value7 recoveredBlock4Block390Value8 recoveredBlock4Block390Value9 recoveredBlock4Block390Value10 recoveredBlock4Block390Value11 recoveredBlock4Block390Value12 recoveredBlock4Block390Value13 recoveredBlock4Block390Value14 recoveredBlock4Block390Value15 recoveredBlock4Block390Value16 |
    recoveredBlock4Block390Value0 := recoveredBlock4Block390Arg1.
    recoveredBlock4Block390Value1 := recoveredBlock4Block390Value0.
    recoveredBlock4Block390Value2 := XmATTACHWIDGET.
    (recoveredBlock4Block390Value1) topAttachment: (recoveredBlock4Block390Value2).
    recoveredBlock4Block390Value3 := recoveredBlock4Block390Value0.
    recoveredBlock4Block390Value4 := recoveredBlock4Local4.
    (recoveredBlock4Block390Value3) topWidget: (recoveredBlock4Block390Value4).
    recoveredBlock4Block390Value5 := recoveredBlock4Block390Value0.
    (recoveredBlock4Block390Value5) topOffset: (5).
    recoveredBlock4Block390Value6 := recoveredBlock4Block390Value0.
    recoveredBlock4Block390Value7 := XmATTACHWIDGET.
    (recoveredBlock4Block390Value6) bottomAttachment: (recoveredBlock4Block390Value7).
    recoveredBlock4Block390Value8 := recoveredBlock4Block390Value0.
    recoveredBlock4Block390Value9 := recoveredBlock4Local1.
    (recoveredBlock4Block390Value8) bottomWidget: (recoveredBlock4Block390Value9).
    recoveredBlock4Block390Value10 := recoveredBlock4Block390Value0.
    (recoveredBlock4Block390Value10) bottomOffset: (5).
    recoveredBlock4Block390Value11 := recoveredBlock4Block390Value0.
    recoveredBlock4Block390Value12 := XmATTACHFORM.
    (recoveredBlock4Block390Value11) leftAttachment: (recoveredBlock4Block390Value12).
    recoveredBlock4Block390Value13 := recoveredBlock4Block390Value0.
    (recoveredBlock4Block390Value13) leftOffset: (5).
    recoveredBlock4Block390Value14 := recoveredBlock4Block390Value0.
    recoveredBlock4Block390Value15 := XmATTACHFORM.
    (recoveredBlock4Block390Value14) rightAttachment: (recoveredBlock4Block390Value15).
    recoveredBlock4Block390Value16 := (recoveredBlock4Block390Value0) rightOffset: (5).
    recoveredBlock4Block390Value16
].
            recoveredBlock4PC := 449.
        ].
        recoveredBlock4Step = 449 ifTrue: [
            (recoveredBlock4Stack0) setValuesBlock: (recoveredBlock4Stack1).
            recoveredBlock4PC := 451.
        ].
        recoveredBlock4Step = 451 ifTrue: [
            recoveredBlock4Stack0 := recoveredBlock4Local1.
            recoveredBlock4PC := 454.
        ].
        recoveredBlock4Step = 454 ifTrue: [
            recoveredBlock4Stack1 := [:block28120be0Arg1 | 
    | block28120be0Value0 block28120be0Value1 block28120be0Value2 block28120be0Value3 block28120be0Value4 block28120be0Value5 block28120be0Value6 block28120be0Value7 block28120be0Value8 block28120be0Value9 block28120be0Value10 block28120be0Value11 |
    block28120be0Value0 := block28120be0Arg1.
    block28120be0Value1 := block28120be0Value0.
    block28120be0Value2 := XmATTACHNONE.
    (block28120be0Value1) topAttachment: (block28120be0Value2).
    block28120be0Value3 := block28120be0Value0.
    block28120be0Value4 := XmATTACHFORM.
    (block28120be0Value3) bottomAttachment: (block28120be0Value4).
    block28120be0Value5 := block28120be0Value0.
    (block28120be0Value5) bottomOffset: (5).
    block28120be0Value6 := block28120be0Value0.
    block28120be0Value7 := XmATTACHFORM.
    (block28120be0Value6) leftAttachment: (block28120be0Value7).
    block28120be0Value8 := block28120be0Value0.
    (block28120be0Value8) leftOffset: (5).
    block28120be0Value9 := block28120be0Value0.
    block28120be0Value10 := XmATTACHFORM.
    (block28120be0Value9) rightAttachment: (block28120be0Value10).
    block28120be0Value11 := (block28120be0Value0) rightOffset: (5).
    block28120be0Value11
].
            recoveredBlock4PC := 456.
        ].
        recoveredBlock4Step = 456 ifTrue: [
            recoveredBlock4PC := 496.
        ].
        recoveredBlock4Step = 496 ifTrue: [
            (recoveredBlock4Stack0) setValuesBlock: (recoveredBlock4Stack1).
            recoveredBlock4PC := 498.
        ].
        recoveredBlock4Step = 498 ifTrue: [
            recoveredBlock4Stack0 := recoveredBlock4Local1.
            recoveredBlock4PC := 501.
        ].
        recoveredBlock4Step = 501 ifTrue: [
            (recoveredBlock4Stack0) addTabGroup.
            recoveredBlock4PC := 503.
        ].
        recoveredBlock4Step = 503 ifTrue: [
            recoveredBlock4Stack0 := recoveredBlock4Local6.
            recoveredBlock4PC := 506.
        ].
        recoveredBlock4Step = 506 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack0.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
            recoveredPC := 507.
        ].
        recoveredStep = 507 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 510.
        ].
        recoveredStep = 510 ifTrue: [
            recoveredStack1 := EtasWizardPage.
            recoveredPC := 514.
        ].
        recoveredStep = 514 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 519.
        ].
        recoveredStep = 519 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 520.
        ].
        recoveredStep = 520 ifTrue: [
            (recoveredStack2) initialize.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 525.
        ].
        recoveredStep = 525 ifTrue: [
            recoveredStack3 := 'Conversion Results'.
            recoveredPC := 528.
        ].
        recoveredStep = 528 ifTrue: [
            (recoveredStack2) stepDescription: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 533.
        ].
        recoveredStep = 533 ifTrue: [
            recoveredStack3 := 'Results and Problems'.
            recoveredPC := 536.
        ].
        recoveredStep = 536 ifTrue: [
            recoveredStack3 := (recoveredStack3) withCrs.
            recoveredPC := 541.
        ].
        recoveredStep = 541 ifTrue: [
            (recoveredStack2) stepLabel: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 545.
        ].
        recoveredStep = 545 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 548.
        ].
        recoveredStep = 548 ifTrue: [
            (recoveredStack2) stepInfoWidgets: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 553.
        ].
        recoveredStep = 553 ifTrue: [
            recoveredStack3 := [
    false
].
            recoveredPC := 556.
        ].
        recoveredStep = 556 ifTrue: [
            recoveredPC := 562.
        ].
        recoveredStep = 562 ifTrue: [
            (recoveredStack2) backVisible: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 567.
        ].
        recoveredStep = 567 ifTrue: [
            recoveredStack3 := [
    false
].
            recoveredPC := 570.
        ].
        recoveredStep = 570 ifTrue: [
            recoveredPC := 576.
        ].
        recoveredStep = 576 ifTrue: [
            (recoveredStack2) nextVisible: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 581.
        ].
        recoveredStep = 581 ifTrue: [
            recoveredStack3 := [
    false
].
            recoveredPC := 584.
        ].
        recoveredStep = 584 ifTrue: [
            recoveredPC := 590.
        ].
        recoveredStep = 590 ifTrue: [
            (recoveredStack2) actionVisible: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 595.
        ].
        recoveredStep = 595 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock595Value0 recoveredBlock595Value1 recoveredBlock595Value2 recoveredBlock595Value3 |
    recoveredBlock595Value0 := (self) pageActions.
    recoveredBlock595Value1 := (self) currentPage.
    recoveredBlock595Value2 := (recoveredBlock595Value0) at: (recoveredBlock595Value1).
    recoveredBlock595Value3 := (recoveredBlock595Value2) value.
    recoveredBlock595Value3
].
            recoveredPC := 622.
        ].
        recoveredStep = 622 ifTrue: [
            (recoveredStack2) cancelAction: (recoveredStack3).
            recoveredPC := 627.
        ].
        recoveredStep = 627 ifTrue: [
            recoveredStack2 := [
    'Close'
].
            recoveredPC := 630.
        ].
        recoveredStep = 630 ifTrue: [
            recoveredPC := 639.
        ].
        recoveredStep = 639 ifTrue: [
            recoveredStack1 := (recoveredStack1) cancelLabel: (recoveredStack2).
            recoveredPC := 643.
        ].
        recoveredStep = 643 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2065e3b4; bytecode file offset 0xf5add8"
!ASDWorkspaceConversionWizard methodsFor: 'recovered'!
createConversionDataPage
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:recoveredBlock4Arg1 | 
    | recoveredBlock4Local1 recoveredBlock4Local2 recoveredBlock4Local3 recoveredBlock4Local4 recoveredBlock4Local5 recoveredBlock4Local6 recoveredBlock4Local7 recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4Stack4 recoveredBlock4Stack5 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack1 := CwForm.
            recoveredBlock4PC := 12.
        ].
        recoveredBlock4Step = 12 ifTrue: [
            recoveredBlock4Stack2 := 'innerForm'.
            recoveredBlock4PC := 14.
        ].
        recoveredBlock4Step = 14 ifTrue: [
            recoveredBlock4Stack3 := recoveredBlock4Arg1.
            recoveredBlock4PC := 17.
        ].
        recoveredBlock4Step = 17 ifTrue: [
            recoveredBlock4Stack4 := [:recoveredBlock4Block17Arg1 | 
    | recoveredBlock4Block17Value0 recoveredBlock4Block17Value1 recoveredBlock4Block17Value2 recoveredBlock4Block17Value3 |
    recoveredBlock4Block17Value0 := recoveredBlock4Block17Arg1.
    recoveredBlock4Block17Value1 := recoveredBlock4Arg1.
    recoveredBlock4Block17Value2 := (recoveredBlock4Block17Value1) backgroundColor.
    recoveredBlock4Block17Value3 := (recoveredBlock4Block17Value0) backgroundColor: (recoveredBlock4Block17Value2).
    recoveredBlock4Block17Value3
].
            recoveredBlock4PC := 31.
        ].
        recoveredBlock4Step = 31 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) createWidget: (recoveredBlock4Stack2) parent: (recoveredBlock4Stack3) argBlock: (recoveredBlock4Stack4).
            recoveredBlock4PC := 34.
        ].
        recoveredBlock4Step = 34 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) manageChild.
            recoveredBlock4PC := 36.
        ].
        recoveredBlock4Step = 36 ifTrue: [
            recoveredBlock4Local7 := recoveredBlock4Stack1.
            recoveredBlock4PC := 39.
        ].
        recoveredBlock4Step = 39 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Local7.
            recoveredBlock4PC := 42.
        ].
        recoveredBlock4Step = 42 ifTrue: [
            recoveredBlock4Stack2 := 'descriptionLabel'.
            recoveredBlock4PC := 44.
        ].
        recoveredBlock4Step = 44 ifTrue: [
            recoveredBlock4Stack3 := [:recoveredBlock4Block44Arg1 | 
    | recoveredBlock4Block44Value0 recoveredBlock4Block44Value1 recoveredBlock4Block44Value2 recoveredBlock4Block44Value3 recoveredBlock4Block44Value4 recoveredBlock4Block44Value5 recoveredBlock4Block44Value6 recoveredBlock4Block44Value7 recoveredBlock4Block44Value8 recoveredBlock4Block44Value9 recoveredBlock4Block44Value10 recoveredBlock4Block44Value11 recoveredBlock4Block44Value12 recoveredBlock4Block44Value13 recoveredBlock4Block44Value14 |
    recoveredBlock4Block44Value0 := recoveredBlock4Block44Arg1.
    recoveredBlock4Block44Value1 := recoveredBlock4Block44Value0.
    recoveredBlock4Block44Value2 := XmALIGNMENTBEGINNING.
    (recoveredBlock4Block44Value1) alignment: (recoveredBlock4Block44Value2).
    recoveredBlock4Block44Value3 := recoveredBlock4Block44Value0.
    recoveredBlock4Block44Value4 := recoveredBlock4Local7.
    recoveredBlock4Block44Value5 := (recoveredBlock4Block44Value4) backgroundColor.
    (recoveredBlock4Block44Value3) backgroundColor: (recoveredBlock4Block44Value5).
    recoveredBlock4Block44Value6 := recoveredBlock4Block44Value0.
    (recoveredBlock4Block44Value6) editable: (false).
    recoveredBlock4Block44Value7 := recoveredBlock4Block44Value0.
    (recoveredBlock4Block44Value7) wordWrap: (true).
    recoveredBlock4Block44Value8 := recoveredBlock4Block44Value0.
    recoveredBlock4Block44Value9 := XmMULTILINEEDIT.
    (recoveredBlock4Block44Value8) editMode: (recoveredBlock4Block44Value9).
    recoveredBlock4Block44Value10 := recoveredBlock4Block44Value0.
    (recoveredBlock4Block44Value10) scrollHorizontal: (false).
    recoveredBlock4Block44Value11 := recoveredBlock4Block44Value0.
    (recoveredBlock4Block44Value11) scrollVertical: (false).
    recoveredBlock4Block44Value12 := recoveredBlock4Block44Value0.
    recoveredBlock4Block44Value13 := (self) descriptionText.
    (recoveredBlock4Block44Value12) value: (recoveredBlock4Block44Value13).
    recoveredBlock4Block44Value14 := (recoveredBlock4Block44Value0) height: (80).
    recoveredBlock4Block44Value14
].
            recoveredBlock4PC := 97.
        ].
        recoveredBlock4Step = 97 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) createText: (recoveredBlock4Stack2) argBlock: (recoveredBlock4Stack3).
            recoveredBlock4PC := 99.
        ].
        recoveredBlock4Step = 99 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) manageChild.
            recoveredBlock4PC := 101.
        ].
        recoveredBlock4Step = 101 ifTrue: [
            recoveredBlock4Local6 := recoveredBlock4Stack1.
            recoveredBlock4PC := 104.
        ].
        recoveredBlock4Step = 104 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Local7.
            recoveredBlock4PC := 107.
        ].
        recoveredBlock4Step = 107 ifTrue: [
            recoveredBlock4Stack2 := 'sizeLabel'.
            recoveredBlock4PC := 109.
        ].
        recoveredBlock4Step = 109 ifTrue: [
            recoveredBlock4Stack3 := [:recoveredBlock4Block109Arg1 | 
    | recoveredBlock4Block109Value0 recoveredBlock4Block109Value1 recoveredBlock4Block109Value2 recoveredBlock4Block109Value3 recoveredBlock4Block109Value4 recoveredBlock4Block109Value5 recoveredBlock4Block109Value6 recoveredBlock4Block109Value7 recoveredBlock4Block109Value8 recoveredBlock4Block109Value9 recoveredBlock4Block109Value10 recoveredBlock4Block109Value11 |
    recoveredBlock4Block109Value0 := recoveredBlock4Block109Arg1.
    recoveredBlock4Block109Value1 := recoveredBlock4Block109Value0.
    recoveredBlock4Block109Value2 := XmALIGNMENTBEGINNING.
    (recoveredBlock4Block109Value1) alignment: (recoveredBlock4Block109Value2).
    recoveredBlock4Block109Value3 := recoveredBlock4Block109Value0.
    recoveredBlock4Block109Value4 := recoveredBlock4Local7.
    recoveredBlock4Block109Value5 := (recoveredBlock4Block109Value4) backgroundColor.
    (recoveredBlock4Block109Value3) backgroundColor: (recoveredBlock4Block109Value5).
    recoveredBlock4Block109Value6 := recoveredBlock4Block109Value0.
    recoveredBlock4Block109Value7 := diskSize.
    recoveredBlock4Block109Value8 := (recoveredBlock4Block109Value7) asString.
    recoveredBlock4Block109Value9 := ('Estimated required disk space: ') , (recoveredBlock4Block109Value8).
    recoveredBlock4Block109Value10 := (recoveredBlock4Block109Value9) , (' Bytes').
    (recoveredBlock4Block109Value6) labelString: (recoveredBlock4Block109Value10).
    recoveredBlock4Block109Value11 := (recoveredBlock4Block109Value0) height: (25).
    recoveredBlock4Block109Value11
].
            recoveredBlock4PC := 149.
        ].
        recoveredBlock4Step = 149 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) createLabel: (recoveredBlock4Stack2) argBlock: (recoveredBlock4Stack3).
            recoveredBlock4PC := 151.
        ].
        recoveredBlock4Step = 151 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) manageChild.
            recoveredBlock4PC := 153.
        ].
        recoveredBlock4Step = 153 ifTrue: [
            recoveredBlock4Local5 := recoveredBlock4Stack1.
            recoveredBlock4PC := 156.
        ].
        recoveredBlock4Step = 156 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Local7.
            recoveredBlock4PC := 159.
        ].
        recoveredBlock4Step = 159 ifTrue: [
            recoveredBlock4Stack2 := 'lengthLabel'.
            recoveredBlock4PC := 161.
        ].
        recoveredBlock4Step = 161 ifTrue: [
            recoveredBlock4Stack3 := [:recoveredBlock4Block161Arg1 | 
    | recoveredBlock4Block161Value0 recoveredBlock4Block161Value1 recoveredBlock4Block161Value2 recoveredBlock4Block161Value3 recoveredBlock4Block161Value4 recoveredBlock4Block161Value5 recoveredBlock4Block161Value6 recoveredBlock4Block161Value7 recoveredBlock4Block161Value8 recoveredBlock4Block161Value9 recoveredBlock4Block161Value10 recoveredBlock4Block161Value11 |
    recoveredBlock4Block161Value0 := recoveredBlock4Block161Arg1.
    recoveredBlock4Block161Value1 := recoveredBlock4Block161Value0.
    recoveredBlock4Block161Value2 := XmALIGNMENTBEGINNING.
    (recoveredBlock4Block161Value1) alignment: (recoveredBlock4Block161Value2).
    recoveredBlock4Block161Value3 := recoveredBlock4Block161Value0.
    recoveredBlock4Block161Value4 := recoveredBlock4Local7.
    recoveredBlock4Block161Value5 := (recoveredBlock4Block161Value4) backgroundColor.
    (recoveredBlock4Block161Value3) backgroundColor: (recoveredBlock4Block161Value5).
    recoveredBlock4Block161Value6 := recoveredBlock4Block161Value0.
    recoveredBlock4Block161Value7 := workspaceLimit.
    recoveredBlock4Block161Value8 := (recoveredBlock4Block161Value7) asString.
    recoveredBlock4Block161Value9 := ('Maximal workspace path size: ') , (recoveredBlock4Block161Value8).
    recoveredBlock4Block161Value10 := (recoveredBlock4Block161Value9) , (' characters').
    (recoveredBlock4Block161Value6) labelString: (recoveredBlock4Block161Value10).
    recoveredBlock4Block161Value11 := (recoveredBlock4Block161Value0) height: (25).
    recoveredBlock4Block161Value11
].
            recoveredBlock4PC := 201.
        ].
        recoveredBlock4Step = 201 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) createLabel: (recoveredBlock4Stack2) argBlock: (recoveredBlock4Stack3).
            recoveredBlock4PC := 203.
        ].
        recoveredBlock4Step = 203 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) manageChild.
            recoveredBlock4PC := 205.
        ].
        recoveredBlock4Step = 205 ifTrue: [
            recoveredBlock4Local4 := recoveredBlock4Stack1.
            recoveredBlock4PC := 208.
        ].
        recoveredBlock4Step = 208 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Local7.
            recoveredBlock4PC := 211.
        ].
        recoveredBlock4Step = 211 ifTrue: [
            recoveredBlock4Stack2 := 'fileLabel'.
            recoveredBlock4PC := 213.
        ].
        recoveredBlock4Step = 213 ifTrue: [
            recoveredBlock4Stack3 := [:recoveredBlock4Block213Arg1 | 
    | recoveredBlock4Block213Value0 recoveredBlock4Block213Value1 recoveredBlock4Block213Value2 recoveredBlock4Block213Value3 recoveredBlock4Block213Value4 recoveredBlock4Block213Value5 recoveredBlock4Block213Value6 recoveredBlock4Block213Value7 recoveredBlock4Block213Value8 |
    recoveredBlock4Block213Value0 := recoveredBlock4Block213Arg1.
    recoveredBlock4Block213Value1 := recoveredBlock4Block213Value0.
    recoveredBlock4Block213Value2 := XmALIGNMENTBEGINNING.
    (recoveredBlock4Block213Value1) alignment: (recoveredBlock4Block213Value2).
    recoveredBlock4Block213Value3 := recoveredBlock4Block213Value0.
    recoveredBlock4Block213Value4 := recoveredBlock4Local7.
    recoveredBlock4Block213Value5 := (recoveredBlock4Block213Value4) backgroundColor.
    (recoveredBlock4Block213Value3) backgroundColor: (recoveredBlock4Block213Value5).
    recoveredBlock4Block213Value6 := recoveredBlock4Block213Value0.
    (recoveredBlock4Block213Value6) labelString: ('Workspace File ').
    recoveredBlock4Block213Value7 := recoveredBlock4Block213Value0.
    (recoveredBlock4Block213Value7) height: (25).
    recoveredBlock4Block213Value8 := (recoveredBlock4Block213Value0) width: (100).
    recoveredBlock4Block213Value8
].
            recoveredBlock4PC := 249.
        ].
        recoveredBlock4Step = 249 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) createLabel: (recoveredBlock4Stack2) argBlock: (recoveredBlock4Stack3).
            recoveredBlock4PC := 251.
        ].
        recoveredBlock4Step = 251 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) manageChild.
            recoveredBlock4PC := 253.
        ].
        recoveredBlock4Step = 253 ifTrue: [
            recoveredBlock4Local3 := recoveredBlock4Stack1.
            recoveredBlock4PC := 256.
        ].
        recoveredBlock4Step = 256 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Local7.
            recoveredBlock4PC := 259.
        ].
        recoveredBlock4Step = 259 ifTrue: [
            recoveredBlock4Stack2 := 'fileButton'.
            recoveredBlock4PC := 261.
        ].
        recoveredBlock4Step = 261 ifTrue: [
            recoveredBlock4Stack3 := [:recoveredBlock4Block261Arg1 | 
    | recoveredBlock4Block261Value0 recoveredBlock4Block261Value1 recoveredBlock4Block261Value2 recoveredBlock4Block261Value3 recoveredBlock4Block261Value4 recoveredBlock4Block261Value5 recoveredBlock4Block261Value6 recoveredBlock4Block261Value7 recoveredBlock4Block261Value8 |
    recoveredBlock4Block261Value0 := recoveredBlock4Block261Arg1.
    recoveredBlock4Block261Value1 := recoveredBlock4Block261Value0.
    (recoveredBlock4Block261Value1) height: (20).
    recoveredBlock4Block261Value2 := recoveredBlock4Block261Value0.
    (recoveredBlock4Block261Value2) width: (22).
    recoveredBlock4Block261Value3 := recoveredBlock4Block261Value0.
    recoveredBlock4Block261Value4 := XmICON.
    (recoveredBlock4Block261Value3) labelType: (recoveredBlock4Block261Value4).
    recoveredBlock4Block261Value5 := recoveredBlock4Block261Value0.
    recoveredBlock4Block261Value6 := (self) resourceManager.
    recoveredBlock4Block261Value7 := (recoveredBlock4Block261Value6) returnIconWithName: ('GeneralFile').
    (recoveredBlock4Block261Value5) labelIcon: (recoveredBlock4Block261Value7).
    recoveredBlock4Block261Value8 := (recoveredBlock4Block261Value0) sensitive: (true).
    recoveredBlock4Block261Value8
].
            recoveredBlock4PC := 298.
        ].
        recoveredBlock4Step = 298 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) createPushButton: (recoveredBlock4Stack2) argBlock: (recoveredBlock4Stack3).
            recoveredBlock4PC := 300.
        ].
        recoveredBlock4Step = 300 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) manageChild.
            recoveredBlock4PC := 302.
        ].
        recoveredBlock4Step = 302 ifTrue: [
            recoveredBlock4Local1 := recoveredBlock4Stack1.
            recoveredBlock4PC := 305.
        ].
        recoveredBlock4Step = 305 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Local7.
            recoveredBlock4PC := 308.
        ].
        recoveredBlock4Step = 308 ifTrue: [
            recoveredBlock4Stack2 := 'fileField'.
            recoveredBlock4PC := 310.
        ].
        recoveredBlock4Step = 310 ifTrue: [
            recoveredBlock4Stack3 := [:recoveredBlock4Block310Arg1 | 
    | recoveredBlock4Block310Value0 recoveredBlock4Block310Value1 recoveredBlock4Block310Value2 recoveredBlock4Block310Value3 recoveredBlock4Block310Value4 recoveredBlock4Block310Value5 |
    recoveredBlock4Block310Value0 := recoveredBlock4Block310Arg1.
    recoveredBlock4Block310Value1 := recoveredBlock4Block310Value0.
    recoveredBlock4Block310Value2 := XmALIGNMENTBEGINNING.
    (recoveredBlock4Block310Value1) alignment: (recoveredBlock4Block310Value2).
    recoveredBlock4Block310Value3 := recoveredBlock4Block310Value0.
    (recoveredBlock4Block310Value3) height: (22).
    recoveredBlock4Block310Value4 := workspaceFileName.
    recoveredBlock4Block310Value5 := (recoveredBlock4Block310Value0) value: (recoveredBlock4Block310Value4).
    recoveredBlock4Block310Value5
].
            recoveredBlock4PC := 332.
        ].
        recoveredBlock4Step = 332 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) createText: (recoveredBlock4Stack2) argBlock: (recoveredBlock4Stack3).
            recoveredBlock4PC := 334.
        ].
        recoveredBlock4Step = 334 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) manageChild.
            recoveredBlock4PC := 336.
        ].
        recoveredBlock4Step = 336 ifTrue: [
            recoveredBlock4Local2 := recoveredBlock4Stack1.
            recoveredBlock4PC := 339.
        ].
        recoveredBlock4Step = 339 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) widgetDictionary.
            recoveredBlock4PC := 341.
        ].
        recoveredBlock4Step = 341 ifTrue: [
            recoveredBlock4Stack1 := 'fileField'.
            recoveredBlock4PC := 343.
        ].
        recoveredBlock4Step = 343 ifTrue: [
            recoveredBlock4Stack2 := recoveredBlock4Local2.
            recoveredBlock4PC := 346.
        ].
        recoveredBlock4Step = 346 ifTrue: [
            (recoveredBlock4Stack0) at: (recoveredBlock4Stack1) put: (recoveredBlock4Stack2).
            recoveredBlock4PC := 348.
        ].
        recoveredBlock4Step = 348 ifTrue: [
            recoveredBlock4Stack0 := recoveredBlock4Local7.
            recoveredBlock4PC := 351.
        ].
        recoveredBlock4Step = 351 ifTrue: [
            recoveredBlock4Stack1 := [:block28124c6cArg1 | 
    | block28124c6cValue0 block28124c6cValue1 block28124c6cValue2 block28124c6cValue3 block28124c6cValue4 block28124c6cValue5 block28124c6cValue6 block28124c6cValue7 block28124c6cValue8 |
    block28124c6cValue0 := block28124c6cArg1.
    block28124c6cValue1 := block28124c6cValue0.
    block28124c6cValue2 := XmATTACHFORM.
    (block28124c6cValue1) topAttachment: (block28124c6cValue2).
    block28124c6cValue3 := block28124c6cValue0.
    block28124c6cValue4 := XmATTACHFORM.
    (block28124c6cValue3) bottomAttachment: (block28124c6cValue4).
    block28124c6cValue5 := block28124c6cValue0.
    block28124c6cValue6 := XmATTACHFORM.
    (block28124c6cValue5) leftAttachment: (block28124c6cValue6).
    block28124c6cValue7 := XmATTACHFORM.
    block28124c6cValue8 := (block28124c6cValue0) rightAttachment: (block28124c6cValue7).
    block28124c6cValue8
].
            recoveredBlock4PC := 353.
        ].
        recoveredBlock4Step = 353 ifTrue: [
            recoveredBlock4PC := 377.
        ].
        recoveredBlock4Step = 377 ifTrue: [
            (recoveredBlock4Stack0) setValuesBlock: (recoveredBlock4Stack1).
            recoveredBlock4PC := 379.
        ].
        recoveredBlock4Step = 379 ifTrue: [
            recoveredBlock4Stack0 := recoveredBlock4Local6.
            recoveredBlock4PC := 382.
        ].
        recoveredBlock4Step = 382 ifTrue: [
            recoveredBlock4Stack1 := [:block28124c90Arg1 | 
    | block28124c90Value0 block28124c90Value1 block28124c90Value2 block28124c90Value3 block28124c90Value4 block28124c90Value5 block28124c90Value6 block28124c90Value7 block28124c90Value8 block28124c90Value9 block28124c90Value10 block28124c90Value11 |
    block28124c90Value0 := block28124c90Arg1.
    block28124c90Value1 := block28124c90Value0.
    block28124c90Value2 := XmATTACHFORM.
    (block28124c90Value1) topAttachment: (block28124c90Value2).
    block28124c90Value3 := block28124c90Value0.
    (block28124c90Value3) topOffset: (5).
    block28124c90Value4 := block28124c90Value0.
    block28124c90Value5 := XmATTACHNONE.
    (block28124c90Value4) bottomAttachment: (block28124c90Value5).
    block28124c90Value6 := block28124c90Value0.
    block28124c90Value7 := XmATTACHFORM.
    (block28124c90Value6) leftAttachment: (block28124c90Value7).
    block28124c90Value8 := block28124c90Value0.
    (block28124c90Value8) leftOffset: (5).
    block28124c90Value9 := block28124c90Value0.
    block28124c90Value10 := XmATTACHFORM.
    (block28124c90Value9) rightAttachment: (block28124c90Value10).
    block28124c90Value11 := (block28124c90Value0) rightOffset: (5).
    block28124c90Value11
].
            recoveredBlock4PC := 384.
        ].
        recoveredBlock4Step = 384 ifTrue: [
            recoveredBlock4PC := 424.
        ].
        recoveredBlock4Step = 424 ifTrue: [
            (recoveredBlock4Stack0) setValuesBlock: (recoveredBlock4Stack1).
            recoveredBlock4PC := 426.
        ].
        recoveredBlock4Step = 426 ifTrue: [
            recoveredBlock4Stack0 := recoveredBlock4Local3.
            recoveredBlock4PC := 429.
        ].
        recoveredBlock4Step = 429 ifTrue: [
            recoveredBlock4Stack1 := [:recoveredBlock4Block429Arg1 | 
    | recoveredBlock4Block429Value0 recoveredBlock4Block429Value1 recoveredBlock4Block429Value2 recoveredBlock4Block429Value3 recoveredBlock4Block429Value4 recoveredBlock4Block429Value5 recoveredBlock4Block429Value6 recoveredBlock4Block429Value7 recoveredBlock4Block429Value8 recoveredBlock4Block429Value9 recoveredBlock4Block429Value10 recoveredBlock4Block429Value11 recoveredBlock4Block429Value12 |
    recoveredBlock4Block429Value0 := recoveredBlock4Block429Arg1.
    recoveredBlock4Block429Value1 := recoveredBlock4Block429Value0.
    recoveredBlock4Block429Value2 := XmATTACHWIDGET.
    (recoveredBlock4Block429Value1) topAttachment: (recoveredBlock4Block429Value2).
    recoveredBlock4Block429Value3 := recoveredBlock4Block429Value0.
    recoveredBlock4Block429Value4 := recoveredBlock4Local6.
    (recoveredBlock4Block429Value3) topWidget: (recoveredBlock4Block429Value4).
    recoveredBlock4Block429Value5 := recoveredBlock4Block429Value0.
    (recoveredBlock4Block429Value5) topOffset: (5).
    recoveredBlock4Block429Value6 := recoveredBlock4Block429Value0.
    recoveredBlock4Block429Value7 := XmATTACHNONE.
    (recoveredBlock4Block429Value6) bottomAttachment: (recoveredBlock4Block429Value7).
    recoveredBlock4Block429Value8 := recoveredBlock4Block429Value0.
    recoveredBlock4Block429Value9 := XmATTACHFORM.
    (recoveredBlock4Block429Value8) leftAttachment: (recoveredBlock4Block429Value9).
    recoveredBlock4Block429Value10 := recoveredBlock4Block429Value0.
    (recoveredBlock4Block429Value10) leftOffset: (5).
    recoveredBlock4Block429Value11 := XmATTACHNONE.
    recoveredBlock4Block429Value12 := (recoveredBlock4Block429Value0) rightAttachment: (recoveredBlock4Block429Value11).
    recoveredBlock4Block429Value12
].
            recoveredBlock4PC := 477.
        ].
        recoveredBlock4Step = 477 ifTrue: [
            (recoveredBlock4Stack0) setValuesBlock: (recoveredBlock4Stack1).
            recoveredBlock4PC := 479.
        ].
        recoveredBlock4Step = 479 ifTrue: [
            recoveredBlock4Stack0 := recoveredBlock4Local1.
            recoveredBlock4PC := 482.
        ].
        recoveredBlock4Step = 482 ifTrue: [
            recoveredBlock4Stack1 := [:recoveredBlock4Block482Arg1 | 
    | recoveredBlock4Block482Value0 recoveredBlock4Block482Value1 recoveredBlock4Block482Value2 recoveredBlock4Block482Value3 recoveredBlock4Block482Value4 recoveredBlock4Block482Value5 recoveredBlock4Block482Value6 recoveredBlock4Block482Value7 recoveredBlock4Block482Value8 recoveredBlock4Block482Value9 recoveredBlock4Block482Value10 recoveredBlock4Block482Value11 recoveredBlock4Block482Value12 |
    recoveredBlock4Block482Value0 := recoveredBlock4Block482Arg1.
    recoveredBlock4Block482Value1 := recoveredBlock4Block482Value0.
    recoveredBlock4Block482Value2 := XmATTACHWIDGET.
    (recoveredBlock4Block482Value1) topAttachment: (recoveredBlock4Block482Value2).
    recoveredBlock4Block482Value3 := recoveredBlock4Block482Value0.
    recoveredBlock4Block482Value4 := recoveredBlock4Local6.
    (recoveredBlock4Block482Value3) topWidget: (recoveredBlock4Block482Value4).
    recoveredBlock4Block482Value5 := recoveredBlock4Block482Value0.
    (recoveredBlock4Block482Value5) topOffset: (5).
    recoveredBlock4Block482Value6 := recoveredBlock4Block482Value0.
    recoveredBlock4Block482Value7 := XmATTACHNONE.
    (recoveredBlock4Block482Value6) bottomAttachment: (recoveredBlock4Block482Value7).
    recoveredBlock4Block482Value8 := recoveredBlock4Block482Value0.
    recoveredBlock4Block482Value9 := XmATTACHNONE.
    (recoveredBlock4Block482Value8) leftAttachment: (recoveredBlock4Block482Value9).
    recoveredBlock4Block482Value10 := recoveredBlock4Block482Value0.
    recoveredBlock4Block482Value11 := XmATTACHFORM.
    (recoveredBlock4Block482Value10) rightAttachment: (recoveredBlock4Block482Value11).
    recoveredBlock4Block482Value12 := (recoveredBlock4Block482Value0) rightOffset: (5).
    recoveredBlock4Block482Value12
].
            recoveredBlock4PC := 529.
        ].
        recoveredBlock4Step = 529 ifTrue: [
            (recoveredBlock4Stack0) setValuesBlock: (recoveredBlock4Stack1).
            recoveredBlock4PC := 531.
        ].
        recoveredBlock4Step = 531 ifTrue: [
            recoveredBlock4Stack0 := recoveredBlock4Local2.
            recoveredBlock4PC := 534.
        ].
        recoveredBlock4Step = 534 ifTrue: [
            recoveredBlock4Stack1 := [:recoveredBlock4Block534Arg1 | 
    | recoveredBlock4Block534Value0 recoveredBlock4Block534Value1 recoveredBlock4Block534Value2 recoveredBlock4Block534Value3 recoveredBlock4Block534Value4 recoveredBlock4Block534Value5 recoveredBlock4Block534Value6 recoveredBlock4Block534Value7 recoveredBlock4Block534Value8 recoveredBlock4Block534Value9 recoveredBlock4Block534Value10 recoveredBlock4Block534Value11 recoveredBlock4Block534Value12 recoveredBlock4Block534Value13 recoveredBlock4Block534Value14 recoveredBlock4Block534Value15 recoveredBlock4Block534Value16 recoveredBlock4Block534Value17 |
    recoveredBlock4Block534Value0 := recoveredBlock4Block534Arg1.
    recoveredBlock4Block534Value1 := recoveredBlock4Block534Value0.
    recoveredBlock4Block534Value2 := XmATTACHWIDGET.
    (recoveredBlock4Block534Value1) topAttachment: (recoveredBlock4Block534Value2).
    recoveredBlock4Block534Value3 := recoveredBlock4Block534Value0.
    recoveredBlock4Block534Value4 := recoveredBlock4Local6.
    (recoveredBlock4Block534Value3) topWidget: (recoveredBlock4Block534Value4).
    recoveredBlock4Block534Value5 := recoveredBlock4Block534Value0.
    (recoveredBlock4Block534Value5) topOffset: (5).
    recoveredBlock4Block534Value6 := recoveredBlock4Block534Value0.
    recoveredBlock4Block534Value7 := XmATTACHNONE.
    (recoveredBlock4Block534Value6) bottomAttachment: (recoveredBlock4Block534Value7).
    recoveredBlock4Block534Value8 := recoveredBlock4Block534Value0.
    recoveredBlock4Block534Value9 := XmATTACHWIDGET.
    (recoveredBlock4Block534Value8) leftAttachment: (recoveredBlock4Block534Value9).
    recoveredBlock4Block534Value10 := recoveredBlock4Block534Value0.
    recoveredBlock4Block534Value11 := recoveredBlock4Local3.
    (recoveredBlock4Block534Value10) leftWidget: (recoveredBlock4Block534Value11).
    recoveredBlock4Block534Value12 := recoveredBlock4Block534Value0.
    (recoveredBlock4Block534Value12) leftOffset: (5).
    recoveredBlock4Block534Value13 := recoveredBlock4Block534Value0.
    recoveredBlock4Block534Value14 := XmATTACHWIDGET.
    (recoveredBlock4Block534Value13) rightAttachment: (recoveredBlock4Block534Value14).
    recoveredBlock4Block534Value15 := recoveredBlock4Block534Value0.
    recoveredBlock4Block534Value16 := recoveredBlock4Local1.
    (recoveredBlock4Block534Value15) rightWidget: (recoveredBlock4Block534Value16).
    recoveredBlock4Block534Value17 := (recoveredBlock4Block534Value0) rightOffset: (5).
    recoveredBlock4Block534Value17
].
            recoveredBlock4PC := 606.
        ].
        recoveredBlock4Step = 606 ifTrue: [
            (recoveredBlock4Stack0) setValuesBlock: (recoveredBlock4Stack1).
            recoveredBlock4PC := 608.
        ].
        recoveredBlock4Step = 608 ifTrue: [
            recoveredBlock4Stack0 := recoveredBlock4Local5.
            recoveredBlock4PC := 611.
        ].
        recoveredBlock4Step = 611 ifTrue: [
            recoveredBlock4Stack1 := [:recoveredBlock4Block611Arg1 | 
    | recoveredBlock4Block611Value0 recoveredBlock4Block611Value1 recoveredBlock4Block611Value2 recoveredBlock4Block611Value3 recoveredBlock4Block611Value4 recoveredBlock4Block611Value5 recoveredBlock4Block611Value6 recoveredBlock4Block611Value7 recoveredBlock4Block611Value8 recoveredBlock4Block611Value9 recoveredBlock4Block611Value10 recoveredBlock4Block611Value11 recoveredBlock4Block611Value12 recoveredBlock4Block611Value13 |
    recoveredBlock4Block611Value0 := recoveredBlock4Block611Arg1.
    recoveredBlock4Block611Value1 := recoveredBlock4Block611Value0.
    recoveredBlock4Block611Value2 := XmATTACHWIDGET.
    (recoveredBlock4Block611Value1) topAttachment: (recoveredBlock4Block611Value2).
    recoveredBlock4Block611Value3 := recoveredBlock4Block611Value0.
    recoveredBlock4Block611Value4 := recoveredBlock4Local3.
    (recoveredBlock4Block611Value3) topWidget: (recoveredBlock4Block611Value4).
    recoveredBlock4Block611Value5 := recoveredBlock4Block611Value0.
    (recoveredBlock4Block611Value5) topOffset: (5).
    recoveredBlock4Block611Value6 := recoveredBlock4Block611Value0.
    recoveredBlock4Block611Value7 := XmATTACHNONE.
    (recoveredBlock4Block611Value6) bottomAttachment: (recoveredBlock4Block611Value7).
    recoveredBlock4Block611Value8 := recoveredBlock4Block611Value0.
    recoveredBlock4Block611Value9 := XmATTACHFORM.
    (recoveredBlock4Block611Value8) leftAttachment: (recoveredBlock4Block611Value9).
    recoveredBlock4Block611Value10 := recoveredBlock4Block611Value0.
    (recoveredBlock4Block611Value10) leftOffset: (5).
    recoveredBlock4Block611Value11 := recoveredBlock4Block611Value0.
    recoveredBlock4Block611Value12 := XmATTACHFORM.
    (recoveredBlock4Block611Value11) rightAttachment: (recoveredBlock4Block611Value12).
    recoveredBlock4Block611Value13 := (recoveredBlock4Block611Value0) rightOffset: (5).
    recoveredBlock4Block611Value13
].
            recoveredBlock4PC := 664.
        ].
        recoveredBlock4Step = 664 ifTrue: [
            (recoveredBlock4Stack0) setValuesBlock: (recoveredBlock4Stack1).
            recoveredBlock4PC := 666.
        ].
        recoveredBlock4Step = 666 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 667.
        ].
        recoveredBlock4Step = 667 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) widgetDictionary.
            recoveredBlock4PC := 669.
        ].
        recoveredBlock4Step = 669 ifTrue: [
            recoveredBlock4Stack1 := 'sizeLabel'.
            recoveredBlock4PC := 672.
        ].
        recoveredBlock4Step = 672 ifTrue: [
            recoveredBlock4Stack2 := recoveredBlock4Local5.
            recoveredBlock4PC := 675.
        ].
        recoveredBlock4Step = 675 ifTrue: [
            (recoveredBlock4Stack0) at: (recoveredBlock4Stack1) put: (recoveredBlock4Stack2).
            recoveredBlock4PC := 677.
        ].
        recoveredBlock4Step = 677 ifTrue: [
            recoveredBlock4Stack0 := recoveredBlock4Local4.
            recoveredBlock4PC := 680.
        ].
        recoveredBlock4Step = 680 ifTrue: [
            recoveredBlock4Stack1 := [:recoveredBlock4Block680Arg1 | 
    | recoveredBlock4Block680Value0 recoveredBlock4Block680Value1 recoveredBlock4Block680Value2 recoveredBlock4Block680Value3 recoveredBlock4Block680Value4 recoveredBlock4Block680Value5 recoveredBlock4Block680Value6 recoveredBlock4Block680Value7 recoveredBlock4Block680Value8 recoveredBlock4Block680Value9 recoveredBlock4Block680Value10 recoveredBlock4Block680Value11 recoveredBlock4Block680Value12 recoveredBlock4Block680Value13 |
    recoveredBlock4Block680Value0 := recoveredBlock4Block680Arg1.
    recoveredBlock4Block680Value1 := recoveredBlock4Block680Value0.
    recoveredBlock4Block680Value2 := XmATTACHWIDGET.
    (recoveredBlock4Block680Value1) topAttachment: (recoveredBlock4Block680Value2).
    recoveredBlock4Block680Value3 := recoveredBlock4Block680Value0.
    recoveredBlock4Block680Value4 := recoveredBlock4Local5.
    (recoveredBlock4Block680Value3) topWidget: (recoveredBlock4Block680Value4).
    recoveredBlock4Block680Value5 := recoveredBlock4Block680Value0.
    (recoveredBlock4Block680Value5) topOffset: (5).
    recoveredBlock4Block680Value6 := recoveredBlock4Block680Value0.
    recoveredBlock4Block680Value7 := XmATTACHNONE.
    (recoveredBlock4Block680Value6) bottomAttachment: (recoveredBlock4Block680Value7).
    recoveredBlock4Block680Value8 := recoveredBlock4Block680Value0.
    recoveredBlock4Block680Value9 := XmATTACHFORM.
    (recoveredBlock4Block680Value8) leftAttachment: (recoveredBlock4Block680Value9).
    recoveredBlock4Block680Value10 := recoveredBlock4Block680Value0.
    (recoveredBlock4Block680Value10) leftOffset: (5).
    recoveredBlock4Block680Value11 := recoveredBlock4Block680Value0.
    recoveredBlock4Block680Value12 := XmATTACHFORM.
    (recoveredBlock4Block680Value11) rightAttachment: (recoveredBlock4Block680Value12).
    recoveredBlock4Block680Value13 := (recoveredBlock4Block680Value0) rightOffset: (5).
    recoveredBlock4Block680Value13
].
            recoveredBlock4PC := 732.
        ].
        recoveredBlock4Step = 732 ifTrue: [
            (recoveredBlock4Stack0) setValuesBlock: (recoveredBlock4Stack1).
            recoveredBlock4PC := 734.
        ].
        recoveredBlock4Step = 734 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 735.
        ].
        recoveredBlock4Step = 735 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) widgetDictionary.
            recoveredBlock4PC := 737.
        ].
        recoveredBlock4Step = 737 ifTrue: [
            recoveredBlock4Stack1 := 'lengthLabel'.
            recoveredBlock4PC := 740.
        ].
        recoveredBlock4Step = 740 ifTrue: [
            recoveredBlock4Stack2 := recoveredBlock4Local4.
            recoveredBlock4PC := 743.
        ].
        recoveredBlock4Step = 743 ifTrue: [
            (recoveredBlock4Stack0) at: (recoveredBlock4Stack1) put: (recoveredBlock4Stack2).
            recoveredBlock4PC := 745.
        ].
        recoveredBlock4Step = 745 ifTrue: [
            recoveredBlock4Stack0 := recoveredBlock4Local1.
            recoveredBlock4PC := 748.
        ].
        recoveredBlock4Step = 748 ifTrue: [
            recoveredBlock4Stack1 := XmNactivateCallback.
            recoveredBlock4PC := 752.
        ].
        recoveredBlock4Step = 752 ifTrue: [
            recoveredBlock4Stack2 := self.
            recoveredBlock4PC := 753.
        ].
        recoveredBlock4Step = 753 ifTrue: [
            recoveredBlock4Stack3 := 'fileButtonActivate:clientData:callData:'.
            recoveredBlock4PC := 756.
        ].
        recoveredBlock4Step = 756 ifTrue: [
            recoveredBlock4Stack4 := recoveredBlock4Local2.
            recoveredBlock4PC := 759.
        ].
        recoveredBlock4Step = 759 ifTrue: [
            (recoveredBlock4Stack0) addCallback: (recoveredBlock4Stack1) receiver: (recoveredBlock4Stack2) selector: (recoveredBlock4Stack3) clientData: (recoveredBlock4Stack4).
            recoveredBlock4PC := 763.
        ].
        recoveredBlock4Step = 763 ifTrue: [
            recoveredBlock4Stack0 := recoveredBlock4Local2.
            recoveredBlock4PC := 766.
        ].
        recoveredBlock4Step = 766 ifTrue: [
            recoveredBlock4Stack1 := XmNvalueChangedCallback.
            recoveredBlock4PC := 770.
        ].
        recoveredBlock4Step = 770 ifTrue: [
            recoveredBlock4Stack2 := self.
            recoveredBlock4PC := 771.
        ].
        recoveredBlock4Step = 771 ifTrue: [
            recoveredBlock4Stack3 := 'fileFieldValue:clientData:callData:'.
            recoveredBlock4PC := 774.
        ].
        recoveredBlock4Step = 774 ifTrue: [
            recoveredBlock4Stack4 := recoveredBlock4Local2.
            recoveredBlock4PC := 777.
        ].
        recoveredBlock4Step = 777 ifTrue: [
            (recoveredBlock4Stack0) addCallback: (recoveredBlock4Stack1) receiver: (recoveredBlock4Stack2) selector: (recoveredBlock4Stack3) clientData: (recoveredBlock4Stack4).
            recoveredBlock4PC := 781.
        ].
        recoveredBlock4Step = 781 ifTrue: [
            recoveredBlock4Stack0 := recoveredBlock4Local2.
            recoveredBlock4PC := 784.
        ].
        recoveredBlock4Step = 784 ifTrue: [
            (recoveredBlock4Stack0) addTabGroup.
            recoveredBlock4PC := 789.
        ].
        recoveredBlock4Step = 789 ifTrue: [
            recoveredBlock4Stack0 := recoveredBlock4Local1.
            recoveredBlock4PC := 792.
        ].
        recoveredBlock4Step = 792 ifTrue: [
            (recoveredBlock4Stack0) addTabGroup.
            recoveredBlock4PC := 797.
        ].
        recoveredBlock4Step = 797 ifTrue: [
            recoveredBlock4Stack0 := recoveredBlock4Local7.
            recoveredBlock4PC := 800.
        ].
        recoveredBlock4Step = 800 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack0.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
            recoveredPC := 801.
        ].
        recoveredStep = 801 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 804.
        ].
        recoveredStep = 804 ifTrue: [
            recoveredStack1 := EtasWizardPage.
            recoveredPC := 808.
        ].
        recoveredStep = 808 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 813.
        ].
        recoveredStep = 813 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 814.
        ].
        recoveredStep = 814 ifTrue: [
            (recoveredStack2) initialize.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 819.
        ].
        recoveredStep = 819 ifTrue: [
            recoveredStack3 := 'Define a Workspace File'.
            recoveredPC := 822.
        ].
        recoveredStep = 822 ifTrue: [
            (recoveredStack2) stepDescription: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 827.
        ].
        recoveredStep = 827 ifTrue: [
            recoveredStack3 := 'Select Workspace Path'.
            recoveredPC := 830.
        ].
        recoveredStep = 830 ifTrue: [
            recoveredStack3 := (recoveredStack3) withCrs.
            recoveredPC := 835.
        ].
        recoveredStep = 835 ifTrue: [
            (recoveredStack2) stepLabel: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 839.
        ].
        recoveredStep = 839 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 842.
        ].
        recoveredStep = 842 ifTrue: [
            (recoveredStack2) stepInfoWidgets: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 847.
        ].
        recoveredStep = 847 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock847Value0 |
    recoveredBlock847Value0 := (self) isWorkspaceFileValid.
    recoveredBlock847Value0
].
            recoveredPC := 860.
        ].
        recoveredStep = 860 ifTrue: [
            (recoveredStack2) nextState: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 865.
        ].
        recoveredStep = 865 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock865Value0 recoveredBlock865Value1 recoveredBlock865Value2 recoveredBlock865Value3 |
    recoveredBlock865Value0 := (self) pageActions.
    recoveredBlock865Value1 := (self) currentPage.
    recoveredBlock865Value2 := (recoveredBlock865Value0) at: (recoveredBlock865Value1).
    recoveredBlock865Value3 := (recoveredBlock865Value2) value.
    recoveredBlock865Value3
].
            recoveredPC := 892.
        ].
        recoveredStep = 892 ifTrue: [
            (recoveredStack2) nextAction: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 897.
        ].
        recoveredStep = 897 ifTrue: [
            recoveredStack3 := [
    'Finish'
].
            recoveredPC := 900.
        ].
        recoveredStep = 900 ifTrue: [
            recoveredPC := 909.
        ].
        recoveredStep = 909 ifTrue: [
            (recoveredStack2) actionLabel: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 913.
        ].
        recoveredStep = 913 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock913Value0 |
    recoveredBlock913Value0 := (self) finish.
    recoveredBlock913Value0
].
            recoveredPC := 926.
        ].
        recoveredStep = 926 ifTrue: [
            (recoveredStack2) actionAction: (recoveredStack3).
            recoveredPC := 931.
        ].
        recoveredStep = 931 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock931Value0 |
    recoveredBlock931Value0 := (self) isFinishPossible.
    recoveredBlock931Value0
].
            recoveredPC := 944.
        ].
        recoveredStep = 944 ifTrue: [
            recoveredStack1 := (recoveredStack1) actionState: (recoveredStack2).
            recoveredPC := 949.
        ].
        recoveredStep = 949 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

