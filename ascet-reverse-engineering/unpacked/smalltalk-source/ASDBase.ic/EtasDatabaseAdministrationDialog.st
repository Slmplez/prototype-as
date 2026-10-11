"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000f88; bytecode file offset 0x8ffcfc"
!EtasDatabaseAdministrationDialog methodsFor: 'recovered'!
storeChanges
    ^self
! !

"ASDBase.ic method 0x200024e0; bytecode file offset 0x8ffcfc"
!EtasDatabaseAdministrationDialog methodsFor: 'recovered'!
preClosingActivities
    ^self
! !

"ASDBase.ic method 0x2000a814; bytecode file offset 0x908be4"
!EtasDatabaseAdministrationDialog methodsFor: 'recovered'!
cancel
    | recoveredValue0 |
    recoveredValue0 := (self) close.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20010794; bytecode file offset 0x90d208"
!EtasDatabaseAdministrationDialog methodsFor: 'recovered'!
cancelActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 |
    recoveredValue0 := (self) cancel.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200108e4; bytecode file offset 0x90d208"
!EtasDatabaseAdministrationDialog methodsFor: 'recovered'!
okActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 |
    recoveredValue0 := (self) ok.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20047aac; bytecode file offset 0x9451f8"
!EtasDatabaseAdministrationDialog methodsFor: 'recovered'!
okButton
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('ok').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20070010; bytecode file offset 0x96cb7c"
!EtasDatabaseAdministrationDialog methodsFor: 'recovered'!
dbAdminCtrl
    | recoveredValue0 |
    recoveredValue0 := dbAdminCtrl.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007051c; bytecode file offset 0x96ce40"
!EtasDatabaseAdministrationDialog methodsFor: 'recovered'!
userInterface
    | recoveredValue0 |
    recoveredValue0 := userInterface.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c6a14; bytecode file offset 0x9c3470"
!EtasDatabaseAdministrationDialog methodsFor: 'recovered'!
userInterface: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    userInterface := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d7b5c; bytecode file offset 0x9d4494"
!EtasDatabaseAdministrationDialog methodsFor: 'recovered'!
checkBoxIndex: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) printString.
    recoveredValue2 := ('checkBox') , (recoveredValue1).
    recoveredValue3 := (recoveredValue2) asAtom.
    recoveredValue4 := (self) widgetAt: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x2012c828; bytecode file offset 0xa290f8"
!EtasDatabaseAdministrationDialog methodsFor: 'recovered'!
updateWindowLabel
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) shell.
    recoveredValue1 := EtDatabaseInfoFor.
    recoveredValue2 := (self) library.
    recoveredValue3 := (recoveredValue2) location.
    recoveredValue4 := (recoveredValue3) fileName.
    recoveredValue5 := (recoveredValue1) bindWith: (recoveredValue4).
    (recoveredValue0) title: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x2013ff1c; bytecode file offset 0xa3c7e0"
!EtasDatabaseAdministrationDialog methodsFor: 'recovered'!
analyzeDatabase
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
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) uiController.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) checkModelStructure: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20158cdc; bytecode file offset 0xa555a4"
!EtasDatabaseAdministrationDialog methodsFor: 'recovered'!
initFocusWrapper
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := RBFocusBorderController.
    recoveredValue1 := (recoveredValue0) create.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    (recoveredValue2) borderWidth: (3).
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (self) focusWidgets.
    (recoveredValue3) addWidgets: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x2017c6a8; bytecode file offset 0xa78f68"
!EtasDatabaseAdministrationDialog methodsFor: 'recovered'!
toggleCheckbox: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkBoxIndex: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
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
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) set.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) set: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201a1d40; bytecode file offset 0xa9e608"
!EtasDatabaseAdministrationDialog methodsFor: 'recovered'!
ok
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) oneCheckIsSelected.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) runChecks.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) okButton.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201a32e4; bytecode file offset 0xa9fbfc"
!EtasDatabaseAdministrationDialog methodsFor: 'recovered'!
initializeAfterCreate
    super initializeAfterCreate.
    (self) updateWindowLabel.
    (self) initFocusWrapper.
    (self) installActionKeys.
    (self) updateFonts.
    (self) updateOkButton.
    ^self
! !

"ASDBase.ic method 0x201aad90; bytecode file offset 0xaa765c"
!EtasDatabaseAdministrationDialog methodsFor: 'recovered'!
initialize
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            super initialize.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) getDBInterfaceGlobal.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) isWorkspaceMode.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := DBAdministrationController.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) create: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            dbAdminCtrl := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201ee074; bytecode file offset 0xaea940"
!EtasDatabaseAdministrationDialog methodsFor: 'recovered'!
deferAllRedraw: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) userInterface.
    recoveredValue1 := (recoveredValue0) shell.
    recoveredValue2 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 |
    recoveredBlock6Value0 := recoveredArg1.
    recoveredBlock6Value1 := (recoveredBlock6Value0) value.
    recoveredLocal1 := recoveredBlock6Value1.
    recoveredBlock6Value2 := (self) library.
    recoveredBlock6Value3 := (recoveredBlock6Value2) openCurrentDataStorage.
    recoveredBlock6Value3
].
    (recoveredValue1) deferRedraw: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x2020beec; bytecode file offset 0xb087bc"
!EtasDatabaseAdministrationDialog methodsFor: 'recovered'!
convertDatabase
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
            recoveredStack0 := (recoveredStack0) userInterface.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 recoveredBlock14Value3 |
    recoveredBlock14Value0 := (self) dbAdminCtrl.
    recoveredBlock14Value1 := recoveredBlock14Value0.
    recoveredBlock14Value2 := recoveredBlock14Arg1.
    (recoveredBlock14Value1) progressWindow: (recoveredBlock14Value2).
    recoveredBlock14Value3 := (recoveredBlock14Value0) readWriteAll.
    recoveredBlock14Value3
].
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) doWithProgressBar: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20222140; bytecode file offset 0xb1ea00"
!EtasDatabaseAdministrationDialog methodsFor: 'recovered'!
evaluateBlock: recoveredArg1 title: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := [:recoveredBlock4Arg1 | 
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 |
    recoveredBlock4Value0 := recoveredArg1.
    recoveredBlock4Value1 := recoveredBlock4Arg1.
    recoveredBlock4Value2 := (recoveredBlock4Value0) value: (recoveredBlock4Value1).
    recoveredBlock4Value3 := recoveredBlock4Value2.
    recoveredLocal1 := recoveredBlock4Value3.
    recoveredBlock4Value2
].
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := SCEtas.
    (self) execWithProgressDialog: (recoveredValue0) message: (recoveredValue1) showProgress: (true) title: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x2025ffc8; bytecode file offset 0xb5c898"
!EtasDatabaseAdministrationDialog methodsFor: 'recovered'!
repairDatabase
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
            recoveredStack0 := (recoveredStack0) supportsDefragmentation.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock21Value0 recoveredBlock21Value1 recoveredBlock21Value2 |
    recoveredBlock21Value0 := (self) dbAdminCtrl.
    recoveredBlock21Value1 := (self) userInterface.
    recoveredBlock21Value2 := (recoveredBlock21Value0) recoverDB: (recoveredBlock21Value1).
    recoveredBlock21Value2
].
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) deferAllRedraw: (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20273250; bytecode file offset 0xb6fb1c"
!EtasDatabaseAdministrationDialog methodsFor: 'recovered'!
focusWidgets
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) dbChecks.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) checkBoxIndex: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack0) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 16] ifFalse: [recoveredLocal1 := nil. recoveredPC := 37]] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 35] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202a05e0; bytecode file offset 0xb9ceb8"
!EtasDatabaseAdministrationDialog methodsFor: 'recovered'!
defragmentation
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
            recoveredStack0 := (recoveredStack0) supportsDefragmentation.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) userInterface.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := [:recoveredBlock22Arg1 | 
    | recoveredBlock22Value0 recoveredBlock22Value1 recoveredBlock22Value2 recoveredBlock22Value3 |
    recoveredBlock22Value0 := (self) dbAdminCtrl.
    recoveredBlock22Value1 := recoveredBlock22Value0.
    recoveredBlock22Value2 := recoveredBlock22Arg1.
    (recoveredBlock22Value1) progressWindow: (recoveredBlock22Value2).
    recoveredBlock22Value3 := (recoveredBlock22Value0) compactDataBase.
    recoveredBlock22Value3
].
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) doWithProgressBar: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) library.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) openCurrentDataStorage.
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

"ASDBase.ic method 0x202abf6c; bytecode file offset 0xba8840"
!EtasDatabaseAdministrationDialog methodsFor: 'recovered'!
checkBoxActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) dbChecks.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := [
    ^nil
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) at: (4).
    recoveredValue5 := [:recoveredBlock21Arg1 | 
    | recoveredBlock21Value0 recoveredBlock21Value1 recoveredBlock21Value2 recoveredBlock21Value3 recoveredBlock21Value4 recoveredBlock21Value5 |
    recoveredBlock21Value0 := recoveredBlock21Arg1.
    recoveredBlock21Value1 := (self) checkBoxIndex: (recoveredBlock21Value0).
    recoveredBlock21Value2 := recoveredArg1.
    recoveredBlock21Value3 := (recoveredBlock21Value2) set.
    recoveredBlock21Value4 := (recoveredBlock21Value3) not.
    recoveredBlock21Value5 := (recoveredBlock21Value1) sensitive: (recoveredBlock21Value4).
    recoveredBlock21Value5
].
    (recoveredValue4) do: (recoveredValue5).
    (self) updateOkButton.
    ^self
! !

"ASDBase.ic method 0x202b37d8; bytecode file offset 0xbb00a8"
!EtasDatabaseAdministrationDialog methodsFor: 'recovered'!
updateOkButton
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) shell.
    recoveredValue1 := [
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) oneCheckIsSelected.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            (recoveredBlock5Stack0) ifTrue: [recoveredBlock5PC := 16] ifFalse: [recoveredBlock5PC := 24].
        ].
        recoveredBlock5Step = 16 ifTrue: [
            recoveredBlock5Stack0 := self.
            recoveredBlock5PC := 17.
        ].
        recoveredBlock5Step = 17 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) okButton.
            recoveredBlock5PC := 18.
        ].
        recoveredBlock5Step = 18 ifTrue: [
            recoveredBlock5Stack1 := true.
            recoveredBlock5PC := 19.
        ].
        recoveredBlock5Step = 19 ifTrue: [
            (recoveredBlock5Stack0) sensitive: (recoveredBlock5Stack1).
            recoveredBlock5PC := 21.
        ].
        recoveredBlock5Step = 21 ifTrue: [
            recoveredBlock5PC := 29.
        ].
        recoveredBlock5Step = 24 ifTrue: [
            recoveredBlock5Stack0 := self.
            recoveredBlock5PC := 25.
        ].
        recoveredBlock5Step = 25 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) okButton.
            recoveredBlock5PC := 26.
        ].
        recoveredBlock5Step = 26 ifTrue: [
            recoveredBlock5Stack1 := false.
            recoveredBlock5PC := 27.
        ].
        recoveredBlock5Step = 27 ifTrue: [
            (recoveredBlock5Stack0) sensitive: (recoveredBlock5Stack1).
            recoveredBlock5PC := 29.
        ].
        recoveredBlock5Step = 29 ifTrue: [
            recoveredBlock5Stack0 := self.
            recoveredBlock5PC := 30.
        ].
        recoveredBlock5Step = 30 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) okButton.
            recoveredBlock5PC := 31.
        ].
        recoveredBlock5Step = 31 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Stack0.
            recoveredBlock5PC := 32.
        ].
        recoveredBlock5Step = 32 ifTrue: [
            recoveredBlock5Stack2 := 25.
            recoveredBlock5PC := 34.
        ].
        recoveredBlock5Step = 34 ifTrue: [
            (recoveredBlock5Stack1) height: (recoveredBlock5Stack2).
            recoveredBlock5Stack1 := recoveredBlock5Stack0.
            recoveredBlock5PC := 37.
        ].
        recoveredBlock5Step = 37 ifTrue: [
            recoveredBlock5Stack2 := 90.
            recoveredBlock5PC := 40.
        ].
        recoveredBlock5Step = 40 ifTrue: [
            (recoveredBlock5Stack1) width: (recoveredBlock5Stack2).
            recoveredBlock5PC := 42.
        ].
        recoveredBlock5Step = 42 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack0.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) deferRedraw: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x202d49c0; bytecode file offset 0xbd1288"
!EtasDatabaseAdministrationDialog methodsFor: 'recovered'!
oneCheckIsSelected
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) dbChecks.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) checkBoxIndex: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) set.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) sensitive.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal2 isInteger]) ifTrue: [(recoveredLocal2 + 1 <= recoveredStack0) ifTrue: [recoveredLocal2 := recoveredLocal2 + 1. recoveredPC := 12] ifFalse: [recoveredLocal2 := nil. recoveredPC := 46]] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2034ea64; bytecode file offset 0xc4b328"
!EtasDatabaseAdministrationDialog methodsFor: 'recovered'!
checkLibraries: recoveredArg1 resultCollection: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 |
    recoveredLocal1 := true.
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Stack0 recoveredBlock11Stack1 recoveredBlock11Stack2 recoveredBlock11Stack3 recoveredBlock11PC recoveredBlock11Step recoveredBlock11Done recoveredBlock11Result |
    recoveredBlock11Stack0 := self.
    recoveredBlock11PC := 18.
    recoveredBlock11Done := false.
    [recoveredBlock11Done not] whileTrue: [
        recoveredBlock11Step := recoveredBlock11PC.
        recoveredBlock11Step = 18 ifTrue: [
            recoveredBlock11Stack1 := nil.
            recoveredBlock11PC := 19.
        ].
        recoveredBlock11Step = 19 ifTrue: [
            recoveredBlock11Stack2 := recoveredLocal1.
            recoveredBlock11PC := 22.
        ].
        recoveredBlock11Step = 22 ifTrue: [
            (recoveredBlock11Stack2) ifTrue: [recoveredBlock11PC := 26] ifFalse: [recoveredBlock11PC := 60].
        ].
        recoveredBlock11Step = 26 ifTrue: [
            recoveredBlock11PC := 27.
        ].
        recoveredBlock11Step = 27 ifTrue: [
            recoveredBlock11Stack1 := self.
            recoveredBlock11PC := 28.
        ].
        recoveredBlock11Step = 28 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) userInterface.
            recoveredBlock11PC := 29.
        ].
        recoveredBlock11Step = 29 ifTrue: [
            recoveredBlock11Stack2 := [:recoveredBlock11Block29Arg1 | 
    | recoveredBlock11Block29Stack0 recoveredBlock11Block29Stack1 recoveredBlock11Block29Stack2 recoveredBlock11Block29Stack3 recoveredBlock11Block29Stack4 recoveredBlock11Block29Stack5 recoveredBlock11Block29Stack6 recoveredBlock11Block29PC recoveredBlock11Block29Step recoveredBlock11Block29Done recoveredBlock11Block29Result |
    recoveredBlock11Block29Stack0 := self.
    recoveredBlock11Block29PC := 36.
    recoveredBlock11Block29Done := false.
    [recoveredBlock11Block29Done not] whileTrue: [
        recoveredBlock11Block29Step := recoveredBlock11Block29PC.
        recoveredBlock11Block29Step = 36 ifTrue: [
            recoveredBlock11Block29Stack1 := nil.
            recoveredBlock11Block29PC := 37.
        ].
        recoveredBlock11Block29Step = 37 ifTrue: [
            recoveredBlock11Block29Stack2 := self.
            recoveredBlock11Block29PC := 38.
        ].
        recoveredBlock11Block29Step = 38 ifTrue: [
            recoveredBlock11Block29Stack3 := recoveredBlock11Arg1.
            recoveredBlock11Block29PC := 41.
        ].
        recoveredBlock11Block29Step = 41 ifTrue: [
            recoveredBlock11Block29Stack4 := recoveredArg2.
            recoveredBlock11Block29PC := 44.
        ].
        recoveredBlock11Block29Step = 44 ifTrue: [
            recoveredBlock11Block29Stack5 := recoveredBlock11Block29Arg1.
            recoveredBlock11Block29PC := 45.
        ].
        recoveredBlock11Block29Step = 45 ifTrue: [
            recoveredBlock11Block29Stack2 := (recoveredBlock11Block29Stack2) checkLibrary: (recoveredBlock11Block29Stack3) resultCollection: (recoveredBlock11Block29Stack4) progressWindow: (recoveredBlock11Block29Stack5).
            recoveredBlock11Block29PC := 48.
        ].
        recoveredBlock11Block29Step = 48 ifTrue: [
            (recoveredBlock11Block29Stack2 ~~ nil) ifTrue: [recoveredBlock11Block29PC := 58] ifFalse: [recoveredBlock11Block29PC := 52].
        ].
        recoveredBlock11Block29Step = 52 ifTrue: [
            recoveredBlock11Block29PC := 53.
        ].
        recoveredBlock11Block29Step = 53 ifTrue: [
            recoveredBlock11Block29Stack1 := false.
            recoveredBlock11Block29PC := 54.
        ].
        recoveredBlock11Block29Step = 54 ifTrue: [
            recoveredBlock11Block29Stack2 := recoveredBlock11Block29Stack1.
            recoveredBlock11Block29PC := 55.
        ].
        recoveredBlock11Block29Step = 55 ifTrue: [
            recoveredLocal1 := recoveredBlock11Block29Stack2.
            recoveredBlock11Block29PC := 58.
        ].
        recoveredBlock11Block29Step = 58 ifTrue: [
            recoveredBlock11Block29Result := recoveredBlock11Block29Stack1.
            recoveredBlock11Block29Done := true.
        ].
    ].
    recoveredBlock11Block29Result
].
            recoveredBlock11PC := 59.
        ].
        recoveredBlock11Step = 59 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) doWithProgressBar: (recoveredBlock11Stack2).
            recoveredBlock11PC := 60.
        ].
        recoveredBlock11Step = 60 ifTrue: [
            recoveredBlock11Result := recoveredBlock11Stack1.
            recoveredBlock11Done := true.
        ].
    ].
    recoveredBlock11Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20459bd0; bytecode file offset 0xd564cc"
