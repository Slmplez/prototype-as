"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20025b28; bytecode file offset 0x923928"
!SGMainCtrl methodsFor: 'recovered'!
localIniFileName
    ^'Ascetsd.INI'
! !

"ASDBase.ic method 0x20026d58; bytecode file offset 0x923928"
!SGMainCtrl methodsFor: 'recovered'!
gTipSectionName
    ^'GenericTarget'
! !

"ASDBase.ic method 0x2003f720; bytecode file offset 0x93c75c"
!SGMainCtrl methodsFor: 'recovered'!
sortedModeGroupTypes
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ARModeGroupDB.
    recoveredValue1 := (self) sortedDbTypesClass: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003fd70; bytecode file offset 0x93c75c"
!SGMainCtrl methodsFor: 'recovered'!
sortedEnumerationTypes
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGEnumerationDB.
    recoveredValue1 := (self) sortedDbTypesClass: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20061334; bytecode file offset 0x95e838"
!SGMainCtrl methodsFor: 'recovered'!
localStationIniFileName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) toolName.
    recoveredValue1 := (recoveredValue0) , ('SD.INI').
    ^recoveredValue1
! !

"ASDBase.ic method 0x20075454; bytecode file offset 0x9757c8"
!SGMainCtrl methodsFor: 'recovered'!
notesAndViewsAvailable
    ^true
! !

"ASDBase.ic method 0x20075f2c; bytecode file offset 0x9757c8"
!SGMainCtrl methodsFor: 'recovered'!
isASD
    ^true
! !

"ASDBase.ic method 0x20091610; bytecode file offset 0x98e0cc"
!SGMainCtrl methodsFor: 'recovered'!
shutDown
    super shutDown.
    ^self
! !

"ASDBase.ic method 0x20092288; bytecode file offset 0x98ebfc"
!SGMainCtrl methodsFor: 'recovered'!
exportExperimentEnvironment: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Array.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) with: (recoveredValue1).
    recoveredValue3 := (self) exportItems: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200a2db4; bytecode file offset 0x99f678"
!SGMainCtrl methodsFor: 'recovered'!
addCodeGenMessages: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := SGContext.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := (self) createCodeManager: (recoveredValue1).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue2) addCodeGenMessages: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200ae008; bytecode file offset 0x9aa8e4"
!SGMainCtrl methodsFor: 'recovered'!
generateOnlineSimCodeForContext: recoveredArg1 checkHardware: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) createCodeManager: (recoveredValue0).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue1) generateOnlineSimCode: (recoveredValue2) checkHardwareConnection: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200b094c; bytecode file offset 0x9ad210"
!SGMainCtrl methodsFor: 'recovered'!
clearCodeGenMessages
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGContext.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := (self) createCodeManager: (recoveredValue1).
    (recoveredValue2) clearMonitor.
    ^true
! !

"ASDBase.ic method 0x200bbce0; bytecode file offset 0x9b85a0"
!SGMainCtrl methodsFor: 'recovered'!
generateIntegrioCodeForContext: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) createCodeManager: (recoveredValue0).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := SGINTECRIOTransferCommand.
    recoveredValue4 := (recoveredValue1) generateTransferCode: (recoveredValue2) command: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200f1bec; bytecode file offset 0x9ee4b0"
!SGMainCtrl methodsFor: 'recovered'!
ascetNavigationManager
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('ASCETLINKS') = ('PROD105089').
    recoveredValue1 := ASDAscetLinkManager.
    recoveredValue2 := (recoveredValue1) createFor: (self).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20101e8c; bytecode file offset 0x9fe748"
!SGMainCtrl methodsFor: 'recovered'!
editImplConfig: recoveredArg1 element: recoveredArg2 context: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (recoveredValue0) sgClass.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := (recoveredValue1) editImplConfig: (recoveredValue2) element: (recoveredValue3) additionalImplInfo: (nil) context: (recoveredValue4) mainController: (self).
    ^recoveredValue5
! !

"ASDBase.ic method 0x20102560; bytecode file offset 0x9fee1c"
!SGMainCtrl methodsFor: 'recovered'!
editImplConfig: recoveredArg1 element: recoveredArg2 additionalImplInfo: recoveredArg3 context: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (recoveredValue0) sgClass.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := recoveredArg4.
    recoveredValue6 := (recoveredValue1) editImplConfig: (recoveredValue2) element: (recoveredValue3) additionalImplInfo: (recoveredValue4) context: (recoveredValue5) mainController: (self).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20107640; bytecode file offset 0xa03f08"
!SGMainCtrl methodsFor: 'recovered'!
detectAllCodeContainerHandleKeys
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ('Kk') == ('Call_70031').
    recoveredValue1 := (self) databaseAccess.
    recoveredValue2 := ASDCodeContainerHandle.
    recoveredValue3 := (recoveredValue1) readFirstVersionId: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20110c9c; bytecode file offset 0xa0d55c"
!SGMainCtrl methodsFor: 'recovered'!
checkStationEntriesFromFile: recoveredArg1 defaultIniFile: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    super checkStationEntriesFromFile: (recoveredValue0) defaultIniFile: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (self) checkGTipSectionFromFile: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20111d78; bytecode file offset 0xa0e638"
!SGMainCtrl methodsFor: 'recovered'!
executeLong: recoveredArg1 message: recoveredArg2 showProgress: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) userInterface.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    (recoveredValue0) execLongOperation: (recoveredValue1) message: (recoveredValue2) allowCancel: (true) showProgress: (recoveredValue3) title: ('Main Controller').
    ^self
! !

"ASDBase.ic method 0x2011e608; bytecode file offset 0xa1aecc"
!SGMainCtrl methodsFor: 'recovered'!
generateLoadableCodeForContext: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ('Kk') == ('Call_62845').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) createCodeManager: (recoveredValue1).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue2) generateLoadableCodeForContext: (recoveredValue3) useCGen: (false).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20126848; bytecode file offset 0xa23114"
!SGMainCtrl methodsFor: 'recovered'!
generateIntegrioCodeForProject: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) createDefaultNetworkContext.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
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
            recoveredStack0 := (recoveredStack0) generateIntegrioCodeForContext: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2018bc3c; bytecode file offset 0xa88500"
!SGMainCtrl methodsFor: 'recovered'!
touchCodeFor: recoveredArg1 recursive: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) createDefaultNetworkContext.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
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
            recoveredStack0 := (recoveredStack0) createCodeManager: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDefaultMakeConfig.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) touchComponentRecursive: (recoveredStack1) context: (recoveredStack2).
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

"ASDBase.ic method 0x201a1308; bytecode file offset 0xa9dbd4"
!SGMainCtrl methodsFor: 'recovered'!
isInspectPossible
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
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := super isInspectPossible.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := Smalltalk.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := 'EtasRuntimeInspectToolbox'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) classAt: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) notNil.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201a8158; bytecode file offset 0xaa4a18"
!SGMainCtrl methodsFor: 'recovered'!
generateSimCodeForContext: recoveredArg1 mode: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := 'online'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) generateOnlineSimCodeForContext: (recoveredStack2) checkHardware: (recoveredStack3).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) generateOfflineSimCodeForContext: (recoveredStack2) checkHardware: (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201e10a0; bytecode file offset 0xadd960"
!SGMainCtrl methodsFor: 'recovered'!
generateCodeForOfflineExperiment: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDefaultNetworkContext.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
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
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) generateOfflineSimCodeForContext: (recoveredStack1) checkHardware: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) noErrors.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201eaee4; bytecode file offset 0xae77a8"
!SGMainCtrl methodsFor: 'recovered'!
editValueConfig: recoveredArg1 element: recoveredArg2 context: recoveredArg3 parentValueConfig: recoveredArg4
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClass.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := 'Call_65715'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClass.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack5 := recoveredArg4.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) editValueConfig: (recoveredStack2) element: (recoveredStack3) context: (recoveredStack4) parentValueConfig: (recoveredStack5) mainController: (recoveredStack6).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20218000; bytecode file offset 0xb148dc"
!SGMainCtrl methodsFor: 'recovered'!
shutDownASCETSD
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    (self) broadcast: ('shutDown').
    super shutDownASCETSD.
    recoveredValue0 := TGTarget.
    recoveredValue1 := (self) asdGeneralOptions.
    recoveredValue2 := (recoveredValue1) optionKeepCGenFiles.
    recoveredValue3 := (recoveredValue2) not.
    (recoveredValue0) closeTargetsDeleteCGen: (recoveredValue3).
    recoveredValue4 := SGPaneController.
    (recoveredValue4) Buffer: (nil).
    (self) shutDown.
    ^self
! !

"ASDBase.ic method 0x20245af0; bytecode file offset 0xb423b8"
!SGMainCtrl methodsFor: 'recovered'!
generateLoadableCode: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_62845'.
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
            recoveredStack1 := (recoveredStack1) createDefaultNetworkContext.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal2 := recoveredStack2.
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
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) generateLoadableCodeForContext: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) noErrors.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202460f4; bytecode file offset 0xb42a2c"
!SGMainCtrl methodsFor: 'recovered'!
fileOutGenericCodeFor: recoveredArg1 path: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) createDefaultNetworkContext.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
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
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) createCodeManager: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDefaultMakeConfig.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileOutGenericCodeRecursive: (recoveredStack1) context: (recoveredStack2) path: (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) noErrors.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20246110; bytecode file offset 0xb42a2c"
!SGMainCtrl methodsFor: 'recovered'!
fileOutGenerateCodeRecursiveFor: recoveredArg1 path: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) createDefaultNetworkContext.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
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
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) createCodeManager: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDefaultMakeConfig.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileOutGeneratedCodeRecursive: (recoveredStack1) context: (recoveredStack2) path: (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) noErrors.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2024612c; bytecode file offset 0xb42a2c"
!SGMainCtrl methodsFor: 'recovered'!
fileOutGenerateCodeFlatFor: recoveredArg1 path: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) createDefaultNetworkContext.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
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
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) createCodeManager: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDefaultMakeConfig.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileOutGeneratedCodeFlat: (recoveredStack1) context: (recoveredStack2) path: (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) noErrors.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20246148; bytecode file offset 0xb42a2c"
!SGMainCtrl methodsFor: 'recovered'!
fileOutGenericCodeFlatFor: recoveredArg1 path: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) createDefaultNetworkContext.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
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
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) createCodeManager: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDefaultMakeConfig.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileOutGenericCodeFlat: (recoveredStack1) context: (recoveredStack2) path: (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) noErrors.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20246164; bytecode file offset 0xb42a2c"
!SGMainCtrl methodsFor: 'recovered'!
fileOutGenerateCodeFor: recoveredArg1 path: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) createDefaultNetworkContext.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
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
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) createCodeManager: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDefaultMakeConfig.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileOutGeneratedCodeFlat: (recoveredStack1) context: (recoveredStack2) path: (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) noErrors.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20273a54; bytecode file offset 0xb70324"
!SGMainCtrl methodsFor: 'recovered'!
generateCodeFor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDefaultNetworkContext.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
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
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) createCodeManager: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) makeConfig.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) generateCodeOnly: (recoveredStack1) context: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := 'Kk'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := 'What_5377'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) noErrors.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202b11a8; bytecode file offset 0xbada7c"
!SGMainCtrl methodsFor: 'recovered'!
rebuildAll: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_62845'.
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
            recoveredStack1 := 'Kk'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 'What_5377'.
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
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDefaultNetworkContext.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) createCodeManager: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) rebuildAll: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) noErrors.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredPC := 45.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2031bccc; bytecode file offset 0xc185a4"
!SGMainCtrl methodsFor: 'recovered'!
isExperimentOpen
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Rnz'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'EHI_79625'.
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
            recoveredStack0 := (recoveredStack0) userInterface.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := [
    ^false
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifNil: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) userInterface.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) allChildWindows.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := [:block280eb65cArg1 | 
    | block280eb65cStack0 block280eb65cStack1 block280eb65cStack2 block280eb65cStack3 block280eb65cPC block280eb65cStep block280eb65cDone block280eb65cResult |
    block280eb65cStack0 := self.
    block280eb65cPC := 4.
    block280eb65cDone := false.
    [block280eb65cDone not] whileTrue: [
        block280eb65cStep := block280eb65cPC.
        block280eb65cStep = 4 ifTrue: [
            block280eb65cStack1 := false.
            block280eb65cPC := 5.
        ].
        block280eb65cStep = 5 ifTrue: [
            block280eb65cStack2 := block280eb65cArg1.
            block280eb65cPC := 6.
        ].
        block280eb65cStep = 6 ifTrue: [
            block280eb65cStack2 := (block280eb65cStack2) isSimulationView.
            block280eb65cPC := 8.
        ].
        block280eb65cStep = 8 ifTrue: [
            (block280eb65cStack2) ifTrue: [block280eb65cPC := 12] ifFalse: [block280eb65cPC := 17].
        ].
        block280eb65cStep = 12 ifTrue: [
            block280eb65cPC := 13.
        ].
        block280eb65cStep = 13 ifTrue: [
            block280eb65cStack1 := block280eb65cArg1.
            block280eb65cPC := 14.
        ].
        block280eb65cStep = 14 ifTrue: [
            block280eb65cStack1 := (block280eb65cStack1) isDestroyed.
            block280eb65cPC := 16.
        ].
        block280eb65cStep = 16 ifTrue: [
            block280eb65cStack1 := (block280eb65cStack1) not.
            block280eb65cPC := 17.
        ].
        block280eb65cStep = 17 ifTrue: [
            block280eb65cResult := block280eb65cStack1.
            block280eb65cDone := true.
        ].
    ].
    block280eb65cResult
].
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := [
    ^false
].
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20322c80; bytecode file offset 0xc1f568"
!SGMainCtrl methodsFor: 'recovered'!
exportItems: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) createExportManagerUserInterface: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
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
            (recoveredStack0) commitDB.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := SGMonitorStreamDummy.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) getOrCreateExportPath.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := nil.
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
            recoveredStack0 := (recoveredStack0) exportManager.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack5 := (recoveredStack5) userInterface.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) exportConfig: (recoveredStack1) exportPath: (recoveredStack2) notificationWindow: (recoveredStack3) headerKey: (recoveredStack4) userInterface: (recoveredStack5).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) library.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) garbageCollect.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) globalGarbageCollect.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20325acc; bytecode file offset 0xc22394"
!SGMainCtrl methodsFor: 'recovered'!
execLongOperation: recoveredArg1 message: recoveredArg2 allowCancel: recoveredArg3 showProgress: recoveredArg4 title: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) userInterface.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 recoveredBlock5Value6 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := recoveredArg2.
    recoveredBlock5Value3 := recoveredArg3.
    recoveredBlock5Value4 := recoveredArg4.
    recoveredBlock5Value5 := recoveredArg5.
    recoveredBlock5Value6 := (recoveredBlock5Value0) execLongOperation: (recoveredBlock5Value1) message: (recoveredBlock5Value2) allowCancel: (recoveredBlock5Value3) showProgress: (recoveredBlock5Value4) title: (recoveredBlock5Value5).
    recoveredBlock5Value6
].
    recoveredValue2 := [
    | recoveredBlock32Value0 recoveredBlock32Value1 recoveredBlock32Value2 recoveredBlock32Value3 recoveredBlock32Value4 recoveredBlock32Value5 |
    recoveredBlock32Value0 := Transcript.
    recoveredBlock32Value1 := recoveredArg1.
    recoveredBlock32Value2 := recoveredArg2.
    recoveredBlock32Value3 := recoveredArg3.
    recoveredBlock32Value4 := recoveredArg4.
    recoveredBlock32Value5 := (recoveredBlock32Value0) execLongOperation: (recoveredBlock32Value1) message: (recoveredBlock32Value2) allowCancel: (recoveredBlock32Value3) showProgress: (recoveredBlock32Value4).
    recoveredBlock32Value5
].
    recoveredValue3 := (recoveredValue0) ifNotNil: (recoveredValue1) ifNil: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2039a944; bytecode file offset 0xc97230"
!SGMainCtrl methodsFor: 'recovered'!
discardAllGeneratedCode
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('Kk') == ('ASC_MaxDatabaseSize').
    recoveredValue1 := (self) userInterface.
    recoveredValue2 := [
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 |
    recoveredBlock11Value0 := (self) userInterface.
    recoveredBlock11Value1 := [
    | recoveredBlock11Block19Value0 recoveredBlock11Block19Value1 recoveredBlock11Block19Value2 recoveredBlock11Block19Value3 |
    recoveredBlock11Block19Value0 := (self) userInterface.
    recoveredBlock11Block19Value1 := (recoveredBlock11Block19Value0) shell.
    recoveredBlock11Block19Value2 := [
    | recoveredBlock11Block19Block28Value0 recoveredBlock11Block19Block28Value1 recoveredBlock11Block19Block28Value2 recoveredBlock11Block19Block28Value3 recoveredBlock11Block19Block28Value4 recoveredBlock11Block19Block28Value5 |
    recoveredBlock11Block19Block28Value0 := ('hw') == ('ASC_MaxDatabaseSize').
    recoveredBlock11Block19Block28Value1 := (self) library.
    (recoveredBlock11Block19Block28Value1) emptyCache: (true).
    recoveredBlock11Block19Block28Value2 := (self) library.
    (recoveredBlock11Block19Block28Value2) closeDataStorage.
    recoveredBlock11Block19Block28Value3 := (self) library.
    (recoveredBlock11Block19Block28Value3) deleteCodeStorageFile.
    recoveredBlock11Block19Block28Value4 := (self) library.
    recoveredBlock11Block19Block28Value5 := (recoveredBlock11Block19Block28Value4) openCurrentDataStorage.
    recoveredBlock11Block19Block28Value5
].
    recoveredBlock11Block19Value3 := (recoveredBlock11Block19Value1) deferRedraw: (recoveredBlock11Block19Value2).
    recoveredBlock11Block19Value3
].
    recoveredBlock11Value2 := (recoveredBlock11Value0) execLongOperation: (recoveredBlock11Value1) message: ('Clean All (w/o DB optimize) generated code...') allowCancel: (true) showProgress: (true).
    recoveredBlock11Value2
].
    (recoveredValue1) terminateRefreshProcessWhile: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x203a5328; bytecode file offset 0xca1c14"
