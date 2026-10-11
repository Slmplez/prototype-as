"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000652c; bytecode file offset 0x902de8"
!EtasExperimentEnvironmentInterface class methodsFor: 'recovered'!
folderModified: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    ^self
! !

"ASDBase.ic method 0x2003c9b8; bytecode file offset 0x93bf94"
!EtasExperimentEnvironmentInterface class methodsFor: 'recovered'!
getTool
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ASDExperimentEnvironmentActivexCalls.
    recoveredValue1 := (recoveredValue0) getTool.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003e348; bytecode file offset 0x93bf94"
!EtasExperimentEnvironmentInterface class methodsFor: 'recovered'!
isEnabled
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := MainController.
    recoveredValue1 := (recoveredValue0) isProductInstalledEtasEE.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2008838c; bytecode file offset 0x984cf8"
!EtasExperimentEnvironmentInterface class methodsFor: 'recovered'!
shutdown
    | recoveredValue0 |
    recoveredValue0 := MainController.
    (recoveredValue0) removeDependent: (self).
    ^self
! !

"ASDBase.ic method 0x2008842c; bytecode file offset 0x984cf8"
!EtasExperimentEnvironmentInterface class methodsFor: 'recovered'!
initialize
    | recoveredValue0 |
    recoveredValue0 := MainController.
    (recoveredValue0) addDependent: (self).
    ^self
! !

"ASDBase.ic method 0x200d4cf8; bytecode file offset 0x9d15b8"
!EtasExperimentEnvironmentInterface class methodsFor: 'recovered'!
eeGetEE
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) getTool.
    (recoveredValue0) releaseObject.
    recoveredValue1 := (self) getTool.
    (recoveredValue1) core.
    ^self
! !

"ASDBase.ic method 0x20161ccc; bytecode file offset 0xa5e598"
!EtasExperimentEnvironmentInterface class methodsFor: 'recovered'!
eeWorkspacesPath
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) library.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOpen.
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
            recoveredStack0 := (recoveredStack0) eeInternalCachePath.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := 'Workspaces'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) asPathname.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20172604; bytecode file offset 0xa6eed0"
!EtasExperimentEnvironmentInterface class methodsFor: 'recovered'!
eeInternalCachePath
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) library.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOpen.
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
            recoveredStack0 := (recoveredStack0) library.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) databasePath.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := '\Experiment Environment'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) asPathname.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201d054c; bytecode file offset 0xacce18"
!EtasExperimentEnvironmentInterface class methodsFor: 'recovered'!
dbChanged
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ASDGenericComponentsFolderWatcher.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
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
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := ASDGenericComponentFolderModifiedCallback.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack4 := 'folderModified:clientData:callData:'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack5 := (recoveredStack5) eeInternalCachePath.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201e8bd4; bytecode file offset 0xae549c"
!EtasExperimentEnvironmentInterface class methodsFor: 'recovered'!
eeIgnoreErrorsOperation: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 |
    recoveredBlock4Value0 := recoveredArg1.
    recoveredBlock4Value1 := (recoveredBlock4Value0) value.
    recoveredBlock4Value1
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := ExASDExperimentEnvironmentError.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := [:block280d75bcArg1 | 
    | block280d75bcLocal1 block280d75bcValue0 block280d75bcValue1 |
    block280d75bcValue0 := block280d75bcArg1.
    block280d75bcValue1 := (block280d75bcValue0) exitWith: (nil).
    block280d75bcValue1
].
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) when: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201edf54; bytecode file offset 0xaea838"
!EtasExperimentEnvironmentInterface class methodsFor: 'recovered'!
eeWorkspacePath: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) eeWorkspacesPath.
    recoveredValue1 := [
    ^nil
].
    recoveredValue2 := (recoveredValue0) ifNil: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) eeLabel.
    recoveredValue6 := (recoveredValue3) , (recoveredValue5).
    recoveredValue7 := (recoveredValue6) asPathname.
    ^recoveredValue7
! !