!EtasDatabaseAdministrationDialog methodsFor: 'recovered'!
checkModelStructure: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            recoveredStack0 := OrderedCollection.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) library.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) commit.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) emptyCache: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := SGMonitorStreamDummy.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := EtDBAnalyze.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) addText: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := SGDatabaseAccess.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) libraryKeys.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkLibraries: (recoveredStack1) resultCollection: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := EtNoErrorsFound.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0) addText: (recoveredStack1).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredPC := 109.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := EtComponentsRepaired.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack0) addText: (recoveredStack1).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := [:recoveredBlock94Arg1 | 
    | recoveredBlock94Value0 recoveredBlock94Value1 recoveredBlock94Value2 |
    recoveredBlock94Value0 := recoveredLocal1.
    recoveredBlock94Value1 := recoveredBlock94Arg1.
    recoveredBlock94Value2 := (recoveredBlock94Value0) addText: (recoveredBlock94Value1).
    recoveredBlock94Value2
].
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack0) printReady.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20467234; bytecode file offset 0xd63b48"
!EtasDatabaseAdministrationDialog methodsFor: 'recovered'!
installActionKeys
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) widgetKeyActions: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetKeyActions.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) shell.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [
    | block28100c90Value0 block28100c90Value1 |
    block28100c90Value0 := Dictionary.
    block28100c90Value1 := (block28100c90Value0) new.
    block28100c90Value1
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
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
            recoveredStack1 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := HKCancel.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := 'cancel'.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := HKOptimize.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := DirectedMessageWithText.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack4 := 'toggleCheckbox:'.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack5 := #(1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := (recoveredStack3) selector: (recoveredStack4) arguments: (recoveredStack5) receiver: (recoveredStack6).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := HKConvert.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := DirectedMessageWithText.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack4 := 'toggleCheckbox:'.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack5 := #(2).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack3 := (recoveredStack3) selector: (recoveredStack4) arguments: (recoveredStack5) receiver: (recoveredStack6).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := HKRepair.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack3 := DirectedMessageWithText.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack4 := 'toggleCheckbox:'.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack5 := #(3).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack3 := (recoveredStack3) selector: (recoveredStack4) arguments: (recoveredStack5) receiver: (recoveredStack6).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := HKCheck.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack3 := DirectedMessageWithText.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack4 := 'toggleCheckbox:'.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack5 := #(4).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack3 := (recoveredStack3) selector: (recoveredStack4) arguments: (recoveredStack5) receiver: (recoveredStack6).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := 'Alt-e'.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack3 := DirectedMessageWithText.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack4 := 'runChecks'.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack3 := (recoveredStack3) selector: (recoveredStack4) receiver: (recoveredStack5).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetKeyActions.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := (recoveredStack1) shell.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204f0a34; bytecode file offset 0xded334"
!EtasDatabaseAdministrationDialog methodsFor: 'recovered'!
dbChecks
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := OrderedCollection.
    recoveredValue5 := (recoveredValue4) new.
    recoveredValue6 := recoveredValue5.
    recoveredValue7 := EtOptimize.
    (recoveredValue6) add: (recoveredValue7).
    recoveredValue8 := recoveredValue5.
    recoveredValue9 := EtDBDefrag.
    (recoveredValue8) add: (recoveredValue9).
    recoveredValue10 := recoveredValue5.
    recoveredValue11 := [
    | recoveredBlock26Value0 |
    recoveredBlock26Value0 := (self) defragmentation.
    recoveredBlock26Value0
].
    (recoveredValue10) add: (recoveredValue11).
    recoveredValue12 := recoveredValue5.
    (recoveredValue12) add: (#()).
    recoveredValue13 := recoveredValue5.
    (recoveredValue13) add: (false).
    (recoveredValue3) at: (1) put: (recoveredValue5).
    recoveredValue14 := recoveredValue2.
    recoveredValue15 := OrderedCollection.
    recoveredValue16 := (recoveredValue15) new.
    recoveredValue17 := recoveredValue16.
    recoveredValue18 := EtConvert.
    (recoveredValue17) add: (recoveredValue18).
    recoveredValue19 := recoveredValue16.
    recoveredValue20 := EtDBReadWriteToSpeedUp.
    (recoveredValue19) add: (recoveredValue20).
    recoveredValue21 := recoveredValue16.
    recoveredValue22 := [
    | recoveredBlock65Value0 |
    recoveredBlock65Value0 := (self) convertDatabase.
    recoveredBlock65Value0
].
    (recoveredValue21) add: (recoveredValue22).
    recoveredValue23 := recoveredValue16.
    (recoveredValue23) add: (#()).
    recoveredValue24 := recoveredValue16.
    (recoveredValue24) add: (false).
    (recoveredValue14) at: (2) put: (recoveredValue16).
    recoveredValue25 := recoveredValue2.
    recoveredValue26 := OrderedCollection.
    recoveredValue27 := (recoveredValue26) new.
    recoveredValue28 := recoveredValue27.
    recoveredValue29 := EtRepair.
    (recoveredValue28) add: (recoveredValue29).
    recoveredValue30 := recoveredValue27.
    recoveredValue31 := EtDBOptimizeAndRepair.
    (recoveredValue30) add: (recoveredValue31).
    recoveredValue32 := recoveredValue27.
    recoveredValue33 := [
    | recoveredBlock105Value0 |
    recoveredBlock105Value0 := (self) repairDatabase.
    recoveredBlock105Value0
].
    (recoveredValue32) add: (recoveredValue33).
    recoveredValue34 := recoveredValue27.
    (recoveredValue34) add: (#(1 2)).
    recoveredValue35 := recoveredValue27.
    (recoveredValue35) add: (false).
    (recoveredValue25) at: (3) put: (recoveredValue27).
    recoveredValue36 := recoveredValue2.
    recoveredValue37 := OrderedCollection.
    recoveredValue38 := (recoveredValue37) new.
    recoveredValue39 := recoveredValue38.
    recoveredValue40 := EtCheck.
    (recoveredValue39) add: (recoveredValue40).
    recoveredValue41 := recoveredValue38.
    recoveredValue42 := EtDBCheckReadability.
    (recoveredValue41) add: (recoveredValue42).
    recoveredValue43 := recoveredValue38.
    recoveredValue44 := [
    | recoveredBlock145Value0 |
    recoveredBlock145Value0 := (self) analyzeDatabase.
    recoveredBlock145Value0
].
    (recoveredValue43) add: (recoveredValue44).
    recoveredValue45 := recoveredValue38.
    (recoveredValue45) add: (#()).
    recoveredValue46 := recoveredValue38.
    (recoveredValue46) add: (true).
    (recoveredValue36) at: (4) put: (recoveredValue38).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2057acdc; bytecode file offset 0xe77634"
!EtasDatabaseAdministrationDialog methodsFor: 'recovered'!
checkLibrary: recoveredArg1 resultCollection: recoveredArg2 progressWindow: recoveredArg3
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
            recoveredStack2 := recoveredArg3.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := EtDBAnalyze.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack4 := EtAnalyzing.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack5 := (recoveredStack5) label.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack4 := (recoveredStack4) bindWith: (recoveredStack5).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack5 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Stack0 recoveredBlock19Stack1 recoveredBlock19Stack2 recoveredBlock19Stack3 recoveredBlock19Stack4 recoveredBlock19Stack5 recoveredBlock19PC recoveredBlock19Step recoveredBlock19Done recoveredBlock19Result |
    recoveredBlock19Stack0 := self.
    recoveredBlock19PC := 26.
    recoveredBlock19Done := false.
    [recoveredBlock19Done not] whileTrue: [
        recoveredBlock19Step := recoveredBlock19PC.
        recoveredBlock19Step = 26 ifTrue: [
            recoveredBlock19Stack1 := nil.
            recoveredBlock19PC := 27.
        ].
        recoveredBlock19Step = 27 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Arg1.
            recoveredBlock19PC := 30.
        ].
        recoveredBlock19Step = 30 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) isRBDBUndefinedObject.
            recoveredBlock19PC := 32.
        ].
        recoveredBlock19Step = 32 ifTrue: [
            (recoveredBlock19Stack2) ifTrue: [recoveredBlock19PC := 235] ifFalse: [recoveredBlock19PC := 36].
        ].
        recoveredBlock19Step = 36 ifTrue: [
            recoveredBlock19PC := 37.
        ].
        recoveredBlock19Step = 37 ifTrue: [
            recoveredBlock19Stack1 := recoveredBlock19Arg1.
            recoveredBlock19PC := 40.
        ].
        recoveredBlock19Step = 40 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) children.
            recoveredBlock19PC := 42.
        ].
        recoveredBlock19Step = 42 ifTrue: [
            recoveredBlock19Stack2 := [:recoveredBlock19Block42Arg1 | 
    | recoveredBlock19Block42Local1 recoveredBlock19Block42Stack0 recoveredBlock19Block42Stack1 recoveredBlock19Block42Stack2 recoveredBlock19Block42Stack3 recoveredBlock19Block42Stack4 recoveredBlock19Block42PC recoveredBlock19Block42Step recoveredBlock19Block42Done recoveredBlock19Block42Result |
    recoveredBlock19Block42Stack0 := nil.
    recoveredBlock19Block42PC := 48.
    recoveredBlock19Block42Done := false.
    [recoveredBlock19Block42Done not] whileTrue: [
        recoveredBlock19Block42Step := recoveredBlock19Block42PC.
        recoveredBlock19Block42Step = 48 ifTrue: [
            recoveredBlock19Block42Stack1 := nil.
            recoveredBlock19Block42PC := 49.
        ].
        recoveredBlock19Block42Step = 49 ifTrue: [
            recoveredBlock19Block42Stack2 := recoveredBlock19Block42Arg1.
            recoveredBlock19Block42PC := 50.
        ].
        recoveredBlock19Block42Step = 50 ifTrue: [
            recoveredBlock19Block42Stack2 := (recoveredBlock19Block42Stack2) isRBDBUndefinedObject.
            recoveredBlock19Block42PC := 52.
        ].
        recoveredBlock19Block42Step = 52 ifTrue: [
            (recoveredBlock19Block42Stack2) ifTrue: [recoveredBlock19Block42PC := 122] ifFalse: [recoveredBlock19Block42PC := 56].
        ].
        recoveredBlock19Block42Step = 56 ifTrue: [
            recoveredBlock19Block42PC := 57.
        ].
        recoveredBlock19Block42Step = 57 ifTrue: [
            recoveredBlock19Block42Stack1 := nil.
            recoveredBlock19Block42PC := 58.
        ].
        recoveredBlock19Block42Step = 58 ifTrue: [
            recoveredBlock19Block42Stack2 := recoveredBlock19Block42Arg1.
            recoveredBlock19Block42PC := 59.
        ].
        recoveredBlock19Block42Step = 59 ifTrue: [
            recoveredBlock19Block42Stack3 := [:block28112954Arg1 | 
    nil
].
            recoveredBlock19Block42PC := 61.
        ].
        recoveredBlock19Block42Step = 61 ifTrue: [
            recoveredBlock19Block42PC := 66.
        ].
        recoveredBlock19Block42Step = 66 ifTrue: [
            recoveredBlock19Block42Stack2 := (recoveredBlock19Block42Stack2) parentIfUndefined: (recoveredBlock19Block42Stack3).
            recoveredBlock19Block42PC := 68.
        ].
        recoveredBlock19Block42Step = 68 ifTrue: [
            recoveredBlock19Block42Stack3 := recoveredBlock19Block42Stack2.
            recoveredBlock19Block42PC := 69.
        ].
        recoveredBlock19Block42Step = 69 ifTrue: [
            recoveredBlock19Block42Local1 := recoveredBlock19Block42Stack3.
            recoveredBlock19Block42PC := 70.
        ].
        recoveredBlock19Block42Step = 70 ifTrue: [
            (recoveredBlock19Block42Stack2 == nil) ifTrue: [recoveredBlock19Block42PC := 86] ifFalse: [recoveredBlock19Block42PC := 74].
        ].
        recoveredBlock19Block42Step = 74 ifTrue: [
            recoveredBlock19Block42Stack2 := recoveredBlock19Block42Local1.
            recoveredBlock19Block42PC := 75.
        ].
        recoveredBlock19Block42Step = 75 ifTrue: [
            recoveredBlock19Block42Stack2 := (recoveredBlock19Block42Stack2) dbObject.
            recoveredBlock19Block42PC := 77.
        ].
        recoveredBlock19Block42Step = 77 ifTrue: [
            recoveredBlock19Block42Stack3 := recoveredBlock19Arg1.
            recoveredBlock19Block42PC := 80.
        ].
        recoveredBlock19Block42Step = 80 ifTrue: [
            recoveredBlock19Block42Stack3 := (recoveredBlock19Block42Stack3) dbObject.
            recoveredBlock19Block42PC := 82.
        ].
        recoveredBlock19Block42Step = 82 ifTrue: [
            recoveredBlock19Block42Stack2 := (recoveredBlock19Block42Stack2) ~= (recoveredBlock19Block42Stack3).
            recoveredBlock19Block42PC := 83.
        ].
        recoveredBlock19Block42Step = 83 ifTrue: [
            (recoveredBlock19Block42Stack2) ifTrue: [recoveredBlock19Block42PC := 86] ifFalse: [recoveredBlock19Block42PC := 122].
        ].
        recoveredBlock19Block42Step = 86 ifTrue: [
            recoveredBlock19Block42PC := 87.
        ].
        recoveredBlock19Block42Step = 87 ifTrue: [
            recoveredBlock19Block42Stack1 := recoveredBlock19Block42Arg1.
            recoveredBlock19Block42PC := 88.
        ].
        recoveredBlock19Block42Step = 88 ifTrue: [
            recoveredBlock19Block42Stack2 := recoveredBlock19Arg1.
            recoveredBlock19Block42PC := 91.
        ].
        recoveredBlock19Block42Step = 91 ifTrue: [
            (recoveredBlock19Block42Stack1) parent: (recoveredBlock19Block42Stack2).
            recoveredBlock19Block42PC := 93.
        ].
        recoveredBlock19Block42Step = 93 ifTrue: [
            recoveredBlock19Block42Stack1 := recoveredArg2.
            recoveredBlock19Block42PC := 96.
        ].
        recoveredBlock19Block42Step = 96 ifTrue: [
            recoveredBlock19Block42Stack2 := recoveredBlock19Block42Arg1.
            recoveredBlock19Block42PC := 97.
        ].
        recoveredBlock19Block42Step = 97 ifTrue: [
            recoveredBlock19Block42Stack2 := (recoveredBlock19Block42Stack2) label.
            recoveredBlock19Block42PC := 98.
        ].
        recoveredBlock19Block42Step = 98 ifTrue: [
            recoveredBlock19Block42Stack3 := '->'.
            recoveredBlock19Block42PC := 100.
        ].
        recoveredBlock19Block42Step = 100 ifTrue: [
            recoveredBlock19Block42Stack2 := (recoveredBlock19Block42Stack2) , (recoveredBlock19Block42Stack3).
            recoveredBlock19Block42PC := 102.
        ].
        recoveredBlock19Block42Step = 102 ifTrue: [
            recoveredBlock19Block42Stack3 := recoveredBlock19Arg1.
            recoveredBlock19Block42PC := 105.
        ].
        recoveredBlock19Block42Step = 105 ifTrue: [
            recoveredBlock19Block42Stack3 := (recoveredBlock19Block42Stack3) label.
            recoveredBlock19Block42PC := 106.
        ].
        recoveredBlock19Block42Step = 106 ifTrue: [
            recoveredBlock19Block42Stack2 := (recoveredBlock19Block42Stack2) , (recoveredBlock19Block42Stack3).
            recoveredBlock19Block42PC := 108.
        ].
        recoveredBlock19Block42Step = 108 ifTrue: [
            recoveredBlock19Block42Stack3 := ' (parent)'.
            recoveredBlock19Block42PC := 110.
        ].
        recoveredBlock19Block42Step = 110 ifTrue: [
            recoveredBlock19Block42Stack2 := (recoveredBlock19Block42Stack2) , (recoveredBlock19Block42Stack3).
            recoveredBlock19Block42PC := 112.
        ].
        recoveredBlock19Block42Step = 112 ifTrue: [
            (recoveredBlock19Block42Stack1) add: (recoveredBlock19Block42Stack2).
            recoveredBlock19Block42PC := 114.
        ].
        recoveredBlock19Block42Step = 114 ifTrue: [
            recoveredBlock19Block42Stack1 := recoveredBlock19Block42Arg1.
            recoveredBlock19Block42PC := 115.
        ].
        recoveredBlock19Block42Step = 115 ifTrue: [
            (recoveredBlock19Block42Stack1) modifiedWithoutTimeStamp.
            recoveredBlock19Block42PC := 117.
        ].
        recoveredBlock19Block42Step = 117 ifTrue: [
            recoveredBlock19Block42Stack1 := recoveredBlock19Block42Arg1.
            recoveredBlock19Block42PC := 118.
        ].
        recoveredBlock19Block42Step = 118 ifTrue: [
            recoveredBlock19Block42Stack1 := (recoveredBlock19Block42Stack1) dbObject.
            recoveredBlock19Block42PC := 120.
        ].
        recoveredBlock19Block42Step = 120 ifTrue: [
            recoveredBlock19Block42Stack1 := (recoveredBlock19Block42Stack1) commit.
            recoveredBlock19Block42PC := 122.
        ].
        recoveredBlock19Block42Step = 122 ifTrue: [
            recoveredBlock19Block42Result := recoveredBlock19Block42Stack1.
            recoveredBlock19Block42Done := true.
        ].
    ].
    recoveredBlock19Block42Result
].
            recoveredBlock19PC := 123.
        ].
        recoveredBlock19Step = 123 ifTrue: [
            (recoveredBlock19Stack1) do: (recoveredBlock19Stack2).
            recoveredBlock19PC := 125.
        ].
        recoveredBlock19Step = 125 ifTrue: [
            recoveredBlock19Stack1 := 'Kk'.
            recoveredBlock19PC := 127.
        ].
        recoveredBlock19Step = 127 ifTrue: [
            recoveredBlock19Stack2 := 'Call_64446'.
            recoveredBlock19PC := 129.
        ].
        recoveredBlock19Step = 129 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) == (recoveredBlock19Stack2).
            recoveredBlock19PC := 130.
        ].
        recoveredBlock19Step = 130 ifTrue: [
            recoveredBlock19PC := 131.
        ].
        recoveredBlock19Step = 131 ifTrue: [
            recoveredBlock19Stack1 := recoveredBlock19Arg1.
            recoveredBlock19PC := 134.
        ].
        recoveredBlock19Step = 134 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) referencedItemsForExport.
            recoveredBlock19PC := 136.
        ].
        recoveredBlock19Step = 136 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) asArray.
            recoveredBlock19PC := 138.
        ].
        recoveredBlock19Step = 138 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Arg1.
            recoveredBlock19PC := 141.
        ].
        recoveredBlock19Step = 141 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) copyWith: (recoveredBlock19Stack2).
            recoveredBlock19PC := 143.
        ].
        recoveredBlock19Step = 143 ifTrue: [
            recoveredBlock19Stack2 := [:recoveredBlock19Block143Arg1 | 
    | recoveredBlock19Block143Local1 recoveredBlock19Block143Stack0 recoveredBlock19Block143Stack1 recoveredBlock19Block143Stack2 recoveredBlock19Block143Stack3 recoveredBlock19Block143Stack4 recoveredBlock19Block143Stack5 recoveredBlock19Block143PC recoveredBlock19Block143Step recoveredBlock19Block143Done recoveredBlock19Block143Result |
    recoveredBlock19Block143Stack0 := self.
    recoveredBlock19Block143PC := 150.
    recoveredBlock19Block143Done := false.
    [recoveredBlock19Block143Done not] whileTrue: [
        recoveredBlock19Block143Step := recoveredBlock19Block143PC.
        recoveredBlock19Block143Step = 150 ifTrue: [
            recoveredBlock19Block143Stack1 := nil.
            recoveredBlock19Block143PC := 151.
        ].
        recoveredBlock19Block143Step = 151 ifTrue: [
            recoveredBlock19Block143Stack2 := recoveredBlock19Block143Arg1.
            recoveredBlock19Block143PC := 152.
        ].
        recoveredBlock19Block143Step = 152 ifTrue: [
            recoveredBlock19Block143Stack2 := (recoveredBlock19Block143Stack2) getLibrary.
            recoveredBlock19Block143PC := 154.
        ].
        recoveredBlock19Block143Step = 154 ifTrue: [
            (recoveredBlock19Block143Stack2 ~~ nil) ifTrue: [recoveredBlock19Block143PC := 208] ifFalse: [recoveredBlock19Block143PC := 158].
        ].
        recoveredBlock19Block143Step = 158 ifTrue: [
            recoveredBlock19Block143PC := 159.
        ].
        recoveredBlock19Block143Step = 159 ifTrue: [
            recoveredBlock19Block143Stack1 := nil.
            recoveredBlock19Block143PC := 160.
        ].
        recoveredBlock19Block143Step = 160 ifTrue: [
            recoveredBlock19Block143Stack2 := MainController.
            recoveredBlock19Block143PC := 162.
        ].
        recoveredBlock19Block143Step = 162 ifTrue: [
            recoveredBlock19Block143Stack3 := Array.
            recoveredBlock19Block143PC := 164.
        ].
        recoveredBlock19Block143Step = 164 ifTrue: [
            recoveredBlock19Block143Stack4 := 'RecoveredItems'.
            recoveredBlock19Block143PC := 166.
        ].
        recoveredBlock19Block143Step = 166 ifTrue: [
            recoveredBlock19Block143Stack3 := (recoveredBlock19Block143Stack3) with: (recoveredBlock19Block143Stack4).
            recoveredBlock19Block143PC := 168.
        ].
        recoveredBlock19Block143Step = 168 ifTrue: [
            recoveredBlock19Block143Stack2 := (recoveredBlock19Block143Stack2) createLibAndFoldersFor: (recoveredBlock19Block143Stack3).
            recoveredBlock19Block143PC := 170.
        ].
        recoveredBlock19Block143Step = 170 ifTrue: [
            recoveredBlock19Block143Stack3 := recoveredBlock19Block143Stack2.
            recoveredBlock19Block143PC := 171.
        ].
        recoveredBlock19Block143Step = 171 ifTrue: [
            recoveredBlock19Block143Local1 := recoveredBlock19Block143Stack3.
            recoveredBlock19Block143PC := 172.
        ].
        recoveredBlock19Block143Step = 172 ifTrue: [
            (recoveredBlock19Block143Stack2 == nil) ifTrue: [recoveredBlock19Block143PC := 206] ifFalse: [recoveredBlock19Block143PC := 176].
        ].
        recoveredBlock19Block143Step = 176 ifTrue: [
            recoveredBlock19Block143PC := 177.
        ].
        recoveredBlock19Block143Step = 177 ifTrue: [
            recoveredBlock19Block143Stack1 := recoveredBlock19Block143Arg1.
            recoveredBlock19Block143PC := 178.
        ].
        recoveredBlock19Block143Step = 178 ifTrue: [
            (recoveredBlock19Block143Stack1) removeFromParent.
            recoveredBlock19Block143PC := 180.
        ].
        recoveredBlock19Block143Step = 180 ifTrue: [
            recoveredBlock19Block143Stack1 := recoveredBlock19Block143Local1.
            recoveredBlock19Block143PC := 181.
        ].
        recoveredBlock19Block143Step = 181 ifTrue: [
            recoveredBlock19Block143Stack2 := recoveredBlock19Block143Arg1.
            recoveredBlock19Block143PC := 182.
        ].
        recoveredBlock19Block143Step = 182 ifTrue: [
            (recoveredBlock19Block143Stack1) addChild: (recoveredBlock19Block143Stack2).
            recoveredBlock19Block143PC := 184.
        ].
        recoveredBlock19Block143Step = 184 ifTrue: [
            recoveredBlock19Block143Stack1 := SGMonitorStreamDummy.
            recoveredBlock19Block143PC := 186.
        ].
        recoveredBlock19Block143Step = 186 ifTrue: [
            recoveredBlock19Block143Stack1 := (recoveredBlock19Block143Stack1) create.
            recoveredBlock19Block143PC := 188.
        ].
        recoveredBlock19Block143Step = 188 ifTrue: [
            recoveredBlock19Block143Stack2 := 'Used item '.
            recoveredBlock19Block143PC := 190.
        ].
        recoveredBlock19Block143Step = 190 ifTrue: [
            recoveredBlock19Block143Stack3 := recoveredBlock19Block143Arg1.
            recoveredBlock19Block143PC := 191.
        ].
        recoveredBlock19Block143Step = 191 ifTrue: [
            recoveredBlock19Block143Stack3 := (recoveredBlock19Block143Stack3) importLabel.
            recoveredBlock19Block143PC := 193.
        ].
        recoveredBlock19Block143Step = 193 ifTrue: [
            recoveredBlock19Block143Stack2 := (recoveredBlock19Block143Stack2) , (recoveredBlock19Block143Stack3).
            recoveredBlock19Block143PC := 195.
        ].
        recoveredBlock19Block143Step = 195 ifTrue: [
            recoveredBlock19Block143Stack3 := ' moved to folder ''RecoveredItems'''.
            recoveredBlock19Block143PC := 197.
        ].
        recoveredBlock19Block143Step = 197 ifTrue: [
            recoveredBlock19Block143Stack2 := (recoveredBlock19Block143Stack2) , (recoveredBlock19Block143Stack3).
            recoveredBlock19Block143PC := 199.
        ].
        recoveredBlock19Block143Step = 199 ifTrue: [
            (recoveredBlock19Block143Stack1) addText: (recoveredBlock19Block143Stack2).
            recoveredBlock19Block143PC := 201.
        ].
        recoveredBlock19Block143Step = 201 ifTrue: [
            recoveredBlock19Block143Stack1 := self.
            recoveredBlock19Block143PC := 202.
        ].
        recoveredBlock19Block143Step = 202 ifTrue: [
            recoveredBlock19Block143Stack1 := (recoveredBlock19Block143Stack1) library.
            recoveredBlock19Block143PC := 204.
        ].
        recoveredBlock19Block143Step = 204 ifTrue: [
            recoveredBlock19Block143Stack1 := (recoveredBlock19Block143Stack1) commit.
            recoveredBlock19Block143PC := 206.
        ].
        recoveredBlock19Block143Step = 206 ifTrue: [
            recoveredBlock19Block143Stack2 := nil.
            recoveredBlock19Block143PC := 207.
        ].
        recoveredBlock19Block143Step = 207 ifTrue: [
            recoveredBlock19Block143Local1 := recoveredBlock19Block143Stack2.
            recoveredBlock19Block143PC := 208.
        ].
        recoveredBlock19Block143Step = 208 ifTrue: [
            recoveredBlock19Block143Result := recoveredBlock19Block143Stack1.
            recoveredBlock19Block143Done := true.
        ].
    ].
    recoveredBlock19Block143Result
].
            recoveredBlock19PC := 209.
        ].
        recoveredBlock19Step = 209 ifTrue: [
            (recoveredBlock19Stack1) do: (recoveredBlock19Stack2).
            recoveredBlock19PC := 211.
        ].
        recoveredBlock19Step = 211 ifTrue: [
            recoveredBlock19Stack1 := 'Kk'.
            recoveredBlock19PC := 213.
        ].
        recoveredBlock19Step = 213 ifTrue: [
            recoveredBlock19Stack2 := 'Call_72077'.
            recoveredBlock19PC := 215.
        ].
        recoveredBlock19Step = 215 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) == (recoveredBlock19Stack2).
            recoveredBlock19PC := 216.
        ].
        recoveredBlock19Step = 216 ifTrue: [
            recoveredBlock19PC := 217.
        ].
        recoveredBlock19Step = 217 ifTrue: [
            recoveredBlock19Stack1 := self.
            recoveredBlock19PC := 218.
        ].
        recoveredBlock19Step = 218 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Arg1.
            recoveredBlock19PC := 221.
        ].
        recoveredBlock19Step = 221 ifTrue: [
            recoveredBlock19Stack3 := recoveredArg2.
            recoveredBlock19PC := 224.
        ].
        recoveredBlock19Step = 224 ifTrue: [
            recoveredBlock19Stack4 := recoveredArg3.
            recoveredBlock19PC := 227.
        ].
        recoveredBlock19Step = 227 ifTrue: [
            (recoveredBlock19Stack1) checkItem: (recoveredBlock19Stack2) resultCollection: (recoveredBlock19Stack3) progressWindow: (recoveredBlock19Stack4).
            recoveredBlock19PC := 230.
        ].
        recoveredBlock19Step = 230 ifTrue: [
            recoveredBlock19Stack1 := self.
            recoveredBlock19PC := 231.
        ].
        recoveredBlock19Step = 231 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) library.
            recoveredBlock19PC := 233.
        ].
        recoveredBlock19Step = 233 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) commit.
            recoveredBlock19PC := 235.
        ].
        recoveredBlock19Step = 235 ifTrue: [
            recoveredBlock19Result := recoveredBlock19Stack1.
            recoveredBlock19Done := true.
        ].
    ].
    recoveredBlock19Result
].
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack1 := (recoveredStack1) allChildrenWithPerformanceDialog: (recoveredStack2) title: (recoveredStack3) label: (recoveredStack4) do: (recoveredStack5).
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCollection.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 250] ifFalse: [recoveredPC := 252].
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x205b5934; bytecode file offset 0xeb2294"
!EtasDatabaseAdministrationDialog methodsFor: 'recovered'!
createCheckboxIndex: recoveredArg1 inForm: recoveredArg2 topWidget: recoveredArg3 buildArray: recoveredArg4 widgetDictionary: recoveredArg5
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) printString.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := 'checkBox'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredLocal4.
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
            recoveredBlock26Stack1 := recoveredBlock26Arg1.
            recoveredBlock26PC := 33.
        ].
        recoveredBlock26Step = 33 ifTrue: [
            recoveredBlock26Stack2 := recoveredBlock26Stack1.
            recoveredBlock26PC := 34.
        ].
        recoveredBlock26Step = 34 ifTrue: [
            recoveredBlock26Stack3 := self.
            recoveredBlock26PC := 35.
        ].
        recoveredBlock26Step = 35 ifTrue: [
            recoveredBlock26Stack3 := (recoveredBlock26Stack3) dbAdminCtrl.
            recoveredBlock26PC := 36.
        ].
        recoveredBlock26Step = 36 ifTrue: [
            recoveredBlock26Stack3 := (recoveredBlock26Stack3) notNil.
            recoveredBlock26PC := 37.
        ].
        recoveredBlock26Step = 37 ifTrue: [
            (recoveredBlock26Stack2) sensitive: (recoveredBlock26Stack3).
            recoveredBlock26Stack2 := recoveredBlock26Stack1.
            recoveredBlock26PC := 40.
        ].
        recoveredBlock26Step = 40 ifTrue: [
            recoveredBlock26Stack3 := recoveredArg4.
            recoveredBlock26PC := 43.
        ].
        recoveredBlock26Step = 43 ifTrue: [
            recoveredBlock26Stack4 := 1.
            recoveredBlock26PC := 45.
        ].
        recoveredBlock26Step = 45 ifTrue: [
            recoveredBlock26Stack5 := [
    ''
].
            recoveredBlock26PC := 47.
        ].
        recoveredBlock26Step = 47 ifTrue: [
            recoveredBlock26PC := 53.
        ].
        recoveredBlock26Step = 53 ifTrue: [
            recoveredBlock26Stack3 := (recoveredBlock26Stack3) at: (recoveredBlock26Stack4) ifAbsent: (recoveredBlock26Stack5).
            recoveredBlock26PC := 55.
        ].
        recoveredBlock26Step = 55 ifTrue: [
            (recoveredBlock26Stack2) labelString: (recoveredBlock26Stack3).
            recoveredBlock26Stack2 := recoveredBlock26Stack1.
            recoveredBlock26PC := 58.
        ].
        recoveredBlock26Step = 58 ifTrue: [
            recoveredBlock26Stack3 := 125.
            recoveredBlock26PC := 62.
        ].
        recoveredBlock26Step = 62 ifTrue: [
            (recoveredBlock26Stack2) width: (recoveredBlock26Stack3).
            recoveredBlock26Stack2 := recoveredBlock26Stack1.
            recoveredBlock26PC := 65.
        ].
        recoveredBlock26Step = 65 ifTrue: [
            recoveredBlock26Stack3 := recoveredArg4.
            recoveredBlock26PC := 68.
        ].
        recoveredBlock26Step = 68 ifTrue: [
            recoveredBlock26Stack4 := 3.
            recoveredBlock26PC := 70.
        ].
        recoveredBlock26Step = 70 ifTrue: [
            recoveredBlock26Stack5 := [
    | block28116fc8Value0 |
    block28116fc8Value0 := [].
    block28116fc8Value0
].
            recoveredBlock26PC := 72.
        ].
        recoveredBlock26Step = 72 ifTrue: [
            recoveredBlock26PC := 79.
        ].
        recoveredBlock26Step = 79 ifTrue: [
            recoveredBlock26Stack3 := (recoveredBlock26Stack3) at: (recoveredBlock26Stack4) ifAbsent: (recoveredBlock26Stack5).
            recoveredBlock26PC := 81.
        ].
        recoveredBlock26Step = 81 ifTrue: [
            (recoveredBlock26Stack2) userData: (recoveredBlock26Stack3).
            recoveredBlock26PC := 83.
        ].
        recoveredBlock26Step = 83 ifTrue: [
            recoveredBlock26Stack2 := self.
            recoveredBlock26PC := 84.
        ].
        recoveredBlock26Step = 84 ifTrue: [
            recoveredBlock26Stack2 := (recoveredBlock26Stack2) defaultLabelBlue.
            recoveredBlock26PC := 86.
        ].
        recoveredBlock26Step = 86 ifTrue: [
            recoveredBlock26Stack1 := (recoveredBlock26Stack1) foregroundColor: (recoveredBlock26Stack2).
            recoveredBlock26PC := 88.
        ].
        recoveredBlock26Step = 88 ifTrue: [
            recoveredBlock26Result := recoveredBlock26Stack1.
            recoveredBlock26Done := true.
        ].
    ].
    recoveredBlock26Result
].
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := (recoveredStack1) createToggleButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := recoveredArg5.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := (recoveredStack2) asAtom.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := 'text'.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack3 := [:recoveredBlock124Arg1 | 
    | recoveredBlock124Value0 recoveredBlock124Value1 recoveredBlock124Value2 recoveredBlock124Value3 recoveredBlock124Value4 recoveredBlock124Value5 recoveredBlock124Value6 recoveredBlock124Value7 recoveredBlock124Value8 |
    recoveredBlock124Value0 := recoveredBlock124Arg1.
    recoveredBlock124Value1 := recoveredBlock124Value0.
    recoveredBlock124Value2 := (self) dbAdminCtrl.
    recoveredBlock124Value3 := (recoveredBlock124Value2) notNil.
    (recoveredBlock124Value1) sensitive: (recoveredBlock124Value3).
    recoveredBlock124Value4 := recoveredBlock124Value0.
    (recoveredBlock124Value4) editable: (false).
    recoveredBlock124Value5 := recoveredBlock124Value0.
    (recoveredBlock124Value5) wordWrap: (true).
    recoveredBlock124Value6 := recoveredBlock124Value0.
    (recoveredBlock124Value6) height: (72).
    recoveredBlock124Value7 := XmMULTILINEEDIT.
    recoveredBlock124Value8 := (recoveredBlock124Value0) editMode: (recoveredBlock124Value7).
    recoveredBlock124Value8
].
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := (recoveredStack1) createText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack2 := recoveredArg4.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack4 := [
    ''
].
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3) ifAbsent: (recoveredStack4).
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            (recoveredStack1) setString: (recoveredStack2).
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack1 := recoveredArg5.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack2 := (recoveredStack2) asAtom.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack2 := [:recoveredBlock201Arg1 | 
    | recoveredBlock201Value0 recoveredBlock201Value1 recoveredBlock201Value2 recoveredBlock201Value3 recoveredBlock201Value4 recoveredBlock201Value5 recoveredBlock201Value6 recoveredBlock201Value7 recoveredBlock201Value8 |
    recoveredBlock201Value0 := recoveredBlock201Arg1.
    recoveredBlock201Value1 := recoveredBlock201Value0.
    recoveredBlock201Value2 := XmATTACHWIDGET.
    (recoveredBlock201Value1) topAttachment: (recoveredBlock201Value2).
    recoveredBlock201Value3 := recoveredBlock201Value0.
    recoveredBlock201Value4 := recoveredArg3.
    (recoveredBlock201Value3) topWidget: (recoveredBlock201Value4).
    recoveredBlock201Value5 := recoveredBlock201Value0.
    (recoveredBlock201Value5) topOffset: (10).
    recoveredBlock201Value6 := recoveredBlock201Value0.
    recoveredBlock201Value7 := XmATTACHFORM.
    (recoveredBlock201Value6) leftAttachment: (recoveredBlock201Value7).
    recoveredBlock201Value8 := (recoveredBlock201Value0) leftOffset: (10).
    recoveredBlock201Value8
].
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack2 := [:recoveredBlock240Arg1 | 
    | recoveredBlock240Value0 recoveredBlock240Value1 recoveredBlock240Value2 recoveredBlock240Value3 recoveredBlock240Value4 recoveredBlock240Value5 recoveredBlock240Value6 recoveredBlock240Value7 recoveredBlock240Value8 recoveredBlock240Value9 recoveredBlock240Value10 recoveredBlock240Value11 recoveredBlock240Value12 recoveredBlock240Value13 |
    recoveredBlock240Value0 := recoveredBlock240Arg1.
    recoveredBlock240Value1 := recoveredBlock240Value0.
    recoveredBlock240Value2 := XmATTACHWIDGET.
    (recoveredBlock240Value1) topAttachment: (recoveredBlock240Value2).
    recoveredBlock240Value3 := recoveredBlock240Value0.
    recoveredBlock240Value4 := recoveredArg3.
    (recoveredBlock240Value3) topWidget: (recoveredBlock240Value4).
    recoveredBlock240Value5 := recoveredBlock240Value0.
    (recoveredBlock240Value5) topOffset: (10).
    recoveredBlock240Value6 := recoveredBlock240Value0.
    recoveredBlock240Value7 := XmATTACHWIDGET.
    (recoveredBlock240Value6) leftAttachment: (recoveredBlock240Value7).
    recoveredBlock240Value8 := recoveredBlock240Value0.
    recoveredBlock240Value9 := recoveredLocal3.
    (recoveredBlock240Value8) leftWidget: (recoveredBlock240Value9).
    recoveredBlock240Value10 := recoveredBlock240Value0.
    (recoveredBlock240Value10) leftOffset: (5).
    recoveredBlock240Value11 := recoveredBlock240Value0.
    recoveredBlock240Value12 := XmATTACHFORM.
    (recoveredBlock240Value11) rightAttachment: (recoveredBlock240Value12).
    recoveredBlock240Value13 := (recoveredBlock240Value0) rightOffset: (10).
    recoveredBlock240Value13
].
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack2 := XmNvalueChangedCallback.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack4 := 'checkBoxActivate:clientData:callData:'.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x205dfc74; bytecode file offset 0xedc5c0"
!EtasDatabaseAdministrationDialog methodsFor: 'recovered'!
runChecks
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ASDAscetController.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSCMInstalled.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) scmCloseAndDeactivate.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 52.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) library.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Stack0 recoveredBlock18Stack1 recoveredBlock18Stack2 recoveredBlock18Stack3 recoveredBlock18Stack4 recoveredBlock18PC recoveredBlock18Step recoveredBlock18Done recoveredBlock18Result |
    recoveredBlock18Stack0 := self.
    recoveredBlock18PC := 24.
    recoveredBlock18Done := false.
    [recoveredBlock18Done not] whileTrue: [
        recoveredBlock18Step := recoveredBlock18PC.
        recoveredBlock18Step = 24 ifTrue: [
            recoveredBlock18Stack1 := nil.
            recoveredBlock18PC := 25.
        ].
        recoveredBlock18Step = 25 ifTrue: [
            recoveredBlock18Stack2 := recoveredBlock18Arg1.
            recoveredBlock18PC := 26.
        ].
        recoveredBlock18Step = 26 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) className.
            recoveredBlock18PC := 28.
        ].
        recoveredBlock18Step = 28 ifTrue: [
            recoveredBlock18Stack3 := 'ASDSCM'.
            recoveredBlock18PC := 30.
        ].
        recoveredBlock18Step = 30 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) startsWith: (recoveredBlock18Stack3).
            recoveredBlock18PC := 32.
        ].
        recoveredBlock18Step = 32 ifTrue: [
            (recoveredBlock18Stack2) ifTrue: [recoveredBlock18PC := 36] ifFalse: [recoveredBlock18PC := 49].
        ].
        recoveredBlock18Step = 36 ifTrue: [
            recoveredBlock18PC := 37.
        ].
        recoveredBlock18Step = 37 ifTrue: [
            recoveredBlock18Stack1 := RBUserInfo.
            recoveredBlock18PC := 39.
        ].
        recoveredBlock18Step = 39 ifTrue: [
            recoveredBlock18Stack2 := 'This database contains ASCET-SCM data objects.\Please install ASCET-SCM before running any database check!!'.
            recoveredBlock18PC := 41.
        ].
        recoveredBlock18Step = 41 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) withCrs.
            recoveredBlock18PC := 43.
        ].
        recoveredBlock18Step = 43 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) errorMessage: (recoveredBlock18Stack2).
            recoveredBlock18PC := 45.
        ].
        recoveredBlock18Step = 45 ifTrue: [
            (recoveredBlock18Stack1) prompt.
            recoveredBlock18PC := 47.
        ].
        recoveredBlock18Step = 47 ifTrue: [
            recoveredBlock18Stack1 := nil.
            recoveredBlock18PC := 48.
        ].
        recoveredBlock18Step = 48 ifTrue: [
            ^recoveredBlock18Stack1
        ].
        recoveredBlock18Step = 49 ifTrue: [
            recoveredBlock18Result := recoveredBlock18Stack1.
            recoveredBlock18Done := true.
        ].
    ].
    recoveredBlock18Result
].
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1) allProxysDo: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock52Local1 recoveredBlock52Local2 recoveredBlock52Stack0 recoveredBlock52Stack1 recoveredBlock52Stack2 recoveredBlock52Stack3 recoveredBlock52Stack4 recoveredBlock52PC recoveredBlock52Step recoveredBlock52Done recoveredBlock52Result |
    recoveredBlock52Stack0 := self.
    recoveredBlock52PC := 58.
    recoveredBlock52Done := false.
    [recoveredBlock52Done not] whileTrue: [
        recoveredBlock52Step := recoveredBlock52PC.
        recoveredBlock52Step = 58 ifTrue: [
            recoveredBlock52Stack1 := false.
            recoveredBlock52PC := 59.
        ].
        recoveredBlock52Step = 59 ifTrue: [
            recoveredLocal3 := recoveredBlock52Stack1.
            recoveredBlock52PC := 62.
        ].
        recoveredBlock52Step = 62 ifTrue: [
            recoveredBlock52Stack0 := (recoveredBlock52Stack0) dbChecks.
            recoveredBlock52PC := 64.
        ].
        recoveredBlock52Step = 64 ifTrue: [
            recoveredLocal2 := recoveredBlock52Stack0.
            recoveredBlock52PC := 67.
        ].
        recoveredBlock52Step = 67 ifTrue: [
            recoveredBlock52Stack0 := OrderedCollection.
            recoveredBlock52PC := 69.
        ].
        recoveredBlock52Step = 69 ifTrue: [
            recoveredBlock52Stack0 := (recoveredBlock52Stack0) new.
            recoveredBlock52PC := 71.
        ].
        recoveredBlock52Step = 71 ifTrue: [
            recoveredLocal4 := recoveredBlock52Stack0.
            recoveredBlock52PC := 74.
        ].
        recoveredBlock52Step = 74 ifTrue: [
            recoveredBlock52Stack0 := OrderedCollection.
            recoveredBlock52PC := 76.
        ].
        recoveredBlock52Step = 76 ifTrue: [
            recoveredBlock52Stack0 := (recoveredBlock52Stack0) new.
            recoveredBlock52PC := 78.
        ].
        recoveredBlock52Step = 78 ifTrue: [
            recoveredLocal5 := recoveredBlock52Stack0.
            recoveredBlock52PC := 81.
        ].
        recoveredBlock52Step = 81 ifTrue: [
            recoveredBlock52Stack0 := 0.
            recoveredBlock52PC := 83.
        ].
        recoveredBlock52Step = 83 ifTrue: [
            recoveredBlock52Local2 := recoveredBlock52Stack0.
            recoveredBlock52PC := 84.
        ].
        recoveredBlock52Step = 84 ifTrue: [
            recoveredBlock52Stack0 := recoveredLocal2.
            recoveredBlock52PC := 87.
        ].
        recoveredBlock52Step = 87 ifTrue: [
            recoveredBlock52Stack0 := (recoveredBlock52Stack0) size.
            recoveredBlock52PC := 89.
        ].
        recoveredBlock52Step = 89 ifTrue: [
            recoveredBlock52PC := 128.
        ].
        recoveredBlock52Step = 92 ifTrue: [
            recoveredBlock52Stack1 := self.
            recoveredBlock52PC := 93.
        ].
        recoveredBlock52Step = 93 ifTrue: [
            recoveredBlock52Stack2 := recoveredBlock52Local2.
            recoveredBlock52PC := 94.
        ].
        recoveredBlock52Step = 94 ifTrue: [
            recoveredBlock52Stack1 := (recoveredBlock52Stack1) checkBoxIndex: (recoveredBlock52Stack2).
            recoveredBlock52PC := 96.
        ].
        recoveredBlock52Step = 96 ifTrue: [
            recoveredBlock52Stack2 := recoveredBlock52Stack1.
            recoveredBlock52PC := 97.
        ].
        recoveredBlock52Step = 97 ifTrue: [
            recoveredBlock52Local1 := recoveredBlock52Stack2.
            recoveredBlock52PC := 98.
        ].
        recoveredBlock52Step = 98 ifTrue: [
            recoveredBlock52Stack1 := (recoveredBlock52Stack1) sensitive.
            recoveredBlock52PC := 100.
        ].
        recoveredBlock52Step = 100 ifTrue: [
            (recoveredBlock52Stack1) ifTrue: [recoveredBlock52PC := 114] ifFalse: [recoveredBlock52PC := 104].
        ].
        recoveredBlock52Step = 104 ifTrue: [
            recoveredBlock52Stack1 := recoveredLocal4.
            recoveredBlock52PC := 107.
        ].
        recoveredBlock52Step = 107 ifTrue: [
            recoveredBlock52Stack2 := recoveredBlock52Local2.
            recoveredBlock52PC := 108.
        ].
        recoveredBlock52Step = 108 ifTrue: [
            (recoveredBlock52Stack1) add: (recoveredBlock52Stack2).
            recoveredBlock52PC := 110.
        ].
        recoveredBlock52Step = 110 ifTrue: [
            recoveredBlock52PC := 126.
        ].
        recoveredBlock52Step = 114 ifTrue: [
            recoveredBlock52Stack1 := recoveredBlock52Local1.
            recoveredBlock52PC := 115.
        ].
        recoveredBlock52Step = 115 ifTrue: [
            recoveredBlock52Stack1 := (recoveredBlock52Stack1) set.
            recoveredBlock52PC := 117.
        ].
        recoveredBlock52Step = 117 ifTrue: [
            (recoveredBlock52Stack1) ifTrue: [recoveredBlock52PC := 120] ifFalse: [recoveredBlock52PC := 126].
        ].
        recoveredBlock52Step = 120 ifTrue: [
            recoveredBlock52Stack1 := recoveredLocal5.
            recoveredBlock52PC := 123.
        ].
        recoveredBlock52Step = 123 ifTrue: [
            recoveredBlock52Stack2 := recoveredBlock52Local2.
            recoveredBlock52PC := 124.
        ].
        recoveredBlock52Step = 124 ifTrue: [
            (recoveredBlock52Stack1) add: (recoveredBlock52Stack2).
            recoveredBlock52PC := 126.
        ].
        recoveredBlock52Step = 126 ifTrue: [
            recoveredBlock52Stack1 := nil.
            recoveredBlock52PC := 127.
        ].
        recoveredBlock52Step = 127 ifTrue: [
            recoveredBlock52Local1 := recoveredBlock52Stack1.
            recoveredBlock52PC := 128.
        ].
        recoveredBlock52Step = 128 ifTrue: [
            (recoveredBlock52Stack0 isInteger and: [recoveredBlock52Local2 isInteger]) ifTrue: [(recoveredBlock52Local2 + 1 <= recoveredBlock52Stack0) ifTrue: [recoveredBlock52Local2 := recoveredBlock52Local2 + 1. recoveredBlock52PC := 92] ifFalse: [recoveredBlock52Local2 := nil. recoveredBlock52PC := 142]] ifFalse: [recoveredBlock52PC := 132].
        ].
        recoveredBlock52Step = 132 ifTrue: [
            recoveredBlock52Stack1 := recoveredBlock52Stack0.
            recoveredBlock52PC := 133.
        ].
        recoveredBlock52Step = 133 ifTrue: [
            recoveredBlock52Stack2 := recoveredBlock52Local2.
            recoveredBlock52PC := 134.
        ].
        recoveredBlock52Step = 134 ifTrue: [
            recoveredBlock52Stack2 := (recoveredBlock52Stack2) + (1).
            recoveredBlock52PC := 135.
        ].
        recoveredBlock52Step = 135 ifTrue: [
            recoveredBlock52Stack3 := recoveredBlock52Stack2.
            recoveredBlock52PC := 136.
        ].
        recoveredBlock52Step = 136 ifTrue: [
            recoveredBlock52Local2 := recoveredBlock52Stack3.
            recoveredBlock52PC := 137.
        ].
        recoveredBlock52Step = 137 ifTrue: [
            recoveredBlock52Stack1 := (recoveredBlock52Stack1) < (recoveredBlock52Stack2).
            recoveredBlock52PC := 138.
        ].
        recoveredBlock52Step = 138 ifTrue: [
            (recoveredBlock52Stack1) ifTrue: [recoveredBlock52PC := 140] ifFalse: [recoveredBlock52PC := 92].
        ].
        recoveredBlock52Step = 140 ifTrue: [
            recoveredBlock52Stack1 := nil.
            recoveredBlock52PC := 141.
        ].
        recoveredBlock52Step = 141 ifTrue: [
            recoveredBlock52Local2 := recoveredBlock52Stack1.
            recoveredBlock52PC := 142.
        ].
        recoveredBlock52Step = 142 ifTrue: [
            recoveredBlock52PC := 143.
        ].
        recoveredBlock52Step = 143 ifTrue: [
            recoveredBlock52Stack0 := recoveredLocal5.
            recoveredBlock52PC := 146.
        ].
        recoveredBlock52Step = 146 ifTrue: [
            recoveredBlock52Stack1 := [:recoveredBlock52Block146Arg1 | 
    | recoveredBlock52Block146Local1 recoveredBlock52Block146Local2 recoveredBlock52Block146Stack0 recoveredBlock52Block146Stack1 recoveredBlock52Block146Stack2 recoveredBlock52Block146Stack3 recoveredBlock52Block146Stack4 recoveredBlock52Block146Stack5 recoveredBlock52Block146PC recoveredBlock52Block146Step recoveredBlock52Block146Done recoveredBlock52Block146Result |
    recoveredBlock52Block146Stack0 := self.
    recoveredBlock52Block146PC := 152.
    recoveredBlock52Block146Done := false.
    [recoveredBlock52Block146Done not] whileTrue: [
        recoveredBlock52Block146Step := recoveredBlock52Block146PC.
        recoveredBlock52Block146Step = 152 ifTrue: [
            recoveredBlock52Block146Stack1 := 0.
            recoveredBlock52Block146PC := 154.
        ].
        recoveredBlock52Block146Step = 154 ifTrue: [
            recoveredBlock52Block146Local1 := recoveredBlock52Block146Stack1.
            recoveredBlock52Block146PC := 155.
        ].
        recoveredBlock52Block146Step = 155 ifTrue: [
            recoveredBlock52Block146Stack1 := recoveredLocal2.
            recoveredBlock52Block146PC := 158.
        ].
        recoveredBlock52Block146Step = 158 ifTrue: [
            recoveredBlock52Block146Stack1 := (recoveredBlock52Block146Stack1) size.
            recoveredBlock52Block146PC := 160.
        ].
        recoveredBlock52Block146Step = 160 ifTrue: [
            recoveredBlock52Block146PC := 173.
        ].
        recoveredBlock52Block146Step = 164 ifTrue: [
            recoveredBlock52Block146Stack2 := self.
            recoveredBlock52Block146PC := 165.
        ].
        recoveredBlock52Block146Step = 165 ifTrue: [
            recoveredBlock52Block146Stack3 := recoveredBlock52Block146Local1.
            recoveredBlock52Block146PC := 166.
        ].
        recoveredBlock52Block146Step = 166 ifTrue: [
            recoveredBlock52Block146Stack2 := (recoveredBlock52Block146Stack2) checkBoxIndex: (recoveredBlock52Block146Stack3).
            recoveredBlock52Block146PC := 168.
        ].
        recoveredBlock52Block146Step = 168 ifTrue: [
            recoveredBlock52Block146Stack3 := recoveredBlock52Block146Local1.
            recoveredBlock52Block146PC := 169.
        ].
        recoveredBlock52Block146Step = 169 ifTrue: [
            recoveredBlock52Block146Stack4 := recoveredBlock52Block146Arg1.
            recoveredBlock52Block146PC := 170.
        ].
        recoveredBlock52Block146Step = 170 ifTrue: [
            recoveredBlock52Block146Stack3 := (recoveredBlock52Block146Stack3) = (recoveredBlock52Block146Stack4).
            recoveredBlock52Block146PC := 171.
        ].
        recoveredBlock52Block146Step = 171 ifTrue: [
            (recoveredBlock52Block146Stack2) sensitive: (recoveredBlock52Block146Stack3).
            recoveredBlock52Block146PC := 173.
        ].
        recoveredBlock52Block146Step = 173 ifTrue: [
            (recoveredBlock52Block146Stack1 isInteger and: [recoveredBlock52Block146Local1 isInteger]) ifTrue: [(recoveredBlock52Block146Local1 + 1 <= recoveredBlock52Block146Stack1) ifTrue: [recoveredBlock52Block146Local1 := recoveredBlock52Block146Local1 + 1. recoveredBlock52Block146PC := 164] ifFalse: [recoveredBlock52Block146Local1 := nil. recoveredBlock52Block146PC := 187]] ifFalse: [recoveredBlock52Block146PC := 177].
        ].
        recoveredBlock52Block146Step = 177 ifTrue: [
            recoveredBlock52Block146Stack2 := recoveredBlock52Block146Stack1.
            recoveredBlock52Block146PC := 178.
        ].
        recoveredBlock52Block146Step = 178 ifTrue: [
            recoveredBlock52Block146Stack3 := recoveredBlock52Block146Local1.
            recoveredBlock52Block146PC := 179.
        ].
        recoveredBlock52Block146Step = 179 ifTrue: [
            recoveredBlock52Block146Stack3 := (recoveredBlock52Block146Stack3) + (1).
            recoveredBlock52Block146PC := 180.
        ].
        recoveredBlock52Block146Step = 180 ifTrue: [
            recoveredBlock52Block146Stack4 := recoveredBlock52Block146Stack3.
            recoveredBlock52Block146PC := 181.
        ].
        recoveredBlock52Block146Step = 181 ifTrue: [
            recoveredBlock52Block146Local1 := recoveredBlock52Block146Stack4.
            recoveredBlock52Block146PC := 182.
        ].
        recoveredBlock52Block146Step = 182 ifTrue: [
            recoveredBlock52Block146Stack2 := (recoveredBlock52Block146Stack2) < (recoveredBlock52Block146Stack3).
            recoveredBlock52Block146PC := 183.
        ].
        recoveredBlock52Block146Step = 183 ifTrue: [
            (recoveredBlock52Block146Stack2) ifTrue: [recoveredBlock52Block146PC := 185] ifFalse: [recoveredBlock52Block146PC := 164].
        ].
        recoveredBlock52Block146Step = 185 ifTrue: [
            recoveredBlock52Block146Stack2 := nil.
            recoveredBlock52Block146PC := 186.
        ].
        recoveredBlock52Block146Step = 186 ifTrue: [
            recoveredBlock52Block146Local1 := recoveredBlock52Block146Stack2.
            recoveredBlock52Block146PC := 187.
        ].
        recoveredBlock52Block146Step = 187 ifTrue: [
            recoveredBlock52Block146PC := 188.
        ].
        recoveredBlock52Block146Step = 188 ifTrue: [
            recoveredBlock52Block146Stack1 := nil.
            recoveredBlock52Block146PC := 189.
        ].
        recoveredBlock52Block146Step = 189 ifTrue: [
            recoveredBlock52Block146Stack2 := self.
            recoveredBlock52Block146PC := 190.
        ].
        recoveredBlock52Block146Step = 190 ifTrue: [
            recoveredBlock52Block146Stack3 := recoveredBlock52Block146Arg1.
            recoveredBlock52Block146PC := 191.
        ].
        recoveredBlock52Block146Step = 191 ifTrue: [
            recoveredBlock52Block146Stack2 := (recoveredBlock52Block146Stack2) checkBoxIndex: (recoveredBlock52Block146Stack3).
            recoveredBlock52Block146PC := 193.
        ].
        recoveredBlock52Block146Step = 193 ifTrue: [
            recoveredBlock52Block146Stack3 := recoveredBlock52Block146Stack2.
            recoveredBlock52Block146PC := 194.
        ].
        recoveredBlock52Block146Step = 194 ifTrue: [
            recoveredBlock52Block146Local2 := recoveredBlock52Block146Stack3.
            recoveredBlock52Block146PC := 195.
        ].
        recoveredBlock52Block146Step = 195 ifTrue: [
            recoveredBlock52Block146Stack2 := (recoveredBlock52Block146Stack2) set.
            recoveredBlock52Block146PC := 197.
        ].
        recoveredBlock52Block146Step = 197 ifTrue: [
            (recoveredBlock52Block146Stack2) ifTrue: [recoveredBlock52Block146PC := 200] ifFalse: [recoveredBlock52Block146PC := 240].
        ].
        recoveredBlock52Block146Step = 200 ifTrue: [
            recoveredBlock52Block146Stack2 := recoveredBlock52Block146Local2.
            recoveredBlock52Block146PC := 201.
        ].
        recoveredBlock52Block146Step = 201 ifTrue: [
            recoveredBlock52Block146Stack2 := (recoveredBlock52Block146Stack2) sensitive.
            recoveredBlock52Block146PC := 203.
        ].
        recoveredBlock52Block146Step = 203 ifTrue: [
            (recoveredBlock52Block146Stack2) ifTrue: [recoveredBlock52Block146PC := 206] ifFalse: [recoveredBlock52Block146PC := 240].
        ].
        recoveredBlock52Block146Step = 206 ifTrue: [
            recoveredBlock52Block146PC := 207.
        ].
        recoveredBlock52Block146Step = 207 ifTrue: [
            recoveredBlock52Block146Stack1 := recoveredBlock52Block146Local2.
            recoveredBlock52Block146PC := 208.
        ].
        recoveredBlock52Block146Step = 208 ifTrue: [
            recoveredBlock52Block146Stack1 := (recoveredBlock52Block146Stack1) userData.
            recoveredBlock52Block146PC := 210.
        ].
        recoveredBlock52Block146Step = 210 ifTrue: [
            (recoveredBlock52Block146Stack1) value.
            recoveredBlock52Block146PC := 212.
        ].
        recoveredBlock52Block146Step = 212 ifTrue: [
            recoveredBlock52Block146Stack1 := nil.
            recoveredBlock52Block146PC := 213.
        ].
        recoveredBlock52Block146Step = 213 ifTrue: [
            recoveredBlock52Block146Stack2 := recoveredLocal2.
            recoveredBlock52Block146PC := 216.
        ].
        recoveredBlock52Block146Step = 216 ifTrue: [
            recoveredBlock52Block146Stack3 := recoveredBlock52Block146Arg1.
            recoveredBlock52Block146PC := 217.
        ].
        recoveredBlock52Block146Step = 217 ifTrue: [
            recoveredBlock52Block146Stack2 := (recoveredBlock52Block146Stack2) at: (recoveredBlock52Block146Stack3).
            recoveredBlock52Block146PC := 219.
        ].
        recoveredBlock52Block146Step = 219 ifTrue: [
            recoveredBlock52Block146Stack3 := 5.
            recoveredBlock52Block146PC := 221.
        ].
        recoveredBlock52Block146Step = 221 ifTrue: [
            recoveredBlock52Block146Stack4 := [
    false
].
            recoveredBlock52Block146PC := 223.
        ].
        recoveredBlock52Block146Step = 223 ifTrue: [
            recoveredBlock52Block146PC := 228.
        ].
        recoveredBlock52Block146Step = 228 ifTrue: [
            recoveredBlock52Block146Stack2 := (recoveredBlock52Block146Stack2) at: (recoveredBlock52Block146Stack3) ifAbsent: (recoveredBlock52Block146Stack4).
            recoveredBlock52Block146PC := 230.
        ].
        recoveredBlock52Block146Step = 230 ifTrue: [
            (recoveredBlock52Block146Stack2) ifTrue: [recoveredBlock52Block146PC := 234] ifFalse: [recoveredBlock52Block146PC := 240].
        ].
        recoveredBlock52Block146Step = 234 ifTrue: [
            recoveredBlock52Block146PC := 235.
        ].
        recoveredBlock52Block146Step = 235 ifTrue: [
            recoveredBlock52Block146Stack1 := true.
            recoveredBlock52Block146PC := 236.
        ].
        recoveredBlock52Block146Step = 236 ifTrue: [
            recoveredBlock52Block146Stack2 := recoveredBlock52Block146Stack1.
            recoveredBlock52Block146PC := 237.
        ].
        recoveredBlock52Block146Step = 237 ifTrue: [
            recoveredLocal3 := recoveredBlock52Block146Stack2.
            recoveredBlock52Block146PC := 240.
        ].
        recoveredBlock52Block146Step = 240 ifTrue: [
            recoveredBlock52Block146Result := recoveredBlock52Block146Stack1.
            recoveredBlock52Block146Done := true.
        ].
    ].
    recoveredBlock52Block146Result
].
            recoveredBlock52PC := 241.
        ].
        recoveredBlock52Step = 241 ifTrue: [
            (recoveredBlock52Stack0) do: (recoveredBlock52Stack1).
            recoveredBlock52PC := 243.
        ].
        recoveredBlock52Step = 243 ifTrue: [
            recoveredBlock52Stack0 := 0.
            recoveredBlock52PC := 245.
        ].
        recoveredBlock52Step = 245 ifTrue: [
            recoveredBlock52Local2 := recoveredBlock52Stack0.
            recoveredBlock52PC := 246.
        ].
        recoveredBlock52Step = 246 ifTrue: [
            recoveredBlock52Stack0 := recoveredLocal2.
            recoveredBlock52PC := 249.
        ].
        recoveredBlock52Step = 249 ifTrue: [
            recoveredBlock52Stack0 := (recoveredBlock52Stack0) size.
            recoveredBlock52PC := 251.
        ].
        recoveredBlock52Step = 251 ifTrue: [
            recoveredBlock52PC := 271.
        ].
        recoveredBlock52Step = 254 ifTrue: [
            recoveredBlock52Stack1 := recoveredLocal4.
            recoveredBlock52PC := 257.
        ].
        recoveredBlock52Step = 257 ifTrue: [
            recoveredBlock52Stack2 := recoveredBlock52Local2.
            recoveredBlock52PC := 258.
        ].
        recoveredBlock52Step = 258 ifTrue: [
            recoveredBlock52Stack1 := (recoveredBlock52Stack1) includes: (recoveredBlock52Stack2).
            recoveredBlock52PC := 260.
        ].
        recoveredBlock52Step = 260 ifTrue: [
            (recoveredBlock52Stack1) ifTrue: [recoveredBlock52PC := 271] ifFalse: [recoveredBlock52PC := 264].
        ].
        recoveredBlock52Step = 264 ifTrue: [
            recoveredBlock52Stack1 := self.
            recoveredBlock52PC := 265.
        ].
        recoveredBlock52Step = 265 ifTrue: [
            recoveredBlock52Stack2 := recoveredBlock52Local2.
            recoveredBlock52PC := 266.
        ].
        recoveredBlock52Step = 266 ifTrue: [
            recoveredBlock52Stack1 := (recoveredBlock52Stack1) checkBoxIndex: (recoveredBlock52Stack2).
            recoveredBlock52PC := 268.
        ].
        recoveredBlock52Step = 268 ifTrue: [
            recoveredBlock52Stack2 := true.
            recoveredBlock52PC := 269.
        ].
        recoveredBlock52Step = 269 ifTrue: [
            (recoveredBlock52Stack1) sensitive: (recoveredBlock52Stack2).
            recoveredBlock52PC := 271.
        ].
        recoveredBlock52Step = 271 ifTrue: [
            (recoveredBlock52Stack0 isInteger and: [recoveredBlock52Local2 isInteger]) ifTrue: [(recoveredBlock52Local2 + 1 <= recoveredBlock52Stack0) ifTrue: [recoveredBlock52Local2 := recoveredBlock52Local2 + 1. recoveredBlock52PC := 254] ifFalse: [recoveredBlock52Local2 := nil. recoveredBlock52PC := 285]] ifFalse: [recoveredBlock52PC := 275].
        ].
        recoveredBlock52Step = 275 ifTrue: [
            recoveredBlock52Stack1 := recoveredBlock52Stack0.
            recoveredBlock52PC := 276.
        ].
        recoveredBlock52Step = 276 ifTrue: [
            recoveredBlock52Stack2 := recoveredBlock52Local2.
            recoveredBlock52PC := 277.
        ].
        recoveredBlock52Step = 277 ifTrue: [
            recoveredBlock52Stack2 := (recoveredBlock52Stack2) + (1).
            recoveredBlock52PC := 278.
        ].
        recoveredBlock52Step = 278 ifTrue: [
            recoveredBlock52Stack3 := recoveredBlock52Stack2.
            recoveredBlock52PC := 279.
        ].
        recoveredBlock52Step = 279 ifTrue: [
            recoveredBlock52Local2 := recoveredBlock52Stack3.
            recoveredBlock52PC := 280.
        ].
        recoveredBlock52Step = 280 ifTrue: [
            recoveredBlock52Stack1 := (recoveredBlock52Stack1) < (recoveredBlock52Stack2).
            recoveredBlock52PC := 281.
        ].
        recoveredBlock52Step = 281 ifTrue: [
            (recoveredBlock52Stack1) ifTrue: [recoveredBlock52PC := 283] ifFalse: [recoveredBlock52PC := 254].
        ].
        recoveredBlock52Step = 283 ifTrue: [
            recoveredBlock52Stack1 := nil.
            recoveredBlock52PC := 284.
        ].
        recoveredBlock52Step = 284 ifTrue: [
            recoveredBlock52Local2 := recoveredBlock52Stack1.
            recoveredBlock52PC := 285.
        ].
        recoveredBlock52Step = 285 ifTrue: [
            recoveredBlock52Result := recoveredBlock52Stack0.
            recoveredBlock52Done := true.
        ].
    ].
    recoveredBlock52Result
].
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            (recoveredStack0) execShortOperation: (recoveredStack1).
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 294] ifFalse: [recoveredPC := 310].
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack0 := SGMonitorStreamDummy.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack0 := (recoveredStack0) view.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            (recoveredStack0) bringToFront.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack1 := EtDBAnalysisCompleted.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredPC := 332.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            recoveredStack2 := (recoveredStack2) checkBoxIndex: (recoveredStack3).
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            (recoveredStack2) set: (recoveredStack3).
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredStack1 isInteger]) ifTrue: [(recoveredStack1 + 1 <= recoveredStack0) ifTrue: [recoveredStack1 := recoveredStack1 + 1. recoveredStack2 := recoveredStack1. recoveredPC := 320] ifFalse: [recoveredPC := 361]] ifFalse: [recoveredPC := 335].
        ].
        recoveredStep = 335 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 357] ifFalse: [recoveredPC := 352].
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            recoveredPC := 323.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            recoveredStack0 := ASDAscetController.
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSCMInstalled.
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 368] ifFalse: [recoveredPC := 371].
        ].
        recoveredStep = 368 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            (recoveredStack0) scmActivateAndOpen.
            recoveredPC := 371.
        ].
        recoveredStep = 371 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20629f6c; bytecode file offset 0xf26944"