!SGMainCtrl methodsFor: 'recovered'!
sortedDbTypesClass: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) databaseAccess.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) readClassKeys: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := #().
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := [:block280f4c20Arg1 | 
    | block280f4c20Stack0 block280f4c20Stack1 block280f4c20Stack2 block280f4c20Stack3 block280f4c20PC block280f4c20Step block280f4c20Done block280f4c20Result |
    block280f4c20Stack0 := self.
    block280f4c20PC := 4.
    block280f4c20Done := false.
    [block280f4c20Done not] whileTrue: [
        block280f4c20Step := block280f4c20PC.
        block280f4c20Step = 4 ifTrue: [
            block280f4c20Stack1 := block280f4c20Arg1.
            block280f4c20PC := 5.
        ].
        block280f4c20Step = 5 ifTrue: [
            block280f4c20Stack2 := [:block280f4c44Arg1 | 
    nil
].
            block280f4c20PC := 7.
        ].
        block280f4c20Step = 7 ifTrue: [
            block280f4c20PC := 12.
        ].
        block280f4c20Step = 12 ifTrue: [
            block280f4c20Stack1 := (block280f4c20Stack1) getObjectIfUndefined: (block280f4c20Stack2).
            block280f4c20PC := 14.
        ].
        block280f4c20Step = 14 ifTrue: [
            block280f4c20Result := block280f4c20Stack1.
            block280f4c20Done := true.
        ].
    ].
    block280f4c20Result
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := [:block280f4c68Arg1 | 
    | block280f4c68Stack0 block280f4c68Stack1 block280f4c68Stack2 block280f4c68Stack3 block280f4c68PC block280f4c68Step block280f4c68Done block280f4c68Result |
    block280f4c68Stack0 := self.
    block280f4c68PC := 4.
    block280f4c68Done := false.
    [block280f4c68Done not] whileTrue: [
        block280f4c68Step := block280f4c68PC.
        block280f4c68Step = 4 ifTrue: [
            block280f4c68Stack1 := false.
            block280f4c68PC := 5.
        ].
        block280f4c68Step = 5 ifTrue: [
            block280f4c68Stack2 := block280f4c68Arg1.
            block280f4c68PC := 6.
        ].
        block280f4c68Step = 6 ifTrue: [
            (block280f4c68Stack2 == nil) ifTrue: [block280f4c68PC := 15] ifFalse: [block280f4c68PC := 10].
        ].
        block280f4c68Step = 10 ifTrue: [
            block280f4c68PC := 11.
        ].
        block280f4c68Step = 11 ifTrue: [
            block280f4c68Stack1 := block280f4c68Arg1.
            block280f4c68PC := 12.
        ].
        block280f4c68Step = 12 ifTrue: [
            block280f4c68Stack1 := (block280f4c68Stack1) getLibrary.
            block280f4c68PC := 14.
        ].
        block280f4c68Step = 14 ifTrue: [
            block280f4c68Stack1 := (block280f4c68Stack1) notNil.
            block280f4c68PC := 15.
        ].
        block280f4c68Step = 15 ifTrue: [
            block280f4c68Result := block280f4c68Stack1.
            block280f4c68Done := true.
        ].
    ].
    block280f4c68Result
].
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := [:block280f4c8cArg1 :block280f4c8cArg2 | 
    | block280f4c8cValue0 block280f4c8cValue1 block280f4c8cValue2 block280f4c8cValue3 block280f4c8cValue4 |
    block280f4c8cValue0 := block280f4c8cArg1.
    block280f4c8cValue1 := (block280f4c8cValue0) label.
    block280f4c8cValue2 := block280f4c8cArg2.
    block280f4c8cValue3 := (block280f4c8cValue2) label.
    block280f4c8cValue4 := (block280f4c8cValue1) < (block280f4c8cValue3).
    block280f4c8cValue4
].
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203ef9c8; bytecode file offset 0xcec2bc"
!SGMainCtrl methodsFor: 'recovered'!
editCreateValueConfigFor: recoveredArg1 configController: recoveredArg2 makeConfig: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
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
            recoveredStack1 := 'hw'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := 'call_89985'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedConfig.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := [:block280f9198Arg1 | 
    | block280f9198Value0 block280f9198Value1 |
    block280f9198Value0 := block280f9198Arg1.
    block280f9198Value1 := (block280f9198Value0) makeConsistentBasic.
    block280f9198Value1
].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) elementsSameGlobalAttribute: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := [:block280f91bcArg1 | 
    | block280f91bcValue0 block280f91bcValue1 |
    block280f91bcValue0 := block280f91bcArg1.
    block280f91bcValue1 := (block280f91bcValue0) isDependent.
    block280f91bcValue1
].
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) anySatisfy: (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) editValueForDependentElements: (recoveredStack2) configController: (recoveredStack3).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := [:block280f91e0Arg1 | 
    | block280f91e0Value0 block280f91e0Value1 |
    block280f91e0Value0 := block280f91e0Arg1.
    block280f91e0Value1 := (block280f91e0Value0) isReference.
    block280f91e0Value1
].
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) anySatisfy: (recoveredStack2).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) editValueForReferenceElements: (recoveredStack2) configController: (recoveredStack3).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := (recoveredStack0) editValueForStandardElements: (recoveredStack1) configController: (recoveredStack2).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203f4178; bytecode file offset 0xcf0a64"
!SGMainCtrl methodsFor: 'recovered'!
discardGeneratedCode
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_70031'.
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
            recoveredStack0 := (recoveredStack0) userInterface.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 |
    recoveredBlock11Value0 := recoveredBlock11Arg1.
    recoveredBlock11Value1 := (self) deleteExternalCodeContainersDialog: (recoveredBlock11Value0).
    recoveredBlock11Value2 := recoveredBlock11Value1.
    recoveredLocal1 := recoveredBlock11Value2.
    recoveredBlock11Value1
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := 'Delete external code containers...                                                        '.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack4 := true.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) execLongOperation: (recoveredStack1) message: (recoveredStack2) allowCancel: (recoveredStack3) showProgress: (recoveredStack4).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) userInterface.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := [:recoveredBlock34Arg1 | 
    | recoveredBlock34Value0 recoveredBlock34Value1 recoveredBlock34Value2 |
    recoveredBlock34Value0 := recoveredBlock34Arg1.
    recoveredBlock34Value1 := (self) deleteUnprotectedCodeContainersDialog: (recoveredBlock34Value0).
    recoveredBlock34Value2 := recoveredBlock34Value1.
    recoveredLocal1 := recoveredBlock34Value2.
    recoveredBlock34Value1
].
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := 'Delete internal code containers...                                                        '.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack4 := true.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) execLongOperation: (recoveredStack1) message: (recoveredStack2) allowCancel: (recoveredStack3) showProgress: (recoveredStack4).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock64Value0 recoveredBlock64Value1 recoveredBlock64Value2 recoveredBlock64Value3 |
    recoveredBlock64Value0 := (self) userInterface.
    recoveredBlock64Value1 := (recoveredBlock64Value0) shell.
    recoveredBlock64Value2 := [
    | recoveredBlock64Block73Value0 recoveredBlock64Block73Value1 |
    recoveredBlock64Block73Value0 := (self) library.
    recoveredBlock64Block73Value1 := (recoveredBlock64Block73Value0) performDefragmentation.
    recoveredBlock64Block73Value1
].
    recoveredBlock64Value3 := (recoveredBlock64Value1) deferRedraw: (recoveredBlock64Value2).
    recoveredBlock64Value3
].
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack0) showBusyCursorWhile: (recoveredStack1).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2042cc50; bytecode file offset 0xd29564"
!SGMainCtrl methodsFor: 'recovered'!
generateOfflineSimCodeForContext: recoveredArg1 checkHardware: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) createCodeManager: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := EtasGeneralDllApi.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := ASDExperimentOptions.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionUseAlternativePCExperimentDllFile.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) fullPath: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := CfsStat.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) stat: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCfsError.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDir.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) project.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) target.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOfflinePCTarget.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 55] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) generateOfflineSimCode: (recoveredStack1) checkHardwareConnection: (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := SGMonitorStreamDummy.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := SGMonitorStreamDummy.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := 'Skip code generation !!!!!!'.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) addText: (recoveredStack1).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := SGMonitorStreamDummy.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := 'Use alternative DLL <%1> instead.'.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) addText: (recoveredStack1).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := SGMonitorStreamDummy.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := (recoveredStack0) project.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) target.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack0) copyTargetDLLFromSource: (recoveredStack1).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := (recoveredStack0) codeManager.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack0) context: (recoveredStack1).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2042cd20; bytecode file offset 0xd29608"
!SGMainCtrl methodsFor: 'recovered'!
editValueForReferenceElements: recoveredArg1 configController: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) selection.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRBDBUndefinedObject.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := ASDReferenceDataDialog.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForForReference: (recoveredStack2) config: (recoveredStack3).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) promptAtCurrentMousePosition.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) result.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedConfig.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) modifiable.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := [:recoveredBlock73Arg1 | 
    | recoveredBlock73Local1 recoveredBlock73Value0 recoveredBlock73Value1 recoveredBlock73Value2 recoveredBlock73Value3 recoveredBlock73Value4 recoveredBlock73Value5 recoveredBlock73Value6 |
    recoveredBlock73Value0 := recoveredLocal3.
    recoveredBlock73Value1 := (recoveredBlock73Value0) result.
    recoveredBlock73Value2 := (recoveredBlock73Value1) deepCopy.
    recoveredBlock73Local1 := recoveredBlock73Value2.
    recoveredBlock73Value3 := recoveredArg2.
    recoveredBlock73Value4 := recoveredBlock73Local1.
    recoveredBlock73Value5 := recoveredBlock73Arg1.
    recoveredBlock73Value6 := (recoveredBlock73Value3) setConfig: (recoveredBlock73Value4) forElement: (recoveredBlock73Value5).
    recoveredBlock73Value6
].
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack1) changed.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204804f0; bytecode file offset 0xd7cdf8"
!SGMainCtrl methodsFor: 'recovered'!
deleteExternalCodeContainersDialog: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := (self) library.
    (recoveredValue0) commit.
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) fractionComplete: (0).
    recoveredValue2 := recoveredArg1.
    (recoveredValue2) messageString: ('Collecting all projects in the database.').
    recoveredValue3 := (self) databaseAccess.
    recoveredValue4 := SGProject.
    recoveredValue5 := (recoveredValue3) readExactClassKeys: (recoveredValue4).
    recoveredValue6 := (recoveredValue5) asOrderedCollection.
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (recoveredValue7) size.
    recoveredLocal3 := recoveredValue8.
    recoveredLocal2 := false.
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := [:recoveredBlock48Arg1 :recoveredBlock48Arg2 | 
    | recoveredBlock48Local1 recoveredBlock48Stack0 recoveredBlock48Stack1 recoveredBlock48Stack2 recoveredBlock48Stack3 recoveredBlock48Stack4 recoveredBlock48PC recoveredBlock48Step recoveredBlock48Done recoveredBlock48Result |
    recoveredBlock48Stack0 := self.
    recoveredBlock48PC := 54.
    recoveredBlock48Done := false.
    [recoveredBlock48Done not] whileTrue: [
        recoveredBlock48Step := recoveredBlock48PC.
        recoveredBlock48Step = 54 ifTrue: [
            recoveredBlock48Stack1 := recoveredArg1.
            recoveredBlock48PC := 57.
        ].
        recoveredBlock48Step = 57 ifTrue: [
            recoveredBlock48Stack1 := (recoveredBlock48Stack1) cancelled.
            recoveredBlock48PC := 59.
        ].
        recoveredBlock48Step = 59 ifTrue: [
            (recoveredBlock48Stack1) ifTrue: [recoveredBlock48PC := 62] ifFalse: [recoveredBlock48PC := 66].
        ].
        recoveredBlock48Step = 62 ifTrue: [
            recoveredBlock48Stack1 := true.
            recoveredBlock48PC := 63.
        ].
        recoveredBlock48Step = 63 ifTrue: [
            recoveredLocal2 := recoveredBlock48Stack1.
            recoveredBlock48PC := 66.
        ].
        recoveredBlock48Step = 66 ifTrue: [
            recoveredBlock48Stack1 := recoveredArg1.
            recoveredBlock48PC := 69.
        ].
        recoveredBlock48Step = 69 ifTrue: [
            recoveredBlock48Stack2 := recoveredBlock48Arg2.
            recoveredBlock48PC := 70.
        ].
        recoveredBlock48Step = 70 ifTrue: [
            recoveredBlock48Stack3 := recoveredLocal3.
            recoveredBlock48PC := 73.
        ].
        recoveredBlock48Step = 73 ifTrue: [
            recoveredBlock48Stack2 := (recoveredBlock48Stack2) / (recoveredBlock48Stack3).
            recoveredBlock48PC := 75.
        ].
        recoveredBlock48Step = 75 ifTrue: [
            (recoveredBlock48Stack1) fractionComplete: (recoveredBlock48Stack2).
            recoveredBlock48PC := 77.
        ].
        recoveredBlock48Step = 77 ifTrue: [
            recoveredBlock48Stack1 := nil.
            recoveredBlock48PC := 78.
        ].
        recoveredBlock48Step = 78 ifTrue: [
            recoveredBlock48Stack2 := recoveredLocal2.
            recoveredBlock48PC := 81.
        ].
        recoveredBlock48Step = 81 ifTrue: [
            (recoveredBlock48Stack2) ifTrue: [recoveredBlock48PC := 118] ifFalse: [recoveredBlock48PC := 84].
        ].
        recoveredBlock48Step = 84 ifTrue: [
            recoveredBlock48PC := 85.
        ].
        recoveredBlock48Step = 85 ifTrue: [
            recoveredBlock48Stack1 := recoveredBlock48Arg1.
            recoveredBlock48PC := 86.
        ].
        recoveredBlock48Step = 86 ifTrue: [
            recoveredBlock48Stack2 := [:block28102574Arg1 | 
    nil
].
            recoveredBlock48PC := 88.
        ].
        recoveredBlock48Step = 88 ifTrue: [
            recoveredBlock48PC := 94.
        ].
        recoveredBlock48Step = 94 ifTrue: [
            recoveredBlock48Stack1 := (recoveredBlock48Stack1) getObjectIfUndefined: (recoveredBlock48Stack2).
            recoveredBlock48PC := 96.
        ].
        recoveredBlock48Step = 96 ifTrue: [
            recoveredBlock48Local1 := recoveredBlock48Stack1.
            recoveredBlock48PC := 97.
        ].
        recoveredBlock48Step = 97 ifTrue: [
            recoveredBlock48Stack1 := nil.
            recoveredBlock48PC := 98.
        ].
        recoveredBlock48Step = 98 ifTrue: [
            recoveredBlock48Stack2 := recoveredBlock48Local1.
            recoveredBlock48PC := 99.
        ].
        recoveredBlock48Step = 99 ifTrue: [
            (recoveredBlock48Stack2 == nil) ifTrue: [recoveredBlock48PC := 118] ifFalse: [recoveredBlock48PC := 102].
        ].
        recoveredBlock48Step = 102 ifTrue: [
            recoveredBlock48PC := 103.
        ].
        recoveredBlock48Step = 103 ifTrue: [
            recoveredBlock48Stack1 := recoveredArg1.
            recoveredBlock48PC := 106.
        ].
        recoveredBlock48Step = 106 ifTrue: [
            recoveredBlock48Stack2 := 'Deleting external code storage for project: '.
            recoveredBlock48PC := 108.
        ].
        recoveredBlock48Step = 108 ifTrue: [
            recoveredBlock48Stack3 := recoveredBlock48Local1.
            recoveredBlock48PC := 109.
        ].
        recoveredBlock48Step = 109 ifTrue: [
            recoveredBlock48Stack3 := (recoveredBlock48Stack3) label.
            recoveredBlock48PC := 111.
        ].
        recoveredBlock48Step = 111 ifTrue: [
            recoveredBlock48Stack2 := (recoveredBlock48Stack2) , (recoveredBlock48Stack3).
            recoveredBlock48PC := 113.
        ].
        recoveredBlock48Step = 113 ifTrue: [
            (recoveredBlock48Stack1) messageString: (recoveredBlock48Stack2).
            recoveredBlock48PC := 115.
        ].
        recoveredBlock48Step = 115 ifTrue: [
            recoveredBlock48Stack1 := recoveredBlock48Local1.
            recoveredBlock48PC := 116.
        ].
        recoveredBlock48Step = 116 ifTrue: [
            recoveredBlock48Stack1 := (recoveredBlock48Stack1) deleteExternalCodeContainers.
            recoveredBlock48PC := 118.
        ].
        recoveredBlock48Step = 118 ifTrue: [
            recoveredBlock48Result := recoveredBlock48Stack1.
            recoveredBlock48Done := true.
        ].
    ].
    recoveredBlock48Result
].
    (recoveredValue9) doWithIndex: (recoveredValue10).
    recoveredValue11 := SGWorkspaceCache.
    (recoveredValue11) resetCaches.
    ^self
! !