"ASDBase.ic method 0x201edf70; bytecode file offset 0xaea838"
!EtasExperimentEnvironmentInterface class methodsFor: 'recovered'!
eeExperimentPath: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) eeExperimentsPath.
    recoveredValue1 := [
    ^nil
].
    recoveredValue2 := (recoveredValue0) ifNil: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) eeLabel.
    recoveredValue6 := (recoveredValue3) , (recoveredValue5).
    recoveredValue7 := (recoveredValue6) asPathname.
    ^recoveredValue7
! !

"ASDBase.ic method 0x202921fc; bytecode file offset 0xb8ead8"
!EtasExperimentEnvironmentInterface class methodsFor: 'recovered'!
eeExperimentsPath
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) library.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOpen.
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
            recoveredStack0 := ASDGenericComponentsFolderWatcher.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) instance.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock19Value0 recoveredBlock19Value1 recoveredBlock19Value2 |
    recoveredBlock19Value0 := (self) eeInternalCachePath.
    recoveredBlock19Value1 := (recoveredBlock19Value0) , ('Experiments').
    recoveredBlock19Value2 := (recoveredBlock19Value1) asPathname.
    ^recoveredBlock19Value2
].
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) ifNil: (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) watchDirectory.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20371314; bytecode file offset 0xc6dc04"
!EtasExperimentEnvironmentInterface class methodsFor: 'recovered'!
eeProtectedOperation: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := [
    | recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4Stack4 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack1 := System.
            recoveredBlock4PC := 12.
        ].
        recoveredBlock4Step = 12 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) isRuntime.
            recoveredBlock4PC := 13.
        ].
        recoveredBlock4Step = 13 ifTrue: [
            (recoveredBlock4Stack1) ifTrue: [recoveredBlock4PC := 16] ifFalse: [recoveredBlock4PC := 58].
        ].
        recoveredBlock4Step = 16 ifTrue: [
            recoveredBlock4Stack1 := [
    | recoveredBlock4Block16Value0 recoveredBlock4Block16Value1 |
    recoveredBlock4Block16Value0 := recoveredArg1.
    recoveredBlock4Block16Value1 := (recoveredBlock4Block16Value0) value.
    recoveredBlock4Block16Value1
].
            recoveredBlock4PC := 27.
        ].
        recoveredBlock4Step = 27 ifTrue: [
            recoveredBlock4Stack2 := ExASDExperimentEnvironmentError.
            recoveredBlock4PC := 29.
        ].
        recoveredBlock4Step = 29 ifTrue: [
            recoveredBlock4Stack3 := [:block280f1b54Arg1 | 
    | block280f1b54Local1 block280f1b54Value0 block280f1b54Value1 block280f1b54Value2 block280f1b54Value3 block280f1b54Value4 block280f1b54Value5 block280f1b54Value6 |
    block280f1b54Value0 := RBUserInfo.
    block280f1b54Value1 := block280f1b54Arg1.
    block280f1b54Value2 := (block280f1b54Value1) argument.
    block280f1b54Value3 := ('Experiment Environment: %1') bindWith: (block280f1b54Value2).
    block280f1b54Value4 := (block280f1b54Value0) errorMessage: (block280f1b54Value3).
    (block280f1b54Value4) prompt.
    block280f1b54Value5 := block280f1b54Arg1.
    block280f1b54Value6 := (block280f1b54Value5) exitWith: (nil).
    block280f1b54Value6
].
            recoveredBlock4PC := 31.
        ].
        recoveredBlock4Step = 31 ifTrue: [
            recoveredBlock4PC := 52.
        ].
        recoveredBlock4Step = 52 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) when: (recoveredBlock4Stack2) do: (recoveredBlock4Stack3).
            recoveredBlock4PC := 54.
        ].
        recoveredBlock4Step = 54 ifTrue: [
            recoveredBlock4PC := 62.
        ].
        recoveredBlock4Step = 58 ifTrue: [
            recoveredBlock4Stack1 := recoveredArg1.
            recoveredBlock4PC := 61.
        ].
        recoveredBlock4Step = 61 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) value.
            recoveredBlock4PC := 62.
        ].
        recoveredBlock4Step = 62 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack1.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
    (self) execLongOperation: (recoveredValue0) message: ('Starting Experiment Environment').
    ^self
! !