!EtasDatabaseAdministrationDialog methodsFor: 'recovered'!
createWidgetHierarchy: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 'aDialogShell1'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := [:block2811f8e4Arg1 | 
    | block2811f8e4Value0 block2811f8e4Value1 block2811f8e4Value2 block2811f8e4Value3 block2811f8e4Value4 block2811f8e4Value5 block2811f8e4Value6 block2811f8e4Value7 block2811f8e4Value8 block2811f8e4Value9 block2811f8e4Value10 block2811f8e4Value11 |
    block2811f8e4Value0 := block2811f8e4Arg1.
    block2811f8e4Value1 := block2811f8e4Value0.
    block2811f8e4Value2 := MWMINPUTPRIMARYAPPLICATIONMODAL.
    (block2811f8e4Value1) mwmInputMode: (block2811f8e4Value2).
    block2811f8e4Value3 := block2811f8e4Value0.
    (block2811f8e4Value3) title: ('Dialog').
    block2811f8e4Value4 := block2811f8e4Value0.
    block2811f8e4Value5 := MWMDECORALL.
    block2811f8e4Value6 := MWMDECORMINIMIZE.
    block2811f8e4Value7 := (block2811f8e4Value5) | (block2811f8e4Value6).
    block2811f8e4Value8 := MWMDECORMAXIMIZE.
    block2811f8e4Value9 := (block2811f8e4Value7) | (block2811f8e4Value8).
    (block2811f8e4Value4) mwmDecorations: (block2811f8e4Value9).
    block2811f8e4Value10 := block2811f8e4Value0.
    (block2811f8e4Value10) height: (478).
    block2811f8e4Value11 := (block2811f8e4Value0) width: (400).
    block2811f8e4Value11
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDialogShell: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := 'aDialogShell1'.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) createMainWindow: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := 'mainForm'.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := 'mainForm'.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := 'ok'.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack3 := [:block2811f908Arg1 | 
    | block2811f908Value0 block2811f908Value1 block2811f908Value2 block2811f908Value3 block2811f908Value4 |
    block2811f908Value0 := block2811f908Arg1.
    block2811f908Value1 := block2811f908Value0.
    (block2811f908Value1) labelString: ('&Execute').
    block2811f908Value2 := block2811f908Value0.
    (block2811f908Value2) height: (25).
    block2811f908Value3 := block2811f908Value0.
    (block2811f908Value3) width: (90).
    block2811f908Value4 := (block2811f908Value0) sensitive: (false).
    block2811f908Value4
].
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack2 := 'ok'.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack2 := 'cancel'.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack3 := [:block2811f92cArg1 | 
    | block2811f92cValue0 block2811f92cValue1 block2811f92cValue2 block2811f92cValue3 |
    block2811f92cValue0 := block2811f92cArg1.
    block2811f92cValue1 := block2811f92cValue0.
    (block2811f92cValue1) labelString: ('&Close').
    block2811f92cValue2 := block2811f92cValue0.
    (block2811f92cValue2) height: (25).
    block2811f92cValue3 := (block2811f92cValue0) width: (90).
    block2811f92cValue3
].
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack2 := 'cancel'.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack2 := 'dbAnalyzeLabel'.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack3 := [:recoveredBlock215Arg1 | 
    | recoveredBlock215Value0 recoveredBlock215Value1 recoveredBlock215Value2 recoveredBlock215Value3 recoveredBlock215Value4 recoveredBlock215Value5 recoveredBlock215Value6 recoveredBlock215Value7 recoveredBlock215Value8 |
    recoveredBlock215Value0 := recoveredBlock215Arg1.
    recoveredBlock215Value1 := recoveredBlock215Value0.
    (recoveredBlock215Value1) x: (51).
    recoveredBlock215Value2 := recoveredBlock215Value0.
    recoveredBlock215Value3 := XmALIGNMENTBEGINNING.
    (recoveredBlock215Value2) alignment: (recoveredBlock215Value3).
    recoveredBlock215Value4 := recoveredBlock215Value0.
    recoveredBlock215Value5 := EtAnalyze.
    (recoveredBlock215Value4) labelString: (recoveredBlock215Value5).
    recoveredBlock215Value6 := recoveredBlock215Value0.
    (recoveredBlock215Value6) y: (37).
    recoveredBlock215Value7 := (self) defaultLabelBlue.
    recoveredBlock215Value8 := (recoveredBlock215Value0) foregroundColor: (recoveredBlock215Value7).
    recoveredBlock215Value8
].
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack2 := 'dbAnalyzeLabel'.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack0 := (recoveredStack0) dbChecks.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredPC := 328.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack2 := (recoveredStack2) dbChecks.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack4 := [].
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3) ifAbsent: (recoveredStack4).
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 324] ifFalse: [recoveredPC := 302].
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack4 := recoveredLocal7.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredStack5 := recoveredLocal3.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack6 := recoveredLocal1.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack7 := recoveredLocal10.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack2 := (recoveredStack2) createCheckboxIndex: (recoveredStack3) inForm: (recoveredStack4) topWidget: (recoveredStack5) buildArray: (recoveredStack6) widgetDictionary: (recoveredStack7).
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredStack1 isInteger]) ifTrue: [(recoveredStack1 + 1 <= recoveredStack0) ifTrue: [recoveredStack1 := recoveredStack1 + 1. recoveredStack2 := recoveredStack1. recoveredPC := 282] ifFalse: [recoveredPC := 357]] ifFalse: [recoveredPC := 331].
        ].
        recoveredStep = 331 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 353] ifFalse: [recoveredPC := 348].
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredPC := 285.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredStack1 := [:block2811f950Arg1 | 
    | block2811f950Value0 block2811f950Value1 block2811f950Value2 block2811f950Value3 block2811f950Value4 block2811f950Value5 block2811f950Value6 block2811f950Value7 block2811f950Value8 block2811f950Value9 |
    block2811f950Value0 := block2811f950Arg1.
    block2811f950Value1 := block2811f950Value0.
    block2811f950Value2 := XmATTACHFORM.
    (block2811f950Value1) topAttachment: (block2811f950Value2).
    block2811f950Value3 := block2811f950Value0.
    (block2811f950Value3) topOffset: (5).
    block2811f950Value4 := block2811f950Value0.
    block2811f950Value5 := XmATTACHFORM.
    (block2811f950Value4) leftAttachment: (block2811f950Value5).
    block2811f950Value6 := block2811f950Value0.
    (block2811f950Value6) leftOffset: (5).
    block2811f950Value7 := block2811f950Value0.
    block2811f950Value8 := XmATTACHFORM.
    (block2811f950Value7) rightAttachment: (block2811f950Value8).
    block2811f950Value9 := (block2811f950Value0) rightOffset: (5).
    block2811f950Value9
].
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredPC := 402.
        ].
        recoveredStep = 402 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 407.
        ].
        recoveredStep = 407 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            recoveredStack1 := [:recoveredBlock410Arg1 | 
    | recoveredBlock410Value0 recoveredBlock410Value1 recoveredBlock410Value2 |
    recoveredBlock410Value0 := recoveredBlock410Arg1.
    recoveredBlock410Value1 := recoveredLocal7.
    recoveredBlock410Value2 := (recoveredBlock410Value0) workWindow: (recoveredBlock410Value1).
    recoveredBlock410Value2
].
            recoveredPC := 426.
        ].
        recoveredStep = 426 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 431.
        ].
        recoveredStep = 431 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 434.
        ].
        recoveredStep = 434 ifTrue: [
            recoveredStack1 := [:block2811f974Arg1 | 
    | block2811f974Value0 block2811f974Value1 block2811f974Value2 block2811f974Value3 block2811f974Value4 block2811f974Value5 block2811f974Value6 |
    block2811f974Value0 := block2811f974Arg1.
    block2811f974Value1 := block2811f974Value0.
    block2811f974Value2 := XmATTACHFORM.
    (block2811f974Value1) rightAttachment: (block2811f974Value2).
    block2811f974Value3 := block2811f974Value0.
    (block2811f974Value3) rightOffset: (10).
    block2811f974Value4 := block2811f974Value0.
    block2811f974Value5 := XmATTACHFORM.
    (block2811f974Value4) bottomAttachment: (block2811f974Value5).
    block2811f974Value6 := (block2811f974Value0) bottomOffset: (10).
    block2811f974Value6
].
            recoveredPC := 438.
        ].
        recoveredStep = 438 ifTrue: [
            recoveredPC := 470.
        ].
        recoveredStep = 470 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 475.
        ].
        recoveredStep = 475 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 478.
        ].
        recoveredStep = 478 ifTrue: [
            recoveredStack1 := [:recoveredBlock478Arg1 | 
    | recoveredBlock478Value0 recoveredBlock478Value1 recoveredBlock478Value2 recoveredBlock478Value3 recoveredBlock478Value4 recoveredBlock478Value5 recoveredBlock478Value6 recoveredBlock478Value7 recoveredBlock478Value8 |
    recoveredBlock478Value0 := recoveredBlock478Arg1.
    recoveredBlock478Value1 := recoveredBlock478Value0.
    recoveredBlock478Value2 := XmATTACHWIDGET.
    (recoveredBlock478Value1) rightAttachment: (recoveredBlock478Value2).
    recoveredBlock478Value3 := recoveredBlock478Value0.
    recoveredBlock478Value4 := recoveredLocal5.
    (recoveredBlock478Value3) rightWidget: (recoveredBlock478Value4).
    recoveredBlock478Value5 := recoveredBlock478Value0.
    (recoveredBlock478Value5) rightOffset: (5).
    recoveredBlock478Value6 := recoveredBlock478Value0.
    recoveredBlock478Value7 := XmATTACHFORM.
    (recoveredBlock478Value6) bottomAttachment: (recoveredBlock478Value7).
    recoveredBlock478Value8 := (recoveredBlock478Value0) bottomOffset: (10).
    recoveredBlock478Value8
].
            recoveredPC := 522.
        ].
        recoveredStep = 522 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 527.
        ].
        recoveredStep = 527 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 530.
        ].
        recoveredStep = 530 ifTrue: [
            recoveredStack1 := XmNactivateCallback.
            recoveredPC := 534.
        ].
        recoveredStep = 534 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 535.
        ].
        recoveredStep = 535 ifTrue: [
            recoveredStack3 := 'okActivate:clientData:callData:'.
            recoveredPC := 538.
        ].
        recoveredStep = 538 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 539.
        ].
        recoveredStep = 539 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 543.
        ].
        recoveredStep = 543 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 546.
        ].
        recoveredStep = 546 ifTrue: [
            recoveredStack1 := XmNactivateCallback.
            recoveredPC := 550.
        ].
        recoveredStep = 550 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 551.
        ].
        recoveredStep = 551 ifTrue: [
            recoveredStack3 := 'cancelActivate:clientData:callData:'.
            recoveredPC := 554.
        ].
        recoveredStep = 554 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 555.
        ].
        recoveredStep = 555 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 559.
        ].
        recoveredStep = 559 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 562.
        ].
        recoveredStep = 562 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 567.
        ].
        recoveredStep = 567 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 570.
        ].
        recoveredStep = 570 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 575.
        ].
        recoveredStep = 575 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 578.
        ].
        recoveredStep = 578 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 581.
        ].
        recoveredStep = 581 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 584.
        ].
        recoveredStep = 584 ifTrue: [
            recoveredStack0 := (recoveredStack0) with: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 589.
        ].
        recoveredStep = 589 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2065d93c; bytecode file offset 0xf5a334"