"ASDBase.ic method 0x20489004; bytecode file offset 0xd85918"
!SGMainCtrl methodsFor: 'recovered'!
touchAllItems
    | recoveredLocal1 recoveredLocal2 recoveredValue0 |
    recoveredLocal1 := false.
    recoveredValue0 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 recoveredBlock8Value4 recoveredBlock8Value5 recoveredBlock8Value6 recoveredBlock8Value7 recoveredBlock8Value8 recoveredBlock8Value9 recoveredBlock8Value10 recoveredBlock8Value11 recoveredBlock8Value12 recoveredBlock8Value13 recoveredBlock8Value14 recoveredBlock8Value15 |
    recoveredBlock8Value0 := Set.
    recoveredBlock8Value1 := (recoveredBlock8Value0) new.
    recoveredLocal2 := recoveredBlock8Value1.
    recoveredBlock8Value2 := recoveredLocal2.
    recoveredBlock8Value3 := (self) databaseAccess.
    recoveredBlock8Value4 := ASDCodeContainerHandle.
    recoveredBlock8Value5 := (recoveredBlock8Value3) readFirstVersionId: (recoveredBlock8Value4).
    (recoveredBlock8Value2) addAll: (recoveredBlock8Value5).
    recoveredBlock8Value6 := SGCodeContainerExternal.
    recoveredBlock8Value7 := (recoveredBlock8Value6) withAllSubclasses.
    recoveredBlock8Value8 := ASDSnippetHandle.
    recoveredBlock8Value9 := (recoveredBlock8Value8) withAllSubclasses.
    recoveredBlock8Value10 := (recoveredBlock8Value7) , (recoveredBlock8Value9).
    recoveredBlock8Value11 := [:recoveredBlock8Block41Arg1 | 
    | recoveredBlock8Block41Value0 recoveredBlock8Block41Value1 recoveredBlock8Block41Value2 recoveredBlock8Block41Value3 recoveredBlock8Block41Value4 |
    recoveredBlock8Block41Value0 := recoveredLocal2.
    recoveredBlock8Block41Value1 := (self) databaseAccess.
    recoveredBlock8Block41Value2 := recoveredBlock8Block41Arg1.
    recoveredBlock8Block41Value3 := (recoveredBlock8Block41Value1) readClassKeys: (recoveredBlock8Block41Value2).
    recoveredBlock8Block41Value4 := (recoveredBlock8Block41Value0) addAll: (recoveredBlock8Block41Value3).
    recoveredBlock8Block41Value4
].
    (recoveredBlock8Value10) do: (recoveredBlock8Value11).
    recoveredBlock8Value12 := recoveredLocal2.
    recoveredBlock8Value13 := (recoveredBlock8Value12) asArray.
    recoveredBlock8Value14 := [:recoveredBlock8Block66Arg1 :recoveredBlock8Block66Arg2 | 
    | recoveredBlock8Block66Local1 recoveredBlock8Block66Stack0 recoveredBlock8Block66Stack1 recoveredBlock8Block66Stack2 recoveredBlock8Block66Stack3 recoveredBlock8Block66Stack4 recoveredBlock8Block66PC recoveredBlock8Block66Step recoveredBlock8Block66Done recoveredBlock8Block66Result |
    recoveredBlock8Block66Stack0 := nil.
    recoveredBlock8Block66PC := 72.
    recoveredBlock8Block66Done := false.
    [recoveredBlock8Block66Done not] whileTrue: [
        recoveredBlock8Block66Step := recoveredBlock8Block66PC.
        recoveredBlock8Block66Step = 72 ifTrue: [
            recoveredBlock8Block66Stack1 := recoveredBlock8Arg1.
            recoveredBlock8Block66PC := 75.
        ].
        recoveredBlock8Block66Step = 75 ifTrue: [
            recoveredBlock8Block66Stack1 := (recoveredBlock8Block66Stack1) cancelled.
            recoveredBlock8Block66PC := 77.
        ].
        recoveredBlock8Block66Step = 77 ifTrue: [
            (recoveredBlock8Block66Stack1) ifTrue: [recoveredBlock8Block66PC := 80] ifFalse: [recoveredBlock8Block66PC := 88].
        ].
        recoveredBlock8Block66Step = 80 ifTrue: [
            recoveredBlock8Block66Stack1 := true.
            recoveredBlock8Block66PC := 81.
        ].
        recoveredBlock8Block66Step = 81 ifTrue: [
            recoveredBlock8Block66Stack2 := recoveredBlock8Block66Stack1.
            recoveredBlock8Block66PC := 82.
        ].
        recoveredBlock8Block66Step = 82 ifTrue: [
            recoveredLocal1 := recoveredBlock8Block66Stack2.
            recoveredBlock8Block66PC := 85.
        ].
        recoveredBlock8Block66Step = 85 ifTrue: [
            recoveredBlock8Block66PC := 118.
        ].
        recoveredBlock8Block66Step = 88 ifTrue: [
            recoveredBlock8Block66Stack1 := recoveredBlock8Arg1.
            recoveredBlock8Block66PC := 91.
        ].
        recoveredBlock8Block66Step = 91 ifTrue: [
            recoveredBlock8Block66Stack2 := recoveredBlock8Block66Arg2.
            recoveredBlock8Block66PC := 92.
        ].
        recoveredBlock8Block66Step = 92 ifTrue: [
            recoveredBlock8Block66Stack3 := recoveredLocal2.
            recoveredBlock8Block66PC := 95.
        ].
        recoveredBlock8Block66Step = 95 ifTrue: [
            recoveredBlock8Block66Stack3 := (recoveredBlock8Block66Stack3) size.
            recoveredBlock8Block66PC := 97.
        ].
        recoveredBlock8Block66Step = 97 ifTrue: [
            recoveredBlock8Block66Stack2 := (recoveredBlock8Block66Stack2) / (recoveredBlock8Block66Stack3).
            recoveredBlock8Block66PC := 99.
        ].
        recoveredBlock8Block66Step = 99 ifTrue: [
            (recoveredBlock8Block66Stack1) fractionComplete: (recoveredBlock8Block66Stack2).
            recoveredBlock8Block66PC := 101.
        ].
        recoveredBlock8Block66Step = 101 ifTrue: [
            recoveredBlock8Block66Stack1 := recoveredBlock8Block66Arg1.
            recoveredBlock8Block66PC := 102.
        ].
        recoveredBlock8Block66Step = 102 ifTrue: [
            (recoveredBlock8Block66Stack1) setToInvalidCode.
            recoveredBlock8Block66PC := 104.
        ].
        recoveredBlock8Block66Step = 104 ifTrue: [
            recoveredBlock8Block66Stack1 := nil.
            recoveredBlock8Block66PC := 105.
        ].
        recoveredBlock8Block66Step = 105 ifTrue: [
            recoveredBlock8Block66Stack2 := recoveredBlock8Block66Arg1.
            recoveredBlock8Block66PC := 106.
        ].
        recoveredBlock8Block66Step = 106 ifTrue: [
            recoveredBlock8Block66Stack2 := (recoveredBlock8Block66Stack2) className.
            recoveredBlock8Block66PC := 108.
        ].
        recoveredBlock8Block66Step = 108 ifTrue: [
            recoveredBlock8Block66Stack3 := 'SGCodeContainerExternal'.
            recoveredBlock8Block66PC := 110.
        ].
        recoveredBlock8Block66Step = 110 ifTrue: [
            recoveredBlock8Block66Stack2 := (recoveredBlock8Block66Stack2) = (recoveredBlock8Block66Stack3).
            recoveredBlock8Block66PC := 111.
        ].
        recoveredBlock8Block66Step = 111 ifTrue: [
            (recoveredBlock8Block66Stack2) ifTrue: [recoveredBlock8Block66PC := 114] ifFalse: [recoveredBlock8Block66PC := 118].
        ].
        recoveredBlock8Block66Step = 114 ifTrue: [
            recoveredBlock8Block66PC := 115.
        ].
        recoveredBlock8Block66Step = 115 ifTrue: [
            recoveredBlock8Block66Stack1 := recoveredBlock8Block66Arg1.
            recoveredBlock8Block66PC := 116.
        ].
        recoveredBlock8Block66Step = 116 ifTrue: [
            recoveredBlock8Block66Stack1 := (recoveredBlock8Block66Stack1) setToBeCompiled.
            recoveredBlock8Block66PC := 118.
        ].
        recoveredBlock8Block66Step = 118 ifTrue: [
            recoveredBlock8Block66Result := recoveredBlock8Block66Stack1.
            recoveredBlock8Block66Done := true.
        ].
    ].
    recoveredBlock8Block66Result
].
    recoveredBlock8Value15 := (recoveredBlock8Value13) doWithIndex: (recoveredBlock8Value14).
    recoveredBlock8Value15
].
    (self) executeLong: (recoveredValue0) message: ('Touch Sources...') showProgress: (true).
    ^self
! !

"ASDBase.ic method 0x20496104; bytecode file offset 0xd92a24"
!SGMainCtrl methodsFor: 'recovered'!
repairExternalCCodeFlagsProgressDialog: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredLocal1 := false.
    recoveredValue0 := Set.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := recoveredLocal2.
    recoveredValue3 := (self) databaseAccess.
    recoveredValue4 := SGCodeContainerExternal.
    recoveredValue5 := (recoveredValue3) readClassKeys: (recoveredValue4).
    (recoveredValue2) addAll: (recoveredValue5).
    recoveredValue6 := recoveredLocal2.
    recoveredValue7 := (recoveredValue6) asArray.
    recoveredValue8 := [:recoveredBlock30Arg1 :recoveredBlock30Arg2 | 
    | recoveredBlock30Local1 recoveredBlock30Stack0 recoveredBlock30Stack1 recoveredBlock30Stack2 recoveredBlock30Stack3 recoveredBlock30Stack4 recoveredBlock30PC recoveredBlock30Step recoveredBlock30Done recoveredBlock30Result |
    recoveredBlock30Stack0 := self.
    recoveredBlock30PC := 36.
    recoveredBlock30Done := false.
    [recoveredBlock30Done not] whileTrue: [
        recoveredBlock30Step := recoveredBlock30PC.
        recoveredBlock30Step = 36 ifTrue: [
            recoveredBlock30Stack1 := recoveredArg1.
            recoveredBlock30PC := 39.
        ].
        recoveredBlock30Step = 39 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) cancelled.
            recoveredBlock30PC := 41.
        ].
        recoveredBlock30Step = 41 ifTrue: [
            (recoveredBlock30Stack1) ifTrue: [recoveredBlock30PC := 44] ifFalse: [recoveredBlock30PC := 52].
        ].
        recoveredBlock30Step = 44 ifTrue: [
            recoveredBlock30Stack1 := true.
            recoveredBlock30PC := 45.
        ].
        recoveredBlock30Step = 45 ifTrue: [
            recoveredBlock30Stack2 := recoveredBlock30Stack1.
            recoveredBlock30PC := 46.
        ].
        recoveredBlock30Step = 46 ifTrue: [
            recoveredLocal1 := recoveredBlock30Stack2.
            recoveredBlock30PC := 49.
        ].
        recoveredBlock30Step = 49 ifTrue: [
            recoveredBlock30PC := 130.
        ].
        recoveredBlock30Step = 52 ifTrue: [
            recoveredBlock30Stack1 := recoveredArg1.
            recoveredBlock30PC := 55.
        ].
        recoveredBlock30Step = 55 ifTrue: [
            recoveredBlock30Stack2 := recoveredBlock30Arg2.
            recoveredBlock30PC := 56.
        ].
        recoveredBlock30Step = 56 ifTrue: [
            recoveredBlock30Stack3 := recoveredLocal2.
            recoveredBlock30PC := 59.
        ].
        recoveredBlock30Step = 59 ifTrue: [
            recoveredBlock30Stack3 := (recoveredBlock30Stack3) size.
            recoveredBlock30PC := 61.
        ].
        recoveredBlock30Step = 61 ifTrue: [
            recoveredBlock30Stack2 := (recoveredBlock30Stack2) / (recoveredBlock30Stack3).
            recoveredBlock30PC := 63.
        ].
        recoveredBlock30Step = 63 ifTrue: [
            (recoveredBlock30Stack1) fractionComplete: (recoveredBlock30Stack2).
            recoveredBlock30PC := 65.
        ].
        recoveredBlock30Step = 65 ifTrue: [
            recoveredBlock30Stack1 := nil.
            recoveredBlock30PC := 66.
        ].
        recoveredBlock30Step = 66 ifTrue: [
            recoveredBlock30Stack2 := recoveredBlock30Arg1.
            recoveredBlock30PC := 67.
        ].
        recoveredBlock30Step = 67 ifTrue: [
            recoveredBlock30Stack2 := (recoveredBlock30Stack2) hasExternalCode.
            recoveredBlock30PC := 69.
        ].
        recoveredBlock30Step = 69 ifTrue: [
            (recoveredBlock30Stack2) ifTrue: [recoveredBlock30PC := 130] ifFalse: [recoveredBlock30PC := 72].
        ].
        recoveredBlock30Step = 72 ifTrue: [
            recoveredBlock30PC := 73.
        ].
        recoveredBlock30Step = 73 ifTrue: [
            recoveredBlock30Stack1 := recoveredBlock30Arg1.
            recoveredBlock30PC := 74.
        ].
        recoveredBlock30Step = 74 ifTrue: [
            recoveredBlock30Stack2 := [:block28103ad4Arg1 | 
    nil
].
            recoveredBlock30PC := 76.
        ].
        recoveredBlock30Step = 76 ifTrue: [
            recoveredBlock30PC := 82.
        ].
        recoveredBlock30Step = 82 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) getObjectIfUndefined: (recoveredBlock30Stack2).
            recoveredBlock30PC := 84.
        ].
        recoveredBlock30Step = 84 ifTrue: [
            recoveredBlock30Stack2 := [:block28103af8Arg1 | 
    | block28103af8Stack0 block28103af8Stack1 block28103af8Stack2 block28103af8Stack3 block28103af8PC block28103af8Step block28103af8Done block28103af8Result |
    block28103af8Stack0 := self.
    block28103af8PC := 4.
    block28103af8Done := false.
    [block28103af8Done not] whileTrue: [
        block28103af8Step := block28103af8PC.
        block28103af8Step = 4 ifTrue: [
            block28103af8Stack1 := nil.
            block28103af8PC := 5.
        ].
        block28103af8Step = 5 ifTrue: [
            block28103af8Stack2 := block28103af8Arg1.
            block28103af8PC := 6.
        ].
        block28103af8Step = 6 ifTrue: [
            block28103af8Stack2 := (block28103af8Stack2) cSource.
            block28103af8PC := 8.
        ].
        block28103af8Step = 8 ifTrue: [
            block28103af8Stack2 := (block28103af8Stack2) value.
            block28103af8PC := 10.
        ].
        block28103af8Step = 10 ifTrue: [
            block28103af8Stack2 := (block28103af8Stack2) notEmpty.
            block28103af8PC := 12.
        ].
        block28103af8Step = 12 ifTrue: [
            (block28103af8Stack2) ifTrue: [block28103af8PC := 26] ifFalse: [block28103af8PC := 16].
        ].
        block28103af8Step = 16 ifTrue: [
            block28103af8Stack2 := block28103af8Arg1.
            block28103af8PC := 17.
        ].
        block28103af8Step = 17 ifTrue: [
            block28103af8Stack2 := (block28103af8Stack2) hSource.
            block28103af8PC := 19.
        ].
        block28103af8Step = 19 ifTrue: [
            block28103af8Stack2 := (block28103af8Stack2) value.
            block28103af8PC := 21.
        ].
        block28103af8Step = 21 ifTrue: [
            block28103af8Stack2 := (block28103af8Stack2) notEmpty.
            block28103af8PC := 23.
        ].
        block28103af8Step = 23 ifTrue: [
            (block28103af8Stack2) ifTrue: [block28103af8PC := 26] ifFalse: [block28103af8PC := 41].
        ].
        block28103af8Step = 26 ifTrue: [
            block28103af8PC := 27.
        ].
        block28103af8Step = 27 ifTrue: [
            block28103af8Stack1 := block28103af8Arg1.
            block28103af8PC := 28.
        ].
        block28103af8Step = 28 ifTrue: [
            block28103af8Stack2 := block28103af8Stack1.
            block28103af8PC := 29.
        ].
        block28103af8Step = 29 ifTrue: [
            (block28103af8Stack2) setExternalCode.
            block28103af8PC := 31.
        ].
        block28103af8Step = 31 ifTrue: [
            (block28103af8Stack1) setExternalCSource.
            block28103af8PC := 33.
        ].
        block28103af8Step = 33 ifTrue: [
            block28103af8Stack1 := SGMonitorStreamDummy.
            block28103af8PC := 35.
        ].
        block28103af8Step = 35 ifTrue: [
            block28103af8Stack1 := (block28103af8Stack1) create.
            block28103af8PC := 37.
        ].
        block28103af8Step = 37 ifTrue: [
            block28103af8Stack2 := 'repaired external code container...'.
            block28103af8PC := 39.
        ].
        block28103af8Step = 39 ifTrue: [
            block28103af8Stack1 := (block28103af8Stack1) addText: (block28103af8Stack2).
            block28103af8PC := 41.
        ].
        block28103af8Step = 41 ifTrue: [
            block28103af8Result := block28103af8Stack1.
            block28103af8Done := true.
        ].
    ].
    block28103af8Result
].
            recoveredBlock30PC := 86.
        ].
        recoveredBlock30Step = 86 ifTrue: [
            recoveredBlock30PC := 128.
        ].
        recoveredBlock30Step = 128 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) ifNotNil: (recoveredBlock30Stack2).
            recoveredBlock30PC := 130.
        ].
        recoveredBlock30Step = 130 ifTrue: [
            recoveredBlock30Result := recoveredBlock30Stack1.
            recoveredBlock30Done := true.
        ].
    ].
    recoveredBlock30Result
].
    (recoveredValue7) doWithIndex: (recoveredValue8).
    ^self
! !