!EtasDatabaseAdministrationDialog methodsFor: 'recovered'!
checkItem: recoveredArg1 resultCollection: recoveredArg2 progressWindow: recoveredArg3
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
            recoveredStack2 := 'Call_72077'.
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
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := 'Call_64423'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSGClass.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 71].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := SGFixMultipleCodeVariants.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) fixCodeArchiveFor: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultProjectKey.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := [:block2812499cArg1 | 
    nil
].
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) getObjectIfUndefined: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 71] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := (recoveredStack2) defaultProjectForItem.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack1) checkItem: (recoveredStack2) resultCollection: (recoveredStack3) progressWindow: (recoveredStack4).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) specifications.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := [:recoveredBlock76Arg1 | 
    | recoveredBlock76Local1 recoveredBlock76Stack0 recoveredBlock76Stack1 recoveredBlock76Stack2 recoveredBlock76Stack3 recoveredBlock76Stack4 recoveredBlock76PC recoveredBlock76Step recoveredBlock76Done recoveredBlock76Result |
    recoveredBlock76Stack0 := self.
    recoveredBlock76PC := 82.
    recoveredBlock76Done := false.
    [recoveredBlock76Done not] whileTrue: [
        recoveredBlock76Step := recoveredBlock76PC.
        recoveredBlock76Step = 82 ifTrue: [
            recoveredBlock76Stack1 := recoveredBlock76Arg1.
            recoveredBlock76PC := 85.
        ].
        recoveredBlock76Step = 85 ifTrue: [
            recoveredBlock76Stack2 := [:block281249c0Arg1 | 
    nil
].
            recoveredBlock76PC := 87.
        ].
        recoveredBlock76Step = 87 ifTrue: [
            recoveredBlock76PC := 92.
        ].
        recoveredBlock76Step = 92 ifTrue: [
            recoveredBlock76Stack1 := (recoveredBlock76Stack1) ownerIfUndefined: (recoveredBlock76Stack2).
            recoveredBlock76PC := 94.
        ].
        recoveredBlock76Step = 94 ifTrue: [
            recoveredBlock76Stack2 := recoveredBlock76Stack1.
            recoveredBlock76PC := 95.
        ].
        recoveredBlock76Step = 95 ifTrue: [
            recoveredBlock76Local1 := recoveredBlock76Stack2.
            recoveredBlock76PC := 98.
        ].
        recoveredBlock76Step = 98 ifTrue: [
            (recoveredBlock76Stack1 == nil) ifTrue: [recoveredBlock76PC := 116] ifFalse: [recoveredBlock76PC := 102].
        ].
        recoveredBlock76Step = 102 ifTrue: [
            recoveredBlock76Stack1 := recoveredBlock76Local1.
            recoveredBlock76PC := 105.
        ].
        recoveredBlock76Step = 105 ifTrue: [
            recoveredBlock76Stack1 := (recoveredBlock76Stack1) dbObject.
            recoveredBlock76PC := 107.
        ].
        recoveredBlock76Step = 107 ifTrue: [
            recoveredBlock76Stack2 := recoveredLocal2.
            recoveredBlock76PC := 110.
        ].
        recoveredBlock76Step = 110 ifTrue: [
            recoveredBlock76Stack2 := (recoveredBlock76Stack2) dbObject.
            recoveredBlock76PC := 112.
        ].
        recoveredBlock76Step = 112 ifTrue: [
            recoveredBlock76Stack1 := (recoveredBlock76Stack1) ~= (recoveredBlock76Stack2).
            recoveredBlock76PC := 113.
        ].
        recoveredBlock76Step = 113 ifTrue: [
            (recoveredBlock76Stack1) ifTrue: [recoveredBlock76PC := 116] ifFalse: [recoveredBlock76PC := 150].
        ].
        recoveredBlock76Step = 116 ifTrue: [
            recoveredBlock76Stack1 := recoveredBlock76Arg1.
            recoveredBlock76PC := 119.
        ].
        recoveredBlock76Step = 119 ifTrue: [
            recoveredBlock76Stack2 := recoveredLocal2.
            recoveredBlock76PC := 122.
        ].
        recoveredBlock76Step = 122 ifTrue: [
            (recoveredBlock76Stack1) owner: (recoveredBlock76Stack2).
            recoveredBlock76PC := 124.
        ].
        recoveredBlock76Step = 124 ifTrue: [
            recoveredBlock76Stack1 := recoveredArg2.
            recoveredBlock76PC := 127.
        ].
        recoveredBlock76Step = 127 ifTrue: [
            recoveredBlock76Stack2 := recoveredLocal2.
            recoveredBlock76PC := 130.
        ].
        recoveredBlock76Step = 130 ifTrue: [
            recoveredBlock76Stack2 := (recoveredBlock76Stack2) label.
            recoveredBlock76PC := 132.
        ].
        recoveredBlock76Step = 132 ifTrue: [
            recoveredBlock76Stack3 := ' (spec)'.
            recoveredBlock76PC := 134.
        ].
        recoveredBlock76Step = 134 ifTrue: [
            recoveredBlock76Stack2 := (recoveredBlock76Stack2) , (recoveredBlock76Stack3).
            recoveredBlock76PC := 136.
        ].
        recoveredBlock76Step = 136 ifTrue: [
            (recoveredBlock76Stack1) add: (recoveredBlock76Stack2).
            recoveredBlock76PC := 138.
        ].
        recoveredBlock76Step = 138 ifTrue: [
            recoveredBlock76Stack1 := recoveredLocal2.
            recoveredBlock76PC := 141.
        ].
        recoveredBlock76Step = 141 ifTrue: [
            (recoveredBlock76Stack1) modifiedWithoutTimeStamp.
            recoveredBlock76PC := 143.
        ].
        recoveredBlock76Step = 143 ifTrue: [
            recoveredBlock76Stack1 := recoveredLocal2.
            recoveredBlock76PC := 146.
        ].
        recoveredBlock76Step = 146 ifTrue: [
            recoveredBlock76Stack1 := (recoveredBlock76Stack1) dbObject.
            recoveredBlock76PC := 148.
        ].
        recoveredBlock76Step = 148 ifTrue: [
            (recoveredBlock76Stack1) commit.
            recoveredBlock76PC := 150.
        ].
        recoveredBlock76Step = 150 ifTrue: [
            recoveredBlock76Stack1 := recoveredBlock76Arg1.
            recoveredBlock76PC := 153.
        ].
        recoveredBlock76Step = 153 ifTrue: [
            recoveredBlock76Stack2 := recoveredLocal2.
            recoveredBlock76PC := 156.
        ].
        recoveredBlock76Step = 156 ifTrue: [
            recoveredBlock76Stack1 := (recoveredBlock76Stack1) methodsForClass: (recoveredBlock76Stack2).
            recoveredBlock76PC := 158.
        ].
        recoveredBlock76Step = 158 ifTrue: [
            recoveredBlock76Stack2 := [:recoveredBlock76Block158Arg1 | 
    | recoveredBlock76Block158Stack0 recoveredBlock76Block158Stack1 recoveredBlock76Block158Stack2 recoveredBlock76Block158Stack3 recoveredBlock76Block158Stack4 recoveredBlock76Block158PC recoveredBlock76Block158Step recoveredBlock76Block158Done recoveredBlock76Block158Result |
    recoveredBlock76Block158Stack0 := nil.
    recoveredBlock76Block158PC := 164.
    recoveredBlock76Block158Done := false.
    [recoveredBlock76Block158Done not] whileTrue: [
        recoveredBlock76Block158Step := recoveredBlock76Block158PC.
        recoveredBlock76Block158Step = 164 ifTrue: [
            recoveredBlock76Block158Stack1 := recoveredBlock76Block158Arg1.
            recoveredBlock76Block158PC := 167.
        ].
        recoveredBlock76Block158Step = 167 ifTrue: [
            recoveredBlock76Block158Stack1 := (recoveredBlock76Block158Stack1) owner.
            recoveredBlock76Block158PC := 169.
        ].
        recoveredBlock76Block158Step = 169 ifTrue: [
            recoveredBlock76Block158Stack2 := recoveredBlock76Arg1.
            recoveredBlock76Block158PC := 172.
        ].
        recoveredBlock76Block158Step = 172 ifTrue: [
            recoveredBlock76Block158Stack1 := (recoveredBlock76Block158Stack1) = (recoveredBlock76Block158Stack2).
            recoveredBlock76Block158PC := 173.
        ].
        recoveredBlock76Block158Step = 173 ifTrue: [
            (recoveredBlock76Block158Stack1) ifTrue: [recoveredBlock76Block158PC := 210] ifFalse: [recoveredBlock76Block158PC := 176].
        ].
        recoveredBlock76Block158Step = 176 ifTrue: [
            recoveredBlock76Block158Stack1 := recoveredBlock76Block158Arg1.
            recoveredBlock76Block158PC := 179.
        ].
        recoveredBlock76Block158Step = 179 ifTrue: [
            recoveredBlock76Block158Stack2 := recoveredBlock76Arg1.
            recoveredBlock76Block158PC := 182.
        ].
        recoveredBlock76Block158Step = 182 ifTrue: [
            (recoveredBlock76Block158Stack1) owner: (recoveredBlock76Block158Stack2).
            recoveredBlock76Block158PC := 184.
        ].
        recoveredBlock76Block158Step = 184 ifTrue: [
            recoveredBlock76Block158Stack1 := recoveredArg2.
            recoveredBlock76Block158PC := 187.
        ].
        recoveredBlock76Block158Step = 187 ifTrue: [
            recoveredBlock76Block158Stack2 := recoveredLocal2.
            recoveredBlock76Block158PC := 190.
        ].
        recoveredBlock76Block158Step = 190 ifTrue: [
            recoveredBlock76Block158Stack2 := (recoveredBlock76Block158Stack2) label.
            recoveredBlock76Block158PC := 192.
        ].
        recoveredBlock76Block158Step = 192 ifTrue: [
            recoveredBlock76Block158Stack3 := ' (method)'.
            recoveredBlock76Block158PC := 194.
        ].
        recoveredBlock76Block158Step = 194 ifTrue: [
            recoveredBlock76Block158Stack2 := (recoveredBlock76Block158Stack2) , (recoveredBlock76Block158Stack3).
            recoveredBlock76Block158PC := 196.
        ].
        recoveredBlock76Block158Step = 196 ifTrue: [
            (recoveredBlock76Block158Stack1) add: (recoveredBlock76Block158Stack2).
            recoveredBlock76Block158PC := 198.
        ].
        recoveredBlock76Block158Step = 198 ifTrue: [
            recoveredBlock76Block158Stack1 := recoveredLocal2.
            recoveredBlock76Block158PC := 201.
        ].
        recoveredBlock76Block158Step = 201 ifTrue: [
            (recoveredBlock76Block158Stack1) modifiedWithoutTimeStamp.
            recoveredBlock76Block158PC := 203.
        ].
        recoveredBlock76Block158Step = 203 ifTrue: [
            recoveredBlock76Block158Stack1 := recoveredLocal2.
            recoveredBlock76Block158PC := 206.
        ].
        recoveredBlock76Block158Step = 206 ifTrue: [
            recoveredBlock76Block158Stack1 := (recoveredBlock76Block158Stack1) dbObject.
            recoveredBlock76Block158PC := 208.
        ].
        recoveredBlock76Block158Step = 208 ifTrue: [
            (recoveredBlock76Block158Stack1) commit.
            recoveredBlock76Block158PC := 210.
        ].
        recoveredBlock76Block158Step = 210 ifTrue: [
            recoveredBlock76Block158Stack1 := recoveredBlock76Block158Arg1.
            recoveredBlock76Block158PC := 213.
        ].
        recoveredBlock76Block158Step = 213 ifTrue: [
            recoveredBlock76Block158Stack1 := (recoveredBlock76Block158Stack1) methodElements.
            recoveredBlock76Block158PC := 215.
        ].
        recoveredBlock76Block158Step = 215 ifTrue: [
            recoveredBlock76Block158Stack2 := [:recoveredBlock76Block158Block215Arg1 | 
    | recoveredBlock76Block158Block215Stack0 recoveredBlock76Block158Block215Stack1 recoveredBlock76Block158Block215Stack2 recoveredBlock76Block158Block215Stack3 recoveredBlock76Block158Block215Stack4 recoveredBlock76Block158Block215PC recoveredBlock76Block158Block215Step recoveredBlock76Block158Block215Done recoveredBlock76Block158Block215Result |
    recoveredBlock76Block158Block215Stack0 := nil.
    recoveredBlock76Block158Block215PC := 222.
    recoveredBlock76Block158Block215Done := false.
    [recoveredBlock76Block158Block215Done not] whileTrue: [
        recoveredBlock76Block158Block215Step := recoveredBlock76Block158Block215PC.
        recoveredBlock76Block158Block215Step = 222 ifTrue: [
            recoveredBlock76Block158Block215Stack1 := nil.
            recoveredBlock76Block158Block215PC := 223.
        ].
        recoveredBlock76Block158Block215Step = 223 ifTrue: [
            recoveredBlock76Block158Block215Stack2 := recoveredBlock76Block158Block215Arg1.
            recoveredBlock76Block158Block215PC := 224.
        ].
        recoveredBlock76Block158Block215Step = 224 ifTrue: [
            recoveredBlock76Block158Block215Stack2 := (recoveredBlock76Block158Block215Stack2) owner.
            recoveredBlock76Block158Block215PC := 226.
        ].
        recoveredBlock76Block158Block215Step = 226 ifTrue: [
            recoveredBlock76Block158Block215Stack3 := recoveredBlock76Block158Arg1.
            recoveredBlock76Block158Block215PC := 229.
        ].
        recoveredBlock76Block158Block215Step = 229 ifTrue: [
            recoveredBlock76Block158Block215Stack2 := (recoveredBlock76Block158Block215Stack2) = (recoveredBlock76Block158Block215Stack3).
            recoveredBlock76Block158Block215PC := 230.
        ].
        recoveredBlock76Block158Block215Step = 230 ifTrue: [
            (recoveredBlock76Block158Block215Stack2) ifTrue: [recoveredBlock76Block158Block215PC := 267] ifFalse: [recoveredBlock76Block158Block215PC := 234].
        ].
        recoveredBlock76Block158Block215Step = 234 ifTrue: [
            recoveredBlock76Block158Block215PC := 235.
        ].
        recoveredBlock76Block158Block215Step = 235 ifTrue: [
            recoveredBlock76Block158Block215Stack1 := recoveredBlock76Block158Block215Arg1.
            recoveredBlock76Block158Block215PC := 236.
        ].
        recoveredBlock76Block158Block215Step = 236 ifTrue: [
            recoveredBlock76Block158Block215Stack2 := recoveredBlock76Block158Arg1.
            recoveredBlock76Block158Block215PC := 239.
        ].
        recoveredBlock76Block158Block215Step = 239 ifTrue: [
            (recoveredBlock76Block158Block215Stack1) owner: (recoveredBlock76Block158Block215Stack2).
            recoveredBlock76Block158Block215PC := 241.
        ].
        recoveredBlock76Block158Block215Step = 241 ifTrue: [
            recoveredBlock76Block158Block215Stack1 := recoveredArg2.
            recoveredBlock76Block158Block215PC := 244.
        ].
        recoveredBlock76Block158Block215Step = 244 ifTrue: [
            recoveredBlock76Block158Block215Stack2 := recoveredLocal2.
            recoveredBlock76Block158Block215PC := 247.
        ].
        recoveredBlock76Block158Block215Step = 247 ifTrue: [
            recoveredBlock76Block158Block215Stack2 := (recoveredBlock76Block158Block215Stack2) label.
            recoveredBlock76Block158Block215PC := 249.
        ].
        recoveredBlock76Block158Block215Step = 249 ifTrue: [
            recoveredBlock76Block158Block215Stack3 := ' (meth elem)'.
            recoveredBlock76Block158Block215PC := 251.
        ].
        recoveredBlock76Block158Block215Step = 251 ifTrue: [
            recoveredBlock76Block158Block215Stack2 := (recoveredBlock76Block158Block215Stack2) , (recoveredBlock76Block158Block215Stack3).
            recoveredBlock76Block158Block215PC := 253.
        ].
        recoveredBlock76Block158Block215Step = 253 ifTrue: [
            (recoveredBlock76Block158Block215Stack1) add: (recoveredBlock76Block158Block215Stack2).
            recoveredBlock76Block158Block215PC := 255.
        ].
        recoveredBlock76Block158Block215Step = 255 ifTrue: [
            recoveredBlock76Block158Block215Stack1 := recoveredLocal2.
            recoveredBlock76Block158Block215PC := 258.
        ].
        recoveredBlock76Block158Block215Step = 258 ifTrue: [
            (recoveredBlock76Block158Block215Stack1) modifiedWithoutTimeStamp.
            recoveredBlock76Block158Block215PC := 260.
        ].
        recoveredBlock76Block158Block215Step = 260 ifTrue: [
            recoveredBlock76Block158Block215Stack1 := recoveredLocal2.
            recoveredBlock76Block158Block215PC := 263.
        ].
        recoveredBlock76Block158Block215Step = 263 ifTrue: [
            recoveredBlock76Block158Block215Stack1 := (recoveredBlock76Block158Block215Stack1) dbObject.
            recoveredBlock76Block158Block215PC := 265.
        ].
        recoveredBlock76Block158Block215Step = 265 ifTrue: [
            recoveredBlock76Block158Block215Stack1 := (recoveredBlock76Block158Block215Stack1) commit.
            recoveredBlock76Block158Block215PC := 267.
        ].
        recoveredBlock76Block158Block215Step = 267 ifTrue: [
            recoveredBlock76Block158Block215Result := recoveredBlock76Block158Block215Stack1.
            recoveredBlock76Block158Block215Done := true.
        ].
    ].
    recoveredBlock76Block158Block215Result
].
            recoveredBlock76Block158PC := 268.
        ].
        recoveredBlock76Block158Step = 268 ifTrue: [
            recoveredBlock76Block158Stack1 := (recoveredBlock76Block158Stack1) do: (recoveredBlock76Block158Stack2).
            recoveredBlock76Block158PC := 270.
        ].
        recoveredBlock76Block158Step = 270 ifTrue: [
            recoveredBlock76Block158Result := recoveredBlock76Block158Stack1.
            recoveredBlock76Block158Done := true.
        ].
    ].
    recoveredBlock76Block158Result
].
            recoveredBlock76PC := 271.
        ].
        recoveredBlock76Step = 271 ifTrue: [
            (recoveredBlock76Stack1) do: (recoveredBlock76Stack2).
            recoveredBlock76PC := 273.
        ].
        recoveredBlock76Step = 273 ifTrue: [
            recoveredBlock76Stack1 := 'Kli'.
            recoveredBlock76PC := 275.
        ].
        recoveredBlock76Step = 275 ifTrue: [
            recoveredBlock76Stack2 := 'Call_93569'.
            recoveredBlock76PC := 277.
        ].
        recoveredBlock76Step = 277 ifTrue: [
            recoveredBlock76Stack1 := (recoveredBlock76Stack1) == (recoveredBlock76Stack2).
            recoveredBlock76PC := 278.
        ].
        recoveredBlock76Step = 278 ifTrue: [
            recoveredBlock76Result := recoveredBlock76Stack1.
            recoveredBlock76Done := true.
        ].
    ].
    recoveredBlock76Result
].
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSGClass.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack2 := (recoveredStack2) isProject.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack1 := (recoveredStack1) | (recoveredStack2).
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 296] ifFalse: [recoveredPC := 943].
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack1 := (recoveredStack1) dbObject.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack1 := (recoveredStack1) isComponentSpecificationExistent.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 337] ifFalse: [recoveredPC := 306].
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            (recoveredStack1) updateComponentSpecificationExistentFlag.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack1 := (recoveredStack1) dbObject.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack1 := (recoveredStack1) isComponentSpecificationExistent.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 322] ifFalse: [recoveredPC := 337].
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack1 := SGMonitorStreamDummy.
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            recoveredStack2 := 'Repaired component existent flag for: '.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            recoveredStack3 := (recoveredStack3) importLabel.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            (recoveredStack1) addText: (recoveredStack2).
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack2 := [:recoveredBlock340Arg1 | 
    | recoveredBlock340Local1 recoveredBlock340Stack0 recoveredBlock340Stack1 recoveredBlock340Stack2 recoveredBlock340Stack3 recoveredBlock340Stack4 recoveredBlock340PC recoveredBlock340Step recoveredBlock340Done recoveredBlock340Result |
    recoveredBlock340Stack0 := self.
    recoveredBlock340PC := 346.
    recoveredBlock340Done := false.
    [recoveredBlock340Done not] whileTrue: [
        recoveredBlock340Step := recoveredBlock340PC.
        recoveredBlock340Step = 346 ifTrue: [
            recoveredBlock340Stack1 := nil.
            recoveredBlock340PC := 347.
        ].
        recoveredBlock340Step = 347 ifTrue: [
            recoveredBlock340Stack2 := recoveredBlock340Arg1.
            recoveredBlock340PC := 348.
        ].
        recoveredBlock340Step = 348 ifTrue: [
            recoveredBlock340Stack3 := [:block281249e4Arg1 | 
    nil
].
            recoveredBlock340PC := 350.
        ].
        recoveredBlock340Step = 350 ifTrue: [
            recoveredBlock340PC := 356.
        ].
        recoveredBlock340Step = 356 ifTrue: [
            recoveredBlock340Stack2 := (recoveredBlock340Stack2) ownerIfUndefined: (recoveredBlock340Stack3).
            recoveredBlock340PC := 358.
        ].
        recoveredBlock340Step = 358 ifTrue: [
            recoveredBlock340Stack3 := recoveredBlock340Stack2.
            recoveredBlock340PC := 359.
        ].
        recoveredBlock340Step = 359 ifTrue: [
            recoveredBlock340Local1 := recoveredBlock340Stack3.
            recoveredBlock340PC := 360.
        ].
        recoveredBlock340Step = 360 ifTrue: [
            (recoveredBlock340Stack2 == nil) ifTrue: [recoveredBlock340PC := 376] ifFalse: [recoveredBlock340PC := 364].
        ].
        recoveredBlock340Step = 364 ifTrue: [
            recoveredBlock340Stack2 := recoveredBlock340Local1.
            recoveredBlock340PC := 365.
        ].
        recoveredBlock340Step = 365 ifTrue: [
            recoveredBlock340Stack2 := (recoveredBlock340Stack2) dbObject.
            recoveredBlock340PC := 367.
        ].
        recoveredBlock340Step = 367 ifTrue: [
            recoveredBlock340Stack3 := recoveredLocal2.
            recoveredBlock340PC := 370.
        ].
        recoveredBlock340Step = 370 ifTrue: [
            recoveredBlock340Stack3 := (recoveredBlock340Stack3) dbObject.
            recoveredBlock340PC := 372.
        ].
        recoveredBlock340Step = 372 ifTrue: [
            recoveredBlock340Stack2 := (recoveredBlock340Stack2) ~= (recoveredBlock340Stack3).
            recoveredBlock340PC := 373.
        ].
        recoveredBlock340Step = 373 ifTrue: [
            (recoveredBlock340Stack2) ifTrue: [recoveredBlock340PC := 376] ifFalse: [recoveredBlock340PC := 409].
        ].
        recoveredBlock340Step = 376 ifTrue: [
            recoveredBlock340PC := 377.
        ].
        recoveredBlock340Step = 377 ifTrue: [
            recoveredBlock340Stack1 := recoveredBlock340Arg1.
            recoveredBlock340PC := 378.
        ].
        recoveredBlock340Step = 378 ifTrue: [
            recoveredBlock340Stack2 := recoveredLocal2.
            recoveredBlock340PC := 381.
        ].
        recoveredBlock340Step = 381 ifTrue: [
            (recoveredBlock340Stack1) owner: (recoveredBlock340Stack2).
            recoveredBlock340PC := 383.
        ].
        recoveredBlock340Step = 383 ifTrue: [
            recoveredBlock340Stack1 := recoveredArg2.
            recoveredBlock340PC := 386.
        ].
        recoveredBlock340Step = 386 ifTrue: [
            recoveredBlock340Stack2 := recoveredLocal2.
            recoveredBlock340PC := 389.
        ].
        recoveredBlock340Step = 389 ifTrue: [
            recoveredBlock340Stack2 := (recoveredBlock340Stack2) label.
            recoveredBlock340PC := 391.
        ].
        recoveredBlock340Step = 391 ifTrue: [
            recoveredBlock340Stack3 := ' (vars)'.
            recoveredBlock340PC := 393.
        ].
        recoveredBlock340Step = 393 ifTrue: [
            recoveredBlock340Stack2 := (recoveredBlock340Stack2) , (recoveredBlock340Stack3).
            recoveredBlock340PC := 395.
        ].
        recoveredBlock340Step = 395 ifTrue: [
            (recoveredBlock340Stack1) add: (recoveredBlock340Stack2).
            recoveredBlock340PC := 397.
        ].
        recoveredBlock340Step = 397 ifTrue: [
            recoveredBlock340Stack1 := recoveredLocal2.
            recoveredBlock340PC := 400.
        ].
        recoveredBlock340Step = 400 ifTrue: [
            (recoveredBlock340Stack1) modifiedWithoutTimeStamp.
            recoveredBlock340PC := 402.
        ].
        recoveredBlock340Step = 402 ifTrue: [
            recoveredBlock340Stack1 := recoveredLocal2.
            recoveredBlock340PC := 405.
        ].
        recoveredBlock340Step = 405 ifTrue: [
            recoveredBlock340Stack1 := (recoveredBlock340Stack1) dbObject.
            recoveredBlock340PC := 407.
        ].
        recoveredBlock340Step = 407 ifTrue: [
            recoveredBlock340Stack1 := (recoveredBlock340Stack1) commit.
            recoveredBlock340PC := 409.
        ].
        recoveredBlock340Step = 409 ifTrue: [
            recoveredBlock340Result := recoveredBlock340Stack1.
            recoveredBlock340Done := true.
        ].
    ].
    recoveredBlock340Result
].
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            (recoveredStack1) allVariablesDo: (recoveredStack2).
            recoveredPC := 412.
        ].
        recoveredStep = 412 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 414.
        ].
        recoveredStep = 414 ifTrue: [
            recoveredStack2 := 'Call_2008401511'.
            recoveredPC := 416.
        ].
        recoveredStep = 416 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 417.
        ].
        recoveredStep = 417 ifTrue: [
            recoveredPC := 418.
        ].
        recoveredStep = 418 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 421.
        ].
        recoveredStep = 421 ifTrue: [
            recoveredStack1 := (recoveredStack1) complexVariables.
            recoveredPC := 423.
        ].
        recoveredStep = 423 ifTrue: [
            recoveredStack2 := [:block28124a08Arg1 | 
    | block28124a08Value0 block28124a08Value1 |
    block28124a08Value0 := block28124a08Arg1.
    block28124a08Value1 := (block28124a08Value0) isPrimitive.
    block28124a08Value1
].
            recoveredPC := 425.
        ].
        recoveredStep = 425 ifTrue: [
            recoveredPC := 432.
        ].
        recoveredStep = 432 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 434.
        ].
        recoveredStep = 434 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 437.
        ].
        recoveredStep = 437 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 440.
        ].
        recoveredStep = 440 ifTrue: [
            recoveredStack2 := [:recoveredBlock440Arg1 :recoveredBlock440Arg2 | 
    | recoveredBlock440Value0 recoveredBlock440Value1 recoveredBlock440Value2 recoveredBlock440Value3 recoveredBlock440Value4 recoveredBlock440Value5 recoveredBlock440Value6 recoveredBlock440Value7 recoveredBlock440Value8 recoveredBlock440Value9 recoveredBlock440Value10 recoveredBlock440Value11 recoveredBlock440Value12 recoveredBlock440Value13 recoveredBlock440Value14 recoveredBlock440Value15 recoveredBlock440Value16 |
    recoveredBlock440Value0 := SGMonitorStreamDummy.
    recoveredBlock440Value1 := (recoveredBlock440Value0) create.
    recoveredBlock440Value2 := recoveredLocal2.
    recoveredBlock440Value3 := (recoveredBlock440Value2) importLabel.
    recoveredBlock440Value4 := ('Fixed enum in: ') , (recoveredBlock440Value3).
    recoveredBlock440Value5 := (recoveredBlock440Value4) , (' -> ').
    recoveredBlock440Value6 := recoveredBlock440Arg2.
    recoveredBlock440Value7 := (recoveredBlock440Value6) label.
    recoveredBlock440Value8 := (recoveredBlock440Value5) , (recoveredBlock440Value7).
    (recoveredBlock440Value1) addText: (recoveredBlock440Value8).
    recoveredBlock440Value9 := recoveredLocal2.
    recoveredBlock440Value10 := (recoveredBlock440Value9) primitiveVariables.
    recoveredBlock440Value11 := recoveredBlock440Arg1.
    recoveredBlock440Value12 := recoveredBlock440Arg2.
    (recoveredBlock440Value10) at: (recoveredBlock440Value11) put: (recoveredBlock440Value12).
    recoveredBlock440Value13 := recoveredLocal2.
    recoveredBlock440Value14 := (recoveredBlock440Value13) complexVariables.
    recoveredBlock440Value15 := recoveredBlock440Arg1.
    recoveredBlock440Value16 := (recoveredBlock440Value14) removeKey: (recoveredBlock440Value15).
    recoveredBlock440Value16
].
            recoveredPC := 488.
        ].
        recoveredStep = 488 ifTrue: [
            (recoveredStack1) keysAndValuesDo: (recoveredStack2).
            recoveredPC := 490.
        ].
        recoveredStep = 490 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 493.
        ].
        recoveredStep = 493 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 495.
        ].
        recoveredStep = 495 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 498] ifFalse: [recoveredPC := 510].
        ].
        recoveredStep = 498 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 501.
        ].
        recoveredStep = 501 ifTrue: [
            (recoveredStack1) modifiedWithoutTimeStamp.
            recoveredPC := 503.
        ].
        recoveredStep = 503 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 506.
        ].
        recoveredStep = 506 ifTrue: [
            recoveredStack1 := (recoveredStack1) dbObject.
            recoveredPC := 508.
        ].
        recoveredStep = 508 ifTrue: [
            (recoveredStack1) commit.
            recoveredPC := 510.
        ].
        recoveredStep = 510 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 513.
        ].
        recoveredStep = 513 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCTClass.
            recoveredPC := 515.
        ].
        recoveredStep = 515 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 518] ifFalse: [recoveredPC := 544].
        ].
        recoveredStep = 518 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 520.
        ].
        recoveredStep = 520 ifTrue: [
            recoveredStack2 := 'Call_70081'.
            recoveredPC := 522.
        ].
        recoveredStep = 522 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 523.
        ].
        recoveredStep = 523 ifTrue: [
            recoveredPC := 524.
        ].
        recoveredStep = 524 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 527.
        ].
        recoveredStep = 527 ifTrue: [
            recoveredStack1 := (recoveredStack1) implementations.
            recoveredPC := 529.
        ].
        recoveredStep = 529 ifTrue: [
            recoveredStack2 := [:block28124a2cArg1 | 
    | block28124a2cValue0 block28124a2cValue1 |
    block28124a2cValue0 := block28124a2cArg1.
    block28124a2cValue1 := (block28124a2cValue0) initValues.
    block28124a2cValue1
].
            recoveredPC := 532.
        ].
        recoveredStep = 532 ifTrue: [
            recoveredPC := 542.
        ].
        recoveredStep = 542 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 544.
        ].
        recoveredStep = 544 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 546.
        ].
        recoveredStep = 546 ifTrue: [
            recoveredStack2 := 'Call_72077'.
            recoveredPC := 548.
        ].
        recoveredStep = 548 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 549.
        ].
        recoveredStep = 549 ifTrue: [
            recoveredPC := 550.
        ].
        recoveredStep = 550 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 553.
        ].
        recoveredStep = 553 ifTrue: [
            recoveredStack1 := (recoveredStack1) isProject.
            recoveredPC := 555.
        ].
        recoveredStep = 555 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 558] ifFalse: [recoveredPC := 748].
        ].
        recoveredStep = 558 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 560.
        ].
        recoveredStep = 560 ifTrue: [
            recoveredStack2 := 'Call_84946'.
            recoveredPC := 564.
        ].
        recoveredStep = 564 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 565.
        ].
        recoveredStep = 565 ifTrue: [
            recoveredPC := 566.
        ].
        recoveredStep = 566 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 569.
        ].
        recoveredStep = 569 ifTrue: [
            recoveredStack1 := (recoveredStack1) specifications.
            recoveredPC := 571.
        ].
        recoveredStep = 571 ifTrue: [
            recoveredStack2 := [:recoveredBlock571Arg1 | 
    | recoveredBlock571Local1 recoveredBlock571Local2 recoveredBlock571Stack0 recoveredBlock571Stack1 recoveredBlock571Stack2 recoveredBlock571Stack3 recoveredBlock571PC recoveredBlock571Step recoveredBlock571Done recoveredBlock571Result |
    recoveredBlock571Stack0 := self.
    recoveredBlock571PC := 578.
    recoveredBlock571Done := false.
    [recoveredBlock571Done not] whileTrue: [
        recoveredBlock571Step := recoveredBlock571PC.
        recoveredBlock571Step = 578 ifTrue: [
            recoveredBlock571Stack1 := 'Kli'.
            recoveredBlock571PC := 580.
        ].
        recoveredBlock571Step = 580 ifTrue: [
            recoveredBlock571Stack2 := 'Call_93569'.
            recoveredBlock571PC := 582.
        ].
        recoveredBlock571Step = 582 ifTrue: [
            recoveredBlock571Stack1 := (recoveredBlock571Stack1) == (recoveredBlock571Stack2).
            recoveredBlock571PC := 583.
        ].
        recoveredBlock571Step = 583 ifTrue: [
            recoveredBlock571PC := 584.
        ].
        recoveredBlock571Step = 584 ifTrue: [
            recoveredBlock571Stack1 := recoveredBlock571Arg1.
            recoveredBlock571PC := 587.
        ].
        recoveredBlock571Step = 587 ifTrue: [
            recoveredBlock571Stack1 := (recoveredBlock571Stack1) osLogic.
            recoveredBlock571PC := 591.
        ].
        recoveredBlock571Step = 591 ifTrue: [
            recoveredBlock571Local1 := recoveredBlock571Stack1.
            recoveredBlock571PC := 594.
        ].
        recoveredBlock571Step = 594 ifTrue: [
            recoveredBlock571Stack1 := OrderedCollection.
            recoveredBlock571PC := 598.
        ].
        recoveredBlock571Step = 598 ifTrue: [
            recoveredBlock571Stack1 := (recoveredBlock571Stack1) new.
            recoveredBlock571PC := 603.
        ].
        recoveredBlock571Step = 603 ifTrue: [
            recoveredBlock571Local2 := recoveredBlock571Stack1.
            recoveredBlock571PC := 606.
        ].
        recoveredBlock571Step = 606 ifTrue: [
            recoveredBlock571Stack1 := recoveredBlock571Arg1.
            recoveredBlock571PC := 609.
        ].
        recoveredBlock571Step = 609 ifTrue: [
            recoveredBlock571Stack1 := (recoveredBlock571Stack1) osLogic.
            recoveredBlock571PC := 613.
        ].
        recoveredBlock571Step = 613 ifTrue: [
            recoveredBlock571Stack2 := [:recoveredBlock571Block613Arg1 :recoveredBlock571Block613Arg2 | 
    | recoveredBlock571Block613Value0 recoveredBlock571Block613Value1 recoveredBlock571Block613Value2 |
    recoveredBlock571Block613Value0 := recoveredBlock571Block613Arg2.
    recoveredBlock571Block613Value1 := [:recoveredBlock571Block613Block623Arg1 | 
    | recoveredBlock571Block613Block623Value0 recoveredBlock571Block613Block623Value1 recoveredBlock571Block613Block623Value2 |
    recoveredBlock571Block613Block623Value0 := recoveredBlock571Local2.
    recoveredBlock571Block613Block623Value1 := recoveredBlock571Block613Arg1.
    recoveredBlock571Block613Block623Value2 := (recoveredBlock571Block613Block623Value0) add: (recoveredBlock571Block613Block623Value1).
    recoveredBlock571Block613Block623Value2
].
    recoveredBlock571Block613Value2 := (recoveredBlock571Block613Value0) getObjectIfUndefined: (recoveredBlock571Block613Value1).
    recoveredBlock571Block613Value2
].
            recoveredBlock571PC := 642.
        ].
        recoveredBlock571Step = 642 ifTrue: [
            (recoveredBlock571Stack1) keysAndValuesDo: (recoveredBlock571Stack2).
            recoveredBlock571PC := 644.
        ].
        recoveredBlock571Step = 644 ifTrue: [
            recoveredBlock571Stack1 := recoveredBlock571Local1.
            recoveredBlock571PC := 647.
        ].
        recoveredBlock571Step = 647 ifTrue: [
            recoveredBlock571Stack2 := recoveredBlock571Local2.
            recoveredBlock571PC := 650.
        ].
        recoveredBlock571Step = 650 ifTrue: [
            (recoveredBlock571Stack1) removeAllKeys: (recoveredBlock571Stack2).
            recoveredBlock571PC := 655.
        ].
        recoveredBlock571Step = 655 ifTrue: [
            recoveredBlock571Stack1 := recoveredBlock571Local2.
            recoveredBlock571PC := 658.
        ].
        recoveredBlock571Step = 658 ifTrue: [
            recoveredBlock571Stack2 := [:recoveredBlock571Block658Arg1 | 
    | recoveredBlock571Block658Value0 recoveredBlock571Block658Value1 recoveredBlock571Block658Value2 recoveredBlock571Block658Value3 recoveredBlock571Block658Value4 recoveredBlock571Block658Value5 recoveredBlock571Block658Value6 recoveredBlock571Block658Value7 recoveredBlock571Block658Value8 recoveredBlock571Block658Value9 recoveredBlock571Block658Value10 recoveredBlock571Block658Value11 recoveredBlock571Block658Value12 recoveredBlock571Block658Value13 recoveredBlock571Block658Value14 recoveredBlock571Block658Value15 recoveredBlock571Block658Value16 recoveredBlock571Block658Value17 |
    recoveredBlock571Block658Value0 := SGMonitorStreamDummy.
    recoveredBlock571Block658Value1 := (recoveredBlock571Block658Value0) create.
    recoveredBlock571Block658Value2 := recoveredLocal2.
    recoveredBlock571Block658Value3 := (recoveredBlock571Block658Value2) importLabel.
    recoveredBlock571Block658Value4 := ('Os logic repaired for: ') , (recoveredBlock571Block658Value3).
    recoveredBlock571Block658Value5 := (recoveredBlock571Block658Value4) , (' -> ').
    recoveredBlock571Block658Value6 := recoveredBlock571Block658Arg1.
    recoveredBlock571Block658Value7 := (recoveredBlock571Block658Value6) asString.
    recoveredBlock571Block658Value8 := (recoveredBlock571Block658Value5) , (recoveredBlock571Block658Value7).
    (recoveredBlock571Block658Value1) addText: (recoveredBlock571Block658Value8).
    recoveredBlock571Block658Value9 := recoveredArg2.
    recoveredBlock571Block658Value10 := recoveredLocal2.
    recoveredBlock571Block658Value11 := (recoveredBlock571Block658Value10) label.
    recoveredBlock571Block658Value12 := (recoveredBlock571Block658Value11) , (' (OS logic [').
    recoveredBlock571Block658Value13 := recoveredBlock571Block658Arg1.
    recoveredBlock571Block658Value14 := (recoveredBlock571Block658Value13) asString.
    recoveredBlock571Block658Value15 := (recoveredBlock571Block658Value12) , (recoveredBlock571Block658Value14).
    recoveredBlock571Block658Value16 := (recoveredBlock571Block658Value15) , ('])').
    recoveredBlock571Block658Value17 := (recoveredBlock571Block658Value9) add: (recoveredBlock571Block658Value16).
    recoveredBlock571Block658Value17
].
            recoveredBlock571PC := 721.
        ].
        recoveredBlock571Step = 721 ifTrue: [
            (recoveredBlock571Stack1) do: (recoveredBlock571Stack2).
            recoveredBlock571PC := 723.
        ].
        recoveredBlock571Step = 723 ifTrue: [
            recoveredBlock571Stack1 := nil.
            recoveredBlock571PC := 724.
        ].
        recoveredBlock571Step = 724 ifTrue: [
            recoveredBlock571Stack2 := recoveredBlock571Local2.
            recoveredBlock571PC := 727.
        ].
        recoveredBlock571Step = 727 ifTrue: [
            recoveredBlock571Stack2 := (recoveredBlock571Stack2) notEmpty.
            recoveredBlock571PC := 729.
        ].
        recoveredBlock571Step = 729 ifTrue: [
            (recoveredBlock571Stack2) ifTrue: [recoveredBlock571PC := 732] ifFalse: [recoveredBlock571PC := 745].
        ].
        recoveredBlock571Step = 732 ifTrue: [
            recoveredBlock571PC := 733.
        ].
        recoveredBlock571Step = 733 ifTrue: [
            recoveredBlock571Stack1 := recoveredLocal2.
            recoveredBlock571PC := 736.
        ].
        recoveredBlock571Step = 736 ifTrue: [
            (recoveredBlock571Stack1) modifiedWithoutTimeStamp.
            recoveredBlock571PC := 738.
        ].
        recoveredBlock571Step = 738 ifTrue: [
            recoveredBlock571Stack1 := recoveredLocal2.
            recoveredBlock571PC := 741.
        ].
        recoveredBlock571Step = 741 ifTrue: [
            recoveredBlock571Stack1 := (recoveredBlock571Stack1) dbObject.
            recoveredBlock571PC := 743.
        ].
        recoveredBlock571Step = 743 ifTrue: [
            recoveredBlock571Stack1 := (recoveredBlock571Stack1) commit.
            recoveredBlock571PC := 745.
        ].
        recoveredBlock571Step = 745 ifTrue: [
            recoveredBlock571Result := recoveredBlock571Stack1.
            recoveredBlock571Done := true.
        ].
    ].
    recoveredBlock571Result
].
            recoveredPC := 746.
        ].
        recoveredStep = 746 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 748.
        ].
        recoveredStep = 748 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 750.
        ].
        recoveredStep = 750 ifTrue: [
            recoveredStack2 := 'Call_67666'.
            recoveredPC := 754.
        ].
        recoveredStep = 754 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 755.
        ].
        recoveredStep = 755 ifTrue: [
            recoveredPC := 756.
        ].
        recoveredStep = 756 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 759.
        ].
        recoveredStep = 759 ifTrue: [
            recoveredStack1 := (recoveredStack1) availableConfigurations.
            recoveredPC := 763.
        ].
        recoveredStep = 763 ifTrue: [
            recoveredStack2 := [:recoveredBlock763Arg1 | 
    | recoveredBlock763Stack0 recoveredBlock763Stack1 recoveredBlock763Stack2 recoveredBlock763Stack3 recoveredBlock763Stack4 recoveredBlock763PC recoveredBlock763Step recoveredBlock763Done recoveredBlock763Result |
    recoveredBlock763Stack0 := self.
    recoveredBlock763PC := 770.
    recoveredBlock763Done := false.
    [recoveredBlock763Done not] whileTrue: [
        recoveredBlock763Step := recoveredBlock763PC.
        recoveredBlock763Step = 770 ifTrue: [
            recoveredBlock763Stack1 := recoveredBlock763Arg1.
            recoveredBlock763PC := 771.
        ].
        recoveredBlock763Step = 771 ifTrue: [
            recoveredBlock763Stack1 := (recoveredBlock763Stack1) isRBDBUndefinedObject.
            recoveredBlock763PC := 775.
        ].
        recoveredBlock763Step = 775 ifTrue: [
            (recoveredBlock763Stack1) ifTrue: [recoveredBlock763PC := 778] ifFalse: [recoveredBlock763PC := 798].
        ].
        recoveredBlock763Step = 778 ifTrue: [
            recoveredBlock763Stack1 := SGMonitorStreamDummy.
            recoveredBlock763PC := 780.
        ].
        recoveredBlock763Step = 780 ifTrue: [
            recoveredBlock763Stack1 := (recoveredBlock763Stack1) create.
            recoveredBlock763PC := 782.
        ].
        recoveredBlock763Step = 782 ifTrue: [
            recoveredBlock763Stack2 := 'Unreadable impl or data for: '.
            recoveredBlock763PC := 786.
        ].
        recoveredBlock763Step = 786 ifTrue: [
            recoveredBlock763Stack3 := recoveredLocal2.
            recoveredBlock763PC := 789.
        ].
        recoveredBlock763Step = 789 ifTrue: [
            recoveredBlock763Stack3 := (recoveredBlock763Stack3) importLabel.
            recoveredBlock763PC := 791.
        ].
        recoveredBlock763Step = 791 ifTrue: [
            recoveredBlock763Stack2 := (recoveredBlock763Stack2) , (recoveredBlock763Stack3).
            recoveredBlock763PC := 793.
        ].
        recoveredBlock763Step = 793 ifTrue: [
            recoveredBlock763Stack1 := (recoveredBlock763Stack1) addText: (recoveredBlock763Stack2).
            recoveredBlock763PC := 795.
        ].
        recoveredBlock763Step = 795 ifTrue: [
            recoveredBlock763PC := 866.
        ].
        recoveredBlock763Step = 798 ifTrue: [
            recoveredBlock763Stack1 := recoveredBlock763Arg1.
            recoveredBlock763PC := 799.
        ].
        recoveredBlock763Step = 799 ifTrue: [
            recoveredBlock763Stack2 := recoveredLocal2.
            recoveredBlock763PC := 802.
        ].
        recoveredBlock763Step = 802 ifTrue: [
            recoveredBlock763Stack1 := (recoveredBlock763Stack1) fixWrongSgClassFor: (recoveredBlock763Stack2).
            recoveredBlock763PC := 807.
        ].
        recoveredBlock763Step = 807 ifTrue: [
            (recoveredBlock763Stack1) ifTrue: [recoveredBlock763PC := 826] ifFalse: [recoveredBlock763PC := 810].
        ].
        recoveredBlock763Step = 810 ifTrue: [
            recoveredBlock763Stack1 := recoveredArg2.
            recoveredBlock763PC := 813.
        ].
        recoveredBlock763Step = 813 ifTrue: [
            recoveredBlock763Stack2 := recoveredLocal2.
            recoveredBlock763PC := 816.
        ].
        recoveredBlock763Step = 816 ifTrue: [
            recoveredBlock763Stack2 := (recoveredBlock763Stack2) label.
            recoveredBlock763PC := 818.
        ].
        recoveredBlock763Step = 818 ifTrue: [
            recoveredBlock763Stack3 := ' (configuration)'.
            recoveredBlock763PC := 822.
        ].
        recoveredBlock763Step = 822 ifTrue: [
            recoveredBlock763Stack2 := (recoveredBlock763Stack2) , (recoveredBlock763Stack3).
            recoveredBlock763PC := 824.
        ].
        recoveredBlock763Step = 824 ifTrue: [
            (recoveredBlock763Stack1) add: (recoveredBlock763Stack2).
            recoveredBlock763PC := 826.
        ].
        recoveredBlock763Step = 826 ifTrue: [
            recoveredBlock763Stack1 := 'Kk'.
            recoveredBlock763PC := 828.
        ].
        recoveredBlock763Step = 828 ifTrue: [
            recoveredBlock763Stack2 := 'Call_67666'.
            recoveredBlock763PC := 832.
        ].
        recoveredBlock763Step = 832 ifTrue: [
            recoveredBlock763Stack1 := (recoveredBlock763Stack1) == (recoveredBlock763Stack2).
            recoveredBlock763PC := 833.
        ].
        recoveredBlock763Step = 833 ifTrue: [
            recoveredBlock763PC := 834.
        ].
        recoveredBlock763Step = 834 ifTrue: [
            recoveredBlock763Stack1 := nil.
            recoveredBlock763PC := 835.
        ].
        recoveredBlock763Step = 835 ifTrue: [
            recoveredBlock763Stack2 := recoveredBlock763Arg1.
            recoveredBlock763PC := 836.
        ].
        recoveredBlock763Step = 836 ifTrue: [
            recoveredBlock763Stack2 := (recoveredBlock763Stack2) needsToBeMadeConsistent.
            recoveredBlock763PC := 841.
        ].
        recoveredBlock763Step = 841 ifTrue: [
            (recoveredBlock763Stack2) ifTrue: [recoveredBlock763PC := 844] ifFalse: [recoveredBlock763PC := 866].
        ].
        recoveredBlock763Step = 844 ifTrue: [
            recoveredBlock763PC := 845.
        ].
        recoveredBlock763Step = 845 ifTrue: [
            recoveredBlock763Stack1 := recoveredBlock763Arg1.
            recoveredBlock763PC := 846.
        ].
        recoveredBlock763Step = 846 ifTrue: [
            (recoveredBlock763Stack1) makeConfigConsistent.
            recoveredBlock763PC := 851.
        ].
        recoveredBlock763Step = 851 ifTrue: [
            recoveredBlock763Stack1 := recoveredArg2.
            recoveredBlock763PC := 854.
        ].
        recoveredBlock763Step = 854 ifTrue: [
            recoveredBlock763Stack2 := recoveredBlock763Arg1.
            recoveredBlock763PC := 855.
        ].
        recoveredBlock763Step = 855 ifTrue: [
            recoveredBlock763Stack2 := (recoveredBlock763Stack2) completeLabel.
            recoveredBlock763PC := 859.
        ].
        recoveredBlock763Step = 859 ifTrue: [
            recoveredBlock763Stack3 := ' (configuration updated)'.
            recoveredBlock763PC := 862.
        ].
        recoveredBlock763Step = 862 ifTrue: [
            recoveredBlock763Stack2 := (recoveredBlock763Stack2) , (recoveredBlock763Stack3).
            recoveredBlock763PC := 864.
        ].
        recoveredBlock763Step = 864 ifTrue: [
            recoveredBlock763Stack1 := (recoveredBlock763Stack1) add: (recoveredBlock763Stack2).
            recoveredBlock763PC := 866.
        ].
        recoveredBlock763Step = 866 ifTrue: [
            recoveredBlock763Result := recoveredBlock763Stack1.
            recoveredBlock763Done := true.
        ].
    ].
    recoveredBlock763Result
].
            recoveredPC := 867.
        ].
        recoveredStep = 867 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 869.
        ].
        recoveredStep = 869 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 872.
        ].
        recoveredStep = 872 ifTrue: [
            recoveredStack1 := (recoveredStack1) simulationConfigs.
            recoveredPC := 877.
        ].
        recoveredStep = 877 ifTrue: [
            recoveredStack2 := [:recoveredBlock877Arg1 | 
    | recoveredBlock877Stack0 recoveredBlock877Stack1 recoveredBlock877Stack2 recoveredBlock877Stack3 recoveredBlock877Stack4 recoveredBlock877PC recoveredBlock877Step recoveredBlock877Done recoveredBlock877Result |
    recoveredBlock877Stack0 := self.
    recoveredBlock877PC := 884.
    recoveredBlock877Done := false.
    [recoveredBlock877Done not] whileTrue: [
        recoveredBlock877Step := recoveredBlock877PC.
        recoveredBlock877Step = 884 ifTrue: [
            recoveredBlock877Stack1 := recoveredBlock877Arg1.
            recoveredBlock877PC := 885.
        ].
        recoveredBlock877Step = 885 ifTrue: [
            recoveredBlock877Stack1 := (recoveredBlock877Stack1) isRBDBUndefinedObject.
            recoveredBlock877PC := 889.
        ].
        recoveredBlock877Step = 889 ifTrue: [
            (recoveredBlock877Stack1) ifTrue: [recoveredBlock877PC := 892] ifFalse: [recoveredBlock877PC := 912].
        ].
        recoveredBlock877Step = 892 ifTrue: [
            recoveredBlock877Stack1 := SGMonitorStreamDummy.
            recoveredBlock877PC := 894.
        ].
        recoveredBlock877Step = 894 ifTrue: [
            recoveredBlock877Stack1 := (recoveredBlock877Stack1) create.
            recoveredBlock877PC := 896.
        ].
        recoveredBlock877Step = 896 ifTrue: [
            recoveredBlock877Stack2 := 'Unreadable experiment for: '.
            recoveredBlock877PC := 900.
        ].
        recoveredBlock877Step = 900 ifTrue: [
            recoveredBlock877Stack3 := recoveredLocal2.
            recoveredBlock877PC := 903.
        ].
        recoveredBlock877Step = 903 ifTrue: [
            recoveredBlock877Stack3 := (recoveredBlock877Stack3) importLabel.
            recoveredBlock877PC := 905.
        ].
        recoveredBlock877Step = 905 ifTrue: [
            recoveredBlock877Stack2 := (recoveredBlock877Stack2) , (recoveredBlock877Stack3).
            recoveredBlock877PC := 907.
        ].
        recoveredBlock877Step = 907 ifTrue: [
            recoveredBlock877Stack1 := (recoveredBlock877Stack1) addText: (recoveredBlock877Stack2).
            recoveredBlock877PC := 909.
        ].
        recoveredBlock877Step = 909 ifTrue: [
            recoveredBlock877PC := 940.
        ].
        recoveredBlock877Step = 912 ifTrue: [
            recoveredBlock877Stack1 := nil.
            recoveredBlock877PC := 913.
        ].
        recoveredBlock877Step = 913 ifTrue: [
            recoveredBlock877Stack2 := recoveredBlock877Arg1.
            recoveredBlock877PC := 914.
        ].
        recoveredBlock877Step = 914 ifTrue: [
            recoveredBlock877Stack3 := recoveredLocal2.
            recoveredBlock877PC := 917.
        ].
        recoveredBlock877Step = 917 ifTrue: [
            recoveredBlock877Stack2 := (recoveredBlock877Stack2) fixWrongSgClassFor: (recoveredBlock877Stack3).
            recoveredBlock877PC := 921.
        ].
        recoveredBlock877Step = 921 ifTrue: [
            (recoveredBlock877Stack2) ifTrue: [recoveredBlock877PC := 940] ifFalse: [recoveredBlock877PC := 924].
        ].
        recoveredBlock877Step = 924 ifTrue: [
            recoveredBlock877PC := 925.
        ].
        recoveredBlock877Step = 925 ifTrue: [
            recoveredBlock877Stack1 := recoveredArg2.
            recoveredBlock877PC := 928.
        ].
        recoveredBlock877Step = 928 ifTrue: [
            recoveredBlock877Stack2 := recoveredLocal2.
            recoveredBlock877PC := 931.
        ].
        recoveredBlock877Step = 931 ifTrue: [
            recoveredBlock877Stack2 := (recoveredBlock877Stack2) label.
            recoveredBlock877PC := 933.
        ].
        recoveredBlock877Step = 933 ifTrue: [
            recoveredBlock877Stack3 := ' (experiment)'.
            recoveredBlock877PC := 936.
        ].
        recoveredBlock877Step = 936 ifTrue: [
            recoveredBlock877Stack2 := (recoveredBlock877Stack2) , (recoveredBlock877Stack3).
            recoveredBlock877PC := 938.
        ].
        recoveredBlock877Step = 938 ifTrue: [
            recoveredBlock877Stack1 := (recoveredBlock877Stack1) add: (recoveredBlock877Stack2).
            recoveredBlock877PC := 940.
        ].
        recoveredBlock877Step = 940 ifTrue: [
            recoveredBlock877Result := recoveredBlock877Stack1.
            recoveredBlock877Done := true.
        ].
    ].
    recoveredBlock877Result
].
            recoveredPC := 941.
        ].
        recoveredStep = 941 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 943.
        ].
        recoveredStep = 943 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x206ad2ec; bytecode file offset 0xfa9e4c"