"ASDBase.ic method 0x204bd604; bytecode file offset 0xdb9f18"
!SGMainCtrl methodsFor: 'recovered'!
checkGTipSectionFromFile: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := WinProfile.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := (recoveredValue1) initialize.
    recoveredLocal3 := recoveredValue2.
    recoveredValue3 := LookupTable.
    recoveredValue4 := (recoveredValue3) new.
    recoveredLocal2 := recoveredValue4.
    recoveredLocal1 := 'Target path <%1> setting for the target <%2>
in the ini file <%3> is not correct since the path does not exist.

Either the setting was done in a former ASCET installation or the target was not
correct deinstalled. The problem could be easy fixed by installing the target again.

If you don''t want to install the target, ASCET could remove this entry
in the ini file <%3> and this message will not apear any more.

Press Yes to remove the entry for the target <%2> or No to keep this setting.'.
    recoveredValue5 := recoveredLocal3.
    recoveredValue6 := (self) gTipSectionName.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue5) readSection: (recoveredValue6) from: (recoveredValue7).
    recoveredValue9 := [:recoveredBlock33Arg1 | 
    | recoveredBlock33Local1 recoveredBlock33Stack0 recoveredBlock33Stack1 recoveredBlock33Stack2 recoveredBlock33Stack3 recoveredBlock33Stack4 recoveredBlock33PC recoveredBlock33Step recoveredBlock33Done recoveredBlock33Result |
    recoveredBlock33Stack0 := self.
    recoveredBlock33PC := 40.
    recoveredBlock33Done := false.
    [recoveredBlock33Done not] whileTrue: [
        recoveredBlock33Step := recoveredBlock33PC.
        recoveredBlock33Step = 40 ifTrue: [
            recoveredBlock33Stack1 := recoveredBlock33Arg1.
            recoveredBlock33PC := 41.
        ].
        recoveredBlock33Step = 41 ifTrue: [
            recoveredBlock33Stack2 := $=.
            recoveredBlock33PC := 44.
        ].
        recoveredBlock33Step = 44 ifTrue: [
            recoveredBlock33Stack1 := (recoveredBlock33Stack1) allSubStrings: (recoveredBlock33Stack2).
            recoveredBlock33PC := 46.
        ].
        recoveredBlock33Step = 46 ifTrue: [
            recoveredBlock33Local1 := recoveredBlock33Stack1.
            recoveredBlock33PC := 47.
        ].
        recoveredBlock33Step = 47 ifTrue: [
            recoveredBlock33Stack1 := nil.
            recoveredBlock33PC := 48.
        ].
        recoveredBlock33Step = 48 ifTrue: [
            recoveredBlock33Stack2 := recoveredBlock33Local1.
            recoveredBlock33PC := 49.
        ].
        recoveredBlock33Step = 49 ifTrue: [
            recoveredBlock33Stack2 := (recoveredBlock33Stack2) size.
            recoveredBlock33PC := 51.
        ].
        recoveredBlock33Step = 51 ifTrue: [
            recoveredBlock33Stack3 := 2.
            recoveredBlock33PC := 53.
        ].
        recoveredBlock33Step = 53 ifTrue: [
            (recoveredBlock33Stack2 ~~ recoveredBlock33Stack3) ifTrue: [recoveredBlock33PC := 72] ifFalse: [recoveredBlock33PC := 56].
        ].
        recoveredBlock33Step = 56 ifTrue: [
            recoveredBlock33PC := 57.
        ].
        recoveredBlock33Step = 57 ifTrue: [
            recoveredBlock33Stack1 := recoveredLocal2.
            recoveredBlock33PC := 60.
        ].
        recoveredBlock33Step = 60 ifTrue: [
            recoveredBlock33Stack2 := recoveredBlock33Local1.
            recoveredBlock33PC := 61.
        ].
        recoveredBlock33Step = 61 ifTrue: [
            recoveredBlock33Stack2 := (recoveredBlock33Stack2) first.
            recoveredBlock33PC := 63.
        ].
        recoveredBlock33Step = 63 ifTrue: [
            recoveredBlock33Stack2 := (recoveredBlock33Stack2) trimBlanks.
            recoveredBlock33PC := 65.
        ].
        recoveredBlock33Step = 65 ifTrue: [
            recoveredBlock33Stack3 := recoveredBlock33Local1.
            recoveredBlock33PC := 66.
        ].
        recoveredBlock33Step = 66 ifTrue: [
            recoveredBlock33Stack3 := (recoveredBlock33Stack3) last.
            recoveredBlock33PC := 68.
        ].
        recoveredBlock33Step = 68 ifTrue: [
            recoveredBlock33Stack3 := (recoveredBlock33Stack3) trimBlanks.
            recoveredBlock33PC := 70.
        ].
        recoveredBlock33Step = 70 ifTrue: [
            recoveredBlock33Stack1 := (recoveredBlock33Stack1) at: (recoveredBlock33Stack2) put: (recoveredBlock33Stack3).
            recoveredBlock33PC := 72.
        ].
        recoveredBlock33Step = 72 ifTrue: [
            recoveredBlock33Result := recoveredBlock33Stack1.
            recoveredBlock33Done := true.
        ].
    ].
    recoveredBlock33Result
].
    (recoveredValue8) do: (recoveredValue9).
    recoveredValue10 := recoveredLocal2.
    recoveredValue11 := [:recoveredBlock78Arg1 :recoveredBlock78Arg2 | 
    | recoveredBlock78Local1 recoveredBlock78Stack0 recoveredBlock78Stack1 recoveredBlock78Stack2 recoveredBlock78Stack3 recoveredBlock78Stack4 recoveredBlock78Stack5 recoveredBlock78Stack6 recoveredBlock78Stack7 recoveredBlock78PC recoveredBlock78Step recoveredBlock78Done recoveredBlock78Result |
    recoveredBlock78Stack0 := self.
    recoveredBlock78PC := 84.
    recoveredBlock78Done := false.
    [recoveredBlock78Done not] whileTrue: [
        recoveredBlock78Step := recoveredBlock78PC.
        recoveredBlock78Step = 84 ifTrue: [
            recoveredBlock78Stack1 := nil.
            recoveredBlock78PC := 85.
        ].
        recoveredBlock78Step = 85 ifTrue: [
            recoveredBlock78Stack2 := CfsStat.
            recoveredBlock78PC := 87.
        ].
        recoveredBlock78Step = 87 ifTrue: [
            recoveredBlock78Stack3 := recoveredBlock78Arg2.
            recoveredBlock78PC := 88.
        ].
        recoveredBlock78Step = 88 ifTrue: [
            recoveredBlock78Stack2 := (recoveredBlock78Stack2) exists: (recoveredBlock78Stack3).
            recoveredBlock78PC := 90.
        ].
        recoveredBlock78Step = 90 ifTrue: [
            (recoveredBlock78Stack2) ifTrue: [recoveredBlock78PC := 144] ifFalse: [recoveredBlock78PC := 94].
        ].
        recoveredBlock78Step = 94 ifTrue: [
            recoveredBlock78PC := 95.
        ].
        recoveredBlock78Step = 95 ifTrue: [
            recoveredBlock78Stack1 := RBUserQuestion.
            recoveredBlock78PC := 97.
        ].
        recoveredBlock78Step = 97 ifTrue: [
            recoveredBlock78Stack2 := recoveredLocal1.
            recoveredBlock78PC := 100.
        ].
        recoveredBlock78Step = 100 ifTrue: [
            recoveredBlock78Stack3 := Array.
            recoveredBlock78PC := 102.
        ].
        recoveredBlock78Step = 102 ifTrue: [
            recoveredBlock78Stack4 := recoveredBlock78Arg2.
            recoveredBlock78PC := 103.
        ].
        recoveredBlock78Step = 103 ifTrue: [
            recoveredBlock78Stack5 := recoveredBlock78Arg1.
            recoveredBlock78PC := 104.
        ].
        recoveredBlock78Step = 104 ifTrue: [
            recoveredBlock78Stack6 := recoveredArg1.
            recoveredBlock78PC := 107.
        ].
        recoveredBlock78Step = 107 ifTrue: [
            recoveredBlock78Stack3 := (recoveredBlock78Stack3) with: (recoveredBlock78Stack4) with: (recoveredBlock78Stack5) with: (recoveredBlock78Stack6).
            recoveredBlock78PC := 110.
        ].
        recoveredBlock78Step = 110 ifTrue: [
            recoveredBlock78Stack1 := (recoveredBlock78Stack1) confirm: (recoveredBlock78Stack2) with: (recoveredBlock78Stack3).
            recoveredBlock78PC := 112.
        ].
        recoveredBlock78Step = 112 ifTrue: [
            recoveredBlock78Stack2 := recoveredBlock78Stack1.
            recoveredBlock78PC := 113.
        ].
        recoveredBlock78Step = 113 ifTrue: [
            (recoveredBlock78Stack2) yesNo.
            recoveredBlock78PC := 115.
        ].
        recoveredBlock78Step = 115 ifTrue: [
            recoveredBlock78Stack1 := (recoveredBlock78Stack1) prompt.
            recoveredBlock78PC := 117.
        ].
        recoveredBlock78Step = 117 ifTrue: [
            recoveredBlock78Local1 := recoveredBlock78Stack1.
            recoveredBlock78PC := 118.
        ].
        recoveredBlock78Step = 118 ifTrue: [
            recoveredBlock78Stack1 := nil.
            recoveredBlock78PC := 119.
        ].
        recoveredBlock78Step = 119 ifTrue: [
            recoveredBlock78Stack2 := recoveredBlock78Local1.
            recoveredBlock78PC := 120.
        ].
        recoveredBlock78Step = 120 ifTrue: [
            (recoveredBlock78Stack2 == nil) ifTrue: [recoveredBlock78PC := 142] ifFalse: [recoveredBlock78PC := 124].
        ].
        recoveredBlock78Step = 124 ifTrue: [
            recoveredBlock78Stack2 := recoveredBlock78Local1.
            recoveredBlock78PC := 125.
        ].
        recoveredBlock78Step = 125 ifTrue: [
            (recoveredBlock78Stack2) ifTrue: [recoveredBlock78PC := 128] ifFalse: [recoveredBlock78PC := 142].
        ].
        recoveredBlock78Step = 128 ifTrue: [
            recoveredBlock78PC := 129.
        ].
        recoveredBlock78Step = 129 ifTrue: [
            recoveredBlock78Stack1 := recoveredLocal3.
            recoveredBlock78PC := 132.
        ].
        recoveredBlock78Step = 132 ifTrue: [
            recoveredBlock78Stack2 := recoveredBlock78Arg1.
            recoveredBlock78PC := 133.
        ].
        recoveredBlock78Step = 133 ifTrue: [
            recoveredBlock78Stack3 := self.
            recoveredBlock78PC := 134.
        ].
        recoveredBlock78Step = 134 ifTrue: [
            recoveredBlock78Stack3 := (recoveredBlock78Stack3) gTipSectionName.
            recoveredBlock78PC := 136.
        ].
        recoveredBlock78Step = 136 ifTrue: [
            recoveredBlock78Stack4 := recoveredArg1.
            recoveredBlock78PC := 139.
        ].
        recoveredBlock78Step = 139 ifTrue: [
            recoveredBlock78Stack1 := (recoveredBlock78Stack1) deleteEntry: (recoveredBlock78Stack2) in: (recoveredBlock78Stack3) from: (recoveredBlock78Stack4).
            recoveredBlock78PC := 142.
        ].
        recoveredBlock78Step = 142 ifTrue: [
            recoveredBlock78Stack2 := nil.
            recoveredBlock78PC := 143.
        ].
        recoveredBlock78Step = 143 ifTrue: [
            recoveredBlock78Local1 := recoveredBlock78Stack2.
            recoveredBlock78PC := 144.
        ].
        recoveredBlock78Step = 144 ifTrue: [
            recoveredBlock78Result := recoveredBlock78Stack1.
            recoveredBlock78Done := true.
        ].
    ].
    recoveredBlock78Result
].
    (recoveredValue10) keysAndValuesDo: (recoveredValue11).
    ^self
! !

"ASDBase.ic method 0x204f5afc; bytecode file offset 0xdf240c"
!SGMainCtrl methodsFor: 'recovered'!
editValueForDependentElements: recoveredArg1 configController: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
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
            recoveredStack2 := 1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := RBUserInfo.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := 'Multiple select is not supported with dependent parameters/variables'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorMessage: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) prompt.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := [:recoveredBlock32Arg1 | 
    ^nil
].
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) sgClassIfUndefined: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) selection.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRBDBUndefinedObject.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) isUniqueDataConfigured.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) relatedClassConfig.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := SGDependencyParamDialog.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack3 := (recoveredStack3) dependentParametersFor: (recoveredStack4).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := (recoveredStack1) create: (recoveredStack2) table: (recoveredStack3).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := (recoveredStack1) prompt.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 170] ifFalse: [recoveredPC := 110].
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := 'Call_71466'.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := (recoveredStack1) dependentParametersFor: (recoveredStack2).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack2 := [:recoveredBlock124Arg1 :recoveredBlock124Arg2 | 
    | recoveredBlock124Stack0 recoveredBlock124Stack1 recoveredBlock124Stack2 recoveredBlock124Stack3 recoveredBlock124Stack4 recoveredBlock124Stack5 recoveredBlock124PC recoveredBlock124Step recoveredBlock124Done recoveredBlock124Result |
    recoveredBlock124Stack0 := self.
    recoveredBlock124PC := 130.
    recoveredBlock124Done := false.
    [recoveredBlock124Done not] whileTrue: [
        recoveredBlock124Step := recoveredBlock124PC.
        recoveredBlock124Step = 130 ifTrue: [
            recoveredBlock124Stack1 := nil.
            recoveredBlock124PC := 131.
        ].
        recoveredBlock124Step = 131 ifTrue: [
            recoveredBlock124Stack2 := recoveredLocal1.
            recoveredBlock124PC := 134.
        ].
        recoveredBlock124Step = 134 ifTrue: [
            recoveredBlock124Stack3 := recoveredBlock124Arg1.
            recoveredBlock124PC := 135.
        ].
        recoveredBlock124Step = 135 ifTrue: [
            recoveredBlock124Stack4 := [].
            recoveredBlock124PC := 137.
        ].
        recoveredBlock124Step = 137 ifTrue: [
            recoveredBlock124Stack2 := (recoveredBlock124Stack2) at: (recoveredBlock124Stack3) ifAbsent: (recoveredBlock124Stack4).
            recoveredBlock124PC := 139.
        ].
        recoveredBlock124Step = 139 ifTrue: [
            recoveredBlock124Stack3 := recoveredBlock124Arg2.
            recoveredBlock124PC := 140.
        ].
        recoveredBlock124Step = 140 ifTrue: [
            recoveredBlock124Stack2 := (recoveredBlock124Stack2) = (recoveredBlock124Stack3).
            recoveredBlock124PC := 141.
        ].
        recoveredBlock124Step = 141 ifTrue: [
            (recoveredBlock124Stack2) ifTrue: [recoveredBlock124PC := 167] ifFalse: [recoveredBlock124PC := 144].
        ].
        recoveredBlock124Step = 144 ifTrue: [
            recoveredBlock124PC := 145.
        ].
        recoveredBlock124Step = 145 ifTrue: [
            recoveredBlock124Stack1 := recoveredLocal3.
            recoveredBlock124PC := 148.
        ].
        recoveredBlock124Step = 148 ifTrue: [
            recoveredBlock124Stack1 := (recoveredBlock124Stack1) dependentParameters.
            recoveredBlock124PC := 150.
        ].
        recoveredBlock124Step = 150 ifTrue: [
            recoveredBlock124Stack2 := recoveredLocal2.
            recoveredBlock124PC := 153.
        ].
        recoveredBlock124Step = 153 ifTrue: [
            recoveredBlock124Stack2 := (recoveredBlock124Stack2) aliasName.
            recoveredBlock124PC := 155.
        ].
        recoveredBlock124Step = 155 ifTrue: [
            recoveredBlock124Stack3 := recoveredLocal1.
            recoveredBlock124PC := 158.
        ].
        recoveredBlock124Step = 158 ifTrue: [
            (recoveredBlock124Stack1) at: (recoveredBlock124Stack2) put: (recoveredBlock124Stack3).
            recoveredBlock124PC := 160.
        ].
        recoveredBlock124Step = 160 ifTrue: [
            recoveredBlock124Stack1 := recoveredLocal3.
            recoveredBlock124PC := 163.
        ].
        recoveredBlock124Step = 163 ifTrue: [
            (recoveredBlock124Stack1) modified.
            recoveredBlock124PC := 165.
        ].
        recoveredBlock124Step = 165 ifTrue: [
            recoveredBlock124Stack1 := self.
            recoveredBlock124PC := 166.
        ].
        recoveredBlock124Step = 166 ifTrue: [
            ^recoveredBlock124Stack1
        ].
        recoveredBlock124Step = 167 ifTrue: [
            recoveredBlock124Result := recoveredBlock124Stack1.
            recoveredBlock124Done := true.
        ].
    ].
    recoveredBlock124Result
].
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            (recoveredStack1) keysAndValuesDo: (recoveredStack2).
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20523a5c; bytecode file offset 0xe20370"
!SGMainCtrl methodsFor: 'recovered'!
editValueForStandardElements: recoveredArg1 configController: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := [:recoveredBlock12Arg1 | 
    ^nil
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) sgClassIfUndefined: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) configForElement: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRBDBUndefinedObject.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) configForElementIsOpenReference: (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := RBUserQuestion.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := 'Data for this element was deleted.\Do you want to select any other data?'.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := (recoveredStack2) withCrs.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) warning: (recoveredStack2).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack2) cancelOk.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) prompt.
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
            recoveredPC := 96.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := RBUserInfo.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := 'This element has no valid data configuration.\Note: If it is a OneD or TwoD table You must assign a distribution first!!'.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := (recoveredStack2) withCrs.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack1) prompt.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack3 := (recoveredStack3) context.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack4 := (recoveredStack4) selectedConfig.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := (recoveredStack0) editValueConfig: (recoveredStack1) element: (recoveredStack2) context: (recoveredStack3) parentValueConfig: (recoveredStack4).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 126] ifFalse: [recoveredPC := 124].
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := 'Shikhar'.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := 'EHI46079'.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedConfig.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack0 := (recoveredStack0) modifiable.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 142] ifFalse: [recoveredPC := 194].
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 152] ifFalse: [recoveredPC := 194].
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := [:recoveredBlock155Arg1 | 
    | recoveredBlock155Local1 recoveredBlock155Stack0 recoveredBlock155Stack1 recoveredBlock155Stack2 recoveredBlock155Stack3 recoveredBlock155Stack4 recoveredBlock155PC recoveredBlock155Step recoveredBlock155Done recoveredBlock155Result |
    recoveredBlock155Stack0 := self.
    recoveredBlock155PC := 162.
    recoveredBlock155Done := false.
    [recoveredBlock155Done not] whileTrue: [
        recoveredBlock155Step := recoveredBlock155PC.
        recoveredBlock155Step = 162 ifTrue: [
            recoveredBlock155Stack1 := recoveredLocal3.
            recoveredBlock155PC := 165.
        ].
        recoveredBlock155Step = 165 ifTrue: [
            recoveredBlock155Stack1 := (recoveredBlock155Stack1) isDbObject.
            recoveredBlock155PC := 167.
        ].
        recoveredBlock155Step = 167 ifTrue: [
            (recoveredBlock155Stack1) ifTrue: [recoveredBlock155PC := 170] ifFalse: [recoveredBlock155PC := 178].
        ].
        recoveredBlock155Step = 170 ifTrue: [
            recoveredBlock155Stack1 := recoveredLocal3.
            recoveredBlock155PC := 173.
        ].
        recoveredBlock155Step = 173 ifTrue: [
            recoveredBlock155Local1 := recoveredBlock155Stack1.
            recoveredBlock155PC := 174.
        ].
        recoveredBlock155Step = 174 ifTrue: [
            recoveredBlock155PC := 184.
        ].
        recoveredBlock155Step = 178 ifTrue: [
            recoveredBlock155Stack1 := recoveredLocal3.
            recoveredBlock155PC := 181.
        ].
        recoveredBlock155Step = 181 ifTrue: [
            recoveredBlock155Stack1 := (recoveredBlock155Stack1) deepCopy.
            recoveredBlock155PC := 183.
        ].
        recoveredBlock155Step = 183 ifTrue: [
            recoveredBlock155Local1 := recoveredBlock155Stack1.
            recoveredBlock155PC := 184.
        ].
        recoveredBlock155Step = 184 ifTrue: [
            recoveredBlock155Stack1 := recoveredArg2.
            recoveredBlock155PC := 187.
        ].
        recoveredBlock155Step = 187 ifTrue: [
            recoveredBlock155Stack2 := recoveredBlock155Local1.
            recoveredBlock155PC := 188.
        ].
        recoveredBlock155Step = 188 ifTrue: [
            recoveredBlock155Stack3 := recoveredBlock155Arg1.
            recoveredBlock155PC := 189.
        ].
        recoveredBlock155Step = 189 ifTrue: [
            recoveredBlock155Stack1 := (recoveredBlock155Stack1) setConfig: (recoveredBlock155Stack2) forElement: (recoveredBlock155Stack3).
            recoveredBlock155PC := 191.
        ].
        recoveredBlock155Step = 191 ifTrue: [
            recoveredBlock155Result := recoveredBlock155Stack1.
            recoveredBlock155Done := true.
        ].
    ].
    recoveredBlock155Result
].
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20533a08; bytecode file offset 0xe3031c"
!SGMainCtrl methodsFor: 'recovered'!
calculateComponentListForOSLogicHandleKeys: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_70031'.
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
            recoveredStack2 := 0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) fractionComplete: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := 'Collecting all projects in the database.'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) messageString: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) databaseAccess.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := SGProject.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) readExactClassKeys: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := AbtHighCapacityLookupTable.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) new: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := [:recoveredBlock65Arg1 | 
    | recoveredBlock65Local1 recoveredBlock65Local2 recoveredBlock65Local3 recoveredBlock65Local4 recoveredBlock65Local5 recoveredBlock65Local6 recoveredBlock65Stack0 recoveredBlock65Stack1 recoveredBlock65Stack2 recoveredBlock65Stack3 recoveredBlock65Stack4 recoveredBlock65PC recoveredBlock65Step recoveredBlock65Done recoveredBlock65Result |
    recoveredBlock65Stack0 := self.
    recoveredBlock65PC := 72.
    recoveredBlock65Done := false.
    [recoveredBlock65Done not] whileTrue: [
        recoveredBlock65Step := recoveredBlock65PC.
        recoveredBlock65Step = 72 ifTrue: [
            recoveredBlock65Stack1 := recoveredArg1.
            recoveredBlock65PC := 75.
        ].
        recoveredBlock65Step = 75 ifTrue: [
            recoveredBlock65Stack1 := (recoveredBlock65Stack1) cancelled.
            recoveredBlock65PC := 77.
        ].
        recoveredBlock65Step = 77 ifTrue: [
            (recoveredBlock65Stack1) ifTrue: [recoveredBlock65PC := 80] ifFalse: [recoveredBlock65PC := 84].
        ].
        recoveredBlock65Step = 80 ifTrue: [
            recoveredBlock65Stack1 := true.
            recoveredBlock65PC := 81.
        ].
        recoveredBlock65Step = 81 ifTrue: [
            recoveredLocal2 := recoveredBlock65Stack1.
            recoveredBlock65PC := 84.
        ].
        recoveredBlock65Step = 84 ifTrue: [
            recoveredBlock65Stack1 := recoveredArg1.
            recoveredBlock65PC := 87.
        ].
        recoveredBlock65Step = 87 ifTrue: [
            recoveredBlock65Stack2 := recoveredLocal1.
            recoveredBlock65PC := 90.
        ].
        recoveredBlock65Step = 90 ifTrue: [
            recoveredBlock65Stack3 := recoveredLocal3.
            recoveredBlock65PC := 93.
        ].
        recoveredBlock65Step = 93 ifTrue: [
            recoveredBlock65Stack2 := (recoveredBlock65Stack2) / (recoveredBlock65Stack3).
            recoveredBlock65PC := 95.
        ].
        recoveredBlock65Step = 95 ifTrue: [
            (recoveredBlock65Stack1) fractionComplete: (recoveredBlock65Stack2).
            recoveredBlock65PC := 97.
        ].
        recoveredBlock65Step = 97 ifTrue: [
            recoveredBlock65Stack1 := recoveredLocal2.
            recoveredBlock65PC := 100.
        ].
        recoveredBlock65Step = 100 ifTrue: [
            (recoveredBlock65Stack1) ifTrue: [recoveredBlock65PC := 179] ifFalse: [recoveredBlock65PC := 104].
        ].
        recoveredBlock65Step = 104 ifTrue: [
            recoveredBlock65Stack1 := recoveredBlock65Arg1.
            recoveredBlock65PC := 106.
        ].
        recoveredBlock65Step = 106 ifTrue: [
            recoveredBlock65Stack2 := [:block2810d6c8Arg1 | 
    nil
].
            recoveredBlock65PC := 108.
        ].
        recoveredBlock65Step = 108 ifTrue: [
            recoveredBlock65PC := 114.
        ].
        recoveredBlock65Step = 114 ifTrue: [
            recoveredBlock65Stack1 := (recoveredBlock65Stack1) getObjectIfUndefined: (recoveredBlock65Stack2).
            recoveredBlock65PC := 116.
        ].
        recoveredBlock65Step = 116 ifTrue: [
            recoveredBlock65Local6 := recoveredBlock65Stack1.
            recoveredBlock65PC := 118.
        ].
        recoveredBlock65Step = 118 ifTrue: [
            recoveredBlock65Stack1 := recoveredBlock65Local6.
            recoveredBlock65PC := 120.
        ].
        recoveredBlock65Step = 120 ifTrue: [
            (recoveredBlock65Stack1 == nil) ifTrue: [recoveredBlock65PC := 179] ifFalse: [recoveredBlock65PC := 124].
        ].
        recoveredBlock65Step = 124 ifTrue: [
            recoveredBlock65Stack1 := recoveredArg1.
            recoveredBlock65PC := 127.
        ].
        recoveredBlock65Step = 127 ifTrue: [
            recoveredBlock65Stack2 := 'Collect OS logic for project: '.
            recoveredBlock65PC := 129.
        ].
        recoveredBlock65Step = 129 ifTrue: [
            recoveredBlock65Stack3 := recoveredBlock65Local6.
            recoveredBlock65PC := 131.
        ].
        recoveredBlock65Step = 131 ifTrue: [
            recoveredBlock65Stack3 := (recoveredBlock65Stack3) label.
            recoveredBlock65PC := 133.
        ].
        recoveredBlock65Step = 133 ifTrue: [
            recoveredBlock65Stack2 := (recoveredBlock65Stack2) , (recoveredBlock65Stack3).
            recoveredBlock65PC := 135.
        ].
        recoveredBlock65Step = 135 ifTrue: [
            (recoveredBlock65Stack1) messageString: (recoveredBlock65Stack2).
            recoveredBlock65PC := 137.
        ].
        recoveredBlock65Step = 137 ifTrue: [
            recoveredBlock65Stack1 := recoveredBlock65Local6.
            recoveredBlock65PC := 139.
        ].
        recoveredBlock65Step = 139 ifTrue: [
            recoveredBlock65Stack1 := (recoveredBlock65Stack1) relatedComponentForCodeContainer.
            recoveredBlock65PC := 141.
        ].
        recoveredBlock65Step = 141 ifTrue: [
            recoveredBlock65Local2 := recoveredBlock65Stack1.
            recoveredBlock65PC := 142.
        ].
        recoveredBlock65Step = 142 ifTrue: [
            recoveredBlock65Stack1 := recoveredBlock65Local2.
            recoveredBlock65PC := 143.
        ].
        recoveredBlock65Step = 143 ifTrue: [
            (recoveredBlock65Stack1 == nil) ifTrue: [recoveredBlock65PC := 168] ifFalse: [recoveredBlock65PC := 146].
        ].
        recoveredBlock65Step = 146 ifTrue: [
            recoveredBlock65Stack1 := recoveredBlock65Local6.
            recoveredBlock65PC := 148.
        ].
        recoveredBlock65Step = 148 ifTrue: [
            recoveredBlock65Stack1 := (recoveredBlock65Stack1) osLogic.
            recoveredBlock65PC := 150.
        ].
        recoveredBlock65Step = 150 ifTrue: [
            (recoveredBlock65Stack1 == nil) ifTrue: [recoveredBlock65PC := 168] ifFalse: [recoveredBlock65PC := 154].
        ].
        recoveredBlock65Step = 154 ifTrue: [
            recoveredBlock65Stack1 := recoveredLocal4.
            recoveredBlock65PC := 157.
        ].
        recoveredBlock65Step = 157 ifTrue: [
            recoveredBlock65Stack2 := recoveredBlock65Local2.
            recoveredBlock65PC := 158.
        ].
        recoveredBlock65Step = 158 ifTrue: [
            recoveredBlock65Stack2 := (recoveredBlock65Stack2) asRBDBReference.
            recoveredBlock65PC := 160.
        ].
        recoveredBlock65Step = 160 ifTrue: [
            recoveredBlock65Stack3 := recoveredBlock65Local6.
            recoveredBlock65PC := 162.
        ].
        recoveredBlock65Step = 162 ifTrue: [
            recoveredBlock65Stack3 := (recoveredBlock65Stack3) osLogic.
            recoveredBlock65PC := 164.
        ].
        recoveredBlock65Step = 164 ifTrue: [
            recoveredBlock65Stack3 := (recoveredBlock65Stack3) values.
            recoveredBlock65PC := 166.
        ].
        recoveredBlock65Step = 166 ifTrue: [
            (recoveredBlock65Stack1) at: (recoveredBlock65Stack2) put: (recoveredBlock65Stack3).
            recoveredBlock65PC := 168.
        ].
        recoveredBlock65Step = 168 ifTrue: [
            recoveredBlock65Stack1 := nil.
            recoveredBlock65PC := 169.
        ].
        recoveredBlock65Step = 169 ifTrue: [
            recoveredBlock65Stack2 := recoveredBlock65Stack1.
            recoveredBlock65PC := 170.
        ].
        recoveredBlock65Step = 170 ifTrue: [
            recoveredBlock65Local5 := recoveredBlock65Stack2.
            recoveredBlock65PC := 172.
        ].
        recoveredBlock65Step = 172 ifTrue: [
            recoveredBlock65Stack2 := recoveredBlock65Stack1.
            recoveredBlock65PC := 173.
        ].
        recoveredBlock65Step = 173 ifTrue: [
            recoveredBlock65Local4 := recoveredBlock65Stack2.
            recoveredBlock65PC := 174.
        ].
        recoveredBlock65Step = 174 ifTrue: [
            recoveredBlock65Stack2 := recoveredBlock65Stack1.
            recoveredBlock65PC := 175.
        ].
        recoveredBlock65Step = 175 ifTrue: [
            recoveredBlock65Local3 := recoveredBlock65Stack2.
            recoveredBlock65PC := 176.
        ].
        recoveredBlock65Step = 176 ifTrue: [
            recoveredBlock65Stack2 := recoveredBlock65Stack1.
            recoveredBlock65PC := 177.
        ].
        recoveredBlock65Step = 177 ifTrue: [
            recoveredBlock65Local2 := recoveredBlock65Stack2.
            recoveredBlock65PC := 178.
        ].
        recoveredBlock65Step = 178 ifTrue: [
            recoveredBlock65Local1 := recoveredBlock65Stack1.
            recoveredBlock65PC := 179.
        ].
        recoveredBlock65Step = 179 ifTrue: [
            recoveredBlock65Stack1 := recoveredLocal1.
            recoveredBlock65PC := 182.
        ].
        recoveredBlock65Step = 182 ifTrue: [
            recoveredBlock65Stack1 := (recoveredBlock65Stack1) + (1).
            recoveredBlock65PC := 183.
        ].
        recoveredBlock65Step = 183 ifTrue: [
            recoveredBlock65Stack2 := recoveredBlock65Stack1.
            recoveredBlock65PC := 184.
        ].
        recoveredBlock65Step = 184 ifTrue: [
            recoveredLocal1 := recoveredBlock65Stack2.
            recoveredBlock65PC := 187.
        ].
        recoveredBlock65Step = 187 ifTrue: [
            recoveredBlock65Result := recoveredBlock65Stack1.
            recoveredBlock65Done := true.
        ].
    ].
    recoveredBlock65Result
].
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 196] ifFalse: [recoveredPC := 200].
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredPC := 203.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2056aa7c; bytecode file offset 0xe673a8"
!SGMainCtrl methodsFor: 'recovered'!
calculateComponentListForCodeContainerHandleKeys: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_70031'.
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
            recoveredStack2 := 0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) fractionComplete: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := 'Collecting generated code in the database.'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) messageString: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) detectAllCodeContainerHandleKeys.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := AbtHighCapacityLookupTable.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) new: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := [:recoveredBlock61Arg1 | 
    | recoveredBlock61Local1 recoveredBlock61Local2 recoveredBlock61Local3 recoveredBlock61Local4 recoveredBlock61Local5 recoveredBlock61Local6 recoveredBlock61Stack0 recoveredBlock61Stack1 recoveredBlock61Stack2 recoveredBlock61Stack3 recoveredBlock61Stack4 recoveredBlock61PC recoveredBlock61Step recoveredBlock61Done recoveredBlock61Result |
    recoveredBlock61Stack0 := self.
    recoveredBlock61PC := 68.
    recoveredBlock61Done := false.
    [recoveredBlock61Done not] whileTrue: [
        recoveredBlock61Step := recoveredBlock61PC.
        recoveredBlock61Step = 68 ifTrue: [
            recoveredBlock61Stack1 := recoveredArg1.
            recoveredBlock61PC := 71.
        ].
        recoveredBlock61Step = 71 ifTrue: [
            recoveredBlock61Stack1 := (recoveredBlock61Stack1) cancelled.
            recoveredBlock61PC := 73.
        ].
        recoveredBlock61Step = 73 ifTrue: [
            (recoveredBlock61Stack1) ifTrue: [recoveredBlock61PC := 76] ifFalse: [recoveredBlock61PC := 80].
        ].
        recoveredBlock61Step = 76 ifTrue: [
            recoveredBlock61Stack1 := true.
            recoveredBlock61PC := 77.
        ].
        recoveredBlock61Step = 77 ifTrue: [
            recoveredLocal2 := recoveredBlock61Stack1.
            recoveredBlock61PC := 80.
        ].
        recoveredBlock61Step = 80 ifTrue: [
            recoveredBlock61Stack1 := recoveredArg1.
            recoveredBlock61PC := 83.
        ].
        recoveredBlock61Step = 83 ifTrue: [
            recoveredBlock61Stack2 := recoveredLocal1.
            recoveredBlock61PC := 86.
        ].
        recoveredBlock61Step = 86 ifTrue: [
            recoveredBlock61Stack3 := recoveredLocal3.
            recoveredBlock61PC := 89.
        ].
        recoveredBlock61Step = 89 ifTrue: [
            recoveredBlock61Stack2 := (recoveredBlock61Stack2) / (recoveredBlock61Stack3).
            recoveredBlock61PC := 91.
        ].
        recoveredBlock61Step = 91 ifTrue: [
            (recoveredBlock61Stack1) fractionComplete: (recoveredBlock61Stack2).
            recoveredBlock61PC := 93.
        ].
        recoveredBlock61Step = 93 ifTrue: [
            recoveredBlock61Stack1 := recoveredLocal2.
            recoveredBlock61PC := 96.
        ].
        recoveredBlock61Step = 96 ifTrue: [
            (recoveredBlock61Stack1) ifTrue: [recoveredBlock61PC := 216] ifFalse: [recoveredBlock61PC := 100].
        ].
        recoveredBlock61Step = 100 ifTrue: [
            recoveredBlock61Stack1 := recoveredBlock61Arg1.
            recoveredBlock61PC := 102.
        ].
        recoveredBlock61Step = 102 ifTrue: [
            recoveredBlock61Stack2 := [:block28111634Arg1 | 
    nil
].
            recoveredBlock61PC := 104.
        ].
        recoveredBlock61Step = 104 ifTrue: [
            recoveredBlock61PC := 110.
        ].
        recoveredBlock61Step = 110 ifTrue: [
            recoveredBlock61Stack1 := (recoveredBlock61Stack1) getObjectIfUndefined: (recoveredBlock61Stack2).
            recoveredBlock61PC := 112.
        ].
        recoveredBlock61Step = 112 ifTrue: [
            recoveredBlock61Local6 := recoveredBlock61Stack1.
            recoveredBlock61PC := 114.
        ].
        recoveredBlock61Step = 114 ifTrue: [
            recoveredBlock61Stack1 := recoveredBlock61Local6.
            recoveredBlock61PC := 116.
        ].
        recoveredBlock61Step = 116 ifTrue: [
            (recoveredBlock61Stack1 == nil) ifTrue: [recoveredBlock61PC := 216] ifFalse: [recoveredBlock61PC := 120].
        ].
        recoveredBlock61Step = 120 ifTrue: [
            recoveredBlock61Stack1 := recoveredBlock61Local6.
            recoveredBlock61PC := 122.
        ].
        recoveredBlock61Step = 122 ifTrue: [
            recoveredBlock61Stack1 := (recoveredBlock61Stack1) dbObject.
            recoveredBlock61PC := 124.
        ].
        recoveredBlock61Step = 124 ifTrue: [
            recoveredBlock61Stack1 := (recoveredBlock61Stack1) className.
            recoveredBlock61PC := 126.
        ].
        recoveredBlock61Step = 126 ifTrue: [
            recoveredBlock61Stack2 := 1.
            recoveredBlock61PC := 128.
        ].
        recoveredBlock61Step = 128 ifTrue: [
            recoveredBlock61Stack3 := 20.
            recoveredBlock61PC := 130.
        ].
        recoveredBlock61Step = 130 ifTrue: [
            recoveredBlock61Stack1 := (recoveredBlock61Stack1) copyFrom: (recoveredBlock61Stack2) to: (recoveredBlock61Stack3).
            recoveredBlock61PC := 132.
        ].
        recoveredBlock61Step = 132 ifTrue: [
            recoveredBlock61Local5 := recoveredBlock61Stack1.
            recoveredBlock61PC := 134.
        ].
        recoveredBlock61Step = 134 ifTrue: [
            recoveredBlock61Stack1 := self.
            recoveredBlock61PC := 135.
        ].
        recoveredBlock61Step = 135 ifTrue: [
            recoveredBlock61Stack1 := (recoveredBlock61Stack1) getDBInterfaceGlobal.
            recoveredBlock61PC := 137.
        ].
        recoveredBlock61Step = 137 ifTrue: [
            recoveredBlock61Stack2 := recoveredBlock61Local5.
            recoveredBlock61PC := 139.
        ].
        recoveredBlock61Step = 139 ifTrue: [
            recoveredBlock61Stack1 := (recoveredBlock61Stack1) makeProxy: (recoveredBlock61Stack2).
            recoveredBlock61PC := 141.
        ].
        recoveredBlock61Step = 141 ifTrue: [
            recoveredBlock61Local4 := recoveredBlock61Stack1.
            recoveredBlock61PC := 142.
        ].
        recoveredBlock61Step = 142 ifTrue: [
            recoveredBlock61Stack1 := recoveredBlock61Local4.
            recoveredBlock61PC := 143.
        ].
        recoveredBlock61Step = 143 ifTrue: [
            recoveredBlock61Stack2 := [:recoveredBlock61Block143Arg1 | 
    | recoveredBlock61Block143Value0 |
    recoveredBlock61Block143Value0 := (self) databaseAccess.
    recoveredBlock61Block143Value0
].
            recoveredBlock61PC := 153.
        ].
        recoveredBlock61Step = 153 ifTrue: [
            recoveredBlock61Stack1 := (recoveredBlock61Stack1) getObjectIfUndefined: (recoveredBlock61Stack2).
            recoveredBlock61PC := 155.
        ].
        recoveredBlock61Step = 155 ifTrue: [
            recoveredBlock61Local3 := recoveredBlock61Stack1.
            recoveredBlock61PC := 156.
        ].
        recoveredBlock61Step = 156 ifTrue: [
            recoveredBlock61Stack1 := recoveredBlock61Local3.
            recoveredBlock61PC := 157.
        ].
        recoveredBlock61Step = 157 ifTrue: [
            recoveredBlock61Stack1 := (recoveredBlock61Stack1) relatedComponentForCodeContainer.
            recoveredBlock61PC := 159.
        ].
        recoveredBlock61Step = 159 ifTrue: [
            recoveredBlock61Local2 := recoveredBlock61Stack1.
            recoveredBlock61PC := 160.
        ].
        recoveredBlock61Step = 160 ifTrue: [
            recoveredBlock61Stack1 := recoveredBlock61Local2.
            recoveredBlock61PC := 161.
        ].
        recoveredBlock61Step = 161 ifTrue: [
            (recoveredBlock61Stack1 ~~ nil) ifTrue: [recoveredBlock61PC := 168] ifFalse: [recoveredBlock61PC := 164].
        ].
        recoveredBlock61Step = 164 ifTrue: [
            recoveredBlock61Stack1 := self.
            recoveredBlock61PC := 165.
        ].
        recoveredBlock61Step = 165 ifTrue: [
            recoveredBlock61Stack1 := (recoveredBlock61Stack1) databaseAccess.
            recoveredBlock61PC := 167.
        ].
        recoveredBlock61Step = 167 ifTrue: [
            recoveredBlock61Local2 := recoveredBlock61Stack1.
            recoveredBlock61PC := 168.
        ].
        recoveredBlock61Step = 168 ifTrue: [
            recoveredBlock61Stack1 := recoveredArg1.
            recoveredBlock61PC := 171.
        ].
        recoveredBlock61Step = 171 ifTrue: [
            recoveredBlock61Stack2 := 'Assign code container to item: '.
            recoveredBlock61PC := 173.
        ].
        recoveredBlock61Step = 173 ifTrue: [
            recoveredBlock61Stack3 := recoveredBlock61Local2.
            recoveredBlock61PC := 174.
        ].
        recoveredBlock61Step = 174 ifTrue: [
            recoveredBlock61Stack3 := (recoveredBlock61Stack3) label.
            recoveredBlock61PC := 176.
        ].
        recoveredBlock61Step = 176 ifTrue: [
            recoveredBlock61Stack2 := (recoveredBlock61Stack2) , (recoveredBlock61Stack3).
            recoveredBlock61PC := 178.
        ].
        recoveredBlock61Step = 178 ifTrue: [
            (recoveredBlock61Stack1) messageString: (recoveredBlock61Stack2).
            recoveredBlock61PC := 180.
        ].
        recoveredBlock61Step = 180 ifTrue: [
            recoveredBlock61Stack1 := recoveredLocal4.
            recoveredBlock61PC := 183.
        ].
        recoveredBlock61Step = 183 ifTrue: [
            recoveredBlock61Stack2 := recoveredBlock61Local2.
            recoveredBlock61PC := 184.
        ].
        recoveredBlock61Step = 184 ifTrue: [
            recoveredBlock61Stack2 := (recoveredBlock61Stack2) asRBDBReference.
            recoveredBlock61PC := 186.
        ].
        recoveredBlock61Step = 186 ifTrue: [
            recoveredBlock61Stack3 := [
    | block28111658Value0 block28111658Value1 |
    block28111658Value0 := OrderedCollection.
    block28111658Value1 := (block28111658Value0) new.
    block28111658Value1
].
            recoveredBlock61PC := 188.
        ].
        recoveredBlock61Step = 188 ifTrue: [
            recoveredBlock61PC := 197.
        ].
        recoveredBlock61Step = 197 ifTrue: [
            recoveredBlock61Stack1 := (recoveredBlock61Stack1) at: (recoveredBlock61Stack2) ifAbsentPut: (recoveredBlock61Stack3).
            recoveredBlock61PC := 199.
        ].
        recoveredBlock61Step = 199 ifTrue: [
            recoveredBlock61Local1 := recoveredBlock61Stack1.
            recoveredBlock61PC := 200.
        ].
        recoveredBlock61Step = 200 ifTrue: [
            recoveredBlock61Stack1 := recoveredBlock61Local1.
            recoveredBlock61PC := 201.
        ].
        recoveredBlock61Step = 201 ifTrue: [
            recoveredBlock61Stack2 := recoveredBlock61Arg1.
            recoveredBlock61PC := 203.
        ].
        recoveredBlock61Step = 203 ifTrue: [
            (recoveredBlock61Stack1) add: (recoveredBlock61Stack2).
            recoveredBlock61PC := 205.
        ].
        recoveredBlock61Step = 205 ifTrue: [
            recoveredBlock61Stack1 := nil.
            recoveredBlock61PC := 206.
        ].
        recoveredBlock61Step = 206 ifTrue: [
            recoveredBlock61Stack2 := recoveredBlock61Stack1.
            recoveredBlock61PC := 207.
        ].
        recoveredBlock61Step = 207 ifTrue: [
            recoveredBlock61Local5 := recoveredBlock61Stack2.
            recoveredBlock61PC := 209.
        ].
        recoveredBlock61Step = 209 ifTrue: [
            recoveredBlock61Stack2 := recoveredBlock61Stack1.
            recoveredBlock61PC := 210.
        ].
        recoveredBlock61Step = 210 ifTrue: [
            recoveredBlock61Local4 := recoveredBlock61Stack2.
            recoveredBlock61PC := 211.
        ].
        recoveredBlock61Step = 211 ifTrue: [
            recoveredBlock61Stack2 := recoveredBlock61Stack1.
            recoveredBlock61PC := 212.
        ].
        recoveredBlock61Step = 212 ifTrue: [
            recoveredBlock61Local3 := recoveredBlock61Stack2.
            recoveredBlock61PC := 213.
        ].
        recoveredBlock61Step = 213 ifTrue: [
            recoveredBlock61Stack2 := recoveredBlock61Stack1.
            recoveredBlock61PC := 214.
        ].
        recoveredBlock61Step = 214 ifTrue: [
            recoveredBlock61Local2 := recoveredBlock61Stack2.
            recoveredBlock61PC := 215.
        ].
        recoveredBlock61Step = 215 ifTrue: [
            recoveredBlock61Local1 := recoveredBlock61Stack1.
            recoveredBlock61PC := 216.
        ].
        recoveredBlock61Step = 216 ifTrue: [
            recoveredBlock61Stack1 := recoveredLocal1.
            recoveredBlock61PC := 219.
        ].
        recoveredBlock61Step = 219 ifTrue: [
            recoveredBlock61Stack1 := (recoveredBlock61Stack1) + (1).
            recoveredBlock61PC := 220.
        ].
        recoveredBlock61Step = 220 ifTrue: [
            recoveredBlock61Stack2 := recoveredBlock61Stack1.
            recoveredBlock61PC := 221.
        ].
        recoveredBlock61Step = 221 ifTrue: [
            recoveredLocal1 := recoveredBlock61Stack2.
            recoveredBlock61PC := 224.
        ].
        recoveredBlock61Step = 224 ifTrue: [
            recoveredBlock61Result := recoveredBlock61Stack1.
            recoveredBlock61Done := true.
        ].
    ].
    recoveredBlock61Result
].
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 234] ifFalse: [recoveredPC := 238].
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredPC := 241.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205d1b34; bytecode file offset 0xece474"
!SGMainCtrl methodsFor: 'recovered'!
deleteUnprotectedCodeContainersDialog: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_70031'.
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
            recoveredStack0 := (recoveredStack0) library.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) commit.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) calculateComponentListForOSLogicHandleKeys: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := nil.
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) calculateComponentListForCodeContainerHandleKeys: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := [:recoveredBlock68Arg1 :recoveredBlock68Arg2 | 
    | recoveredBlock68Stack0 recoveredBlock68Stack1 recoveredBlock68Stack2 recoveredBlock68Stack3 recoveredBlock68Stack4 recoveredBlock68Stack5 recoveredBlock68PC recoveredBlock68Step recoveredBlock68Done recoveredBlock68Result |
    recoveredBlock68Stack0 := self.
    recoveredBlock68PC := 74.
    recoveredBlock68Done := false.
    [recoveredBlock68Done not] whileTrue: [
        recoveredBlock68Step := recoveredBlock68PC.
        recoveredBlock68Step = 74 ifTrue: [
            recoveredBlock68Stack1 := recoveredArg1.
            recoveredBlock68PC := 77.
        ].
        recoveredBlock68Step = 77 ifTrue: [
            recoveredBlock68Stack1 := (recoveredBlock68Stack1) cancelled.
            recoveredBlock68PC := 79.
        ].
        recoveredBlock68Step = 79 ifTrue: [
            (recoveredBlock68Stack1) ifTrue: [recoveredBlock68PC := 82] ifFalse: [recoveredBlock68PC := 86].
        ].
        recoveredBlock68Step = 82 ifTrue: [
            recoveredBlock68Stack1 := true.
            recoveredBlock68PC := 83.
        ].
        recoveredBlock68Step = 83 ifTrue: [
            recoveredLocal1 := recoveredBlock68Stack1.
            recoveredBlock68PC := 86.
        ].
        recoveredBlock68Step = 86 ifTrue: [
            recoveredBlock68Stack1 := recoveredArg1.
            recoveredBlock68PC := 89.
        ].
        recoveredBlock68Step = 89 ifTrue: [
            recoveredBlock68Stack2 := recoveredLocal2.
            recoveredBlock68PC := 92.
        ].
        recoveredBlock68Step = 92 ifTrue: [
            recoveredBlock68Stack3 := recoveredLocal3.
            recoveredBlock68PC := 95.
        ].
        recoveredBlock68Step = 95 ifTrue: [
            recoveredBlock68Stack2 := (recoveredBlock68Stack2) / (recoveredBlock68Stack3).
            recoveredBlock68PC := 97.
        ].
        recoveredBlock68Step = 97 ifTrue: [
            recoveredBlock68Stack3 := 'Merge projects and code containers: '.
            recoveredBlock68PC := 99.
        ].
        recoveredBlock68Step = 99 ifTrue: [
            recoveredBlock68Stack4 := recoveredBlock68Arg1.
            recoveredBlock68PC := 102.
        ].
        recoveredBlock68Step = 102 ifTrue: [
            recoveredBlock68Stack4 := (recoveredBlock68Stack4) label.
            recoveredBlock68PC := 104.
        ].
        recoveredBlock68Step = 104 ifTrue: [
            recoveredBlock68Stack3 := (recoveredBlock68Stack3) , (recoveredBlock68Stack4).
            recoveredBlock68PC := 106.
        ].
        recoveredBlock68Step = 106 ifTrue: [
            (recoveredBlock68Stack1) fractionComplete: (recoveredBlock68Stack2) messageString: (recoveredBlock68Stack3).
            recoveredBlock68PC := 108.
        ].
        recoveredBlock68Step = 108 ifTrue: [
            recoveredBlock68Stack1 := recoveredLocal1.
            recoveredBlock68PC := 111.
        ].
        recoveredBlock68Step = 111 ifTrue: [
            (recoveredBlock68Stack1) ifTrue: [recoveredBlock68PC := 181] ifFalse: [recoveredBlock68PC := 114].
        ].
        recoveredBlock68Step = 114 ifTrue: [
            recoveredBlock68Stack1 := recoveredBlock68Arg2.
            recoveredBlock68PC := 117.
        ].
        recoveredBlock68Step = 117 ifTrue: [
            recoveredBlock68Stack2 := [:recoveredBlock68Block117Arg1 | 
    | recoveredBlock68Block117Local1 recoveredBlock68Block117Local2 recoveredBlock68Block117Stack0 recoveredBlock68Block117Stack1 recoveredBlock68Block117Stack2 recoveredBlock68Block117Stack3 recoveredBlock68Block117Stack4 recoveredBlock68Block117PC recoveredBlock68Block117Step recoveredBlock68Block117Done recoveredBlock68Block117Result |
    recoveredBlock68Block117Stack0 := nil.
    recoveredBlock68Block117PC := 124.
    recoveredBlock68Block117Done := false.
    [recoveredBlock68Block117Done not] whileTrue: [
        recoveredBlock68Block117Step := recoveredBlock68Block117PC.
        recoveredBlock68Block117Step = 124 ifTrue: [
            recoveredBlock68Block117Stack1 := recoveredLocal4.
            recoveredBlock68Block117PC := 127.
        ].
        recoveredBlock68Block117Step = 127 ifTrue: [
            recoveredBlock68Block117Stack2 := recoveredBlock68Block117Arg1.
            recoveredBlock68Block117PC := 128.
        ].
        recoveredBlock68Block117Step = 128 ifTrue: [
            recoveredBlock68Block117Stack2 := (recoveredBlock68Block117Stack2) asRBDBReference.
            recoveredBlock68Block117PC := 130.
        ].
        recoveredBlock68Block117Step = 130 ifTrue: [
            recoveredBlock68Block117Stack3 := [
    #()
].
            recoveredBlock68Block117PC := 132.
        ].
        recoveredBlock68Block117Step = 132 ifTrue: [
            recoveredBlock68Block117PC := 139.
        ].
        recoveredBlock68Block117Step = 139 ifTrue: [
            recoveredBlock68Block117Stack1 := (recoveredBlock68Block117Stack1) removeKey: (recoveredBlock68Block117Stack2) ifAbsent: (recoveredBlock68Block117Stack3).
            recoveredBlock68Block117PC := 141.
        ].
        recoveredBlock68Block117Step = 141 ifTrue: [
            recoveredBlock68Block117Local2 := recoveredBlock68Block117Stack1.
            recoveredBlock68Block117PC := 142.
        ].
        recoveredBlock68Block117Step = 142 ifTrue: [
            recoveredBlock68Block117Stack1 := nil.
            recoveredBlock68Block117PC := 143.
        ].
        recoveredBlock68Block117Step = 143 ifTrue: [
            recoveredBlock68Block117Stack2 := recoveredBlock68Block117Local2.
            recoveredBlock68Block117PC := 144.
        ].
        recoveredBlock68Block117Step = 144 ifTrue: [
            recoveredBlock68Block117Stack2 := (recoveredBlock68Block117Stack2) notEmpty.
            recoveredBlock68Block117PC := 146.
        ].
        recoveredBlock68Block117Step = 146 ifTrue: [
            (recoveredBlock68Block117Stack2) ifTrue: [recoveredBlock68Block117PC := 150] ifFalse: [recoveredBlock68Block117PC := 178].
        ].
        recoveredBlock68Block117Step = 150 ifTrue: [
            recoveredBlock68Block117PC := 151.
        ].
        recoveredBlock68Block117Step = 151 ifTrue: [
            recoveredBlock68Block117Stack1 := recoveredLocal4.
            recoveredBlock68Block117PC := 154.
        ].
        recoveredBlock68Block117Step = 154 ifTrue: [
            recoveredBlock68Block117Stack2 := recoveredBlock68Arg1.
            recoveredBlock68Block117PC := 157.
        ].
        recoveredBlock68Block117Step = 157 ifTrue: [
            recoveredBlock68Block117Stack2 := (recoveredBlock68Block117Stack2) asRBDBReference.
            recoveredBlock68Block117PC := 159.
        ].
        recoveredBlock68Block117Step = 159 ifTrue: [
            recoveredBlock68Block117Stack3 := [
    | block28119578Value0 block28119578Value1 |
    block28119578Value0 := OrderedCollection.
    block28119578Value1 := (block28119578Value0) new.
    block28119578Value1
].
            recoveredBlock68Block117PC := 161.
        ].
        recoveredBlock68Block117Step = 161 ifTrue: [
            recoveredBlock68Block117PC := 169.
        ].
        recoveredBlock68Block117Step = 169 ifTrue: [
            recoveredBlock68Block117Stack1 := (recoveredBlock68Block117Stack1) at: (recoveredBlock68Block117Stack2) ifAbsentPut: (recoveredBlock68Block117Stack3).
            recoveredBlock68Block117PC := 171.
        ].
        recoveredBlock68Block117Step = 171 ifTrue: [
            recoveredBlock68Block117Local1 := recoveredBlock68Block117Stack1.
            recoveredBlock68Block117PC := 172.
        ].
        recoveredBlock68Block117Step = 172 ifTrue: [
            recoveredBlock68Block117Stack1 := recoveredBlock68Block117Local1.
            recoveredBlock68Block117PC := 173.
        ].
        recoveredBlock68Block117Step = 173 ifTrue: [
            recoveredBlock68Block117Stack2 := recoveredBlock68Block117Local2.
            recoveredBlock68Block117PC := 174.
        ].
        recoveredBlock68Block117Step = 174 ifTrue: [
            recoveredBlock68Block117Stack1 := (recoveredBlock68Block117Stack1) addAll: (recoveredBlock68Block117Stack2).
            recoveredBlock68Block117PC := 176.
        ].
        recoveredBlock68Block117Step = 176 ifTrue: [
            recoveredBlock68Block117Stack2 := nil.
            recoveredBlock68Block117PC := 177.
        ].
        recoveredBlock68Block117Step = 177 ifTrue: [
            recoveredBlock68Block117Local1 := recoveredBlock68Block117Stack2.
            recoveredBlock68Block117PC := 178.
        ].
        recoveredBlock68Block117Step = 178 ifTrue: [
            recoveredBlock68Block117Result := recoveredBlock68Block117Stack1.
            recoveredBlock68Block117Done := true.
        ].
    ].
    recoveredBlock68Block117Result
].
            recoveredBlock68PC := 179.
        ].
        recoveredBlock68Step = 179 ifTrue: [
            (recoveredBlock68Stack1) do: (recoveredBlock68Stack2).
            recoveredBlock68PC := 181.
        ].
        recoveredBlock68Step = 181 ifTrue: [
            recoveredBlock68Stack1 := recoveredLocal2.
            recoveredBlock68PC := 184.
        ].
        recoveredBlock68Step = 184 ifTrue: [
            recoveredBlock68Stack1 := (recoveredBlock68Stack1) + (1).
            recoveredBlock68PC := 185.
        ].
        recoveredBlock68Step = 185 ifTrue: [
            recoveredBlock68Stack2 := recoveredBlock68Stack1.
            recoveredBlock68PC := 186.
        ].
        recoveredBlock68Step = 186 ifTrue: [
            recoveredLocal2 := recoveredBlock68Stack2.
            recoveredBlock68PC := 189.
        ].
        recoveredBlock68Step = 189 ifTrue: [
            recoveredBlock68Result := recoveredBlock68Stack1.
            recoveredBlock68Done := true.
        ].
    ].
    recoveredBlock68Result
].
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            (recoveredStack0) keysAndValuesDo: (recoveredStack1).
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 210] ifFalse: [recoveredPC := 212].
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack1 := [:recoveredBlock220Arg1 :recoveredBlock220Arg2 | 
    | recoveredBlock220Local1 recoveredBlock220Stack0 recoveredBlock220Stack1 recoveredBlock220Stack2 recoveredBlock220Stack3 recoveredBlock220Stack4 recoveredBlock220Stack5 recoveredBlock220PC recoveredBlock220Step recoveredBlock220Done recoveredBlock220Result |
    recoveredBlock220Stack0 := self.
    recoveredBlock220PC := 226.
    recoveredBlock220Done := false.
    [recoveredBlock220Done not] whileTrue: [
        recoveredBlock220Step := recoveredBlock220PC.
        recoveredBlock220Step = 226 ifTrue: [
            recoveredBlock220Stack1 := recoveredArg1.
            recoveredBlock220PC := 229.
        ].
        recoveredBlock220Step = 229 ifTrue: [
            recoveredBlock220Stack1 := (recoveredBlock220Stack1) cancelled.
            recoveredBlock220PC := 231.
        ].
        recoveredBlock220Step = 231 ifTrue: [
            (recoveredBlock220Stack1) ifTrue: [recoveredBlock220PC := 234] ifFalse: [recoveredBlock220PC := 238].
        ].
        recoveredBlock220Step = 234 ifTrue: [
            recoveredBlock220Stack1 := true.
            recoveredBlock220PC := 235.
        ].
        recoveredBlock220Step = 235 ifTrue: [
            recoveredLocal1 := recoveredBlock220Stack1.
            recoveredBlock220PC := 238.
        ].
        recoveredBlock220Step = 238 ifTrue: [
            recoveredBlock220Stack1 := recoveredLocal1.
            recoveredBlock220PC := 241.
        ].
        recoveredBlock220Step = 241 ifTrue: [
            (recoveredBlock220Stack1) ifTrue: [recoveredBlock220PC := 340] ifFalse: [recoveredBlock220PC := 244].
        ].
        recoveredBlock220Step = 244 ifTrue: [
            recoveredBlock220Stack1 := recoveredArg1.
            recoveredBlock220PC := 247.
        ].
        recoveredBlock220Step = 247 ifTrue: [
            recoveredBlock220Stack2 := recoveredLocal2.
            recoveredBlock220PC := 250.
        ].
        recoveredBlock220Step = 250 ifTrue: [
            recoveredBlock220Stack3 := recoveredLocal3.
            recoveredBlock220PC := 253.
        ].
        recoveredBlock220Step = 253 ifTrue: [
            recoveredBlock220Stack2 := (recoveredBlock220Stack2) / (recoveredBlock220Stack3).
            recoveredBlock220PC := 255.
        ].
        recoveredBlock220Step = 255 ifTrue: [
            recoveredBlock220Stack3 := 'Delete code for item: '.
            recoveredBlock220PC := 257.
        ].
        recoveredBlock220Step = 257 ifTrue: [
            recoveredBlock220Stack4 := recoveredBlock220Arg1.
            recoveredBlock220PC := 258.
        ].
        recoveredBlock220Step = 258 ifTrue: [
            recoveredBlock220Stack4 := (recoveredBlock220Stack4) label.
            recoveredBlock220PC := 260.
        ].
        recoveredBlock220Step = 260 ifTrue: [
            recoveredBlock220Stack3 := (recoveredBlock220Stack3) , (recoveredBlock220Stack4).
            recoveredBlock220PC := 262.
        ].
        recoveredBlock220Step = 262 ifTrue: [
            (recoveredBlock220Stack1) fractionComplete: (recoveredBlock220Stack2) messageString: (recoveredBlock220Stack3).
            recoveredBlock220PC := 264.
        ].
        recoveredBlock220Step = 264 ifTrue: [
            recoveredBlock220Stack1 := recoveredBlock220Arg1.
            recoveredBlock220PC := 265.
        ].
        recoveredBlock220Step = 265 ifTrue: [
            recoveredBlock220Stack2 := [:block2811959cArg1 | 
    nil
].
            recoveredBlock220PC := 267.
        ].
        recoveredBlock220Step = 267 ifTrue: [
            recoveredBlock220PC := 272.
        ].
        recoveredBlock220Step = 272 ifTrue: [
            recoveredBlock220Stack1 := (recoveredBlock220Stack1) getObjectIfUndefined: (recoveredBlock220Stack2).
            recoveredBlock220PC := 274.
        ].
        recoveredBlock220Step = 274 ifTrue: [
            recoveredBlock220Local1 := recoveredBlock220Stack1.
            recoveredBlock220PC := 275.
        ].
        recoveredBlock220Step = 275 ifTrue: [
            recoveredBlock220Stack1 := recoveredBlock220Local1.
            recoveredBlock220PC := 276.
        ].
        recoveredBlock220Step = 276 ifTrue: [
            (recoveredBlock220Stack1 == nil) ifTrue: [recoveredBlock220PC := 300] ifFalse: [recoveredBlock220PC := 280].
        ].
        recoveredBlock220Step = 280 ifTrue: [
            recoveredBlock220Stack1 := recoveredBlock220Local1.
            recoveredBlock220PC := 281.
        ].
        recoveredBlock220Step = 281 ifTrue: [
            recoveredBlock220Stack2 := SGOperatingSystemLogic.
            recoveredBlock220PC := 283.
        ].
        recoveredBlock220Step = 283 ifTrue: [
            recoveredBlock220Stack1 := (recoveredBlock220Stack1) isKindOf: (recoveredBlock220Stack2).
            recoveredBlock220PC := 285.
        ].
        recoveredBlock220Step = 285 ifTrue: [
            (recoveredBlock220Stack1) ifTrue: [recoveredBlock220PC := 300] ifFalse: [recoveredBlock220PC := 288].
        ].
        recoveredBlock220Step = 288 ifTrue: [
            recoveredBlock220Stack1 := recoveredBlock220Local1.
            recoveredBlock220PC := 289.
        ].
        recoveredBlock220Step = 289 ifTrue: [
            recoveredBlock220Stack1 := (recoveredBlock220Stack1) isFolder.
            recoveredBlock220PC := 291.
        ].
        recoveredBlock220Step = 291 ifTrue: [
            (recoveredBlock220Stack1) ifTrue: [recoveredBlock220PC := 300] ifFalse: [recoveredBlock220PC := 294].
        ].
        recoveredBlock220Step = 294 ifTrue: [
            recoveredBlock220Stack1 := recoveredBlock220Local1.
            recoveredBlock220PC := 295.
        ].
        recoveredBlock220Step = 295 ifTrue: [
            recoveredBlock220Stack1 := (recoveredBlock220Stack1) isRead.
            recoveredBlock220PC := 297.
        ].
        recoveredBlock220Step = 297 ifTrue: [
            (recoveredBlock220Stack1) ifTrue: [recoveredBlock220PC := 300] ifFalse: [recoveredBlock220PC := 340].
        ].
        recoveredBlock220Step = 300 ifTrue: [
            recoveredBlock220Stack1 := recoveredBlock220Arg2.
            recoveredBlock220PC := 301.
        ].
        recoveredBlock220Step = 301 ifTrue: [
            recoveredBlock220Stack2 := [:recoveredBlock220Block301Arg1 | 
    | recoveredBlock220Block301Local1 recoveredBlock220Block301Stack0 recoveredBlock220Block301Stack1 recoveredBlock220Block301Stack2 recoveredBlock220Block301Stack3 recoveredBlock220Block301Stack4 recoveredBlock220Block301Stack5 recoveredBlock220Block301PC recoveredBlock220Block301Step recoveredBlock220Block301Done recoveredBlock220Block301Result |
    recoveredBlock220Block301Stack0 := self.
    recoveredBlock220Block301PC := 308.
    recoveredBlock220Block301Done := false.
    [recoveredBlock220Block301Done not] whileTrue: [
        recoveredBlock220Block301Step := recoveredBlock220Block301PC.
        recoveredBlock220Block301Step = 308 ifTrue: [
            recoveredBlock220Block301Stack1 := nil.
            recoveredBlock220Block301PC := 309.
        ].
        recoveredBlock220Block301Step = 309 ifTrue: [
            recoveredBlock220Block301Stack2 := recoveredBlock220Block301Arg1.
            recoveredBlock220Block301PC := 310.
        ].
        recoveredBlock220Block301Step = 310 ifTrue: [
            recoveredBlock220Block301Stack3 := [:block281195c0Arg1 | 
    nil
].
            recoveredBlock220Block301PC := 312.
        ].
        recoveredBlock220Block301Step = 312 ifTrue: [
            recoveredBlock220Block301PC := 318.
        ].
        recoveredBlock220Block301Step = 318 ifTrue: [
            recoveredBlock220Block301Stack2 := (recoveredBlock220Block301Stack2) getObjectIfUndefined: (recoveredBlock220Block301Stack3).
            recoveredBlock220Block301PC := 320.
        ].
        recoveredBlock220Block301Step = 320 ifTrue: [
            recoveredBlock220Block301Stack3 := recoveredBlock220Block301Stack2.
            recoveredBlock220Block301PC := 321.
        ].
        recoveredBlock220Block301Step = 321 ifTrue: [
            recoveredBlock220Block301Local1 := recoveredBlock220Block301Stack3.
            recoveredBlock220Block301PC := 322.
        ].
        recoveredBlock220Block301Step = 322 ifTrue: [
            (recoveredBlock220Block301Stack2 == nil) ifTrue: [recoveredBlock220Block301PC := 337] ifFalse: [recoveredBlock220Block301PC := 326].
        ].
        recoveredBlock220Block301Step = 326 ifTrue: [
            recoveredBlock220Block301PC := 327.
        ].
        recoveredBlock220Block301Step = 327 ifTrue: [
            recoveredBlock220Block301Stack1 := self.
            recoveredBlock220Block301PC := 328.
        ].
        recoveredBlock220Block301Step = 328 ifTrue: [
            recoveredBlock220Block301Stack1 := (recoveredBlock220Block301Stack1) library.
            recoveredBlock220Block301PC := 329.
        ].
        recoveredBlock220Block301Step = 329 ifTrue: [
            recoveredBlock220Block301Stack2 := recoveredBlock220Block301Local1.
            recoveredBlock220Block301PC := 330.
        ].
        recoveredBlock220Block301Step = 330 ifTrue: [
            recoveredBlock220Block301Stack2 := (recoveredBlock220Block301Stack2) allPartProxiesForDelete.
            recoveredBlock220Block301PC := 332.
        ].
        recoveredBlock220Block301Step = 332 ifTrue: [
            recoveredBlock220Block301Stack3 := nil.
            recoveredBlock220Block301PC := 333.
        ].
        recoveredBlock220Block301Step = 333 ifTrue: [
            recoveredBlock220Block301Stack4 := true.
            recoveredBlock220Block301PC := 334.
        ].
        recoveredBlock220Block301Step = 334 ifTrue: [
            recoveredBlock220Block301Stack1 := (recoveredBlock220Block301Stack1) deleteAll: (recoveredBlock220Block301Stack2) progressWindow: (recoveredBlock220Block301Stack3) save: (recoveredBlock220Block301Stack4).
            recoveredBlock220Block301PC := 337.
        ].
        recoveredBlock220Block301Step = 337 ifTrue: [
            recoveredBlock220Block301Result := recoveredBlock220Block301Stack1.
            recoveredBlock220Block301Done := true.
        ].
    ].
    recoveredBlock220Block301Result
].
            recoveredBlock220PC := 338.
        ].
        recoveredBlock220Step = 338 ifTrue: [
            (recoveredBlock220Stack1) do: (recoveredBlock220Stack2).
            recoveredBlock220PC := 340.
        ].
        recoveredBlock220Step = 340 ifTrue: [
            recoveredBlock220Stack1 := recoveredLocal2.
            recoveredBlock220PC := 343.
        ].
        recoveredBlock220Step = 343 ifTrue: [
            recoveredBlock220Stack1 := (recoveredBlock220Stack1) + (1).
            recoveredBlock220PC := 344.
        ].
        recoveredBlock220Step = 344 ifTrue: [
            recoveredBlock220Stack2 := recoveredBlock220Stack1.
            recoveredBlock220PC := 345.
        ].
        recoveredBlock220Step = 345 ifTrue: [
            recoveredLocal2 := recoveredBlock220Stack2.
            recoveredBlock220PC := 348.
        ].
        recoveredBlock220Step = 348 ifTrue: [
            recoveredBlock220Result := recoveredBlock220Stack1.
            recoveredBlock220Done := true.
        ].
    ].
    recoveredBlock220Result
].
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            (recoveredStack0) keysAndValuesDo: (recoveredStack1).
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205fe278; bytecode file offset 0xefac00"
!SGMainCtrl methodsFor: 'recovered'!
editCreateImplConfigFor: recoveredArg1 configController: recoveredArg2 makeConfig: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
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
            recoveredStack1 := recoveredArg2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedConfig.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := [:block2811c404Arg1 | 
    | block2811c404Value0 block2811c404Value1 |
    block2811c404Value0 := block2811c404Arg1.
    block2811c404Value1 := (block2811c404Value0) makeConsistentBasic.
    block2811c404Value1
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) elementsSameGlobalAttribute: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := [:recoveredBlock51Arg1 | 
    ^nil
].
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack1) sgClassIfUndefined: (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) configForElement: (recoveredStack2).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 111] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMethodLocal.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 111].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := RBUserQuestion.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := 'Element has no implementation. Use default to edit?'.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) confirm: (recoveredStack2).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := (recoveredStack1) prompt.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultConfigFor: (recoveredStack2).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRBDBUndefinedObject.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 120] ifFalse: [recoveredPC := 124].
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 160] ifFalse: [recoveredPC := 130].
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := (recoveredStack1) configForElementIsOpenReference: (recoveredStack2).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 142] ifFalse: [recoveredPC := 160].
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := RBUserQuestion.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack2 := 'Implementation for this element was deleted.\Do you want to select any other implementation?'.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack2 := (recoveredStack2) withCrs.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := (recoveredStack1) warning: (recoveredStack2).
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            (recoveredStack2) cancelOk.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := (recoveredStack1) prompt.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 160] ifFalse: [recoveredPC := 158].
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack2 := [:block2811c428Arg1 | 
    | block2811c428Local1 block2811c428Stack0 block2811c428Stack1 block2811c428Stack2 block2811c428Stack3 block2811c428Stack4 block2811c428PC block2811c428Step block2811c428Done block2811c428Result |
    block2811c428Stack0 := self.
    block2811c428PC := 4.
    block2811c428Done := false.
    [block2811c428Done not] whileTrue: [
        block2811c428Step := block2811c428PC.
        block2811c428Step = 4 ifTrue: [
            block2811c428Stack1 := true.
            block2811c428PC := 5.
        ].
        block2811c428Step = 5 ifTrue: [
            block2811c428Stack2 := block2811c428Arg1.
            block2811c428PC := 6.
        ].
        block2811c428Step = 6 ifTrue: [
            block2811c428Stack2 := (block2811c428Stack2) isReference.
            block2811c428PC := 8.
        ].
        block2811c428Step = 8 ifTrue: [
            (block2811c428Stack2) ifTrue: [block2811c428PC := 44] ifFalse: [block2811c428PC := 12].
        ].
        block2811c428Step = 12 ifTrue: [
            block2811c428PC := 13.
        ].
        block2811c428Step = 13 ifTrue: [
            block2811c428Stack1 := false.
            block2811c428PC := 14.
        ].
        block2811c428Step = 14 ifTrue: [
            block2811c428Stack2 := block2811c428Arg1.
            block2811c428PC := 15.
        ].
        block2811c428Step = 15 ifTrue: [
            block2811c428Stack2 := (block2811c428Stack2) isPrimitive.
            block2811c428PC := 17.
        ].
        block2811c428Step = 17 ifTrue: [
            (block2811c428Stack2) ifTrue: [block2811c428PC := 44] ifFalse: [block2811c428PC := 20].
        ].
        block2811c428Step = 20 ifTrue: [
            block2811c428PC := 21.
        ].
        block2811c428Step = 21 ifTrue: [
            block2811c428Stack1 := false.
            block2811c428PC := 22.
        ].
        block2811c428Step = 22 ifTrue: [
            block2811c428Stack2 := block2811c428Arg1.
            block2811c428PC := 23.
        ].
        block2811c428Step = 23 ifTrue: [
            block2811c428Stack3 := [:block2811c44cArg1 | 
    nil
].
            block2811c428PC := 25.
        ].
        block2811c428Step = 25 ifTrue: [
            block2811c428PC := 30.
        ].
        block2811c428Step = 30 ifTrue: [
            block2811c428Stack2 := (block2811c428Stack2) sgClassIfUndefined: (block2811c428Stack3).
            block2811c428PC := 32.
        ].
        block2811c428Step = 32 ifTrue: [
            block2811c428Stack3 := block2811c428Stack2.
            block2811c428PC := 33.
        ].
        block2811c428Step = 33 ifTrue: [
            block2811c428Local1 := block2811c428Stack3.
            block2811c428PC := 34.
        ].
        block2811c428Step = 34 ifTrue: [
            (block2811c428Stack2 == nil) ifTrue: [block2811c428PC := 42] ifFalse: [block2811c428PC := 38].
        ].
        block2811c428Step = 38 ifTrue: [
            block2811c428PC := 39.
        ].
        block2811c428Step = 39 ifTrue: [
            block2811c428Stack1 := block2811c428Local1.
            block2811c428PC := 40.
        ].
        block2811c428Step = 40 ifTrue: [
            block2811c428Stack1 := (block2811c428Stack1) isRecord.
            block2811c428PC := 42.
        ].
        block2811c428Step = 42 ifTrue: [
            block2811c428Stack2 := nil.
            block2811c428PC := 43.
        ].
        block2811c428Step = 43 ifTrue: [
            block2811c428Local1 := block2811c428Stack2.
            block2811c428PC := 44.
        ].
        block2811c428Step = 44 ifTrue: [
            block2811c428Result := block2811c428Stack1.
            block2811c428Done := true.
        ].
    ].
    block2811c428Result
].
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 222] ifFalse: [recoveredPC := 236].
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack1 := (recoveredStack1) getOrCreateAdditionalImplInfo: (recoveredStack2).
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredPC := 240.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack3 := (recoveredStack3) copy.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack4 := (recoveredStack4) context.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack0 := (recoveredStack0) editImplConfig: (recoveredStack1) element: (recoveredStack2) additionalImplInfo: (recoveredStack3) context: (recoveredStack4).
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 268] ifFalse: [recoveredPC := 266].
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack0 := (recoveredStack0) implementation.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack0 := (recoveredStack0) additionalImplInfo.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 435] ifFalse: [recoveredPC := 290].
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedConfig.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack0 := (recoveredStack0) modifiable.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 300] ifFalse: [recoveredPC := 435].
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack0 := 'Shikhar'.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack1 := 'EHI46079'.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack1 := 'Call_70100'.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock314Value0 recoveredBlock314Value1 recoveredBlock314Value2 recoveredBlock314Value3 recoveredBlock314Value4 |
    recoveredBlock314Value0 := recoveredArg2.
    recoveredBlock314Value1 := (recoveredBlock314Value0) selectedConfig.
    recoveredBlock314Value2 := (recoveredBlock314Value1) sgClass.
    recoveredBlock314Value3 := [
    | recoveredBlock314Block326Value0 recoveredBlock314Block326Value1 recoveredBlock314Block326Value2 recoveredBlock314Block326Value3 |
    recoveredBlock314Block326Value0 := recoveredArg2.
    recoveredBlock314Block326Value1 := (recoveredBlock314Block326Value0) selectedConfig.
    recoveredBlock314Block326Value2 := [
    | recoveredBlock314Block326Block336Value0 recoveredBlock314Block326Block336Value1 recoveredBlock314Block326Block336Value2 recoveredBlock314Block326Block336Value3 recoveredBlock314Block326Block336Value4 recoveredBlock314Block326Block336Value5 |
    recoveredBlock314Block326Block336Value0 := recoveredArg1.
    recoveredBlock314Block326Block336Value1 := [:recoveredBlock314Block326Block336Block345Arg1 | 
    | recoveredBlock314Block326Block336Block345Stack0 recoveredBlock314Block326Block336Block345Stack1 recoveredBlock314Block326Block336Block345Stack2 recoveredBlock314Block326Block336Block345Stack3 recoveredBlock314Block326Block336Block345Stack4 recoveredBlock314Block326Block336Block345PC recoveredBlock314Block326Block336Block345Step recoveredBlock314Block326Block336Block345Done recoveredBlock314Block326Block336Block345Result |
    recoveredBlock314Block326Block336Block345Stack0 := nil.
    recoveredBlock314Block326Block336Block345PC := 352.
    recoveredBlock314Block326Block336Block345Done := false.
    [recoveredBlock314Block326Block336Block345Done not] whileTrue: [
        recoveredBlock314Block326Block336Block345Step := recoveredBlock314Block326Block336Block345PC.
        recoveredBlock314Block326Block336Block345Step = 352 ifTrue: [
            recoveredBlock314Block326Block336Block345Stack1 := recoveredArg2.
            recoveredBlock314Block326Block336Block345PC := 355.
        ].
        recoveredBlock314Block326Block336Block345Step = 355 ifTrue: [
            recoveredBlock314Block326Block336Block345Stack2 := recoveredLocal6.
            recoveredBlock314Block326Block336Block345PC := 358.
        ].
        recoveredBlock314Block326Block336Block345Step = 358 ifTrue: [
            recoveredBlock314Block326Block336Block345Stack3 := recoveredBlock314Block326Block336Block345Arg1.
            recoveredBlock314Block326Block336Block345PC := 359.
        ].
        recoveredBlock314Block326Block336Block345Step = 359 ifTrue: [
            (recoveredBlock314Block326Block336Block345Stack1) setConfig: (recoveredBlock314Block326Block336Block345Stack2) forElement: (recoveredBlock314Block326Block336Block345Stack3).
            recoveredBlock314Block326Block336Block345PC := 361.
        ].
        recoveredBlock314Block326Block336Block345Step = 361 ifTrue: [
            recoveredBlock314Block326Block336Block345Stack1 := recoveredLocal2.
            recoveredBlock314Block326Block336Block345PC := 364.
        ].
        recoveredBlock314Block326Block336Block345Step = 364 ifTrue: [
            (recoveredBlock314Block326Block336Block345Stack1 == nil) ifTrue: [recoveredBlock314Block326Block336Block345PC := 379] ifFalse: [recoveredBlock314Block326Block336Block345PC := 368].
        ].
        recoveredBlock314Block326Block336Block345Step = 368 ifTrue: [
            recoveredBlock314Block326Block336Block345Stack1 := recoveredArg2.
            recoveredBlock314Block326Block336Block345PC := 371.
        ].
        recoveredBlock314Block326Block336Block345Step = 371 ifTrue: [
            recoveredBlock314Block326Block336Block345Stack2 := recoveredLocal2.
            recoveredBlock314Block326Block336Block345PC := 374.
        ].
        recoveredBlock314Block326Block336Block345Step = 374 ifTrue: [
            recoveredBlock314Block326Block336Block345Stack2 := (recoveredBlock314Block326Block336Block345Stack2) copy.
            recoveredBlock314Block326Block336Block345PC := 376.
        ].
        recoveredBlock314Block326Block336Block345Step = 376 ifTrue: [
            recoveredBlock314Block326Block336Block345Stack3 := recoveredBlock314Block326Block336Block345Arg1.
            recoveredBlock314Block326Block336Block345PC := 377.
        ].
        recoveredBlock314Block326Block336Block345Step = 377 ifTrue: [
            (recoveredBlock314Block326Block336Block345Stack1) setAdditionalImplInfo: (recoveredBlock314Block326Block336Block345Stack2) forElement: (recoveredBlock314Block326Block336Block345Stack3).
            recoveredBlock314Block326Block336Block345PC := 379.
        ].
        recoveredBlock314Block326Block336Block345Step = 379 ifTrue: [
            recoveredBlock314Block326Block336Block345Stack1 := nil.
            recoveredBlock314Block326Block336Block345PC := 380.
        ].
        recoveredBlock314Block326Block336Block345Step = 380 ifTrue: [
            recoveredBlock314Block326Block336Block345Stack2 := recoveredBlock314Block326Block336Block345Arg1.
            recoveredBlock314Block326Block336Block345PC := 381.
        ].
        recoveredBlock314Block326Block336Block345Step = 381 ifTrue: [
            recoveredBlock314Block326Block336Block345Stack2 := (recoveredBlock314Block326Block336Block345Stack2) isExported.
            recoveredBlock314Block326Block336Block345PC := 383.
        ].
        recoveredBlock314Block326Block336Block345Step = 383 ifTrue: [
            (recoveredBlock314Block326Block336Block345Stack2) ifTrue: [recoveredBlock314Block326Block336Block345PC := 392] ifFalse: [recoveredBlock314Block326Block336Block345PC := 386].
        ].
        recoveredBlock314Block326Block336Block345Step = 386 ifTrue: [
            recoveredBlock314Block326Block336Block345Stack2 := recoveredBlock314Block326Block336Block345Arg1.
            recoveredBlock314Block326Block336Block345PC := 387.
        ].
        recoveredBlock314Block326Block336Block345Step = 387 ifTrue: [
            recoveredBlock314Block326Block336Block345Stack2 := (recoveredBlock314Block326Block336Block345Stack2) isImported.
            recoveredBlock314Block326Block336Block345PC := 389.
        ].
        recoveredBlock314Block326Block336Block345Step = 389 ifTrue: [
            (recoveredBlock314Block326Block336Block345Stack2) ifTrue: [recoveredBlock314Block326Block336Block345PC := 392] ifFalse: [recoveredBlock314Block326Block336Block345PC := 410].
        ].
        recoveredBlock314Block326Block336Block345Step = 392 ifTrue: [
            recoveredBlock314Block326Block336Block345Stack2 := recoveredBlock314Block326Block336Block345Arg1.
            recoveredBlock314Block326Block336Block345PC := 393.
        ].
        recoveredBlock314Block326Block336Block345Step = 393 ifTrue: [
            recoveredBlock314Block326Block336Block345Stack2 := (recoveredBlock314Block326Block336Block345Stack2) ownerSGClass.
            recoveredBlock314Block326Block336Block345PC := 395.
        ].
        recoveredBlock314Block326Block336Block345Step = 395 ifTrue: [
            (recoveredBlock314Block326Block336Block345Stack2 == nil) ifTrue: [recoveredBlock314Block326Block336Block345PC := 410] ifFalse: [recoveredBlock314Block326Block336Block345PC := 398].
        ].
        recoveredBlock314Block326Block336Block345Step = 398 ifTrue: [
            recoveredBlock314Block326Block336Block345PC := 399.
        ].
        recoveredBlock314Block326Block336Block345Step = 399 ifTrue: [
            recoveredBlock314Block326Block336Block345Stack1 := 'hw'.
            recoveredBlock314Block326Block336Block345PC := 401.
        ].
        recoveredBlock314Block326Block336Block345Step = 401 ifTrue: [
            recoveredBlock314Block326Block336Block345Stack2 := 'req_DET12758'.
            recoveredBlock314Block326Block336Block345PC := 403.
        ].
        recoveredBlock314Block326Block336Block345Step = 403 ifTrue: [
            recoveredBlock314Block326Block336Block345Stack1 := (recoveredBlock314Block326Block336Block345Stack1) == (recoveredBlock314Block326Block336Block345Stack2).
            recoveredBlock314Block326Block336Block345PC := 404.
        ].
        recoveredBlock314Block326Block336Block345Step = 404 ifTrue: [
            recoveredBlock314Block326Block336Block345PC := 405.
        ].
        recoveredBlock314Block326Block336Block345Step = 405 ifTrue: [
            recoveredBlock314Block326Block336Block345Stack1 := recoveredBlock314Block326Block336Block345Arg1.
            recoveredBlock314Block326Block336Block345PC := 406.
        ].
        recoveredBlock314Block326Block336Block345Step = 406 ifTrue: [
            recoveredBlock314Block326Block336Block345Stack1 := (recoveredBlock314Block326Block336Block345Stack1) ownerSGClass.
            recoveredBlock314Block326Block336Block345PC := 408.
        ].
        recoveredBlock314Block326Block336Block345Step = 408 ifTrue: [
            recoveredBlock314Block326Block336Block345Stack1 := (recoveredBlock314Block326Block336Block345Stack1) updateExportImportTimeStamp.
            recoveredBlock314Block326Block336Block345PC := 410.
        ].
        recoveredBlock314Block326Block336Block345Step = 410 ifTrue: [
            recoveredBlock314Block326Block336Block345Result := recoveredBlock314Block326Block336Block345Stack1.
            recoveredBlock314Block326Block336Block345Done := true.
        ].
    ].
    recoveredBlock314Block326Block336Block345Result
].
    (recoveredBlock314Block326Block336Value0) do: (recoveredBlock314Block326Block336Value1).
    recoveredBlock314Block326Block336Value2 := recoveredArg2.
    recoveredBlock314Block326Block336Value3 := (recoveredBlock314Block326Block336Value2) selectedConfig.
    (recoveredBlock314Block326Block336Value3) makeConsistent.
    recoveredBlock314Block326Block336Value4 := recoveredArg3.
    recoveredBlock314Block326Block336Value5 := (recoveredBlock314Block326Block336Value4) makeConsistent.
    recoveredBlock314Block326Block336Value5
].
    recoveredBlock314Block326Value3 := (recoveredBlock314Block326Value1) suspendObserving: (recoveredBlock314Block326Value2) notify: (true).
    recoveredBlock314Block326Value3
].
    recoveredBlock314Value4 := (recoveredBlock314Value2) suspendObserving: (recoveredBlock314Value3) notify: (false).
    recoveredBlock314Value4
].
            recoveredPC := 433.
        ].
        recoveredStep = 433 ifTrue: [
            (recoveredStack0) showBusyCursorWhile: (recoveredStack1).
            recoveredPC := 435.
        ].
        recoveredStep = 435 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 436.
        ].
        recoveredStep = 436 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