!EtasDatabaseAdministrationDialog methodsFor: 'recovered'!
convertDatabaseToNewVersionUI: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) library.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) cacheSizeLimit.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := MainController.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) createImportManagerUserInterface: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Local1 recoveredBlock17Stack0 recoveredBlock17Stack1 recoveredBlock17Stack2 recoveredBlock17Stack3 recoveredBlock17Stack4 recoveredBlock17PC recoveredBlock17Step recoveredBlock17Done recoveredBlock17Result |
    recoveredBlock17Stack0 := self.
    recoveredBlock17PC := 24.
    recoveredBlock17Done := false.
    [recoveredBlock17Done not] whileTrue: [
        recoveredBlock17Step := recoveredBlock17PC.
        recoveredBlock17Step = 24 ifTrue: [
            recoveredBlock17Stack1 := SGDatabaseAccess.
            recoveredBlock17PC := 26.
        ].
        recoveredBlock17Step = 26 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) create.
            recoveredBlock17PC := 28.
        ].
        recoveredBlock17Step = 28 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) userSettings.
            recoveredBlock17PC := 30.
        ].
        recoveredBlock17Step = 30 ifTrue: [
            recoveredBlock17Stack2 := [:block28130708Arg1 | 
    | block28130708Stack0 block28130708Stack1 block28130708Stack2 block28130708Stack3 block28130708PC block28130708Step block28130708Done block28130708Result |
    block28130708Stack0 := self.
    block28130708PC := 4.
    block28130708Done := false.
    [block28130708Done not] whileTrue: [
        block28130708Step := block28130708PC.
        block28130708Step = 4 ifTrue: [
            block28130708Stack1 := block28130708Arg1.
            block28130708PC := 5.
        ].
        block28130708Step = 5 ifTrue: [
            block28130708Stack2 := [:block2813072cArg1 | 
    nil
].
            block28130708PC := 7.
        ].
        block28130708Step = 7 ifTrue: [
            block28130708PC := 12.
        ].
        block28130708Step = 12 ifTrue: [
            block28130708Stack1 := (block28130708Stack1) defaultProjectIfUndefined: (block28130708Stack2).
            block28130708PC := 14.
        ].
        block28130708Step = 14 ifTrue: [
            block28130708Stack2 := [:block28130750Arg1 | 
    | block28130750Stack0 block28130750Stack1 block28130750Stack2 block28130750Stack3 block28130750PC block28130750Step block28130750Done block28130750Result |
    block28130750Stack0 := self.
    block28130750PC := 4.
    block28130750Done := false.
    [block28130750Done not] whileTrue: [
        block28130750Step := block28130750PC.
        block28130750Step = 4 ifTrue: [
            block28130750Stack1 := block28130750Arg1.
            block28130750PC := 5.
        ].
        block28130750Step = 5 ifTrue: [
            block28130750Stack1 := (block28130750Stack1) allDependentProxiesWithCCsForDelete.
            block28130750PC := 7.
        ].
        block28130750Step = 7 ifTrue: [
            block28130750Stack2 := [:block28130774Arg1 | 
    | block28130774Value0 block28130774Value1 |
    block28130774Value0 := block28130774Arg1.
    block28130774Value1 := (block28130774Value0) delete.
    block28130774Value1
].
            block28130750PC := 9.
        ].
        block28130750Step = 9 ifTrue: [
            block28130750PC := 16.
        ].
        block28130750Step = 16 ifTrue: [
            block28130750Stack1 := (block28130750Stack1) do: (block28130750Stack2).
            block28130750PC := 18.
        ].
        block28130750Step = 18 ifTrue: [
            block28130750Result := block28130750Stack1.
            block28130750Done := true.
        ].
    ].
    block28130750Result
].
            block28130708PC := 16.
        ].
        block28130708Step = 16 ifTrue: [
            block28130708PC := 35.
        ].
        block28130708Step = 35 ifTrue: [
            (block28130708Stack1) ifNotNil: (block28130708Stack2).
            block28130708PC := 37.
        ].
        block28130708Step = 37 ifTrue: [
            block28130708Stack1 := block28130708Arg1.
            block28130708PC := 38.
        ].
        block28130708Step = 38 ifTrue: [
            block28130708Stack1 := (block28130708Stack1) resetDefaultProject.
            block28130708PC := 40.
        ].
        block28130708Step = 40 ifTrue: [
            block28130708Result := block28130708Stack1.
            block28130708Done := true.
        ].
    ].
    block28130708Result
].
            recoveredBlock17PC := 32.
        ].
        recoveredBlock17Step = 32 ifTrue: [
            recoveredBlock17PC := 73.
        ].
        recoveredBlock17Step = 73 ifTrue: [
            (recoveredBlock17Stack1) ifNotNil: (recoveredBlock17Stack2).
            recoveredBlock17PC := 75.
        ].
        recoveredBlock17Step = 75 ifTrue: [
            recoveredBlock17Stack1 := SGMonitorStreamDummy.
            recoveredBlock17PC := 77.
        ].
        recoveredBlock17Step = 77 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) create.
            recoveredBlock17PC := 79.
        ].
        recoveredBlock17Step = 79 ifTrue: [
            (recoveredBlock17Stack1) addDateAndTime.
            recoveredBlock17PC := 81.
        ].
        recoveredBlock17Step = 81 ifTrue: [
            recoveredBlock17Stack1 := recoveredBlock17Arg1.
            recoveredBlock17PC := 84.
        ].
        recoveredBlock17Step = 84 ifTrue: [
            recoveredBlock17Stack2 := 1.
            recoveredBlock17PC := 86.
        ].
        recoveredBlock17Step = 86 ifTrue: [
            (recoveredBlock17Stack1) value: (recoveredBlock17Stack2).
            recoveredBlock17PC := 88.
        ].
        recoveredBlock17Step = 88 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) library.
            recoveredBlock17PC := 89.
        ].
        recoveredBlock17Step = 89 ifTrue: [
            (recoveredBlock17Stack0) closeDataStorage.
            recoveredBlock17PC := 91.
        ].
        recoveredBlock17Step = 91 ifTrue: [
            recoveredBlock17Stack0 := 'Kk'.
            recoveredBlock17PC := 93.
        ].
        recoveredBlock17Step = 93 ifTrue: [
            recoveredBlock17Stack1 := 'Call_80706'.
            recoveredBlock17PC := 95.
        ].
        recoveredBlock17Step = 95 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) == (recoveredBlock17Stack1).
            recoveredBlock17PC := 96.
        ].
        recoveredBlock17Step = 96 ifTrue: [
            recoveredBlock17PC := 97.
        ].
        recoveredBlock17Step = 97 ifTrue: [
            recoveredBlock17Stack0 := 'Kk'.
            recoveredBlock17PC := 99.
        ].
        recoveredBlock17Step = 99 ifTrue: [
            recoveredBlock17Stack1 := 'Call_80706'.
            recoveredBlock17PC := 101.
        ].
        recoveredBlock17Step = 101 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) == (recoveredBlock17Stack1).
            recoveredBlock17PC := 102.
        ].
        recoveredBlock17Step = 102 ifTrue: [
            recoveredBlock17PC := 103.
        ].
        recoveredBlock17Step = 103 ifTrue: [
            recoveredBlock17Stack0 := self.
            recoveredBlock17PC := 104.
        ].
        recoveredBlock17Step = 104 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) library.
            recoveredBlock17PC := 105.
        ].
        recoveredBlock17Step = 105 ifTrue: [
            (recoveredBlock17Stack0) openCurrentDataStorage.
            recoveredBlock17PC := 107.
        ].
        recoveredBlock17Step = 107 ifTrue: [
            recoveredBlock17Stack0 := self.
            recoveredBlock17PC := 108.
        ].
        recoveredBlock17Step = 108 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) library.
            recoveredBlock17PC := 109.
        ].
        recoveredBlock17Step = 109 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) isOpen.
            recoveredBlock17PC := 111.
        ].
        recoveredBlock17Step = 111 ifTrue: [
            (recoveredBlock17Stack0) ifTrue: [recoveredBlock17PC := 119] ifFalse: [recoveredBlock17PC := 114].
        ].
        recoveredBlock17Step = 114 ifTrue: [
            recoveredBlock17Stack0 := self.
            recoveredBlock17PC := 115.
        ].
        recoveredBlock17Step = 115 ifTrue: [
            recoveredBlock17Stack1 := 'error in conversion'.
            recoveredBlock17PC := 117.
        ].
        recoveredBlock17Step = 117 ifTrue: [
            (recoveredBlock17Stack0) error: (recoveredBlock17Stack1).
            recoveredBlock17PC := 119.
        ].
        recoveredBlock17Step = 119 ifTrue: [
            recoveredBlock17Stack0 := self.
            recoveredBlock17PC := 120.
        ].
        recoveredBlock17Step = 120 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) library.
            recoveredBlock17PC := 121.
        ].
        recoveredBlock17Step = 121 ifTrue: [
            recoveredBlock17Stack1 := 8.
            recoveredBlock17PC := 123.
        ].
        recoveredBlock17Step = 123 ifTrue: [
            (recoveredBlock17Stack0) cacheSizeLimit: (recoveredBlock17Stack1).
            recoveredBlock17PC := 125.
        ].
        recoveredBlock17Step = 125 ifTrue: [
            recoveredBlock17Stack0 := recoveredBlock17Arg1.
            recoveredBlock17PC := 128.
        ].
        recoveredBlock17Step = 128 ifTrue: [
            recoveredBlock17Stack1 := 4.
            recoveredBlock17PC := 130.
        ].
        recoveredBlock17Step = 130 ifTrue: [
            (recoveredBlock17Stack0) value: (recoveredBlock17Stack1).
            recoveredBlock17PC := 132.
        ].
        recoveredBlock17Step = 132 ifTrue: [
            recoveredBlock17Stack0 := 'Kk'.
            recoveredBlock17PC := 134.
        ].
        recoveredBlock17Step = 134 ifTrue: [
            recoveredBlock17Stack1 := 'Call_61540'.
            recoveredBlock17PC := 136.
        ].
        recoveredBlock17Step = 136 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) == (recoveredBlock17Stack1).
            recoveredBlock17PC := 137.
        ].
        recoveredBlock17Step = 137 ifTrue: [
            recoveredBlock17PC := 138.
        ].
        recoveredBlock17Step = 138 ifTrue: [
            recoveredBlock17Stack0 := OrderedCollection.
            recoveredBlock17PC := 140.
        ].
        recoveredBlock17Step = 140 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) new.
            recoveredBlock17PC := 142.
        ].
        recoveredBlock17Step = 142 ifTrue: [
            recoveredLocal13 := recoveredBlock17Stack0.
            recoveredBlock17PC := 145.
        ].
        recoveredBlock17Step = 145 ifTrue: [
            recoveredBlock17Stack0 := recoveredLocal13.
            recoveredBlock17PC := 148.
        ].
        recoveredBlock17Step = 148 ifTrue: [
            recoveredBlock17Stack1 := SGDatabaseAccess.
            recoveredBlock17PC := 150.
        ].
        recoveredBlock17Step = 150 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) create.
            recoveredBlock17PC := 152.
        ].
        recoveredBlock17Step = 152 ifTrue: [
            recoveredBlock17Stack2 := 'SGASAP2Project'.
            recoveredBlock17PC := 154.
        ].
        recoveredBlock17Step = 154 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) readExactClassKeys: (recoveredBlock17Stack2).
            recoveredBlock17PC := 156.
        ].
        recoveredBlock17Step = 156 ifTrue: [
            (recoveredBlock17Stack0) addAll: (recoveredBlock17Stack1).
            recoveredBlock17PC := 158.
        ].
        recoveredBlock17Step = 158 ifTrue: [
            recoveredBlock17Stack0 := 'Kk'.
            recoveredBlock17PC := 160.
        ].
        recoveredBlock17Step = 160 ifTrue: [
            recoveredBlock17Stack1 := 'Call_62303'.
            recoveredBlock17PC := 162.
        ].
        recoveredBlock17Step = 162 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) == (recoveredBlock17Stack1).
            recoveredBlock17PC := 163.
        ].
        recoveredBlock17Step = 163 ifTrue: [
            recoveredBlock17PC := 164.
        ].
        recoveredBlock17Step = 164 ifTrue: [
            recoveredBlock17Stack0 := SGAsap2Item.
            recoveredBlock17PC := 166.
        ].
        recoveredBlock17Step = 166 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) allSubclasses.
            recoveredBlock17PC := 168.
        ].
        recoveredBlock17Step = 168 ifTrue: [
            recoveredBlock17Stack1 := [:recoveredBlock17Block168Arg1 | 
    | recoveredBlock17Block168Value0 recoveredBlock17Block168Value1 recoveredBlock17Block168Value2 recoveredBlock17Block168Value3 recoveredBlock17Block168Value4 recoveredBlock17Block168Value5 |
    recoveredBlock17Block168Value0 := recoveredLocal13.
    recoveredBlock17Block168Value1 := SGDatabaseAccess.
    recoveredBlock17Block168Value2 := (recoveredBlock17Block168Value1) create.
    recoveredBlock17Block168Value3 := recoveredBlock17Block168Arg1.
    recoveredBlock17Block168Value4 := (recoveredBlock17Block168Value2) readExactClassKeys: (recoveredBlock17Block168Value3).
    recoveredBlock17Block168Value5 := (recoveredBlock17Block168Value0) addAll: (recoveredBlock17Block168Value4).
    recoveredBlock17Block168Value5
].
            recoveredBlock17PC := 187.
        ].
        recoveredBlock17Step = 187 ifTrue: [
            (recoveredBlock17Stack0) do: (recoveredBlock17Stack1).
            recoveredBlock17PC := 189.
        ].
        recoveredBlock17Step = 189 ifTrue: [
            recoveredBlock17Stack0 := OrderedCollection.
            recoveredBlock17PC := 191.
        ].
        recoveredBlock17Step = 191 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) new.
            recoveredBlock17PC := 193.
        ].
        recoveredBlock17Step = 193 ifTrue: [
            recoveredLocal12 := recoveredBlock17Stack0.
            recoveredBlock17PC := 196.
        ].
        recoveredBlock17Step = 196 ifTrue: [
            recoveredBlock17Stack0 := recoveredLocal12.
            recoveredBlock17PC := 199.
        ].
        recoveredBlock17Step = 199 ifTrue: [
            recoveredBlock17Stack1 := SGDatabaseAccess.
            recoveredBlock17PC := 201.
        ].
        recoveredBlock17Step = 201 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) create.
            recoveredBlock17PC := 203.
        ].
        recoveredBlock17Step = 203 ifTrue: [
            recoveredBlock17Stack2 := 'SGHardwareConfiguration'.
            recoveredBlock17PC := 205.
        ].
        recoveredBlock17Step = 205 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) readExactClassKeys: (recoveredBlock17Stack2).
            recoveredBlock17PC := 207.
        ].
        recoveredBlock17Step = 207 ifTrue: [
            (recoveredBlock17Stack0) addAll: (recoveredBlock17Stack1).
            recoveredBlock17PC := 209.
        ].
        recoveredBlock17Step = 209 ifTrue: [
            recoveredBlock17Stack0 := OrderedCollection.
            recoveredBlock17PC := 211.
        ].
        recoveredBlock17Step = 211 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) new.
            recoveredBlock17PC := 213.
        ].
        recoveredBlock17Step = 213 ifTrue: [
            recoveredLocal11 := recoveredBlock17Stack0.
            recoveredBlock17PC := 216.
        ].
        recoveredBlock17Step = 216 ifTrue: [
            recoveredBlock17Stack0 := recoveredLocal11.
            recoveredBlock17PC := 219.
        ].
        recoveredBlock17Step = 219 ifTrue: [
            recoveredBlock17Stack1 := SGDatabaseAccess.
            recoveredBlock17PC := 221.
        ].
        recoveredBlock17Step = 221 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) create.
            recoveredBlock17PC := 223.
        ].
        recoveredBlock17Step = 223 ifTrue: [
            recoveredBlock17Stack2 := 'SGExperimentEnvironment'.
            recoveredBlock17PC := 225.
        ].
        recoveredBlock17Step = 225 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) readExactClassKeys: (recoveredBlock17Stack2).
            recoveredBlock17PC := 227.
        ].
        recoveredBlock17Step = 227 ifTrue: [
            (recoveredBlock17Stack0) addAll: (recoveredBlock17Stack1).
            recoveredBlock17PC := 229.
        ].
        recoveredBlock17Step = 229 ifTrue: [
            recoveredBlock17Stack0 := 'Kk'.
            recoveredBlock17PC := 231.
        ].
        recoveredBlock17Step = 231 ifTrue: [
            recoveredBlock17Stack1 := 'Call_80706'.
            recoveredBlock17PC := 233.
        ].
        recoveredBlock17Step = 233 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) == (recoveredBlock17Stack1).
            recoveredBlock17PC := 234.
        ].
        recoveredBlock17Step = 234 ifTrue: [
            recoveredBlock17PC := 235.
        ].
        recoveredBlock17Step = 235 ifTrue: [
            recoveredBlock17Stack0 := recoveredLocal11.
            recoveredBlock17PC := 238.
        ].
        recoveredBlock17Step = 238 ifTrue: [
            recoveredBlock17Stack1 := SGDatabaseAccess.
            recoveredBlock17PC := 240.
        ].
        recoveredBlock17Step = 240 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) create.
            recoveredBlock17PC := 242.
        ].
        recoveredBlock17Step = 242 ifTrue: [
            recoveredBlock17Stack2 := 'DBWorkbaseWorkingPage'.
            recoveredBlock17PC := 244.
        ].
        recoveredBlock17Step = 244 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) readExactClassKeys: (recoveredBlock17Stack2).
            recoveredBlock17PC := 246.
        ].
        recoveredBlock17Step = 246 ifTrue: [
            (recoveredBlock17Stack0) addAll: (recoveredBlock17Stack1).
            recoveredBlock17PC := 248.
        ].
        recoveredBlock17Step = 248 ifTrue: [
            recoveredBlock17Stack0 := recoveredLocal11.
            recoveredBlock17PC := 251.
        ].
        recoveredBlock17Step = 251 ifTrue: [
            recoveredBlock17Stack1 := SGDatabaseAccess.
            recoveredBlock17PC := 253.
        ].
        recoveredBlock17Step = 253 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) create.
            recoveredBlock17PC := 255.
        ].
        recoveredBlock17Step = 255 ifTrue: [
            recoveredBlock17Stack2 := 'DBWorkbaseCodePage'.
            recoveredBlock17PC := 257.
        ].
        recoveredBlock17Step = 257 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) readExactClassKeys: (recoveredBlock17Stack2).
            recoveredBlock17PC := 259.
        ].
        recoveredBlock17Step = 259 ifTrue: [
            (recoveredBlock17Stack0) addAll: (recoveredBlock17Stack1).
            recoveredBlock17PC := 261.
        ].
        recoveredBlock17Step = 261 ifTrue: [
            recoveredBlock17Stack0 := recoveredLocal11.
            recoveredBlock17PC := 264.
        ].
        recoveredBlock17Step = 264 ifTrue: [
            recoveredBlock17Stack1 := SGDatabaseAccess.
            recoveredBlock17PC := 266.
        ].
        recoveredBlock17Step = 266 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) create.
            recoveredBlock17PC := 268.
        ].
        recoveredBlock17Step = 268 ifTrue: [
            recoveredBlock17Stack2 := 'DBWorkbaseObject'.
            recoveredBlock17PC := 270.
        ].
        recoveredBlock17Step = 270 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) readExactClassKeys: (recoveredBlock17Stack2).
            recoveredBlock17PC := 272.
        ].
        recoveredBlock17Step = 272 ifTrue: [
            (recoveredBlock17Stack0) addAll: (recoveredBlock17Stack1).
            recoveredBlock17PC := 274.
        ].
        recoveredBlock17Step = 274 ifTrue: [
            recoveredBlock17Stack0 := OrderedCollection.
            recoveredBlock17PC := 276.
        ].
        recoveredBlock17Step = 276 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) new.
            recoveredBlock17PC := 278.
        ].
        recoveredBlock17Step = 278 ifTrue: [
            recoveredLocal10 := recoveredBlock17Stack0.
            recoveredBlock17PC := 281.
        ].
        recoveredBlock17Step = 281 ifTrue: [
            recoveredBlock17Stack0 := recoveredLocal10.
            recoveredBlock17PC := 284.
        ].
        recoveredBlock17Step = 284 ifTrue: [
            recoveredBlock17Stack1 := SGDatabaseAccess.
            recoveredBlock17PC := 286.
        ].
        recoveredBlock17Step = 286 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) create.
            recoveredBlock17PC := 288.
        ].
        recoveredBlock17Step = 288 ifTrue: [
            recoveredBlock17Stack2 := 'SGProcessClass'.
            recoveredBlock17PC := 290.
        ].
        recoveredBlock17Step = 290 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) readExactClassKeys: (recoveredBlock17Stack2).
            recoveredBlock17PC := 292.
        ].
        recoveredBlock17Step = 292 ifTrue: [
            (recoveredBlock17Stack0) addAll: (recoveredBlock17Stack1).
            recoveredBlock17PC := 294.
        ].
        recoveredBlock17Step = 294 ifTrue: [
            recoveredBlock17Stack0 := recoveredLocal10.
            recoveredBlock17PC := 297.
        ].
        recoveredBlock17Step = 297 ifTrue: [
            recoveredBlock17Stack1 := SGDatabaseAccess.
            recoveredBlock17PC := 299.
        ].
        recoveredBlock17Step = 299 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) create.
            recoveredBlock17PC := 301.
        ].
        recoveredBlock17Step = 301 ifTrue: [
            recoveredBlock17Stack2 := 'SGModule'.
            recoveredBlock17PC := 303.
        ].
        recoveredBlock17Step = 303 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) readExactClassKeys: (recoveredBlock17Stack2).
            recoveredBlock17PC := 305.
        ].
        recoveredBlock17Step = 305 ifTrue: [
            (recoveredBlock17Stack0) addAll: (recoveredBlock17Stack1).
            recoveredBlock17PC := 307.
        ].
        recoveredBlock17Step = 307 ifTrue: [
            recoveredBlock17Stack0 := recoveredBlock17Arg1.
            recoveredBlock17PC := 310.
        ].
        recoveredBlock17Step = 310 ifTrue: [
            recoveredBlock17Stack1 := 5.
            recoveredBlock17PC := 312.
        ].
        recoveredBlock17Step = 312 ifTrue: [
            (recoveredBlock17Stack0) value: (recoveredBlock17Stack1).
            recoveredBlock17PC := 314.
        ].
        recoveredBlock17Step = 314 ifTrue: [
            recoveredBlock17Stack0 := 'Kk'.
            recoveredBlock17PC := 316.
        ].
        recoveredBlock17Step = 316 ifTrue: [
            recoveredBlock17Stack1 := 'Call_61540'.
            recoveredBlock17PC := 318.
        ].
        recoveredBlock17Step = 318 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) == (recoveredBlock17Stack1).
            recoveredBlock17PC := 319.
        ].
        recoveredBlock17Step = 319 ifTrue: [
            recoveredBlock17PC := 320.
        ].
        recoveredBlock17Step = 320 ifTrue: [
            recoveredBlock17Stack0 := recoveredLocal13.
            recoveredBlock17PC := 323.
        ].
        recoveredBlock17Step = 323 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) notEmpty.
            recoveredBlock17PC := 325.
        ].
        recoveredBlock17Step = 325 ifTrue: [
            (recoveredBlock17Stack0) ifTrue: [recoveredBlock17PC := 328] ifFalse: [recoveredBlock17PC := 336].
        ].
        recoveredBlock17Step = 328 ifTrue: [
            recoveredBlock17Stack0 := SGMonitorStreamDummy.
            recoveredBlock17PC := 330.
        ].
        recoveredBlock17Step = 330 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) create.
            recoveredBlock17PC := 332.
        ].
        recoveredBlock17Step = 332 ifTrue: [
            recoveredBlock17Stack1 := 'Konvertiere folgende ASAM-MC2-Projekte:'.
            recoveredBlock17PC := 334.
        ].
        recoveredBlock17Step = 334 ifTrue: [
            (recoveredBlock17Stack0) addText: (recoveredBlock17Stack1).
            recoveredBlock17PC := 336.
        ].
        recoveredBlock17Step = 336 ifTrue: [
            recoveredBlock17Stack0 := recoveredLocal13.
            recoveredBlock17PC := 339.
        ].
        recoveredBlock17Step = 339 ifTrue: [
            recoveredBlock17Stack1 := [:recoveredBlock17Block339Arg1 :recoveredBlock17Block339Arg2 | 
    | recoveredBlock17Block339Local1 recoveredBlock17Block339Stack0 recoveredBlock17Block339Stack1 recoveredBlock17Block339Stack2 recoveredBlock17Block339Stack3 recoveredBlock17Block339Stack4 recoveredBlock17Block339Stack5 recoveredBlock17Block339Stack6 recoveredBlock17Block339PC recoveredBlock17Block339Step recoveredBlock17Block339Done recoveredBlock17Block339Result |
    recoveredBlock17Block339Stack0 := self.
    recoveredBlock17Block339PC := 346.
    recoveredBlock17Block339Done := false.
    [recoveredBlock17Block339Done not] whileTrue: [
        recoveredBlock17Block339Step := recoveredBlock17Block339PC.
        recoveredBlock17Block339Step = 346 ifTrue: [
            recoveredBlock17Block339Stack1 := recoveredBlock17Arg1.
            recoveredBlock17Block339PC := 349.
        ].
        recoveredBlock17Block339Step = 349 ifTrue: [
            recoveredBlock17Block339Stack2 := 5.
            recoveredBlock17Block339PC := 351.
        ].
        recoveredBlock17Block339Step = 351 ifTrue: [
            recoveredBlock17Block339Stack3 := 20.
            recoveredBlock17Block339PC := 353.
        ].
        recoveredBlock17Block339Step = 353 ifTrue: [
            recoveredBlock17Block339Stack4 := recoveredBlock17Block339Arg2.
            recoveredBlock17Block339PC := 354.
        ].
        recoveredBlock17Block339Step = 354 ifTrue: [
            recoveredBlock17Block339Stack5 := recoveredLocal13.
            recoveredBlock17Block339PC := 357.
        ].
        recoveredBlock17Block339Step = 357 ifTrue: [
            recoveredBlock17Block339Stack5 := (recoveredBlock17Block339Stack5) size.
            recoveredBlock17Block339PC := 359.
        ].
        recoveredBlock17Block339Step = 359 ifTrue: [
            recoveredBlock17Block339Stack4 := (recoveredBlock17Block339Stack4) / (recoveredBlock17Block339Stack5).
            recoveredBlock17Block339PC := 361.
        ].
        recoveredBlock17Block339Step = 361 ifTrue: [
            recoveredBlock17Block339Stack3 := (recoveredBlock17Block339Stack3) * (recoveredBlock17Block339Stack4).
            recoveredBlock17Block339PC := 362.
        ].
        recoveredBlock17Block339Step = 362 ifTrue: [
            recoveredBlock17Block339Stack3 := (recoveredBlock17Block339Stack3) asInteger.
            recoveredBlock17Block339PC := 364.
        ].
        recoveredBlock17Block339Step = 364 ifTrue: [
            recoveredBlock17Block339Stack2 := (recoveredBlock17Block339Stack2) + (recoveredBlock17Block339Stack3).
            recoveredBlock17Block339PC := 365.
        ].
        recoveredBlock17Block339Step = 365 ifTrue: [
            (recoveredBlock17Block339Stack1) value: (recoveredBlock17Block339Stack2).
            recoveredBlock17Block339PC := 367.
        ].
        recoveredBlock17Block339Step = 367 ifTrue: [
            recoveredBlock17Block339Stack1 := recoveredBlock17Block339Arg1.
            recoveredBlock17Block339PC := 368.
        ].
        recoveredBlock17Block339Step = 368 ifTrue: [
            recoveredBlock17Block339Stack2 := [:block28130798Arg1 | 
    nil
].
            recoveredBlock17Block339PC := 370.
        ].
        recoveredBlock17Block339Step = 370 ifTrue: [
            recoveredBlock17Block339PC := 376.
        ].
        recoveredBlock17Block339Step = 376 ifTrue: [
            recoveredBlock17Block339Stack1 := (recoveredBlock17Block339Stack1) getObjectIfUndefined: (recoveredBlock17Block339Stack2).
            recoveredBlock17Block339PC := 378.
        ].
        recoveredBlock17Block339Step = 378 ifTrue: [
            recoveredBlock17Block339Stack2 := recoveredBlock17Block339Stack1.
            recoveredBlock17Block339PC := 379.
        ].
        recoveredBlock17Block339Step = 379 ifTrue: [
            recoveredBlock17Block339Local1 := recoveredBlock17Block339Stack2.
            recoveredBlock17Block339PC := 380.
        ].
        recoveredBlock17Block339Step = 380 ifTrue: [
            (recoveredBlock17Block339Stack1 == nil) ifTrue: [recoveredBlock17Block339PC := 435] ifFalse: [recoveredBlock17Block339PC := 384].
        ].
        recoveredBlock17Block339Step = 384 ifTrue: [
            recoveredBlock17Block339Stack1 := recoveredBlock17Block339Local1.
            recoveredBlock17Block339PC := 385.
        ].
        recoveredBlock17Block339Step = 385 ifTrue: [
            (recoveredBlock17Block339Stack1) asap2Project.
            recoveredBlock17Block339PC := 387.
        ].
        recoveredBlock17Block339Step = 387 ifTrue: [
            recoveredBlock17Block339Stack1 := recoveredBlock17Block339Arg2.
            recoveredBlock17Block339PC := 388.
        ].
        recoveredBlock17Block339Step = 388 ifTrue: [
            recoveredBlock17Block339Stack2 := 100.
            recoveredBlock17Block339PC := 392.
        ].
        recoveredBlock17Block339Step = 392 ifTrue: [
            recoveredBlock17Block339Stack1 := (recoveredBlock17Block339Stack1) \\ (recoveredBlock17Block339Stack2).
            recoveredBlock17Block339PC := 393.
        ].
        recoveredBlock17Block339Step = 393 ifTrue: [
            recoveredBlock17Block339Stack2 := 0.
            recoveredBlock17Block339PC := 395.
        ].
        recoveredBlock17Block339Step = 395 ifTrue: [
            recoveredBlock17Block339Stack1 := (recoveredBlock17Block339Stack1) = (recoveredBlock17Block339Stack2).
            recoveredBlock17Block339PC := 396.
        ].
        recoveredBlock17Block339Step = 396 ifTrue: [
            (recoveredBlock17Block339Stack1) ifTrue: [recoveredBlock17Block339PC := 400] ifFalse: [recoveredBlock17Block339PC := 415].
        ].
        recoveredBlock17Block339Step = 400 ifTrue: [
            recoveredBlock17Block339Stack1 := recoveredBlock17Arg1.
            recoveredBlock17Block339PC := 403.
        ].
        recoveredBlock17Block339Step = 403 ifTrue: [
            recoveredBlock17Block339Stack2 := 'convert '.
            recoveredBlock17Block339PC := 405.
        ].
        recoveredBlock17Block339Step = 405 ifTrue: [
            recoveredBlock17Block339Stack3 := recoveredBlock17Block339Local1.
            recoveredBlock17Block339PC := 406.
        ].
        recoveredBlock17Block339Step = 406 ifTrue: [
            recoveredBlock17Block339Stack3 := (recoveredBlock17Block339Stack3) completeName.
            recoveredBlock17Block339PC := 408.
        ].
        recoveredBlock17Block339Step = 408 ifTrue: [
            recoveredBlock17Block339Stack2 := (recoveredBlock17Block339Stack2) , (recoveredBlock17Block339Stack3).
            recoveredBlock17Block339PC := 410.
        ].
        recoveredBlock17Block339Step = 410 ifTrue: [
            (recoveredBlock17Block339Stack1) messageString: (recoveredBlock17Block339Stack2).
            recoveredBlock17Block339PC := 415.
        ].
        recoveredBlock17Block339Step = 415 ifTrue: [
            recoveredBlock17Block339Stack1 := CfsStat.
            recoveredBlock17Block339PC := 418.
        ].
        recoveredBlock17Block339Step = 418 ifTrue: [
            recoveredBlock17Block339Stack2 := 'break.convert'.
            recoveredBlock17Block339PC := 422.
        ].
        recoveredBlock17Block339Step = 422 ifTrue: [
            recoveredBlock17Block339Stack1 := (recoveredBlock17Block339Stack1) exists: (recoveredBlock17Block339Stack2).
            recoveredBlock17Block339PC := 427.
        ].
        recoveredBlock17Block339Step = 427 ifTrue: [
            (recoveredBlock17Block339Stack1) ifTrue: [recoveredBlock17Block339PC := 430] ifFalse: [recoveredBlock17Block339PC := 435].
        ].
        recoveredBlock17Block339Step = 430 ifTrue: [
            recoveredBlock17Block339Stack1 := self.
            recoveredBlock17Block339PC := 431.
        ].
        recoveredBlock17Block339Step = 431 ifTrue: [
            (recoveredBlock17Block339Stack1) etasDevHalt.
            recoveredBlock17Block339PC := 435.
        ].
        recoveredBlock17Block339Step = 435 ifTrue: [
            recoveredBlock17Block339Stack0 := (recoveredBlock17Block339Stack0) library.
            recoveredBlock17Block339PC := 436.
        ].
        recoveredBlock17Block339Step = 436 ifTrue: [
            (recoveredBlock17Block339Stack0) commit.
            recoveredBlock17Block339PC := 441.
        ].
        recoveredBlock17Block339Step = 441 ifTrue: [
            recoveredBlock17Block339Stack0 := self.
            recoveredBlock17Block339PC := 442.
        ].
        recoveredBlock17Block339Step = 442 ifTrue: [
            recoveredBlock17Block339Stack0 := (recoveredBlock17Block339Stack0) library.
            recoveredBlock17Block339PC := 443.
        ].
        recoveredBlock17Block339Step = 443 ifTrue: [
            (recoveredBlock17Block339Stack0) emptyCache.
            recoveredBlock17Block339PC := 447.
        ].
        recoveredBlock17Block339Step = 447 ifTrue: [
            recoveredBlock17Block339Stack0 := ETASError.
            recoveredBlock17Block339PC := 450.
        ].
        recoveredBlock17Block339Step = 450 ifTrue: [
            recoveredBlock17Block339Stack0 := (recoveredBlock17Block339Stack0) resetLastErrors.
            recoveredBlock17Block339PC := 455.
        ].
        recoveredBlock17Block339Step = 455 ifTrue: [
            recoveredBlock17Block339Result := recoveredBlock17Block339Stack0.
            recoveredBlock17Block339Done := true.
        ].
    ].
    recoveredBlock17Block339Result
].
            recoveredBlock17PC := 456.
        ].
        recoveredBlock17Step = 456 ifTrue: [
            (recoveredBlock17Stack0) doWithIndex: (recoveredBlock17Stack1).
            recoveredBlock17PC := 461.
        ].
        recoveredBlock17Step = 461 ifTrue: [
            recoveredBlock17Stack0 := SGMonitorStreamDummy.
            recoveredBlock17PC := 463.
        ].
        recoveredBlock17Step = 463 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) create.
            recoveredBlock17PC := 465.
        ].
        recoveredBlock17Step = 465 ifTrue: [
            (recoveredBlock17Stack0) addDateAndTime.
            recoveredBlock17PC := 467.
        ].
        recoveredBlock17Step = 467 ifTrue: [
            recoveredBlock17Stack0 := recoveredBlock17Arg1.
            recoveredBlock17PC := 470.
        ].
        recoveredBlock17Step = 470 ifTrue: [
            recoveredBlock17Stack1 := 26.
            recoveredBlock17PC := 472.
        ].
        recoveredBlock17Step = 472 ifTrue: [
            (recoveredBlock17Stack0) value: (recoveredBlock17Stack1).
            recoveredBlock17PC := 474.
        ].
        recoveredBlock17Step = 474 ifTrue: [
            recoveredBlock17Stack0 := recoveredLocal12.
            recoveredBlock17PC := 477.
        ].
        recoveredBlock17Step = 477 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) notEmpty.
            recoveredBlock17PC := 479.
        ].
        recoveredBlock17Step = 479 ifTrue: [
            (recoveredBlock17Stack0) ifTrue: [recoveredBlock17PC := 482] ifFalse: [recoveredBlock17PC := 492].
        ].
        recoveredBlock17Step = 482 ifTrue: [
            recoveredBlock17Stack0 := SGMonitorStreamDummy.
            recoveredBlock17PC := 484.
        ].
        recoveredBlock17Step = 484 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) create.
            recoveredBlock17PC := 486.
        ].
        recoveredBlock17Step = 486 ifTrue: [
            recoveredBlock17Stack1 := 'Remove Hardware Configurations...'.
            recoveredBlock17PC := 490.
        ].
        recoveredBlock17Step = 490 ifTrue: [
            (recoveredBlock17Stack0) addText: (recoveredBlock17Stack1).
            recoveredBlock17PC := 492.
        ].
        recoveredBlock17Step = 492 ifTrue: [
            recoveredBlock17Stack0 := recoveredLocal12.
            recoveredBlock17PC := 495.
        ].
        recoveredBlock17Step = 495 ifTrue: [
            recoveredBlock17Stack1 := [:block281307bcArg1 :block281307bcArg2 | 
    | block281307bcValue0 block281307bcValue1 |
    block281307bcValue0 := block281307bcArg1.
    block281307bcValue1 := (block281307bcValue0) delete.
    block281307bcValue1
].
            recoveredBlock17PC := 498.
        ].
        recoveredBlock17Step = 498 ifTrue: [
            recoveredBlock17PC := 506.
        ].
        recoveredBlock17Step = 506 ifTrue: [
            (recoveredBlock17Stack0) doWithIndex: (recoveredBlock17Stack1).
            recoveredBlock17PC := 511.
        ].
        recoveredBlock17Step = 511 ifTrue: [
            recoveredBlock17Stack0 := SGMonitorStreamDummy.
            recoveredBlock17PC := 513.
        ].
        recoveredBlock17Step = 513 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) create.
            recoveredBlock17PC := 515.
        ].
        recoveredBlock17Step = 515 ifTrue: [
            (recoveredBlock17Stack0) addDateAndTime.
            recoveredBlock17PC := 517.
        ].
        recoveredBlock17Step = 517 ifTrue: [
            recoveredBlock17Stack0 := recoveredBlock17Arg1.
            recoveredBlock17PC := 520.
        ].
        recoveredBlock17Step = 520 ifTrue: [
            recoveredBlock17Stack1 := 27.
            recoveredBlock17PC := 522.
        ].
        recoveredBlock17Step = 522 ifTrue: [
            (recoveredBlock17Stack0) value: (recoveredBlock17Stack1).
            recoveredBlock17PC := 524.
        ].
        recoveredBlock17Step = 524 ifTrue: [
            recoveredBlock17Stack0 := recoveredLocal11.
            recoveredBlock17PC := 527.
        ].
        recoveredBlock17Step = 527 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) notEmpty.
            recoveredBlock17PC := 529.
        ].
        recoveredBlock17Step = 529 ifTrue: [
            (recoveredBlock17Stack0) ifTrue: [recoveredBlock17PC := 532] ifFalse: [recoveredBlock17PC := 542].
        ].
        recoveredBlock17Step = 532 ifTrue: [
            recoveredBlock17Stack0 := SGMonitorStreamDummy.
            recoveredBlock17PC := 534.
        ].
        recoveredBlock17Step = 534 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) create.
            recoveredBlock17PC := 536.
        ].
        recoveredBlock17Step = 536 ifTrue: [
            recoveredBlock17Stack1 := 'Remove Experiment Environments...'.
            recoveredBlock17PC := 540.
        ].
        recoveredBlock17Step = 540 ifTrue: [
            (recoveredBlock17Stack0) addText: (recoveredBlock17Stack1).
            recoveredBlock17PC := 542.
        ].
        recoveredBlock17Step = 542 ifTrue: [
            recoveredBlock17Stack0 := recoveredLocal11.
            recoveredBlock17PC := 545.
        ].
        recoveredBlock17Step = 545 ifTrue: [
            recoveredBlock17Stack1 := [:block281307e0Arg1 :block281307e0Arg2 | 
    | block281307e0Value0 block281307e0Value1 |
    block281307e0Value0 := block281307e0Arg1.
    block281307e0Value1 := (block281307e0Value0) delete.
    block281307e0Value1
].
            recoveredBlock17PC := 548.
        ].
        recoveredBlock17Step = 548 ifTrue: [
            recoveredBlock17PC := 556.
        ].
        recoveredBlock17Step = 556 ifTrue: [
            (recoveredBlock17Stack0) doWithIndex: (recoveredBlock17Stack1).
            recoveredBlock17PC := 561.
        ].
        recoveredBlock17Step = 561 ifTrue: [
            recoveredBlock17Stack0 := SGMonitorStreamDummy.
            recoveredBlock17PC := 563.
        ].
        recoveredBlock17Step = 563 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) create.
            recoveredBlock17PC := 565.
        ].
        recoveredBlock17Step = 565 ifTrue: [
            (recoveredBlock17Stack0) addDateAndTime.
            recoveredBlock17PC := 567.
        ].
        recoveredBlock17Step = 567 ifTrue: [
            recoveredBlock17Stack0 := recoveredBlock17Arg1.
            recoveredBlock17PC := 570.
        ].
        recoveredBlock17Step = 570 ifTrue: [
            recoveredBlock17Stack1 := 28.
            recoveredBlock17PC := 572.
        ].
        recoveredBlock17Step = 572 ifTrue: [
            (recoveredBlock17Stack0) value: (recoveredBlock17Stack1).
            recoveredBlock17PC := 574.
        ].
        recoveredBlock17Step = 574 ifTrue: [
            recoveredBlock17Stack0 := recoveredLocal10.
            recoveredBlock17PC := 577.
        ].
        recoveredBlock17Step = 577 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) notEmpty.
            recoveredBlock17PC := 579.
        ].
        recoveredBlock17Step = 579 ifTrue: [
            (recoveredBlock17Stack0) ifTrue: [recoveredBlock17PC := 582] ifFalse: [recoveredBlock17PC := 592].
        ].
        recoveredBlock17Step = 582 ifTrue: [
            recoveredBlock17Stack0 := SGMonitorStreamDummy.
            recoveredBlock17PC := 584.
        ].
        recoveredBlock17Step = 584 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) create.
            recoveredBlock17PC := 586.
        ].
        recoveredBlock17Step = 586 ifTrue: [
            recoveredBlock17Stack1 := 'Remove Protocols...'.
            recoveredBlock17PC := 590.
        ].
        recoveredBlock17Step = 590 ifTrue: [
            (recoveredBlock17Stack0) addText: (recoveredBlock17Stack1).
            recoveredBlock17PC := 592.
        ].
        recoveredBlock17Step = 592 ifTrue: [
            recoveredBlock17Stack0 := recoveredLocal10.
            recoveredBlock17PC := 595.
        ].
        recoveredBlock17Step = 595 ifTrue: [
            recoveredBlock17Stack1 := [:recoveredBlock17Block595Arg1 | 
    | recoveredBlock17Block595Local1 recoveredBlock17Block595Stack0 recoveredBlock17Block595Stack1 recoveredBlock17Block595Stack2 recoveredBlock17Block595Stack3 recoveredBlock17Block595Stack4 recoveredBlock17Block595PC recoveredBlock17Block595Step recoveredBlock17Block595Done recoveredBlock17Block595Result |
    recoveredBlock17Block595Stack0 := nil.
    recoveredBlock17Block595PC := 602.
    recoveredBlock17Block595Done := false.
    [recoveredBlock17Block595Done not] whileTrue: [
        recoveredBlock17Block595Step := recoveredBlock17Block595PC.
        recoveredBlock17Block595Step = 602 ifTrue: [
            recoveredBlock17Block595Stack1 := SGMonitorStreamDummy.
            recoveredBlock17Block595PC := 604.
        ].
        recoveredBlock17Block595Step = 604 ifTrue: [
            recoveredBlock17Block595Stack1 := (recoveredBlock17Block595Stack1) create.
            recoveredBlock17Block595PC := 606.
        ].
        recoveredBlock17Block595Step = 606 ifTrue: [
            (recoveredBlock17Block595Stack1) addDateAndTime.
            recoveredBlock17Block595PC := 608.
        ].
        recoveredBlock17Block595Step = 608 ifTrue: [
            recoveredBlock17Block595Stack1 := SGMonitorStreamDummy.
            recoveredBlock17Block595PC := 610.
        ].
        recoveredBlock17Block595Step = 610 ifTrue: [
            recoveredBlock17Block595Stack1 := (recoveredBlock17Block595Stack1) create.
            recoveredBlock17Block595PC := 612.
        ].
        recoveredBlock17Block595Step = 612 ifTrue: [
            recoveredBlock17Block595Stack2 := 'Long Lasting Procedure .... Please Wait'.
            recoveredBlock17Block595PC := 616.
        ].
        recoveredBlock17Block595Step = 616 ifTrue: [
            (recoveredBlock17Block595Stack1) addText: (recoveredBlock17Block595Stack2).
            recoveredBlock17Block595PC := 618.
        ].
        recoveredBlock17Block595Step = 618 ifTrue: [
            recoveredBlock17Block595Stack1 := SGMonitorStreamDummy.
            recoveredBlock17Block595PC := 620.
        ].
        recoveredBlock17Block595Step = 620 ifTrue: [
            recoveredBlock17Block595Stack1 := (recoveredBlock17Block595Stack1) create.
            recoveredBlock17Block595PC := 622.
        ].
        recoveredBlock17Block595Step = 622 ifTrue: [
            recoveredBlock17Block595Stack2 := recoveredBlock17Block595Arg1.
            recoveredBlock17Block595PC := 625.
        ].
        recoveredBlock17Block595Step = 625 ifTrue: [
            recoveredBlock17Block595Stack2 := (recoveredBlock17Block595Stack2) className.
            recoveredBlock17Block595PC := 629.
        ].
        recoveredBlock17Block595Step = 629 ifTrue: [
            recoveredBlock17Block595Stack3 := ' \ '.
            recoveredBlock17Block595PC := 632.
        ].
        recoveredBlock17Block595Step = 632 ifTrue: [
            recoveredBlock17Block595Stack2 := (recoveredBlock17Block595Stack2) , (recoveredBlock17Block595Stack3).
            recoveredBlock17Block595PC := 634.
        ].
        recoveredBlock17Block595Step = 634 ifTrue: [
            recoveredBlock17Block595Stack3 := recoveredBlock17Block595Arg1.
            recoveredBlock17Block595PC := 637.
        ].
        recoveredBlock17Block595Step = 637 ifTrue: [
            recoveredBlock17Block595Stack3 := (recoveredBlock17Block595Stack3) name.
            recoveredBlock17Block595PC := 641.
        ].
        recoveredBlock17Block595Step = 641 ifTrue: [
            recoveredBlock17Block595Stack2 := (recoveredBlock17Block595Stack2) , (recoveredBlock17Block595Stack3).
            recoveredBlock17Block595PC := 643.
        ].
        recoveredBlock17Block595Step = 643 ifTrue: [
            (recoveredBlock17Block595Stack1) addText: (recoveredBlock17Block595Stack2).
            recoveredBlock17Block595PC := 645.
        ].
        recoveredBlock17Block595Step = 645 ifTrue: [
            recoveredBlock17Block595Stack1 := nil.
            recoveredBlock17Block595PC := 646.
        ].
        recoveredBlock17Block595Step = 646 ifTrue: [
            recoveredBlock17Block595Stack2 := recoveredBlock17Block595Arg1.
            recoveredBlock17Block595PC := 649.
        ].
        recoveredBlock17Block595Step = 649 ifTrue: [
            recoveredBlock17Block595Stack3 := [:block28130804Arg1 | 
    nil
].
            recoveredBlock17Block595PC := 652.
        ].
        recoveredBlock17Block595Step = 652 ifTrue: [
            recoveredBlock17Block595PC := 658.
        ].
        recoveredBlock17Block595Step = 658 ifTrue: [
            recoveredBlock17Block595Stack2 := (recoveredBlock17Block595Stack2) getObjectIfUndefined: (recoveredBlock17Block595Stack3).
            recoveredBlock17Block595PC := 660.
        ].
        recoveredBlock17Block595Step = 660 ifTrue: [
            recoveredBlock17Block595Stack3 := recoveredBlock17Block595Stack2.
            recoveredBlock17Block595PC := 661.
        ].
        recoveredBlock17Block595Step = 661 ifTrue: [
            recoveredBlock17Block595Local1 := recoveredBlock17Block595Stack3.
            recoveredBlock17Block595PC := 664.
        ].
        recoveredBlock17Block595Step = 664 ifTrue: [
            (recoveredBlock17Block595Stack2 == nil) ifTrue: [recoveredBlock17Block595PC := 749] ifFalse: [recoveredBlock17Block595PC := 668].
        ].
        recoveredBlock17Block595Step = 668 ifTrue: [
            recoveredBlock17Block595PC := 669.
        ].
        recoveredBlock17Block595Step = 669 ifTrue: [
            recoveredBlock17Block595Stack1 := recoveredBlock17Block595Local1.
            recoveredBlock17Block595PC := 672.
        ].
        recoveredBlock17Block595Step = 672 ifTrue: [
            recoveredBlock17Block595Stack1 := (recoveredBlock17Block595Stack1) publicSpecifications.
            recoveredBlock17Block595PC := 677.
        ].
        recoveredBlock17Block595Step = 677 ifTrue: [
            recoveredBlock17Block595Stack2 := [:recoveredBlock17Block595Block677Arg1 | 
    | recoveredBlock17Block595Block677Stack0 recoveredBlock17Block595Block677Stack1 recoveredBlock17Block595Block677Stack2 recoveredBlock17Block595Block677Stack3 recoveredBlock17Block595Block677PC recoveredBlock17Block595Block677Step recoveredBlock17Block595Block677Done recoveredBlock17Block595Block677Result |
    recoveredBlock17Block595Block677Stack0 := nil.
    recoveredBlock17Block595Block677PC := 684.
    recoveredBlock17Block595Block677Done := false.
    [recoveredBlock17Block595Block677Done not] whileTrue: [
        recoveredBlock17Block595Block677Step := recoveredBlock17Block595Block677PC.
        recoveredBlock17Block595Block677Step = 684 ifTrue: [
            recoveredBlock17Block595Block677Stack1 := nil.
            recoveredBlock17Block595Block677PC := 685.
        ].
        recoveredBlock17Block595Block677Step = 685 ifTrue: [
            recoveredBlock17Block595Block677Stack2 := recoveredBlock17Block595Block677Arg1.
            recoveredBlock17Block595Block677PC := 686.
        ].
        recoveredBlock17Block595Block677Step = 686 ifTrue: [
            recoveredBlock17Block595Block677Stack2 := (recoveredBlock17Block595Block677Stack2) isProtocolSpecification.
            recoveredBlock17Block595Block677PC := 691.
        ].
        recoveredBlock17Block595Block677Step = 691 ifTrue: [
            (recoveredBlock17Block595Block677Stack2) ifTrue: [recoveredBlock17Block595Block677PC := 694] ifFalse: [recoveredBlock17Block595Block677PC := 746].
        ].
        recoveredBlock17Block595Block677Step = 694 ifTrue: [
            recoveredBlock17Block595Block677PC := 695.
        ].
        recoveredBlock17Block595Block677Step = 695 ifTrue: [
            recoveredBlock17Block595Block677Stack1 := 'Kk'.
            recoveredBlock17Block595Block677PC := 697.
        ].
        recoveredBlock17Block595Block677Step = 697 ifTrue: [
            recoveredBlock17Block595Block677Stack2 := 'Call_63801'.
            recoveredBlock17Block595Block677PC := 700.
        ].
        recoveredBlock17Block595Block677Step = 700 ifTrue: [
            recoveredBlock17Block595Block677Stack1 := (recoveredBlock17Block595Block677Stack1) == (recoveredBlock17Block595Block677Stack2).
            recoveredBlock17Block595Block677PC := 701.
        ].
        recoveredBlock17Block595Block677Step = 701 ifTrue: [
            recoveredBlock17Block595Block677PC := 702.
        ].
        recoveredBlock17Block595Block677Step = 702 ifTrue: [
            recoveredBlock17Block595Block677Stack1 := recoveredBlock17Block595Local1.
            recoveredBlock17Block595Block677PC := 705.
        ].
        recoveredBlock17Block595Block677Step = 705 ifTrue: [
            recoveredBlock17Block595Block677Stack1 := (recoveredBlock17Block595Block677Stack1) allDependentProxies.
            recoveredBlock17Block595Block677PC := 709.
        ].
        recoveredBlock17Block595Block677Step = 709 ifTrue: [
            recoveredBlock17Block595Block677Stack2 := [:recoveredBlock17Block595Block677Block709Arg1 | 
    | recoveredBlock17Block595Block677Block709Value0 recoveredBlock17Block595Block677Block709Value1 recoveredBlock17Block595Block677Block709Value2 recoveredBlock17Block595Block677Block709Value3 recoveredBlock17Block595Block677Block709Value4 recoveredBlock17Block595Block677Block709Value5 recoveredBlock17Block595Block677Block709Value6 recoveredBlock17Block595Block677Block709Value7 |
    recoveredBlock17Block595Block677Block709Value0 := recoveredBlock17Arg1.
    recoveredBlock17Block595Block677Block709Value1 := recoveredBlock17Block595Block677Block709Arg1.
    recoveredBlock17Block595Block677Block709Value2 := (recoveredBlock17Block595Block677Block709Value1) dbObject.
    recoveredBlock17Block595Block677Block709Value3 := (recoveredBlock17Block595Block677Block709Value2) completeName.
    recoveredBlock17Block595Block677Block709Value4 := ('Delete..') , (recoveredBlock17Block595Block677Block709Value3).
    (recoveredBlock17Block595Block677Block709Value0) messageString: (recoveredBlock17Block595Block677Block709Value4).
    recoveredBlock17Block595Block677Block709Value5 := recoveredBlock17Block595Block677Block709Arg1.
    recoveredBlock17Block595Block677Block709Value6 := (recoveredBlock17Block595Block677Block709Value5) dbObject.
    recoveredBlock17Block595Block677Block709Value7 := (recoveredBlock17Block595Block677Block709Value6) delete.
    recoveredBlock17Block595Block677Block709Value7
].
            recoveredBlock17Block595Block677PC := 744.
        ].
        recoveredBlock17Block595Block677Step = 744 ifTrue: [
            recoveredBlock17Block595Block677Stack1 := (recoveredBlock17Block595Block677Stack1) do: (recoveredBlock17Block595Block677Stack2).
            recoveredBlock17Block595Block677PC := 746.
        ].
        recoveredBlock17Block595Block677Step = 746 ifTrue: [
            recoveredBlock17Block595Block677Result := recoveredBlock17Block595Block677Stack1.
            recoveredBlock17Block595Block677Done := true.
        ].
    ].
    recoveredBlock17Block595Block677Result
].
            recoveredBlock17Block595PC := 747.
        ].
        recoveredBlock17Block595Step = 747 ifTrue: [
            recoveredBlock17Block595Stack1 := (recoveredBlock17Block595Stack1) do: (recoveredBlock17Block595Stack2).
            recoveredBlock17Block595PC := 749.
        ].
        recoveredBlock17Block595Step = 749 ifTrue: [
            recoveredBlock17Block595Result := recoveredBlock17Block595Stack1.
            recoveredBlock17Block595Done := true.
        ].
    ].
    recoveredBlock17Block595Result
].
            recoveredBlock17PC := 750.
        ].
        recoveredBlock17Step = 750 ifTrue: [
            (recoveredBlock17Stack0) do: (recoveredBlock17Stack1).
            recoveredBlock17PC := 752.
        ].
        recoveredBlock17Step = 752 ifTrue: [
            recoveredBlock17Stack0 := recoveredBlock17Arg1.
            recoveredBlock17PC := 755.
        ].
        recoveredBlock17Step = 755 ifTrue: [
            recoveredBlock17Stack1 := '  '.
            recoveredBlock17PC := 758.
        ].
        recoveredBlock17Step = 758 ifTrue: [
            (recoveredBlock17Stack0) messageString: (recoveredBlock17Stack1).
            recoveredBlock17PC := 763.
        ].
        recoveredBlock17Step = 763 ifTrue: [
            recoveredBlock17Stack0 := SGMonitorStreamDummy.
            recoveredBlock17PC := 765.
        ].
        recoveredBlock17Step = 765 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) create.
            recoveredBlock17PC := 767.
        ].
        recoveredBlock17Step = 767 ifTrue: [
            recoveredBlock17Stack1 := '... done!!'.
            recoveredBlock17PC := 770.
        ].
        recoveredBlock17Step = 770 ifTrue: [
            (recoveredBlock17Stack0) addText: (recoveredBlock17Stack1).
            recoveredBlock17PC := 772.
        ].
        recoveredBlock17Step = 772 ifTrue: [
            recoveredBlock17Stack0 := SGMonitorStreamDummy.
            recoveredBlock17PC := 774.
        ].
        recoveredBlock17Step = 774 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) create.
            recoveredBlock17PC := 776.
        ].
        recoveredBlock17Step = 776 ifTrue: [
            (recoveredBlock17Stack0) addDateAndTime.
            recoveredBlock17PC := 778.
        ].
        recoveredBlock17Step = 778 ifTrue: [
            recoveredBlock17Stack0 := recoveredBlock17Arg1.
            recoveredBlock17PC := 781.
        ].
        recoveredBlock17Step = 781 ifTrue: [
            recoveredBlock17Stack1 := 29.
            recoveredBlock17PC := 783.
        ].
        recoveredBlock17Step = 783 ifTrue: [
            (recoveredBlock17Stack0) value: (recoveredBlock17Stack1).
            recoveredBlock17PC := 785.
        ].
        recoveredBlock17Step = 785 ifTrue: [
            recoveredBlock17Stack0 := OrderedCollection.
            recoveredBlock17PC := 787.
        ].
        recoveredBlock17Step = 787 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) new.
            recoveredBlock17PC := 789.
        ].
        recoveredBlock17Step = 789 ifTrue: [
            recoveredLocal8 := recoveredBlock17Stack0.
            recoveredBlock17PC := 792.
        ].
        recoveredBlock17Step = 792 ifTrue: [
            recoveredBlock17Stack0 := recoveredLocal8.
            recoveredBlock17PC := 795.
        ].
        recoveredBlock17Step = 795 ifTrue: [
            recoveredBlock17Stack1 := SGDatabaseAccess.
            recoveredBlock17PC := 797.
        ].
        recoveredBlock17Step = 797 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) create.
            recoveredBlock17PC := 799.
        ].
        recoveredBlock17Step = 799 ifTrue: [
            recoveredBlock17Stack2 := ASAP2Project.
            recoveredBlock17PC := 802.
        ].
        recoveredBlock17Step = 802 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) readExactClassKeys: (recoveredBlock17Stack2).
            recoveredBlock17PC := 804.
        ].
        recoveredBlock17Step = 804 ifTrue: [
            (recoveredBlock17Stack0) addAll: (recoveredBlock17Stack1).
            recoveredBlock17PC := 806.
        ].
        recoveredBlock17Step = 806 ifTrue: [
            recoveredBlock17Stack0 := recoveredLocal8.
            recoveredBlock17PC := 809.
        ].
        recoveredBlock17Step = 809 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) notEmpty.
            recoveredBlock17PC := 811.
        ].
        recoveredBlock17Step = 811 ifTrue: [
            (recoveredBlock17Stack0) ifTrue: [recoveredBlock17PC := 814] ifFalse: [recoveredBlock17PC := 835].
        ].
        recoveredBlock17Step = 814 ifTrue: [
            recoveredBlock17Stack0 := SGMonitorStreamDummy.
            recoveredBlock17PC := 816.
        ].
        recoveredBlock17Step = 816 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) create.
            recoveredBlock17PC := 818.
        ].
        recoveredBlock17Step = 818 ifTrue: [
            recoveredBlock17Stack1 := CtCleanupDB.
            recoveredBlock17PC := 822.
        ].
        recoveredBlock17Step = 822 ifTrue: [
            (recoveredBlock17Stack0) addText: (recoveredBlock17Stack1).
            recoveredBlock17PC := 824.
        ].
        recoveredBlock17Step = 824 ifTrue: [
            recoveredBlock17Stack0 := recoveredBlock17Arg1.
            recoveredBlock17PC := 827.
        ].
        recoveredBlock17Step = 827 ifTrue: [
            recoveredBlock17Stack1 := CtCleanupDB.
            recoveredBlock17PC := 830.
        ].
        recoveredBlock17Step = 830 ifTrue: [
            (recoveredBlock17Stack0) messageString: (recoveredBlock17Stack1).
            recoveredBlock17PC := 835.
        ].
        recoveredBlock17Step = 835 ifTrue: [
            recoveredBlock17Stack0 := recoveredLocal8.
            recoveredBlock17PC := 838.
        ].
        recoveredBlock17Step = 838 ifTrue: [
            recoveredBlock17Stack1 := [:recoveredBlock17Block838Arg1 :recoveredBlock17Block838Arg2 | 
    | recoveredBlock17Block838Local1 recoveredBlock17Block838Stack0 recoveredBlock17Block838Stack1 recoveredBlock17Block838Stack2 recoveredBlock17Block838Stack3 recoveredBlock17Block838PC recoveredBlock17Block838Step recoveredBlock17Block838Done recoveredBlock17Block838Result |
    recoveredBlock17Block838Stack0 := nil.
    recoveredBlock17Block838PC := 844.
    recoveredBlock17Block838Done := false.
    [recoveredBlock17Block838Done not] whileTrue: [
        recoveredBlock17Block838Step := recoveredBlock17Block838PC.
        recoveredBlock17Block838Step = 844 ifTrue: [
            recoveredBlock17Block838Stack1 := 'Kk'.
            recoveredBlock17Block838PC := 846.
        ].
        recoveredBlock17Block838Step = 846 ifTrue: [
            recoveredBlock17Block838Stack2 := 'Call_61686'.
            recoveredBlock17Block838PC := 850.
        ].
        recoveredBlock17Block838Step = 850 ifTrue: [
            recoveredBlock17Block838Stack1 := (recoveredBlock17Block838Stack1) == (recoveredBlock17Block838Stack2).
            recoveredBlock17Block838PC := 851.
        ].
        recoveredBlock17Block838Step = 851 ifTrue: [
            recoveredBlock17Block838PC := 852.
        ].
        recoveredBlock17Block838Step = 852 ifTrue: [
            recoveredBlock17Block838Stack1 := recoveredBlock17Block838Arg1.
            recoveredBlock17Block838PC := 853.
        ].
        recoveredBlock17Block838Step = 853 ifTrue: [
            (recoveredBlock17Block838Stack1) delete.
            recoveredBlock17Block838PC := 855.
        ].
        recoveredBlock17Block838Step = 855 ifTrue: [
            recoveredBlock17Block838Stack1 := recoveredBlock17Block838Arg1.
            recoveredBlock17Block838PC := 856.
        ].
        recoveredBlock17Block838Step = 856 ifTrue: [
            recoveredBlock17Block838Stack1 := (recoveredBlock17Block838Stack1) name.
            recoveredBlock17Block838PC := 861.
        ].
        recoveredBlock17Block838Step = 861 ifTrue: [
            (recoveredBlock17Block838Stack1 == nil) ifTrue: [recoveredBlock17Block838PC := 872] ifFalse: [recoveredBlock17Block838PC := 864].
        ].
        recoveredBlock17Block838Step = 864 ifTrue: [
            recoveredBlock17Block838Stack1 := recoveredBlock17Block838Arg1.
            recoveredBlock17Block838PC := 865.
        ].
        recoveredBlock17Block838Step = 865 ifTrue: [
            recoveredBlock17Block838Stack1 := (recoveredBlock17Block838Stack1) name.
            recoveredBlock17Block838PC := 869.
        ].
        recoveredBlock17Block838Step = 869 ifTrue: [
            recoveredBlock17Block838PC := 881.
        ].
        recoveredBlock17Block838Step = 872 ifTrue: [
            recoveredBlock17Block838Stack1 := SGReservedNames.
            recoveredBlock17Block838PC := 876.
        ].
        recoveredBlock17Block838Step = 876 ifTrue: [
            recoveredBlock17Block838Stack1 := (recoveredBlock17Block838Stack1) undefName.
            recoveredBlock17Block838PC := 881.
        ].
        recoveredBlock17Block838Step = 881 ifTrue: [
            recoveredBlock17Block838Local1 := recoveredBlock17Block838Stack1.
            recoveredBlock17Block838PC := 882.
        ].
        recoveredBlock17Block838Step = 882 ifTrue: [
            recoveredBlock17Block838Stack1 := SGMonitorStreamDummy.
            recoveredBlock17Block838PC := 884.
        ].
        recoveredBlock17Block838Step = 884 ifTrue: [
            recoveredBlock17Block838Stack1 := (recoveredBlock17Block838Stack1) create.
            recoveredBlock17Block838PC := 886.
        ].
        recoveredBlock17Block838Step = 886 ifTrue: [
            recoveredBlock17Block838Stack2 := recoveredBlock17Block838Local1.
            recoveredBlock17Block838PC := 887.
        ].
        recoveredBlock17Block838Step = 887 ifTrue: [
            (recoveredBlock17Block838Stack1) addText: (recoveredBlock17Block838Stack2).
            recoveredBlock17Block838PC := 889.
        ].
        recoveredBlock17Block838Step = 889 ifTrue: [
            recoveredBlock17Block838Stack1 := recoveredBlock17Arg1.
            recoveredBlock17Block838PC := 892.
        ].
        recoveredBlock17Block838Step = 892 ifTrue: [
            recoveredBlock17Block838Stack2 := recoveredBlock17Block838Local1.
            recoveredBlock17Block838PC := 893.
        ].
        recoveredBlock17Block838Step = 893 ifTrue: [
            recoveredBlock17Block838Stack1 := (recoveredBlock17Block838Stack1) messageString: (recoveredBlock17Block838Stack2).
            recoveredBlock17Block838PC := 897.
        ].
        recoveredBlock17Block838Step = 897 ifTrue: [
            recoveredBlock17Block838Result := recoveredBlock17Block838Stack1.
            recoveredBlock17Block838Done := true.
        ].
    ].
    recoveredBlock17Block838Result
].
            recoveredBlock17PC := 898.
        ].
        recoveredBlock17Step = 898 ifTrue: [
            (recoveredBlock17Stack0) doWithIndex: (recoveredBlock17Stack1).
            recoveredBlock17PC := 903.
        ].
        recoveredBlock17Step = 903 ifTrue: [
            recoveredBlock17Stack0 := SGMonitorStreamDummy.
            recoveredBlock17PC := 905.
        ].
        recoveredBlock17Step = 905 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) create.
            recoveredBlock17PC := 907.
        ].
        recoveredBlock17Step = 907 ifTrue: [
            (recoveredBlock17Stack0) addDateAndTime.
            recoveredBlock17PC := 909.
        ].
        recoveredBlock17Step = 909 ifTrue: [
            recoveredBlock17Stack0 := recoveredBlock17Arg1.
            recoveredBlock17PC := 912.
        ].
        recoveredBlock17Step = 912 ifTrue: [
            recoveredBlock17Stack1 := 30.
            recoveredBlock17PC := 914.
        ].
        recoveredBlock17Step = 914 ifTrue: [
            (recoveredBlock17Stack0) value: (recoveredBlock17Stack1).
            recoveredBlock17PC := 916.
        ].
        recoveredBlock17Step = 916 ifTrue: [
            recoveredBlock17Stack0 := OrderedCollection.
            recoveredBlock17PC := 918.
        ].
        recoveredBlock17Step = 918 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) new.
            recoveredBlock17PC := 920.
        ].
        recoveredBlock17Step = 920 ifTrue: [
            recoveredLocal9 := recoveredBlock17Stack0.
            recoveredBlock17PC := 923.
        ].
        recoveredBlock17Step = 923 ifTrue: [
            recoveredBlock17Stack0 := recoveredLocal9.
            recoveredBlock17PC := 926.
        ].
        recoveredBlock17Step = 926 ifTrue: [
            recoveredBlock17Stack1 := SGDatabaseAccess.
            recoveredBlock17PC := 928.
        ].
        recoveredBlock17Step = 928 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) create.
            recoveredBlock17PC := 930.
        ].
        recoveredBlock17Step = 930 ifTrue: [
            recoveredBlock17Stack2 := ASAP2Module.
            recoveredBlock17PC := 934.
        ].
        recoveredBlock17Step = 934 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) readExactClassKeys: (recoveredBlock17Stack2).
            recoveredBlock17PC := 936.
        ].
        recoveredBlock17Step = 936 ifTrue: [
            (recoveredBlock17Stack0) addAll: (recoveredBlock17Stack1).
            recoveredBlock17PC := 938.
        ].
        recoveredBlock17Step = 938 ifTrue: [
            recoveredBlock17Stack0 := recoveredLocal9.
            recoveredBlock17PC := 941.
        ].
        recoveredBlock17Step = 941 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) notEmpty.
            recoveredBlock17PC := 943.
        ].
        recoveredBlock17Step = 943 ifTrue: [
            (recoveredBlock17Stack0) ifTrue: [recoveredBlock17PC := 946] ifFalse: [recoveredBlock17PC := 967].
        ].
        recoveredBlock17Step = 946 ifTrue: [
            recoveredBlock17Stack0 := SGMonitorStreamDummy.
            recoveredBlock17PC := 948.
        ].
        recoveredBlock17Step = 948 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) create.
            recoveredBlock17PC := 950.
        ].
        recoveredBlock17Step = 950 ifTrue: [
            recoveredBlock17Stack1 := CtCleanupDB.
            recoveredBlock17PC := 954.
        ].
        recoveredBlock17Step = 954 ifTrue: [
            (recoveredBlock17Stack0) addText: (recoveredBlock17Stack1).
            recoveredBlock17PC := 956.
        ].
        recoveredBlock17Step = 956 ifTrue: [
            recoveredBlock17Stack0 := recoveredBlock17Arg1.
            recoveredBlock17PC := 959.
        ].
        recoveredBlock17Step = 959 ifTrue: [
            recoveredBlock17Stack1 := CtCleanupDB.
            recoveredBlock17PC := 962.
        ].
        recoveredBlock17Step = 962 ifTrue: [
            (recoveredBlock17Stack0) messageString: (recoveredBlock17Stack1).
            recoveredBlock17PC := 967.
        ].
        recoveredBlock17Step = 967 ifTrue: [
            recoveredBlock17Stack0 := recoveredLocal9.
            recoveredBlock17PC := 970.
        ].
        recoveredBlock17Step = 970 ifTrue: [
            recoveredBlock17Stack1 := [:recoveredBlock17Block970Arg1 :recoveredBlock17Block970Arg2 | 
    | recoveredBlock17Block970Local1 recoveredBlock17Block970Local2 recoveredBlock17Block970Stack0 recoveredBlock17Block970Stack1 recoveredBlock17Block970Stack2 recoveredBlock17Block970Stack3 recoveredBlock17Block970Stack4 recoveredBlock17Block970Stack5 recoveredBlock17Block970Stack6 recoveredBlock17Block970PC recoveredBlock17Block970Step recoveredBlock17Block970Done recoveredBlock17Block970Result |
    recoveredBlock17Block970Stack0 := nil.
    recoveredBlock17Block970PC := 976.
    recoveredBlock17Block970Done := false.
    [recoveredBlock17Block970Done not] whileTrue: [
        recoveredBlock17Block970Step := recoveredBlock17Block970PC.
        recoveredBlock17Block970Step = 976 ifTrue: [
            recoveredBlock17Block970Stack1 := 'Kk'.
            recoveredBlock17Block970PC := 978.
        ].
        recoveredBlock17Block970Step = 978 ifTrue: [
            recoveredBlock17Block970Stack2 := 'Call_61686'.
            recoveredBlock17Block970PC := 982.
        ].
        recoveredBlock17Block970Step = 982 ifTrue: [
            recoveredBlock17Block970Stack1 := (recoveredBlock17Block970Stack1) == (recoveredBlock17Block970Stack2).
            recoveredBlock17Block970PC := 983.
        ].
        recoveredBlock17Block970Step = 983 ifTrue: [
            recoveredBlock17Block970PC := 984.
        ].
        recoveredBlock17Block970Step = 984 ifTrue: [
            recoveredBlock17Block970Stack1 := recoveredBlock17Arg1.
            recoveredBlock17Block970PC := 987.
        ].
        recoveredBlock17Block970Step = 987 ifTrue: [
            recoveredBlock17Block970Stack2 := 30.
            recoveredBlock17Block970PC := 989.
        ].
        recoveredBlock17Block970Step = 989 ifTrue: [
            recoveredBlock17Block970Stack3 := 20.
            recoveredBlock17Block970PC := 991.
        ].
        recoveredBlock17Block970Step = 991 ifTrue: [
            recoveredBlock17Block970Stack4 := recoveredBlock17Block970Arg2.
            recoveredBlock17Block970PC := 992.
        ].
        recoveredBlock17Block970Step = 992 ifTrue: [
            recoveredBlock17Block970Stack5 := recoveredLocal9.
            recoveredBlock17Block970PC := 995.
        ].
        recoveredBlock17Block970Step = 995 ifTrue: [
            recoveredBlock17Block970Stack5 := (recoveredBlock17Block970Stack5) size.
            recoveredBlock17Block970PC := 997.
        ].
        recoveredBlock17Block970Step = 997 ifTrue: [
            recoveredBlock17Block970Stack4 := (recoveredBlock17Block970Stack4) / (recoveredBlock17Block970Stack5).
            recoveredBlock17Block970PC := 999.
        ].
        recoveredBlock17Block970Step = 999 ifTrue: [
            recoveredBlock17Block970Stack3 := (recoveredBlock17Block970Stack3) * (recoveredBlock17Block970Stack4).
            recoveredBlock17Block970PC := 1000.
        ].
        recoveredBlock17Block970Step = 1000 ifTrue: [
            recoveredBlock17Block970Stack3 := (recoveredBlock17Block970Stack3) asInteger.
            recoveredBlock17Block970PC := 1002.
        ].
        recoveredBlock17Block970Step = 1002 ifTrue: [
            recoveredBlock17Block970Stack2 := (recoveredBlock17Block970Stack2) + (recoveredBlock17Block970Stack3).
            recoveredBlock17Block970PC := 1003.
        ].
        recoveredBlock17Block970Step = 1003 ifTrue: [
            (recoveredBlock17Block970Stack1) value: (recoveredBlock17Block970Stack2).
            recoveredBlock17Block970PC := 1005.
        ].
        recoveredBlock17Block970Step = 1005 ifTrue: [
            recoveredBlock17Block970Stack1 := nil.
            recoveredBlock17Block970PC := 1006.
        ].
        recoveredBlock17Block970Step = 1006 ifTrue: [
            recoveredBlock17Block970Stack2 := recoveredBlock17Block970Arg1.
            recoveredBlock17Block970PC := 1007.
        ].
        recoveredBlock17Block970Step = 1007 ifTrue: [
            recoveredBlock17Block970Stack3 := [:block28130828Arg1 | 
    nil
].
            recoveredBlock17Block970PC := 1010.
        ].
        recoveredBlock17Block970Step = 1010 ifTrue: [
            recoveredBlock17Block970PC := 1016.
        ].
        recoveredBlock17Block970Step = 1016 ifTrue: [
            recoveredBlock17Block970Stack2 := (recoveredBlock17Block970Stack2) getObjectIfUndefined: (recoveredBlock17Block970Stack3).
            recoveredBlock17Block970PC := 1018.
        ].
        recoveredBlock17Block970Step = 1018 ifTrue: [
            recoveredBlock17Block970Stack3 := recoveredBlock17Block970Stack2.
            recoveredBlock17Block970PC := 1019.
        ].
        recoveredBlock17Block970Step = 1019 ifTrue: [
            recoveredBlock17Block970Local2 := recoveredBlock17Block970Stack3.
            recoveredBlock17Block970PC := 1020.
        ].
        recoveredBlock17Block970Step = 1020 ifTrue: [
            (recoveredBlock17Block970Stack2 == nil) ifTrue: [recoveredBlock17Block970PC := 1091] ifFalse: [recoveredBlock17Block970PC := 1024].
        ].
        recoveredBlock17Block970Step = 1024 ifTrue: [
            recoveredBlock17Block970PC := 1025.
        ].
        recoveredBlock17Block970Step = 1025 ifTrue: [
            recoveredBlock17Block970Stack1 := recoveredBlock17Block970Local2.
            recoveredBlock17Block970PC := 1026.
        ].
        recoveredBlock17Block970Step = 1026 ifTrue: [
            recoveredBlock17Block970Stack1 := (recoveredBlock17Block970Stack1) allPartProxies.
            recoveredBlock17Block970PC := 1031.
        ].
        recoveredBlock17Block970Step = 1031 ifTrue: [
            recoveredBlock17Block970Stack2 := recoveredBlock17Block970Arg1.
            recoveredBlock17Block970PC := 1032.
        ].
        recoveredBlock17Block970Step = 1032 ifTrue: [
            recoveredBlock17Block970Stack1 := (recoveredBlock17Block970Stack1) copyWith: (recoveredBlock17Block970Stack2).
            recoveredBlock17Block970PC := 1037.
        ].
        recoveredBlock17Block970Step = 1037 ifTrue: [
            recoveredBlock17Block970Stack2 := [:block2813084cArg1 | 
    | block2813084cValue0 block2813084cValue1 |
    block2813084cValue0 := block2813084cArg1.
    block2813084cValue1 := (block2813084cValue0) delete.
    block2813084cValue1
].
            recoveredBlock17Block970PC := 1040.
        ].
        recoveredBlock17Block970Step = 1040 ifTrue: [
            recoveredBlock17Block970PC := 1048.
        ].
        recoveredBlock17Block970Step = 1048 ifTrue: [
            (recoveredBlock17Block970Stack1) do: (recoveredBlock17Block970Stack2).
            recoveredBlock17Block970PC := 1050.
        ].
        recoveredBlock17Block970Step = 1050 ifTrue: [
            recoveredBlock17Block970Stack1 := recoveredBlock17Block970Arg1.
            recoveredBlock17Block970PC := 1051.
        ].
        recoveredBlock17Block970Step = 1051 ifTrue: [
            recoveredBlock17Block970Stack1 := (recoveredBlock17Block970Stack1) name.
            recoveredBlock17Block970PC := 1055.
        ].
        recoveredBlock17Block970Step = 1055 ifTrue: [
            (recoveredBlock17Block970Stack1 == nil) ifTrue: [recoveredBlock17Block970PC := 1066] ifFalse: [recoveredBlock17Block970PC := 1058].
        ].
        recoveredBlock17Block970Step = 1058 ifTrue: [
            recoveredBlock17Block970Stack1 := recoveredBlock17Block970Arg1.
            recoveredBlock17Block970PC := 1059.
        ].
        recoveredBlock17Block970Step = 1059 ifTrue: [
            recoveredBlock17Block970Stack1 := (recoveredBlock17Block970Stack1) name.
            recoveredBlock17Block970PC := 1063.
        ].
        recoveredBlock17Block970Step = 1063 ifTrue: [
            recoveredBlock17Block970PC := 1075.
        ].
        recoveredBlock17Block970Step = 1066 ifTrue: [
            recoveredBlock17Block970Stack1 := SGReservedNames.
            recoveredBlock17Block970PC := 1070.
        ].
        recoveredBlock17Block970Step = 1070 ifTrue: [
            recoveredBlock17Block970Stack1 := (recoveredBlock17Block970Stack1) undefName.
            recoveredBlock17Block970PC := 1075.
        ].
        recoveredBlock17Block970Step = 1075 ifTrue: [
            recoveredBlock17Block970Local1 := recoveredBlock17Block970Stack1.
            recoveredBlock17Block970PC := 1076.
        ].
        recoveredBlock17Block970Step = 1076 ifTrue: [
            recoveredBlock17Block970Stack1 := SGMonitorStreamDummy.
            recoveredBlock17Block970PC := 1078.
        ].
        recoveredBlock17Block970Step = 1078 ifTrue: [
            recoveredBlock17Block970Stack1 := (recoveredBlock17Block970Stack1) create.
            recoveredBlock17Block970PC := 1080.
        ].
        recoveredBlock17Block970Step = 1080 ifTrue: [
            recoveredBlock17Block970Stack2 := recoveredBlock17Block970Local1.
            recoveredBlock17Block970PC := 1081.
        ].
        recoveredBlock17Block970Step = 1081 ifTrue: [
            (recoveredBlock17Block970Stack1) addText: (recoveredBlock17Block970Stack2).
            recoveredBlock17Block970PC := 1083.
        ].
        recoveredBlock17Block970Step = 1083 ifTrue: [
            recoveredBlock17Block970Stack1 := recoveredBlock17Arg1.
            recoveredBlock17Block970PC := 1086.
        ].
        recoveredBlock17Block970Step = 1086 ifTrue: [
            recoveredBlock17Block970Stack2 := recoveredBlock17Block970Local1.
            recoveredBlock17Block970PC := 1087.
        ].
        recoveredBlock17Block970Step = 1087 ifTrue: [
            recoveredBlock17Block970Stack1 := (recoveredBlock17Block970Stack1) messageString: (recoveredBlock17Block970Stack2).
            recoveredBlock17Block970PC := 1091.
        ].
        recoveredBlock17Block970Step = 1091 ifTrue: [
            recoveredBlock17Block970Result := recoveredBlock17Block970Stack1.
            recoveredBlock17Block970Done := true.
        ].
    ].
    recoveredBlock17Block970Result
].
            recoveredBlock17PC := 1092.
        ].
        recoveredBlock17Step = 1092 ifTrue: [
            (recoveredBlock17Stack0) doWithIndex: (recoveredBlock17Stack1).
            recoveredBlock17PC := 1097.
        ].
        recoveredBlock17Step = 1097 ifTrue: [
            recoveredBlock17Stack0 := recoveredBlock17Arg1.
            recoveredBlock17PC := 1100.
        ].
        recoveredBlock17Step = 1100 ifTrue: [
            recoveredBlock17Stack1 := 50.
            recoveredBlock17PC := 1102.
        ].
        recoveredBlock17Step = 1102 ifTrue: [
            (recoveredBlock17Stack0) value: (recoveredBlock17Stack1).
            recoveredBlock17PC := 1104.
        ].
        recoveredBlock17Step = 1104 ifTrue: [
            recoveredBlock17Stack0 := SGMonitorStreamDummy.
            recoveredBlock17PC := 1106.
        ].
        recoveredBlock17Step = 1106 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) create.
            recoveredBlock17PC := 1108.
        ].
        recoveredBlock17Step = 1108 ifTrue: [
            (recoveredBlock17Stack0) addDateAndTime.
            recoveredBlock17PC := 1110.
        ].
        recoveredBlock17Step = 1110 ifTrue: [
            recoveredBlock17Stack0 := 'Kk'.
            recoveredBlock17PC := 1112.
        ].
        recoveredBlock17Step = 1112 ifTrue: [
            recoveredBlock17Stack1 := 'Call_61540'.
            recoveredBlock17PC := 1114.
        ].
        recoveredBlock17Step = 1114 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) == (recoveredBlock17Stack1).
            recoveredBlock17PC := 1115.
        ].
        recoveredBlock17Step = 1115 ifTrue: [
            recoveredBlock17PC := 1116.
        ].
        recoveredBlock17Step = 1116 ifTrue: [
            recoveredBlock17Stack0 := OrderedCollection.
            recoveredBlock17PC := 1118.
        ].
        recoveredBlock17Step = 1118 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) new.
            recoveredBlock17PC := 1120.
        ].
        recoveredBlock17Step = 1120 ifTrue: [
            recoveredLocal7 := recoveredBlock17Stack0.
            recoveredBlock17PC := 1123.
        ].
        recoveredBlock17Step = 1123 ifTrue: [
            recoveredBlock17Stack0 := recoveredLocal7.
            recoveredBlock17PC := 1126.
        ].
        recoveredBlock17Step = 1126 ifTrue: [
            recoveredBlock17Stack1 := SGDatabaseAccess.
            recoveredBlock17PC := 1128.
        ].
        recoveredBlock17Step = 1128 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) create.
            recoveredBlock17PC := 1130.
        ].
        recoveredBlock17Step = 1130 ifTrue: [
            recoveredBlock17Stack2 := ASAP2Measurement.
            recoveredBlock17PC := 1134.
        ].
        recoveredBlock17Step = 1134 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) readClassKeys: (recoveredBlock17Stack2).
            recoveredBlock17PC := 1139.
        ].
        recoveredBlock17Step = 1139 ifTrue: [
            (recoveredBlock17Stack0) addAll: (recoveredBlock17Stack1).
            recoveredBlock17PC := 1141.
        ].
        recoveredBlock17Step = 1141 ifTrue: [
            recoveredBlock17Stack0 := recoveredLocal7.
            recoveredBlock17PC := 1144.
        ].
        recoveredBlock17Step = 1144 ifTrue: [
            recoveredBlock17Stack1 := SGDatabaseAccess.
            recoveredBlock17PC := 1146.
        ].
        recoveredBlock17Step = 1146 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) create.
            recoveredBlock17PC := 1148.
        ].
        recoveredBlock17Step = 1148 ifTrue: [
            recoveredBlock17Stack2 := ASAP2Characteristic.
            recoveredBlock17PC := 1152.
        ].
        recoveredBlock17Step = 1152 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) readClassKeys: (recoveredBlock17Stack2).
            recoveredBlock17PC := 1157.
        ].
        recoveredBlock17Step = 1157 ifTrue: [
            (recoveredBlock17Stack0) addAll: (recoveredBlock17Stack1).
            recoveredBlock17PC := 1159.
        ].
        recoveredBlock17Step = 1159 ifTrue: [
            recoveredBlock17Stack0 := recoveredLocal7.
            recoveredBlock17PC := 1162.
        ].
        recoveredBlock17Step = 1162 ifTrue: [
            recoveredBlock17Stack1 := SGDatabaseAccess.
            recoveredBlock17PC := 1164.
        ].
        recoveredBlock17Step = 1164 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) create.
            recoveredBlock17PC := 1166.
        ].
        recoveredBlock17Step = 1166 ifTrue: [
            recoveredBlock17Stack2 := ASAP2AxisPoints.
            recoveredBlock17PC := 1170.
        ].
        recoveredBlock17Step = 1170 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) readClassKeys: (recoveredBlock17Stack2).
            recoveredBlock17PC := 1175.
        ].
        recoveredBlock17Step = 1175 ifTrue: [
            (recoveredBlock17Stack0) addAll: (recoveredBlock17Stack1).
            recoveredBlock17PC := 1177.
        ].
        recoveredBlock17Step = 1177 ifTrue: [
            recoveredBlock17Stack0 := recoveredLocal7.
            recoveredBlock17PC := 1180.
        ].
        recoveredBlock17Step = 1180 ifTrue: [
            recoveredBlock17Stack1 := SGDatabaseAccess.
            recoveredBlock17PC := 1182.
        ].
        recoveredBlock17Step = 1182 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) create.
            recoveredBlock17PC := 1184.
        ].
        recoveredBlock17Step = 1184 ifTrue: [
            recoveredBlock17Stack2 := ASAP2Frame.
            recoveredBlock17PC := 1188.
        ].
        recoveredBlock17Step = 1188 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) readClassKeys: (recoveredBlock17Stack2).
            recoveredBlock17PC := 1193.
        ].
        recoveredBlock17Step = 1193 ifTrue: [
            (recoveredBlock17Stack0) addAll: (recoveredBlock17Stack1).
            recoveredBlock17PC := 1195.
        ].
        recoveredBlock17Step = 1195 ifTrue: [
            recoveredBlock17Stack0 := recoveredLocal7.
            recoveredBlock17PC := 1198.
        ].
        recoveredBlock17Step = 1198 ifTrue: [
            recoveredBlock17Stack1 := SGDatabaseAccess.
            recoveredBlock17PC := 1200.
        ].
        recoveredBlock17Step = 1200 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) create.
            recoveredBlock17PC := 1202.
        ].
        recoveredBlock17Step = 1202 ifTrue: [
            recoveredBlock17Stack2 := DBLookupTable.
            recoveredBlock17PC := 1206.
        ].
        recoveredBlock17Step = 1206 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) readClassKeys: (recoveredBlock17Stack2).
            recoveredBlock17PC := 1211.
        ].
        recoveredBlock17Step = 1211 ifTrue: [
            (recoveredBlock17Stack0) addAll: (recoveredBlock17Stack1).
            recoveredBlock17PC := 1213.
        ].
        recoveredBlock17Step = 1213 ifTrue: [
            recoveredBlock17Stack0 := recoveredLocal7.
            recoveredBlock17PC := 1216.
        ].
        recoveredBlock17Step = 1216 ifTrue: [
            recoveredBlock17Stack1 := SGDatabaseAccess.
            recoveredBlock17PC := 1218.
        ].
        recoveredBlock17Step = 1218 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) create.
            recoveredBlock17PC := 1220.
        ].
        recoveredBlock17Step = 1220 ifTrue: [
            recoveredBlock17Stack2 := DBLabelSortedCollection.
            recoveredBlock17PC := 1224.
        ].
        recoveredBlock17Step = 1224 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) readClassKeys: (recoveredBlock17Stack2).
            recoveredBlock17PC := 1229.
        ].
        recoveredBlock17Step = 1229 ifTrue: [
            (recoveredBlock17Stack0) addAll: (recoveredBlock17Stack1).
            recoveredBlock17PC := 1231.
        ].
        recoveredBlock17Step = 1231 ifTrue: [
            recoveredBlock17Stack0 := recoveredLocal7.
            recoveredBlock17PC := 1234.
        ].
        recoveredBlock17Step = 1234 ifTrue: [
            recoveredBlock17Stack1 := SGDatabaseAccess.
            recoveredBlock17PC := 1236.
        ].
        recoveredBlock17Step = 1236 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) create.
            recoveredBlock17PC := 1238.
        ].
        recoveredBlock17Step = 1238 ifTrue: [
            recoveredBlock17Stack2 := SGCodeContainerGenerated.
            recoveredBlock17PC := 1242.
        ].
        recoveredBlock17Step = 1242 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) readClassKeys: (recoveredBlock17Stack2).
            recoveredBlock17PC := 1247.
        ].
        recoveredBlock17Step = 1247 ifTrue: [
            (recoveredBlock17Stack0) addAll: (recoveredBlock17Stack1).
            recoveredBlock17PC := 1249.
        ].
        recoveredBlock17Step = 1249 ifTrue: [
            recoveredBlock17Stack0 := self.
            recoveredBlock17PC := 1250.
        ].
        recoveredBlock17Step = 1250 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) library.
            recoveredBlock17PC := 1251.
        ].
        recoveredBlock17Step = 1251 ifTrue: [
            recoveredBlock17Stack1 := self.
            recoveredBlock17PC := 1252.
        ].
        recoveredBlock17Step = 1252 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) library.
            recoveredBlock17PC := 1253.
        ].
        recoveredBlock17Step = 1253 ifTrue: [
            recoveredBlock17Stack2 := 0.
            recoveredBlock17PC := 1255.
        ].
        recoveredBlock17Step = 1255 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) getNewUniqueDBProxy: (recoveredBlock17Stack2).
            recoveredBlock17PC := 1259.
        ].
        recoveredBlock17Step = 1259 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Stack1.
            recoveredBlock17PC := 1260.
        ].
        recoveredBlock17Step = 1260 ifTrue: [
            recoveredLocal3 := recoveredBlock17Stack2.
            recoveredBlock17PC := 1263.
        ].
        recoveredBlock17Step = 1263 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) readRecord: (recoveredBlock17Stack1).
            recoveredBlock17PC := 1267.
        ].
        recoveredBlock17Step = 1267 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) isError.
            recoveredBlock17PC := 1271.
        ].
        recoveredBlock17Step = 1271 ifTrue: [
            (recoveredBlock17Stack0) ifTrue: [recoveredBlock17PC := 1285] ifFalse: [recoveredBlock17PC := 1274].
        ].
        recoveredBlock17Step = 1274 ifTrue: [
            recoveredBlock17Stack0 := recoveredLocal7.
            recoveredBlock17PC := 1277.
        ].
        recoveredBlock17Step = 1277 ifTrue: [
            recoveredBlock17Stack1 := recoveredLocal3.
            recoveredBlock17PC := 1280.
        ].
        recoveredBlock17Step = 1280 ifTrue: [
            (recoveredBlock17Stack0) add: (recoveredBlock17Stack1).
            recoveredBlock17PC := 1285.
        ].
        recoveredBlock17Step = 1285 ifTrue: [
            recoveredBlock17Stack0 := 'Kk'.
            recoveredBlock17PC := 1287.
        ].
        recoveredBlock17Step = 1287 ifTrue: [
            recoveredBlock17Stack1 := 'Call_61540'.
            recoveredBlock17PC := 1289.
        ].
        recoveredBlock17Step = 1289 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) == (recoveredBlock17Stack1).
            recoveredBlock17PC := 1290.
        ].
        recoveredBlock17Step = 1290 ifTrue: [
            recoveredBlock17PC := 1291.
        ].
        recoveredBlock17Step = 1291 ifTrue: [
            recoveredBlock17Stack0 := recoveredLocal7.
            recoveredBlock17PC := 1294.
        ].
        recoveredBlock17Step = 1294 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) notEmpty.
            recoveredBlock17PC := 1296.
        ].
        recoveredBlock17Step = 1296 ifTrue: [
            (recoveredBlock17Stack0) ifTrue: [recoveredBlock17PC := 1300] ifFalse: [recoveredBlock17PC := 1321].
        ].
        recoveredBlock17Step = 1300 ifTrue: [
            recoveredBlock17Stack0 := SGMonitorStreamDummy.
            recoveredBlock17PC := 1302.
        ].
        recoveredBlock17Step = 1302 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) create.
            recoveredBlock17PC := 1304.
        ].
        recoveredBlock17Step = 1304 ifTrue: [
            recoveredBlock17Stack1 := CtCleanupDB.
            recoveredBlock17PC := 1308.
        ].
        recoveredBlock17Step = 1308 ifTrue: [
            (recoveredBlock17Stack0) addText: (recoveredBlock17Stack1).
            recoveredBlock17PC := 1310.
        ].
        recoveredBlock17Step = 1310 ifTrue: [
            recoveredBlock17Stack0 := recoveredBlock17Arg1.
            recoveredBlock17PC := 1313.
        ].
        recoveredBlock17Step = 1313 ifTrue: [
            recoveredBlock17Stack1 := CtCleanupDB.
            recoveredBlock17PC := 1316.
        ].
        recoveredBlock17Step = 1316 ifTrue: [
            (recoveredBlock17Stack0) messageString: (recoveredBlock17Stack1).
            recoveredBlock17PC := 1321.
        ].
        recoveredBlock17Step = 1321 ifTrue: [
            recoveredBlock17Stack0 := recoveredLocal7.
            recoveredBlock17PC := 1324.
        ].
        recoveredBlock17Step = 1324 ifTrue: [
            recoveredBlock17Stack1 := [:recoveredBlock17Block1324Arg1 :recoveredBlock17Block1324Arg2 | 
    | recoveredBlock17Block1324Value0 recoveredBlock17Block1324Value1 recoveredBlock17Block1324Value2 recoveredBlock17Block1324Value3 recoveredBlock17Block1324Value4 recoveredBlock17Block1324Value5 recoveredBlock17Block1324Value6 recoveredBlock17Block1324Value7 recoveredBlock17Block1324Value8 recoveredBlock17Block1324Value9 recoveredBlock17Block1324Value10 recoveredBlock17Block1324Value11 recoveredBlock17Block1324Value12 recoveredBlock17Block1324Value13 |
    recoveredBlock17Block1324Value0 := recoveredBlock17Arg1.
    recoveredBlock17Block1324Value1 := recoveredBlock17Block1324Arg1.
    recoveredBlock17Block1324Value2 := (recoveredBlock17Block1324Value1) completeName.
    recoveredBlock17Block1324Value3 := ('delete ') , (recoveredBlock17Block1324Value2).
    (recoveredBlock17Block1324Value0) messageString: (recoveredBlock17Block1324Value3).
    recoveredBlock17Block1324Value4 := recoveredBlock17Block1324Arg1.
    (recoveredBlock17Block1324Value4) delete.
    recoveredBlock17Block1324Value5 := recoveredBlock17Arg1.
    recoveredBlock17Block1324Value6 := recoveredBlock17Block1324Arg2.
    recoveredBlock17Block1324Value7 := recoveredLocal7.
    recoveredBlock17Block1324Value8 := (recoveredBlock17Block1324Value7) size.
    recoveredBlock17Block1324Value9 := (recoveredBlock17Block1324Value6) / (recoveredBlock17Block1324Value8).
    recoveredBlock17Block1324Value10 := (10) * (recoveredBlock17Block1324Value9).
    recoveredBlock17Block1324Value11 := (recoveredBlock17Block1324Value10) asInteger.
    recoveredBlock17Block1324Value12 := (50) + (recoveredBlock17Block1324Value11).
    recoveredBlock17Block1324Value13 := (recoveredBlock17Block1324Value5) value: (recoveredBlock17Block1324Value12).
    recoveredBlock17Block1324Value13
].
            recoveredBlock17PC := 1370.
        ].
        recoveredBlock17Step = 1370 ifTrue: [
            (recoveredBlock17Stack0) doWithIndex: (recoveredBlock17Stack1).
            recoveredBlock17PC := 1375.
        ].
        recoveredBlock17Step = 1375 ifTrue: [
            recoveredBlock17Stack0 := 'Kk'.
            recoveredBlock17PC := 1377.
        ].
        recoveredBlock17Step = 1377 ifTrue: [
            recoveredBlock17Stack1 := 'Call_80706'.
            recoveredBlock17PC := 1379.
        ].
        recoveredBlock17Step = 1379 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) == (recoveredBlock17Stack1).
            recoveredBlock17PC := 1380.
        ].
        recoveredBlock17Step = 1380 ifTrue: [
            recoveredBlock17PC := 1381.
        ].
        recoveredBlock17Step = 1381 ifTrue: [
            recoveredBlock17Stack0 := recoveredBlock17Arg1.
            recoveredBlock17PC := 1384.
        ].
        recoveredBlock17Step = 1384 ifTrue: [
            recoveredBlock17Stack1 := 60.
            recoveredBlock17PC := 1386.
        ].
        recoveredBlock17Step = 1386 ifTrue: [
            (recoveredBlock17Stack0) value: (recoveredBlock17Stack1).
            recoveredBlock17PC := 1388.
        ].
        recoveredBlock17Step = 1388 ifTrue: [
            recoveredBlock17Stack0 := SGMonitorStreamDummy.
            recoveredBlock17PC := 1390.
        ].
        recoveredBlock17Step = 1390 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) create.
            recoveredBlock17PC := 1392.
        ].
        recoveredBlock17Step = 1392 ifTrue: [
            (recoveredBlock17Stack0) addDateAndTime.
            recoveredBlock17PC := 1394.
        ].
        recoveredBlock17Step = 1394 ifTrue: [
            recoveredBlock17Stack0 := OrderedCollection.
            recoveredBlock17PC := 1396.
        ].
        recoveredBlock17Step = 1396 ifTrue: [
            recoveredBlock17Stack1 := MainController.
            recoveredBlock17PC := 1398.
        ].
        recoveredBlock17Step = 1398 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) detectAllCodeContainerHandleKeys.
            recoveredBlock17PC := 1403.
        ].
        recoveredBlock17Step = 1403 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) withAll: (recoveredBlock17Stack1).
            recoveredBlock17PC := 1407.
        ].
        recoveredBlock17Step = 1407 ifTrue: [
            recoveredLocal2 := recoveredBlock17Stack0.
            recoveredBlock17PC := 1410.
        ].
        recoveredBlock17Step = 1410 ifTrue: [
            recoveredBlock17Stack0 := recoveredLocal2.
            recoveredBlock17PC := 1413.
        ].
        recoveredBlock17Step = 1413 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) notEmpty.
            recoveredBlock17PC := 1415.
        ].
        recoveredBlock17Step = 1415 ifTrue: [
            (recoveredBlock17Stack0) ifTrue: [recoveredBlock17PC := 1418] ifFalse: [recoveredBlock17PC := 1439].
        ].
        recoveredBlock17Step = 1418 ifTrue: [
            recoveredBlock17Stack0 := SGMonitorStreamDummy.
            recoveredBlock17PC := 1420.
        ].
        recoveredBlock17Step = 1420 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) create.
            recoveredBlock17PC := 1422.
        ].
        recoveredBlock17Step = 1422 ifTrue: [
            recoveredBlock17Stack1 := 'remove generated code'.
            recoveredBlock17PC := 1426.
        ].
        recoveredBlock17Step = 1426 ifTrue: [
            (recoveredBlock17Stack0) addText: (recoveredBlock17Stack1).
            recoveredBlock17PC := 1428.
        ].
        recoveredBlock17Step = 1428 ifTrue: [
            recoveredBlock17Stack0 := recoveredBlock17Arg1.
            recoveredBlock17PC := 1431.
        ].
        recoveredBlock17Step = 1431 ifTrue: [
            recoveredBlock17Stack1 := CtCleanupDB.
            recoveredBlock17PC := 1434.
        ].
        recoveredBlock17Step = 1434 ifTrue: [
            (recoveredBlock17Stack0) messageString: (recoveredBlock17Stack1).
            recoveredBlock17PC := 1439.
        ].
        recoveredBlock17Step = 1439 ifTrue: [
            recoveredBlock17Stack0 := recoveredLocal2.
            recoveredBlock17PC := 1442.
        ].
        recoveredBlock17Step = 1442 ifTrue: [
            recoveredBlock17Stack1 := [:recoveredBlock17Block1442Arg1 :recoveredBlock17Block1442Arg2 | 
    | recoveredBlock17Block1442Stack0 recoveredBlock17Block1442Stack1 recoveredBlock17Block1442Stack2 recoveredBlock17Block1442Stack3 recoveredBlock17Block1442Stack4 recoveredBlock17Block1442Stack5 recoveredBlock17Block1442Stack6 recoveredBlock17Block1442PC recoveredBlock17Block1442Step recoveredBlock17Block1442Done recoveredBlock17Block1442Result |
    recoveredBlock17Block1442Stack0 := self.
    recoveredBlock17Block1442PC := 1448.
    recoveredBlock17Block1442Done := false.
    [recoveredBlock17Block1442Done not] whileTrue: [
        recoveredBlock17Block1442Step := recoveredBlock17Block1442PC.
        recoveredBlock17Block1442Step = 1448 ifTrue: [
            recoveredBlock17Block1442Stack1 := recoveredBlock17Block1442Arg1.
            recoveredBlock17Block1442PC := 1449.
        ].
        recoveredBlock17Block1442Step = 1449 ifTrue: [
            recoveredBlock17Block1442Stack2 := [:block28130870Arg1 | 
    nil
].
            recoveredBlock17Block1442PC := 1452.
        ].
        recoveredBlock17Block1442Step = 1452 ifTrue: [
            recoveredBlock17Block1442PC := 1458.
        ].
        recoveredBlock17Block1442Step = 1458 ifTrue: [
            recoveredBlock17Block1442Stack1 := (recoveredBlock17Block1442Stack1) getObjectIfUndefined: (recoveredBlock17Block1442Stack2).
            recoveredBlock17Block1442PC := 1460.
        ].
        recoveredBlock17Block1442Step = 1460 ifTrue: [
            recoveredBlock17Block1442Stack2 := [:recoveredBlock17Block1442Block1460Arg1 | 
    | recoveredBlock17Block1442Block1460Value0 recoveredBlock17Block1442Block1460Value1 recoveredBlock17Block1442Block1460Value2 recoveredBlock17Block1442Block1460Value3 |
    recoveredBlock17Block1442Block1460Value0 := (self) library.
    recoveredBlock17Block1442Block1460Value1 := recoveredBlock17Block1442Block1460Arg1.
    recoveredBlock17Block1442Block1460Value2 := (recoveredBlock17Block1442Block1460Value1) allPartProxiesForDelete.
    recoveredBlock17Block1442Block1460Value3 := (recoveredBlock17Block1442Block1460Value0) deleteAll: (recoveredBlock17Block1442Block1460Value2) progressWindow: (nil) save: (true).
    recoveredBlock17Block1442Block1460Value3
].
            recoveredBlock17Block1442PC := 1480.
        ].
        recoveredBlock17Block1442Step = 1480 ifTrue: [
            (recoveredBlock17Block1442Stack1) ifNotNil: (recoveredBlock17Block1442Stack2).
            recoveredBlock17Block1442PC := 1482.
        ].
        recoveredBlock17Block1442Step = 1482 ifTrue: [
            recoveredBlock17Block1442Stack1 := recoveredBlock17Arg1.
            recoveredBlock17Block1442PC := 1485.
        ].
        recoveredBlock17Block1442Step = 1485 ifTrue: [
            recoveredBlock17Block1442Stack2 := 60.
            recoveredBlock17Block1442PC := 1487.
        ].
        recoveredBlock17Block1442Step = 1487 ifTrue: [
            recoveredBlock17Block1442Stack3 := 30.
            recoveredBlock17Block1442PC := 1489.
        ].
        recoveredBlock17Block1442Step = 1489 ifTrue: [
            recoveredBlock17Block1442Stack4 := recoveredBlock17Block1442Arg2.
            recoveredBlock17Block1442PC := 1490.
        ].
        recoveredBlock17Block1442Step = 1490 ifTrue: [
            recoveredBlock17Block1442Stack5 := recoveredLocal2.
            recoveredBlock17Block1442PC := 1493.
        ].
        recoveredBlock17Block1442Step = 1493 ifTrue: [
            recoveredBlock17Block1442Stack5 := (recoveredBlock17Block1442Stack5) size.
            recoveredBlock17Block1442PC := 1495.
        ].
        recoveredBlock17Block1442Step = 1495 ifTrue: [
            recoveredBlock17Block1442Stack4 := (recoveredBlock17Block1442Stack4) / (recoveredBlock17Block1442Stack5).
            recoveredBlock17Block1442PC := 1497.
        ].
        recoveredBlock17Block1442Step = 1497 ifTrue: [
            recoveredBlock17Block1442Stack3 := (recoveredBlock17Block1442Stack3) * (recoveredBlock17Block1442Stack4).
            recoveredBlock17Block1442PC := 1498.
        ].
        recoveredBlock17Block1442Step = 1498 ifTrue: [
            recoveredBlock17Block1442Stack3 := (recoveredBlock17Block1442Stack3) asInteger.
            recoveredBlock17Block1442PC := 1500.
        ].
        recoveredBlock17Block1442Step = 1500 ifTrue: [
            recoveredBlock17Block1442Stack2 := (recoveredBlock17Block1442Stack2) + (recoveredBlock17Block1442Stack3).
            recoveredBlock17Block1442PC := 1501.
        ].
        recoveredBlock17Block1442Step = 1501 ifTrue: [
            recoveredBlock17Block1442Stack1 := (recoveredBlock17Block1442Stack1) value: (recoveredBlock17Block1442Stack2).
            recoveredBlock17Block1442PC := 1503.
        ].
        recoveredBlock17Block1442Step = 1503 ifTrue: [
            recoveredBlock17Block1442Result := recoveredBlock17Block1442Stack1.
            recoveredBlock17Block1442Done := true.
        ].
    ].
    recoveredBlock17Block1442Result
].
            recoveredBlock17PC := 1504.
        ].
        recoveredBlock17Step = 1504 ifTrue: [
            (recoveredBlock17Stack0) doWithIndex: (recoveredBlock17Stack1).
            recoveredBlock17PC := 1509.
        ].
        recoveredBlock17Step = 1509 ifTrue: [
            recoveredBlock17Stack0 := SGMonitorStreamDummy.
            recoveredBlock17PC := 1511.
        ].
        recoveredBlock17Step = 1511 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) create.
            recoveredBlock17PC := 1513.
        ].
        recoveredBlock17Step = 1513 ifTrue: [
            (recoveredBlock17Stack0) addDateAndTime.
            recoveredBlock17PC := 1515.
        ].
        recoveredBlock17Step = 1515 ifTrue: [
            recoveredBlock17Stack0 := SGMonitorStreamDummy.
            recoveredBlock17PC := 1517.
        ].
        recoveredBlock17Step = 1517 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) create.
            recoveredBlock17PC := 1519.
        ].
        recoveredBlock17Step = 1519 ifTrue: [
            recoveredBlock17Stack1 := 'Load All Proxys ... Long Lasting'.
            recoveredBlock17PC := 1522.
        ].
        recoveredBlock17Step = 1522 ifTrue: [
            (recoveredBlock17Stack0) addText: (recoveredBlock17Stack1).
            recoveredBlock17PC := 1524.
        ].
        recoveredBlock17Step = 1524 ifTrue: [
            recoveredBlock17Stack0 := self.
            recoveredBlock17PC := 1525.
        ].
        recoveredBlock17Step = 1525 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) library.
            recoveredBlock17PC := 1526.
        ].
        recoveredBlock17Step = 1526 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) loadAllProxys.
            recoveredBlock17PC := 1531.
        ].
        recoveredBlock17Step = 1531 ifTrue: [
            recoveredLocal4 := recoveredBlock17Stack0.
            recoveredBlock17PC := 1534.
        ].
        recoveredBlock17Step = 1534 ifTrue: [
            recoveredBlock17Stack0 := SGMonitorStreamDummy.
            recoveredBlock17PC := 1536.
        ].
        recoveredBlock17Step = 1536 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) create.
            recoveredBlock17PC := 1538.
        ].
        recoveredBlock17Step = 1538 ifTrue: [
            (recoveredBlock17Stack0) addDateAndTime.
            recoveredBlock17PC := 1540.
        ].
        recoveredBlock17Step = 1540 ifTrue: [
            recoveredBlock17Stack0 := SGMonitorStreamDummy.
            recoveredBlock17PC := 1542.
        ].
        recoveredBlock17Step = 1542 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) create.
            recoveredBlock17PC := 1544.
        ].
        recoveredBlock17Step = 1544 ifTrue: [
            recoveredBlock17Stack1 := '... done!!'.
            recoveredBlock17PC := 1548.
        ].
        recoveredBlock17Step = 1548 ifTrue: [
            (recoveredBlock17Stack0) addText: (recoveredBlock17Stack1).
            recoveredBlock17PC := 1550.
        ].
        recoveredBlock17Step = 1550 ifTrue: [
            recoveredBlock17Stack0 := recoveredBlock17Arg1.
            recoveredBlock17PC := 1553.
        ].
        recoveredBlock17Step = 1553 ifTrue: [
            recoveredBlock17Stack1 := CtCleanupDB.
            recoveredBlock17PC := 1556.
        ].
        recoveredBlock17Step = 1556 ifTrue: [
            (recoveredBlock17Stack0) messageString: (recoveredBlock17Stack1).
            recoveredBlock17PC := 1561.
        ].
        recoveredBlock17Step = 1561 ifTrue: [
            recoveredBlock17Stack0 := recoveredLocal4.
            recoveredBlock17PC := 1564.
        ].
        recoveredBlock17Step = 1564 ifTrue: [
            recoveredBlock17Stack1 := recoveredLocal13.
            recoveredBlock17PC := 1567.
        ].
        recoveredBlock17Step = 1567 ifTrue: [
            recoveredBlock17Stack2 := [].
            recoveredBlock17PC := 1570.
        ].
        recoveredBlock17Step = 1570 ifTrue: [
            (recoveredBlock17Stack0) removeAll: (recoveredBlock17Stack1) ifAbsent: (recoveredBlock17Stack2).
            recoveredBlock17PC := 1575.
        ].
        recoveredBlock17Step = 1575 ifTrue: [
            recoveredBlock17Stack0 := 'Kk'.
            recoveredBlock17PC := 1577.
        ].
        recoveredBlock17Step = 1577 ifTrue: [
            recoveredBlock17Stack1 := 'Call_61686'.
            recoveredBlock17PC := 1580.
        ].
        recoveredBlock17Step = 1580 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) == (recoveredBlock17Stack1).
            recoveredBlock17PC := 1581.
        ].
        recoveredBlock17Step = 1581 ifTrue: [
            recoveredBlock17PC := 1582.
        ].
        recoveredBlock17Step = 1582 ifTrue: [
            recoveredBlock17Stack0 := recoveredLocal4.
            recoveredBlock17PC := 1585.
        ].
        recoveredBlock17Step = 1585 ifTrue: [
            recoveredBlock17Stack1 := recoveredLocal12.
            recoveredBlock17PC := 1588.
        ].
        recoveredBlock17Step = 1588 ifTrue: [
            recoveredBlock17Stack2 := [].
            recoveredBlock17PC := 1592.
        ].
        recoveredBlock17Step = 1592 ifTrue: [
            (recoveredBlock17Stack0) removeAll: (recoveredBlock17Stack1) ifAbsent: (recoveredBlock17Stack2).
            recoveredBlock17PC := 1597.
        ].
        recoveredBlock17Step = 1597 ifTrue: [
            recoveredBlock17Stack0 := recoveredLocal4.
            recoveredBlock17PC := 1600.
        ].
        recoveredBlock17Step = 1600 ifTrue: [
            recoveredBlock17Stack1 := recoveredLocal11.
            recoveredBlock17PC := 1603.
        ].
        recoveredBlock17Step = 1603 ifTrue: [
            recoveredBlock17Stack2 := [].
            recoveredBlock17PC := 1606.
        ].
        recoveredBlock17Step = 1606 ifTrue: [
            (recoveredBlock17Stack0) removeAll: (recoveredBlock17Stack1) ifAbsent: (recoveredBlock17Stack2).
            recoveredBlock17PC := 1611.
        ].
        recoveredBlock17Step = 1611 ifTrue: [
            recoveredBlock17Stack0 := recoveredLocal4.
            recoveredBlock17PC := 1614.
        ].
        recoveredBlock17Step = 1614 ifTrue: [
            recoveredBlock17Stack1 := SGDatabaseAccess.
            recoveredBlock17PC := 1616.
        ].
        recoveredBlock17Step = 1616 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) create.
            recoveredBlock17PC := 1618.
        ].
        recoveredBlock17Step = 1618 ifTrue: [
            recoveredBlock17Stack2 := ASAP2DBProject.
            recoveredBlock17PC := 1622.
        ].
        recoveredBlock17Step = 1622 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) readExactClassKeys: (recoveredBlock17Stack2).
            recoveredBlock17PC := 1624.
        ].
        recoveredBlock17Step = 1624 ifTrue: [
            recoveredBlock17Stack2 := [].
            recoveredBlock17PC := 1628.
        ].
        recoveredBlock17Step = 1628 ifTrue: [
            (recoveredBlock17Stack0) removeAll: (recoveredBlock17Stack1) ifAbsent: (recoveredBlock17Stack2).
            recoveredBlock17PC := 1633.
        ].
        recoveredBlock17Step = 1633 ifTrue: [
            recoveredBlock17Stack0 := recoveredLocal4.
            recoveredBlock17PC := 1636.
        ].
        recoveredBlock17Step = 1636 ifTrue: [
            recoveredBlock17Stack1 := SGDatabaseAccess.
            recoveredBlock17PC := 1638.
        ].
        recoveredBlock17Step = 1638 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) create.
            recoveredBlock17PC := 1640.
        ].
        recoveredBlock17Step = 1640 ifTrue: [
            recoveredBlock17Stack2 := ASAP2DBCommentModule.
            recoveredBlock17PC := 1644.
        ].
        recoveredBlock17Step = 1644 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) readExactClassKeys: (recoveredBlock17Stack2).
            recoveredBlock17PC := 1646.
        ].
        recoveredBlock17Step = 1646 ifTrue: [
            recoveredBlock17Stack2 := [].
            recoveredBlock17PC := 1650.
        ].
        recoveredBlock17Step = 1650 ifTrue: [
            (recoveredBlock17Stack0) removeAll: (recoveredBlock17Stack1) ifAbsent: (recoveredBlock17Stack2).
            recoveredBlock17PC := 1655.
        ].
        recoveredBlock17Step = 1655 ifTrue: [
            recoveredBlock17Stack0 := recoveredLocal4.
            recoveredBlock17PC := 1658.
        ].
        recoveredBlock17Step = 1658 ifTrue: [
            recoveredBlock17Stack1 := SGDatabaseAccess.
            recoveredBlock17PC := 1660.
        ].
        recoveredBlock17Step = 1660 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) create.
            recoveredBlock17PC := 1662.
        ].
        recoveredBlock17Step = 1662 ifTrue: [
            recoveredBlock17Stack2 := ASAP2DBHardwareModule.
            recoveredBlock17PC := 1666.
        ].
        recoveredBlock17Step = 1666 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) readExactClassKeys: (recoveredBlock17Stack2).
            recoveredBlock17PC := 1668.
        ].
        recoveredBlock17Step = 1668 ifTrue: [
            recoveredBlock17Stack2 := [].
            recoveredBlock17PC := 1672.
        ].
        recoveredBlock17Step = 1672 ifTrue: [
            (recoveredBlock17Stack0) removeAll: (recoveredBlock17Stack1) ifAbsent: (recoveredBlock17Stack2).
            recoveredBlock17PC := 1677.
        ].
        recoveredBlock17Step = 1677 ifTrue: [
            recoveredBlock17Stack0 := recoveredLocal4.
            recoveredBlock17PC := 1680.
        ].
        recoveredBlock17Step = 1680 ifTrue: [
            recoveredBlock17Stack1 := SGDatabaseAccess.
            recoveredBlock17PC := 1682.
        ].
        recoveredBlock17Step = 1682 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) create.
            recoveredBlock17PC := 1684.
        ].
        recoveredBlock17Step = 1684 ifTrue: [
            recoveredBlock17Stack2 := (String new: 32) at: 1 put: (Character value: 255); at: 2 put: (Character value: 255); at: 3 put: (Character value: 255); at: 4 put: (Character value: 255); at: 5 put: (Character value: 255); at: 6 put: (Character value: 255); at: 7 put: (Character value: 255); at: 8 put: (Character value: 255); at: 9 put: (Character value: 255); at: 10 put: (Character value: 255); at: 11 put: (Character value: 255); at: 12 put: (Character value: 255); at: 13 put: (Character value: 255); at: 14 put: (Character value: 255); at: 15 put: (Character value: 255); at: 16 put: (Character value: 255); at: 17 put: (Character value: 255); at: 18 put: (Character value: 255); at: 19 put: (Character value: 255); at: 20 put: (Character value: 255); at: 21 put: (Character value: 255); at: 22 put: (Character value: 255); at: 23 put: (Character value: 255); at: 24 put: (Character value: 255); at: 25 put: (Character value: 255); at: 26 put: (Character value: 255); at: 27 put: (Character value: 255); at: 28 put: (Character value: 255); at: 29 put: (Character value: 255); at: 30 put: (Character value: 255); at: 31 put: (Character value: 255); at: 32 put: (Character value: 255); yourself.
            recoveredBlock17PC := 1688.
        ].
        recoveredBlock17Step = 1688 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) readExactClassKeys: (recoveredBlock17Stack2).
            recoveredBlock17PC := 1690.
        ].
        recoveredBlock17Step = 1690 ifTrue: [
            recoveredBlock17Stack2 := [].
            recoveredBlock17PC := 1694.
        ].
        recoveredBlock17Step = 1694 ifTrue: [
            (recoveredBlock17Stack0) removeAll: (recoveredBlock17Stack1) ifAbsent: (recoveredBlock17Stack2).
            recoveredBlock17PC := 1699.
        ].
        recoveredBlock17Step = 1699 ifTrue: [
            recoveredBlock17Stack0 := ASDAscetController.
            recoveredBlock17PC := 1702.
        ].
        recoveredBlock17Step = 1702 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) isSCMInstalled.
            recoveredBlock17PC := 1707.
        ].
        recoveredBlock17Step = 1707 ifTrue: [
            (recoveredBlock17Stack0) ifTrue: [recoveredBlock17PC := 1773] ifFalse: [recoveredBlock17PC := 1710].
        ].
        recoveredBlock17Step = 1710 ifTrue: [
            recoveredBlock17Stack0 := Set.
            recoveredBlock17PC := 1714.
        ].
        recoveredBlock17Step = 1714 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) new.
            recoveredBlock17PC := 1716.
        ].
        recoveredBlock17Step = 1716 ifTrue: [
            recoveredBlock17Stack1 := recoveredBlock17Stack0.
            recoveredBlock17PC := 1717.
        ].
        recoveredBlock17Step = 1717 ifTrue: [
            recoveredBlock17Stack2 := SGDatabaseAccess.
            recoveredBlock17PC := 1719.
        ].
        recoveredBlock17Step = 1719 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) create.
            recoveredBlock17PC := 1721.
        ].
        recoveredBlock17Step = 1721 ifTrue: [
            recoveredBlock17Stack3 := 'ASDSCMCurrentData'.
            recoveredBlock17PC := 1724.
        ].
        recoveredBlock17Step = 1724 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) readExactClassKeys: (recoveredBlock17Stack3).
            recoveredBlock17PC := 1726.
        ].
        recoveredBlock17Step = 1726 ifTrue: [
            (recoveredBlock17Stack1) addAll: (recoveredBlock17Stack2).
            recoveredBlock17Stack1 := recoveredBlock17Stack0.
            recoveredBlock17PC := 1729.
        ].
        recoveredBlock17Step = 1729 ifTrue: [
            recoveredBlock17Stack2 := SGDatabaseAccess.
            recoveredBlock17PC := 1731.
        ].
        recoveredBlock17Step = 1731 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) create.
            recoveredBlock17PC := 1733.
        ].
        recoveredBlock17Step = 1733 ifTrue: [
            recoveredBlock17Stack3 := 'ASDSCMStoredData'.
            recoveredBlock17PC := 1736.
        ].
        recoveredBlock17Step = 1736 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) readExactClassKeys: (recoveredBlock17Stack3).
            recoveredBlock17PC := 1738.
        ].
        recoveredBlock17Step = 1738 ifTrue: [
            (recoveredBlock17Stack1) addAll: (recoveredBlock17Stack2).
            recoveredBlock17Stack1 := recoveredBlock17Stack0.
            recoveredBlock17PC := 1741.
        ].
        recoveredBlock17Step = 1741 ifTrue: [
            recoveredBlock17Stack2 := SGDatabaseAccess.
            recoveredBlock17PC := 1743.
        ].
        recoveredBlock17Step = 1743 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) create.
            recoveredBlock17PC := 1745.
        ].
        recoveredBlock17Step = 1745 ifTrue: [
            recoveredBlock17Stack3 := 'ASDSCMProcessData'.
            recoveredBlock17PC := 1748.
        ].
        recoveredBlock17Step = 1748 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) readExactClassKeys: (recoveredBlock17Stack3).
            recoveredBlock17PC := 1750.
        ].
        recoveredBlock17Step = 1750 ifTrue: [
            (recoveredBlock17Stack1) addAll: (recoveredBlock17Stack2).
            recoveredBlock17PC := 1752.
        ].
        recoveredBlock17Step = 1752 ifTrue: [
            recoveredBlock17Local1 := recoveredBlock17Stack0.
            recoveredBlock17PC := 1755.
        ].
        recoveredBlock17Step = 1755 ifTrue: [
            recoveredBlock17Stack0 := recoveredLocal4.
            recoveredBlock17PC := 1758.
        ].
        recoveredBlock17Step = 1758 ifTrue: [
            recoveredBlock17Stack1 := recoveredBlock17Local1.
            recoveredBlock17PC := 1761.
        ].
        recoveredBlock17Step = 1761 ifTrue: [
            recoveredBlock17Stack2 := [].
            recoveredBlock17PC := 1764.
        ].
        recoveredBlock17Step = 1764 ifTrue: [
            (recoveredBlock17Stack0) removeAll: (recoveredBlock17Stack1) ifAbsent: (recoveredBlock17Stack2).
            recoveredBlock17PC := 1769.
        ].
        recoveredBlock17Step = 1769 ifTrue: [
            recoveredBlock17Stack0 := nil.
            recoveredBlock17PC := 1770.
        ].
        recoveredBlock17Step = 1770 ifTrue: [
            recoveredBlock17Local1 := recoveredBlock17Stack0.
            recoveredBlock17PC := 1773.
        ].
        recoveredBlock17Step = 1773 ifTrue: [
            recoveredBlock17Stack0 := 'Kli'.
            recoveredBlock17PC := 1776.
        ].
        recoveredBlock17Step = 1776 ifTrue: [
            recoveredBlock17Stack1 := 'Call_87916'.
            recoveredBlock17PC := 1780.
        ].
        recoveredBlock17Step = 1780 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) == (recoveredBlock17Stack1).
            recoveredBlock17PC := 1781.
        ].
        recoveredBlock17Step = 1781 ifTrue: [
            recoveredBlock17PC := 1782.
        ].
        recoveredBlock17Step = 1782 ifTrue: [
            recoveredBlock17Stack0 := SGMonitorStreamDummy.
            recoveredBlock17PC := 1784.
        ].
        recoveredBlock17Step = 1784 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) create.
            recoveredBlock17PC := 1786.
        ].
        recoveredBlock17Step = 1786 ifTrue: [
            (recoveredBlock17Stack0) addDateAndTime.
            recoveredBlock17PC := 1788.
        ].
        recoveredBlock17Step = 1788 ifTrue: [
            recoveredBlock17Stack0 := SGMonitorStreamDummy.
            recoveredBlock17PC := 1790.
        ].
        recoveredBlock17Step = 1790 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) create.
            recoveredBlock17PC := 1792.
        ].
        recoveredBlock17Step = 1792 ifTrue: [
            recoveredBlock17Stack1 := 'Converting Default Projects ...'.
            recoveredBlock17PC := 1796.
        ].
        recoveredBlock17Step = 1796 ifTrue: [
            (recoveredBlock17Stack0) addText: (recoveredBlock17Stack1).
            recoveredBlock17PC := 1798.
        ].
        recoveredBlock17Step = 1798 ifTrue: [
            recoveredBlock17Stack0 := 0.
            recoveredBlock17PC := 1800.
        ].
        recoveredBlock17Step = 1800 ifTrue: [
            recoveredLocal1 := recoveredBlock17Stack0.
            recoveredBlock17PC := 1803.
        ].
        recoveredBlock17Step = 1803 ifTrue: [
            recoveredBlock17Stack0 := SGItemWithSpec.
            recoveredBlock17PC := 1806.
        ].
        recoveredBlock17Step = 1806 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) allSubclasses.
            recoveredBlock17PC := 1808.
        ].
        recoveredBlock17Step = 1808 ifTrue: [
            recoveredBlock17Stack1 := [:recoveredBlock17Block1808Arg1 | 
    | recoveredBlock17Block1808Stack0 recoveredBlock17Block1808Stack1 recoveredBlock17Block1808Stack2 recoveredBlock17Block1808Stack3 recoveredBlock17Block1808Stack4 recoveredBlock17Block1808PC recoveredBlock17Block1808Step recoveredBlock17Block1808Done recoveredBlock17Block1808Result |
    recoveredBlock17Block1808Stack0 := nil.
    recoveredBlock17Block1808PC := 1814.
    recoveredBlock17Block1808Done := false.
    [recoveredBlock17Block1808Done not] whileTrue: [
        recoveredBlock17Block1808Step := recoveredBlock17Block1808PC.
        recoveredBlock17Block1808Step = 1814 ifTrue: [
            recoveredBlock17Block1808Stack1 := nil.
            recoveredBlock17Block1808PC := 1815.
        ].
        recoveredBlock17Block1808Step = 1815 ifTrue: [
            recoveredBlock17Block1808Stack2 := recoveredBlock17Block1808Arg1.
            recoveredBlock17Block1808PC := 1816.
        ].
        recoveredBlock17Block1808Step = 1816 ifTrue: [
            recoveredBlock17Block1808Stack3 := SGProject.
            recoveredBlock17Block1808PC := 1820.
        ].
        recoveredBlock17Block1808Step = 1820 ifTrue: [
            recoveredBlock17Block1808Stack2 := (recoveredBlock17Block1808Stack2) isKindOf: (recoveredBlock17Block1808Stack3).
            recoveredBlock17Block1808PC := 1825.
        ].
        recoveredBlock17Block1808Step = 1825 ifTrue: [
            (recoveredBlock17Block1808Stack2) ifTrue: [recoveredBlock17Block1808PC := 1913] ifFalse: [recoveredBlock17Block1808PC := 1828].
        ].
        recoveredBlock17Block1808Step = 1828 ifTrue: [
            recoveredBlock17Block1808PC := 1829.
        ].
        recoveredBlock17Block1808Step = 1829 ifTrue: [
            recoveredBlock17Block1808Stack1 := SGDatabaseAccess.
            recoveredBlock17Block1808PC := 1831.
        ].
        recoveredBlock17Block1808Step = 1831 ifTrue: [
            recoveredBlock17Block1808Stack1 := (recoveredBlock17Block1808Stack1) create.
            recoveredBlock17Block1808PC := 1833.
        ].
        recoveredBlock17Block1808Step = 1833 ifTrue: [
            recoveredBlock17Block1808Stack2 := recoveredBlock17Block1808Arg1.
            recoveredBlock17Block1808PC := 1834.
        ].
        recoveredBlock17Block1808Step = 1834 ifTrue: [
            recoveredBlock17Block1808Stack1 := (recoveredBlock17Block1808Stack1) readExactClassKeys: (recoveredBlock17Block1808Stack2).
            recoveredBlock17Block1808PC := 1836.
        ].
        recoveredBlock17Block1808Step = 1836 ifTrue: [
            recoveredBlock17Block1808Stack2 := [:recoveredBlock17Block1808Block1836Arg1 | 
    | recoveredBlock17Block1808Block1836Stack0 recoveredBlock17Block1808Block1836Stack1 recoveredBlock17Block1808Block1836Stack2 recoveredBlock17Block1808Block1836Stack3 recoveredBlock17Block1808Block1836PC recoveredBlock17Block1808Block1836Step recoveredBlock17Block1808Block1836Done recoveredBlock17Block1808Block1836Result |
    recoveredBlock17Block1808Block1836Stack0 := nil.
    recoveredBlock17Block1808Block1836PC := 1842.
    recoveredBlock17Block1808Block1836Done := false.
    [recoveredBlock17Block1808Block1836Done not] whileTrue: [
        recoveredBlock17Block1808Block1836Step := recoveredBlock17Block1808Block1836PC.
        recoveredBlock17Block1808Block1836Step = 1842 ifTrue: [
            recoveredBlock17Block1808Block1836Stack1 := recoveredBlock17Block1808Block1836Arg1.
            recoveredBlock17Block1808Block1836PC := 1843.
        ].
        recoveredBlock17Block1808Block1836Step = 1843 ifTrue: [
            recoveredBlock17Block1808Block1836Stack2 := [:block28130894Arg1 | 
    nil
].
            recoveredBlock17Block1808Block1836PC := 1846.
        ].
        recoveredBlock17Block1808Block1836Step = 1846 ifTrue: [
            recoveredBlock17Block1808Block1836PC := 1852.
        ].
        recoveredBlock17Block1808Block1836Step = 1852 ifTrue: [
            recoveredBlock17Block1808Block1836Stack1 := (recoveredBlock17Block1808Block1836Stack1) getObjectIfUndefined: (recoveredBlock17Block1808Block1836Stack2).
            recoveredBlock17Block1808Block1836PC := 1854.
        ].
        recoveredBlock17Block1808Block1836Step = 1854 ifTrue: [
            recoveredBlock17Block1808Block1836Stack2 := [:recoveredBlock17Block1808Block1836Block1854Arg1 | 
    | recoveredBlock17Block1808Block1836Block1854Stack0 recoveredBlock17Block1808Block1836Block1854Stack1 recoveredBlock17Block1808Block1836Block1854Stack2 recoveredBlock17Block1808Block1836Block1854Stack3 recoveredBlock17Block1808Block1836Block1854Stack4 recoveredBlock17Block1808Block1836Block1854PC recoveredBlock17Block1808Block1836Block1854Step recoveredBlock17Block1808Block1836Block1854Done recoveredBlock17Block1808Block1836Block1854Result |
    recoveredBlock17Block1808Block1836Block1854Stack0 := nil.
    recoveredBlock17Block1808Block1836Block1854PC := 1860.
    recoveredBlock17Block1808Block1836Block1854Done := false.
    [recoveredBlock17Block1808Block1836Block1854Done not] whileTrue: [
        recoveredBlock17Block1808Block1836Block1854Step := recoveredBlock17Block1808Block1836Block1854PC.
        recoveredBlock17Block1808Block1836Block1854Step = 1860 ifTrue: [
            recoveredBlock17Block1808Block1836Block1854Stack1 := recoveredLocal1.
            recoveredBlock17Block1808Block1836Block1854PC := 1863.
        ].
        recoveredBlock17Block1808Block1836Block1854Step = 1863 ifTrue: [
            recoveredBlock17Block1808Block1836Block1854Stack2 := 100.
            recoveredBlock17Block1808Block1836Block1854PC := 1866.
        ].
        recoveredBlock17Block1808Block1836Block1854Step = 1866 ifTrue: [
            recoveredBlock17Block1808Block1836Block1854Stack1 := (recoveredBlock17Block1808Block1836Block1854Stack1) modulo: (recoveredBlock17Block1808Block1836Block1854Stack2).
            recoveredBlock17Block1808Block1836Block1854PC := 1871.
        ].
        recoveredBlock17Block1808Block1836Block1854Step = 1871 ifTrue: [
            recoveredBlock17Block1808Block1836Block1854Stack2 := 0.
            recoveredBlock17Block1808Block1836Block1854PC := 1873.
        ].
        recoveredBlock17Block1808Block1836Block1854Step = 1873 ifTrue: [
            recoveredBlock17Block1808Block1836Block1854Stack1 := (recoveredBlock17Block1808Block1836Block1854Stack1) = (recoveredBlock17Block1808Block1836Block1854Stack2).
            recoveredBlock17Block1808Block1836Block1854PC := 1874.
        ].
        recoveredBlock17Block1808Block1836Block1854Step = 1874 ifTrue: [
            (recoveredBlock17Block1808Block1836Block1854Stack1) ifTrue: [recoveredBlock17Block1808Block1836Block1854PC := 1878] ifFalse: [recoveredBlock17Block1808Block1836Block1854PC := 1895].
        ].
        recoveredBlock17Block1808Block1836Block1854Step = 1878 ifTrue: [
            recoveredBlock17Block1808Block1836Block1854Stack1 := recoveredBlock17Arg1.
            recoveredBlock17Block1808Block1836Block1854PC := 1881.
        ].
        recoveredBlock17Block1808Block1836Block1854Step = 1881 ifTrue: [
            recoveredBlock17Block1808Block1836Block1854Stack2 := 'Converting '.
            recoveredBlock17Block1808Block1836Block1854PC := 1884.
        ].
        recoveredBlock17Block1808Block1836Block1854Step = 1884 ifTrue: [
            recoveredBlock17Block1808Block1836Block1854Stack3 := recoveredBlock17Block1808Block1836Block1854Arg1.
            recoveredBlock17Block1808Block1836Block1854PC := 1885.
        ].
        recoveredBlock17Block1808Block1836Block1854Step = 1885 ifTrue: [
            recoveredBlock17Block1808Block1836Block1854Stack3 := (recoveredBlock17Block1808Block1836Block1854Stack3) label.
            recoveredBlock17Block1808Block1836Block1854PC := 1889.
        ].
        recoveredBlock17Block1808Block1836Block1854Step = 1889 ifTrue: [
            recoveredBlock17Block1808Block1836Block1854Stack2 := (recoveredBlock17Block1808Block1836Block1854Stack2) , (recoveredBlock17Block1808Block1836Block1854Stack3).
            recoveredBlock17Block1808Block1836Block1854PC := 1891.
        ].
        recoveredBlock17Block1808Block1836Block1854Step = 1891 ifTrue: [
            (recoveredBlock17Block1808Block1836Block1854Stack1) messageString: (recoveredBlock17Block1808Block1836Block1854Stack2).
            recoveredBlock17Block1808Block1836Block1854PC := 1895.
        ].
        recoveredBlock17Block1808Block1836Block1854Step = 1895 ifTrue: [
            recoveredBlock17Block1808Block1836Block1854Stack1 := recoveredLocal1.
            recoveredBlock17Block1808Block1836Block1854PC := 1898.
        ].
        recoveredBlock17Block1808Block1836Block1854Step = 1898 ifTrue: [
            recoveredBlock17Block1808Block1836Block1854Stack1 := (recoveredBlock17Block1808Block1836Block1854Stack1) + (1).
            recoveredBlock17Block1808Block1836Block1854PC := 1899.
        ].
        recoveredBlock17Block1808Block1836Block1854Step = 1899 ifTrue: [
            recoveredLocal1 := recoveredBlock17Block1808Block1836Block1854Stack1.
            recoveredBlock17Block1808Block1836Block1854PC := 1902.
        ].
        recoveredBlock17Block1808Block1836Block1854Step = 1902 ifTrue: [
            recoveredBlock17Block1808Block1836Block1854Stack1 := recoveredBlock17Block1808Block1836Block1854Arg1.
            recoveredBlock17Block1808Block1836Block1854PC := 1903.
        ].
        recoveredBlock17Block1808Block1836Block1854Step = 1903 ifTrue: [
            recoveredBlock17Block1808Block1836Block1854Stack1 := (recoveredBlock17Block1808Block1836Block1854Stack1) convertDefaultProject.
            recoveredBlock17Block1808Block1836Block1854PC := 1907.
        ].
        recoveredBlock17Block1808Block1836Block1854Step = 1907 ifTrue: [
            recoveredBlock17Block1808Block1836Block1854Result := recoveredBlock17Block1808Block1836Block1854Stack1.
            recoveredBlock17Block1808Block1836Block1854Done := true.
        ].
    ].
    recoveredBlock17Block1808Block1836Block1854Result
].
            recoveredBlock17Block1808Block1836PC := 1908.
        ].
        recoveredBlock17Block1808Block1836Step = 1908 ifTrue: [
            recoveredBlock17Block1808Block1836Stack1 := (recoveredBlock17Block1808Block1836Stack1) ifNotNil: (recoveredBlock17Block1808Block1836Stack2).
            recoveredBlock17Block1808Block1836PC := 1910.
        ].
        recoveredBlock17Block1808Block1836Step = 1910 ifTrue: [
            recoveredBlock17Block1808Block1836Result := recoveredBlock17Block1808Block1836Stack1.
            recoveredBlock17Block1808Block1836Done := true.
        ].
    ].
    recoveredBlock17Block1808Block1836Result
].
            recoveredBlock17Block1808PC := 1911.
        ].
        recoveredBlock17Block1808Step = 1911 ifTrue: [
            recoveredBlock17Block1808Stack1 := (recoveredBlock17Block1808Stack1) do: (recoveredBlock17Block1808Stack2).
            recoveredBlock17Block1808PC := 1913.
        ].
        recoveredBlock17Block1808Step = 1913 ifTrue: [
            recoveredBlock17Block1808Result := recoveredBlock17Block1808Stack1.
            recoveredBlock17Block1808Done := true.
        ].
    ].
    recoveredBlock17Block1808Result
].
            recoveredBlock17PC := 1914.
        ].
        recoveredBlock17Step = 1914 ifTrue: [
            (recoveredBlock17Stack0) do: (recoveredBlock17Stack1).
            recoveredBlock17PC := 1916.
        ].
        recoveredBlock17Step = 1916 ifTrue: [
            recoveredBlock17Stack0 := recoveredBlock17Arg1.
            recoveredBlock17PC := 1919.
        ].
        recoveredBlock17Step = 1919 ifTrue: [
            recoveredBlock17Stack1 := ' '.
            recoveredBlock17PC := 1922.
        ].
        recoveredBlock17Step = 1922 ifTrue: [
            (recoveredBlock17Stack0) messageString: (recoveredBlock17Stack1).
            recoveredBlock17PC := 1927.
        ].
        recoveredBlock17Step = 1927 ifTrue: [
            recoveredBlock17Stack0 := self.
            recoveredBlock17PC := 1928.
        ].
        recoveredBlock17Step = 1928 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) library.
            recoveredBlock17PC := 1929.
        ].
        recoveredBlock17Step = 1929 ifTrue: [
            recoveredBlock17Stack1 := true.
            recoveredBlock17PC := 1930.
        ].
        recoveredBlock17Step = 1930 ifTrue: [
            (recoveredBlock17Stack0) emptyCache: (recoveredBlock17Stack1).
            recoveredBlock17PC := 1935.
        ].
        recoveredBlock17Step = 1935 ifTrue: [
            recoveredBlock17Stack0 := self.
            recoveredBlock17PC := 1936.
        ].
        recoveredBlock17Step = 1936 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) dbAdminCtrl.
            recoveredBlock17PC := 1941.
        ].
        recoveredBlock17Step = 1941 ifTrue: [
            recoveredBlock17Stack1 := recoveredBlock17Stack0.
            recoveredBlock17PC := 1942.
        ].
        recoveredBlock17Step = 1942 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Arg1.
            recoveredBlock17PC := 1945.
        ].
        recoveredBlock17Step = 1945 ifTrue: [
            (recoveredBlock17Stack1) progressWindow: (recoveredBlock17Stack2).
            recoveredBlock17PC := 1949.
        ].
        recoveredBlock17Step = 1949 ifTrue: [
            recoveredBlock17Stack1 := recoveredLocal4.
            recoveredBlock17PC := 1952.
        ].
        recoveredBlock17Step = 1952 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) asOrderedCollection.
            recoveredBlock17PC := 1957.
        ].
        recoveredBlock17Step = 1957 ifTrue: [
            (recoveredBlock17Stack0) readWriteAllProxies: (recoveredBlock17Stack1).
            recoveredBlock17PC := 1961.
        ].
        recoveredBlock17Step = 1961 ifTrue: [
            recoveredBlock17Stack0 := SGMonitorStreamDummy.
            recoveredBlock17PC := 1963.
        ].
        recoveredBlock17Step = 1963 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) create.
            recoveredBlock17PC := 1965.
        ].
        recoveredBlock17Step = 1965 ifTrue: [
            (recoveredBlock17Stack0) addDateAndTime.
            recoveredBlock17PC := 1967.
        ].
        recoveredBlock17Step = 1967 ifTrue: [
            recoveredBlock17Stack0 := recoveredBlock17Arg1.
            recoveredBlock17PC := 1970.
        ].
        recoveredBlock17Step = 1970 ifTrue: [
            recoveredBlock17Stack1 := 90.
            recoveredBlock17PC := 1974.
        ].
        recoveredBlock17Step = 1974 ifTrue: [
            (recoveredBlock17Stack0) value: (recoveredBlock17Stack1).
            recoveredBlock17PC := 1976.
        ].
        recoveredBlock17Step = 1976 ifTrue: [
            recoveredBlock17Stack0 := recoveredBlock17Arg1.
            recoveredBlock17PC := 1979.
        ].
        recoveredBlock17Step = 1979 ifTrue: [
            recoveredBlock17Stack1 := 'delete... '.
            recoveredBlock17PC := 1982.
        ].
        recoveredBlock17Step = 1982 ifTrue: [
            recoveredBlock17Stack2 := self.
            recoveredBlock17PC := 1983.
        ].
        recoveredBlock17Step = 1983 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) library.
            recoveredBlock17PC := 1984.
        ].
        recoveredBlock17Step = 1984 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) location.
            recoveredBlock17PC := 1989.
        ].
        recoveredBlock17Step = 1989 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) , (recoveredBlock17Stack2).
            recoveredBlock17PC := 1991.
        ].
        recoveredBlock17Step = 1991 ifTrue: [
            recoveredBlock17Stack2 := '\label'.
            recoveredBlock17PC := 1994.
        ].
        recoveredBlock17Step = 1994 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) , (recoveredBlock17Stack2).
            recoveredBlock17PC := 1996.
        ].
        recoveredBlock17Step = 1996 ifTrue: [
            (recoveredBlock17Stack0) messageString: (recoveredBlock17Stack1).
            recoveredBlock17PC := 2001.
        ].
        recoveredBlock17Step = 2001 ifTrue: [
            recoveredBlock17Stack0 := CfsDirectoryDescriptor.
            recoveredBlock17PC := 2004.
        ].
        recoveredBlock17Step = 2004 ifTrue: [
            recoveredBlock17Stack1 := self.
            recoveredBlock17PC := 2005.
        ].
        recoveredBlock17Step = 2005 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) library.
            recoveredBlock17PC := 2006.
        ].
        recoveredBlock17Step = 2006 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) location.
            recoveredBlock17PC := 2011.
        ].
        recoveredBlock17Step = 2011 ifTrue: [
            recoveredBlock17Stack2 := '\label'.
            recoveredBlock17PC := 2014.
        ].
        recoveredBlock17Step = 2014 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) , (recoveredBlock17Stack2).
            recoveredBlock17PC := 2016.
        ].
        recoveredBlock17Step = 2016 ifTrue: [
            (recoveredBlock17Stack0) deletePathRecursive: (recoveredBlock17Stack1).
            recoveredBlock17PC := 2021.
        ].
        recoveredBlock17Step = 2021 ifTrue: [
            recoveredBlock17Stack0 := recoveredBlock17Arg1.
            recoveredBlock17PC := 2024.
        ].
        recoveredBlock17Step = 2024 ifTrue: [
            recoveredBlock17Stack1 := 'delete... '.
            recoveredBlock17PC := 2028.
        ].
        recoveredBlock17Step = 2028 ifTrue: [
            recoveredBlock17Stack2 := self.
            recoveredBlock17PC := 2029.
        ].
        recoveredBlock17Step = 2029 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) library.
            recoveredBlock17PC := 2030.
        ].
        recoveredBlock17Step = 2030 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) location.
            recoveredBlock17PC := 2035.
        ].
        recoveredBlock17Step = 2035 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) , (recoveredBlock17Stack2).
            recoveredBlock17PC := 2037.
        ].
        recoveredBlock17Step = 2037 ifTrue: [
            recoveredBlock17Stack2 := '\workbase'.
            recoveredBlock17PC := 2040.
        ].
        recoveredBlock17Step = 2040 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) , (recoveredBlock17Stack2).
            recoveredBlock17PC := 2042.
        ].
        recoveredBlock17Step = 2042 ifTrue: [
            (recoveredBlock17Stack0) messageString: (recoveredBlock17Stack1).
            recoveredBlock17PC := 2047.
        ].
        recoveredBlock17Step = 2047 ifTrue: [
            recoveredBlock17Stack0 := CfsDirectoryDescriptor.
            recoveredBlock17PC := 2050.
        ].
        recoveredBlock17Step = 2050 ifTrue: [
            recoveredBlock17Stack1 := self.
            recoveredBlock17PC := 2051.
        ].
        recoveredBlock17Step = 2051 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) library.
            recoveredBlock17PC := 2052.
        ].
        recoveredBlock17Step = 2052 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) location.
            recoveredBlock17PC := 2057.
        ].
        recoveredBlock17Step = 2057 ifTrue: [
            recoveredBlock17Stack2 := '\workbase'.
            recoveredBlock17PC := 2060.
        ].
        recoveredBlock17Step = 2060 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) , (recoveredBlock17Stack2).
            recoveredBlock17PC := 2062.
        ].
        recoveredBlock17Step = 2062 ifTrue: [
            (recoveredBlock17Stack0) deletePathRecursive: (recoveredBlock17Stack1).
            recoveredBlock17PC := 2067.
        ].
        recoveredBlock17Step = 2067 ifTrue: [
            recoveredBlock17Stack0 := self.
            recoveredBlock17PC := 2068.
        ].
        recoveredBlock17Step = 2068 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) dbAdminCtrl.
            recoveredBlock17PC := 2073.
        ].
        recoveredBlock17Step = 2073 ifTrue: [
            (recoveredBlock17Stack0) compactDataBase.
            recoveredBlock17PC := 2077.
        ].
        recoveredBlock17Step = 2077 ifTrue: [
            recoveredBlock17Stack0 := SGMonitorStreamDummy.
            recoveredBlock17PC := 2079.
        ].
        recoveredBlock17Step = 2079 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) create.
            recoveredBlock17PC := 2081.
        ].
        recoveredBlock17Step = 2081 ifTrue: [
            (recoveredBlock17Stack0) addDateAndTime.
            recoveredBlock17PC := 2083.
        ].
        recoveredBlock17Step = 2083 ifTrue: [
            recoveredBlock17Stack0 := recoveredBlock17Arg1.
            recoveredBlock17PC := 2086.
        ].
        recoveredBlock17Step = 2086 ifTrue: [
            recoveredBlock17Stack1 := 100.
            recoveredBlock17PC := 2090.
        ].
        recoveredBlock17Step = 2090 ifTrue: [
            (recoveredBlock17Stack0) value: (recoveredBlock17Stack1).
            recoveredBlock17PC := 2092.
        ].
        recoveredBlock17Step = 2092 ifTrue: [
            recoveredBlock17Stack0 := recoveredBlock17Arg1.
            recoveredBlock17PC := 2095.
        ].
        recoveredBlock17Step = 2095 ifTrue: [
            recoveredBlock17Stack1 := 'Open Current Data Storage'.
            recoveredBlock17PC := 2098.
        ].
        recoveredBlock17Step = 2098 ifTrue: [
            (recoveredBlock17Stack0) messageString: (recoveredBlock17Stack1).
            recoveredBlock17PC := 2103.
        ].
        recoveredBlock17Step = 2103 ifTrue: [
            recoveredBlock17Stack0 := self.
            recoveredBlock17PC := 2104.
        ].
        recoveredBlock17Step = 2104 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) library.
            recoveredBlock17PC := 2105.
        ].
        recoveredBlock17Step = 2105 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) openCurrentDataStorage.
            recoveredBlock17PC := 2107.
        ].
        recoveredBlock17Step = 2107 ifTrue: [
            recoveredBlock17Result := recoveredBlock17Stack0.
            recoveredBlock17Done := true.
        ].
    ].
    recoveredBlock17Result
].
            recoveredPC := 2108.
        ].
        recoveredStep = 2108 ifTrue: [
            (recoveredStack0) doWithProgressBar: (recoveredStack1).
            recoveredPC := 2113.
        ].
        recoveredStep = 2113 ifTrue: [
            recoveredStack0 := MainController.
            recoveredPC := 2115.
        ].
        recoveredStep = 2115 ifTrue: [
            (recoveredStack0) commitDB.
            recoveredPC := 2119.
        ].
        recoveredStep = 2119 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 2120.
        ].
        recoveredStep = 2120 ifTrue: [
            recoveredStack0 := (recoveredStack0) library.
            recoveredPC := 2121.
        ].
        recoveredStep = 2121 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 2124.
        ].
        recoveredStep = 2124 ifTrue: [
            (recoveredStack0) cacheSizeLimit: (recoveredStack1).
            recoveredPC := 2126.
        ].
        recoveredStep = 2126 ifTrue: [
            recoveredStack0 := MainController.
            recoveredPC := 2128.
        ].
        recoveredStep = 2128 ifTrue: [
            (recoveredStack0) executeCustomerBatch.
            recoveredPC := 2133.
        ].
        recoveredStep = 2133 ifTrue: [
            recoveredStack0 := MainController.
            recoveredPC := 2135.
        ].
        recoveredStep = 2135 ifTrue: [
            recoveredStack0 := (recoveredStack0) importManager.
            recoveredPC := 2139.
        ].
        recoveredStep = 2139 ifTrue: [
            recoveredStack0 := (recoveredStack0) convertedItems.
            recoveredPC := 2143.
        ].
        recoveredStep = 2143 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 2145.
        ].
        recoveredStep = 2145 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 2148] ifFalse: [recoveredPC := 2165].
        ].
        recoveredStep = 2148 ifTrue: [
            recoveredStack0 := MainController.
            recoveredPC := 2150.
        ].
        recoveredStep = 2150 ifTrue: [
            recoveredStack1 := MainController.
            recoveredPC := 2152.
        ].
        recoveredStep = 2152 ifTrue: [
            recoveredStack1 := (recoveredStack1) importManager.
            recoveredPC := 2157.
        ].
        recoveredStep = 2157 ifTrue: [
            recoveredStack1 := (recoveredStack1) convertedItems.
            recoveredPC := 2161.
        ].
        recoveredStep = 2161 ifTrue: [
            (recoveredStack0) executeCustomerImportBatchFor: (recoveredStack1).
            recoveredPC := 2165.
        ].
        recoveredStep = 2165 ifTrue: [
            recoveredStack0 := MainController.
            recoveredPC := 2167.
        ].
        recoveredStep = 2167 ifTrue: [
            recoveredStack0 := (recoveredStack0) importManager.
            recoveredPC := 2171.
        ].
        recoveredStep = 2171 ifTrue: [
            (recoveredStack0) resetConvertedItems.
            recoveredPC := 2175.
        ].
        recoveredStep = 2175 ifTrue: [
            recoveredStack0 := MainController.
            recoveredPC := 2177.
        ].
        recoveredStep = 2177 ifTrue: [
            (recoveredStack0) resetImportManager.
            recoveredPC := 2181.
        ].
        recoveredStep = 2181 ifTrue: [
            recoveredStack0 := Smalltalk.
            recoveredPC := 2184.
        ].
        recoveredStep = 2184 ifTrue: [
            recoveredStack1 := 'Call_2010400604'.
            recoveredPC := 2188.
        ].
        recoveredStep = 2188 ifTrue: [
            recoveredStack2 := [
    false
].
            recoveredPC := 2192.
        ].
        recoveredStep = 2192 ifTrue: [
            recoveredPC := 2198.
        ].
        recoveredStep = 2198 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 2203.
        ].
        recoveredStep = 2203 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 2206] ifFalse: [recoveredPC := 2245].
        ].
        recoveredStep = 2206 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 2209.
        ].
        recoveredStep = 2209 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 2245] ifFalse: [recoveredPC := 2212].
        ].
        recoveredStep = 2212 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 2216.
        ].
        recoveredStep = 2216 ifTrue: [
            recoveredStack1 := 'Detected a possibly wrong conversion of INOUT semantic.\Please see Monitor for details.!!'.
            recoveredPC := 2220.
        ].
        recoveredStep = 2220 ifTrue: [
            recoveredStack1 := (recoveredStack1) withCrs.
            recoveredPC := 2225.
        ].
        recoveredStep = 2225 ifTrue: [
            recoveredStack0 := (recoveredStack0) warning: (recoveredStack1).
            recoveredPC := 2229.
        ].
        recoveredStep = 2229 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 2233.
        ].
        recoveredStep = 2233 ifTrue: [
            recoveredStack0 := Smalltalk.
            recoveredPC := 2236.
        ].
        recoveredStep = 2236 ifTrue: [
            recoveredStack1 := 'Call_2010400604'.
            recoveredPC := 2240.
        ].
        recoveredStep = 2240 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 2241.
        ].
        recoveredStep = 2241 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 2245.
        ].
        recoveredStep = 2245 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 2246.
        ].
        recoveredStep = 2246 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

