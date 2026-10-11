"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200022a0; bytecode file offset 0x8ffcfc"
!EtasDatabaseDialog methodsFor: 'recovered'!
initFocusWrapper
    ^self
! !

"ASDBase.ic method 0x20005fe4; bytecode file offset 0x902de8"
!EtasDatabaseDialog methodsFor: 'recovered'!
classlistendEditCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    ^self
! !

"ASDBase.ic method 0x20006074; bytecode file offset 0x902de8"
!EtasDatabaseDialog methodsFor: 'recovered'!
classListbeginEditCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    ^self
! !

"ASDBase.ic method 0x2000db7c; bytecode file offset 0x90a4b8"
!EtasDatabaseDialog methodsFor: 'recovered'!
resultForItem: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20010938; bytecode file offset 0x90d208"
!EtasDatabaseDialog methodsFor: 'recovered'!
cancelActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 |
    recoveredValue0 := (self) cancel.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20014c94; bytecode file offset 0x912098"
!EtasDatabaseDialog methodsFor: 'recovered'!
mainController
    | recoveredValue0 |
    recoveredValue0 := MainController.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20024308; bytecode file offset 0x92209c"
!EtasDatabaseDialog methodsFor: 'recovered'!
optionGroupName
    ^''
! !

"ASDBase.ic method 0x20029d04; bytecode file offset 0x934580"
!EtasDatabaseDialog methodsFor: 'recovered'!
classList
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) dbWidget.
    recoveredValue1 := (recoveredValue0) classList.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002e634; bytecode file offset 0x934580"
!EtasDatabaseDialog methodsFor: 'recovered'!
editorName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) library.
    recoveredValue1 := (recoveredValue0) interfaceName.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002ecf4; bytecode file offset 0x934580"
!EtasDatabaseDialog methodsFor: 'recovered'!
validDatabaseExists
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) dbWidget.
    recoveredValue1 := (recoveredValue0) validDatabaseExists.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200315e4; bytecode file offset 0x934580"
!EtasDatabaseDialog methodsFor: 'recovered'!
isEditingInProgress
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) dbWidget.
    recoveredValue1 := (recoveredValue0) isEditingInProgress.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200436ac; bytecode file offset 0x9451f8"
!EtasDatabaseDialog methodsFor: 'recovered'!
cancelButton
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('cancel').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20044b1c; bytecode file offset 0x9451f8"
!EtasDatabaseDialog methodsFor: 'recovered'!
okButton
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('ok').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20046a4c; bytecode file offset 0x9451f8"
!EtasDatabaseDialog methodsFor: 'recovered'!
dbWidget
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('anEtasDatabaseWidgetOneList1').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004786c; bytecode file offset 0x9451f8"
!EtasDatabaseDialog methodsFor: 'recovered'!
mainForm
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('aForm1').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2005a5cc; bytecode file offset 0x957a6c"
!EtasDatabaseDialog methodsFor: 'recovered'!
okActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) ok.
    ^self
! !

"ASDBase.ic method 0x20063c54; bytecode file offset 0x961970"
!EtasDatabaseDialog methodsFor: 'recovered'!
setFocusItemList
    | recoveredValue0 |
    recoveredValue0 := (self) classList.
    (recoveredValue0) setInputFocus.
    ^self
! !

"ASDBase.ic method 0x20070af8; bytecode file offset 0x96d3ec"
!EtasDatabaseDialog methodsFor: 'recovered'!
dbWidgetOptions
    | recoveredValue0 |
    recoveredValue0 := dbWidgetOptions.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007b8b4; bytecode file offset 0x97c330"
!EtasDatabaseDialog methodsFor: 'recovered'!
isClassListEditPossible
    ^false
! !

"ASDBase.ic method 0x2007dbf4; bytecode file offset 0x97c330"
!EtasDatabaseDialog methodsFor: 'recovered'!
wantsEscClosing
    ^false
! !

"ASDBase.ic method 0x20090b78; bytecode file offset 0x98d690"
!EtasDatabaseDialog methodsFor: 'recovered'!
setFocusItemComment
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) dbWidget.
    recoveredValue1 := (recoveredValue0) itemCommentText.
    (recoveredValue1) setInputFocus.
    ^self
! !

"ASDBase.ic method 0x200975d4; bytecode file offset 0x995850"
!EtasDatabaseDialog methodsFor: 'recovered'!
updateSpecialMask: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) dbWidgetOptions.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) updateSpecialMask: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20098164; bytecode file offset 0x995850"
!EtasDatabaseDialog methodsFor: 'recovered'!
saveAsLabel: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) dbWidgetOptions.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) saveAsLabel: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20098454; bytecode file offset 0x995850"
!EtasDatabaseDialog methodsFor: 'recovered'!
maskClassForLibs: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) dbWidgetOptions.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) maskClassForLibs: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200984c4; bytecode file offset 0x995850"
!EtasDatabaseDialog methodsFor: 'recovered'!
lastSelectedItem: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) dbWidgetOptions.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) lastSelectedItem: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200985e4; bytecode file offset 0x995850"
!EtasDatabaseDialog methodsFor: 'recovered'!
checkOverwrite: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) dbWidgetOptions.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) checkOverwrite: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20099e78; bytecode file offset 0x997194"
!EtasDatabaseDialog methodsFor: 'recovered'!
updateFolder: recoveredArg1 selectItem: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) dbWidget.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) updateFolder: (recoveredValue1) selectItem: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200a1414; bytecode file offset 0x99dfb8"
!EtasDatabaseDialog methodsFor: 'recovered'!
updateWidgetSensitive
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) okButton.
    recoveredValue1 := (self) isOkButtonSensitive.
    (recoveredValue0) sensitive: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200c6df8; bytecode file offset 0x9c36ec"
!EtasDatabaseDialog methodsFor: 'recovered'!
multipleSelectAllowed: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    multipleSelectAllowed := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c6fec; bytecode file offset 0x9c38d8"
!EtasDatabaseDialog methodsFor: 'recovered'!
dialogTitle: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    dialogTitle := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c7060; bytecode file offset 0x9c3a8c"
!EtasDatabaseDialog methodsFor: 'recovered'!
dbWidgetOptions: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    dbWidgetOptions := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200f1194; bytecode file offset 0x9eda48"
!EtasDatabaseDialog methodsFor: 'recovered'!
multipleSelectAllowed
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := multipleSelectAllowed.
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
            recoveredStack1 := multipleSelectAllowed.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2011a444; bytecode file offset 0xa16d18"
!EtasDatabaseDialog methodsFor: 'recovered'!
cancel
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEditingInProgress.
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
            super cancel.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2012dba4; bytecode file offset 0xa2a46c"
!EtasDatabaseDialog methodsFor: 'recovered'!
additionalTabGroup
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) dbWidget.
    (recoveredValue0) additionalTabGroup.
    recoveredValue1 := (self) okButton.
    (recoveredValue1) addTabGroup.
    recoveredValue2 := (self) cancelButton.
    (recoveredValue2) addTabGroup.
    ^self
! !

"ASDBase.ic method 0x201510e0; bytecode file offset 0xa4d9a0"
!EtasDatabaseDialog methodsFor: 'recovered'!
isClosingPossible
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) dbWidget.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEditingInProgress.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) dbWidget.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) cancelEdit.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20177f5c; bytecode file offset 0xa7490c"
!EtasDatabaseDialog methodsFor: 'recovered'!
makeVisibleItem: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) dbWidget.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := (recoveredBlock5Value0) makeVisibleItem: (recoveredBlock5Value1).
    recoveredBlock5Value2
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x201aded4; bytecode file offset 0xaaa7a4"
!EtasDatabaseDialog methodsFor: 'recovered'!
initFonts
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SGUserInterfaceSettings.
    recoveredValue1 := (self) okButton.
    (recoveredValue0) updateButtonFont: (recoveredValue1).
    recoveredValue2 := SGUserInterfaceSettings.
    recoveredValue3 := (self) cancelButton.
    (recoveredValue2) updateButtonFont: (recoveredValue3).
    recoveredValue4 := SGUserInterfaceSettings.
    recoveredValue5 := (self) widgetAt: ('aForm1').
    (recoveredValue4) updateLabelsForForm: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x201b8954; bytecode file offset 0xab5214"
!EtasDatabaseDialog methodsFor: 'recovered'!
allowedSelectedItem
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) dbWidget.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItem.
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
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkItemIsOk: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201c7df4; bytecode file offset 0xac46b4"
!EtasDatabaseDialog methodsFor: 'recovered'!
updateWindowLabel
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := dialogTitle.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) shell.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := dialogTitle.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) title: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) shell.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) toolString.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) title: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201dfb7c; bytecode file offset 0xadc458"
!EtasDatabaseDialog methodsFor: 'recovered'!
refreshItem: recoveredArg1 inList: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) dbObject.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexOf: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) refreshHierarchyPos: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) expandPos: (recoveredStack2) notify: (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201e2400; bytecode file offset 0xadecc0"
!EtasDatabaseDialog methodsFor: 'recovered'!
options
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := options.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 recoveredBlock6Value4 |
    recoveredBlock6Value0 := OrderedCollection.
    recoveredBlock6Value1 := (recoveredBlock6Value0) new.
    options := recoveredBlock6Value1.
    recoveredBlock6Value2 := OrderedCollection.
    recoveredBlock6Value3 := (recoveredBlock6Value2) new.
    recoveredBlock6Value4 := recoveredBlock6Value3.
    copy := recoveredBlock6Value4.
    recoveredBlock6Value3
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := options.
    ^recoveredValue2
! !

"ASDBase.ic method 0x201e4728; bytecode file offset 0xae0ff8"
!EtasDatabaseDialog methodsFor: 'recovered'!
initIcon
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) library.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isWorkspaceMode.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := 'GeneralWorkspace'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 'GeneralWorkspace32'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) iconSmall: (recoveredStack1) large: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := 'GeneralDatabase'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := 'GeneralDatabase32'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) iconSmall: (recoveredStack1) large: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201f6900; bytecode file offset 0xaf31f4"
!EtasDatabaseDialog methodsFor: 'recovered'!
doWithoutRedraw: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) mainForm.
    (recoveredValue0) userData: (self).
    recoveredValue1 := (self) mainForm.
    recoveredValue2 := [
    | recoveredBlock10Value0 recoveredBlock10Value1 |
    recoveredBlock10Value0 := recoveredArg1.
    recoveredBlock10Value1 := (recoveredBlock10Value0) value.
    recoveredBlock10Value1
].
    (recoveredValue1) deferRedraw: (recoveredValue2).
    recoveredValue3 := (self) mainForm.
    (recoveredValue3) userData: (nil).
    ^self
! !

"ASDBase.ic method 0x202597e0; bytecode file offset 0xb560ac"
!EtasDatabaseDialog methodsFor: 'recovered'!
isOkButtonSensitive
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) multipleSelectAllowed.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) allowedSelectedItems.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) uiController.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedObject.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 35] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) isFolder.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) not.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2026feb0; bytecode file offset 0xb6c778"
!EtasDatabaseDialog methodsFor: 'recovered'!
allowedSelectedItems
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) dbWidget.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItems.
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
            recoveredStack1 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Value0 recoveredBlock15Value1 |
    recoveredBlock15Value0 := recoveredBlock15Arg1.
    recoveredBlock15Value1 := (self) checkItemIsOk: (recoveredBlock15Value0).
    recoveredBlock15Value1
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
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
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20278b60; bytecode file offset 0xb7543c"
!EtasDatabaseDialog methodsFor: 'recovered'!
classListextendedSelectionCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedItems.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [:block280e1090Arg1 | 
    | block280e1090Value0 block280e1090Value1 |
    block280e1090Value0 := block280e1090Arg1.
    block280e1090Value1 := (block280e1090Value0) getObjectOrUndefined.
    block280e1090Value1
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) selectedObjects: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedObject.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) uiController.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedObject.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) getLibrary.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) selectedLibrary: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) updateWidgetSensitive.
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

"ASDBase.ic method 0x202aa9e4; bytecode file offset 0xba72b0"
!EtasDatabaseDialog methodsFor: 'recovered'!
checkItemIsOk: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) dbWidget.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) dbObject.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) keyIsMasked: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) dbWidgetOptions.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) folderSelection.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) isFolder.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) dbWidgetOptions.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) folderSelection.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) isFolder.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202b9888; bytecode file offset 0xbb6174"
!EtasDatabaseDialog methodsFor: 'recovered'!
preClosingActivities
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := (self) getSplitDict.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := RBWindowConfiguration.
    recoveredValue2 := (self) determineLayoutConfiguration.
    recoveredValue3 := Array.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (self) dbWidget.
    recoveredValue6 := (recoveredValue5) listSettings.
    recoveredValue7 := (recoveredValue3) with: (recoveredValue4) with: (recoveredValue6).
    recoveredValue8 := (recoveredValue1) createWithName: ('dbbrowser') windowClass: (nil) layoutConfiguration: (recoveredValue2) contentsConfiguration: (recoveredValue7) childConfigurations: (nil) versionString: (nil).
    recoveredLocal2 := recoveredValue8.
    recoveredValue9 := (self) class.
    recoveredValue10 := recoveredLocal2.
    (recoveredValue9) lastWindowConfiguration: (recoveredValue10).
    recoveredValue11 := (self) dbWidget.
    (recoveredValue11) destroyWidget.
    super preClosingActivities.
    ^self
! !

"ASDBase.ic method 0x202cdeac; bytecode file offset 0xbca7b8"
!EtasDatabaseDialog methodsFor: 'recovered'!
addCallbacksForDatabaseWidget
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) classList.
    recoveredValue1 := XmNextendedSelectionCallback.
    (recoveredValue0) addCallback: (recoveredValue1) receiver: (self) selector: ('classListextendedSelectionCallback:clientData:callData:') clientData: (nil).
    recoveredValue2 := (self) classList.
    recoveredValue3 := XmNbeginEditCallback.
    (recoveredValue2) addCallback: (recoveredValue3) receiver: (self) selector: ('classListbeginEditCallback:clientData:callData:') clientData: (nil).
    recoveredValue4 := (self) classList.
    recoveredValue5 := XmNendEditCallback.
    (recoveredValue4) addCallback: (recoveredValue5) receiver: (self) selector: ('classlistendEditCallback:clientData:callData:') clientData: (nil).
    recoveredValue6 := (self) classList.
    recoveredValue7 := XmNdefaultActionCallback.
    (recoveredValue6) addCallback: (recoveredValue7) receiver: (self) selector: ('itemListDefault:clientData:callData:') clientData: (nil).
    ^self
! !

"ASDBase.ic method 0x202dc034; bytecode file offset 0xbd8930"
!EtasDatabaseDialog methodsFor: 'recovered'!
getSplitDict
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := widgetDictionary.
    recoveredValue3 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Stack0 recoveredBlock12Stack1 recoveredBlock12Stack2 recoveredBlock12Stack3 recoveredBlock12Stack4 recoveredBlock12PC recoveredBlock12Step recoveredBlock12Done recoveredBlock12Result |
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
            recoveredBlock12Stack2 := recoveredBlock12Arg1.
            recoveredBlock12PC := 20.
        ].
        recoveredBlock12Step = 20 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) value.
            recoveredBlock12PC := 21.
        ].
        recoveredBlock12Step = 21 ifTrue: [
            (recoveredBlock12Stack2 == nil) ifTrue: [recoveredBlock12PC := 43] ifFalse: [recoveredBlock12PC := 24].
        ].
        recoveredBlock12Step = 24 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Arg1.
            recoveredBlock12PC := 25.
        ].
        recoveredBlock12Step = 25 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) value.
            recoveredBlock12PC := 26.
        ].
        recoveredBlock12Step = 26 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) isSplitBar.
            recoveredBlock12PC := 27.
        ].
        recoveredBlock12Step = 27 ifTrue: [
            (recoveredBlock12Stack2) ifTrue: [recoveredBlock12PC := 30] ifFalse: [recoveredBlock12PC := 43].
        ].
        recoveredBlock12Step = 30 ifTrue: [
            recoveredBlock12PC := 31.
        ].
        recoveredBlock12Step = 31 ifTrue: [
            recoveredBlock12Stack1 := recoveredLocal1.
            recoveredBlock12PC := 34.
        ].
        recoveredBlock12Step = 34 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Arg1.
            recoveredBlock12PC := 35.
        ].
        recoveredBlock12Step = 35 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) key.
            recoveredBlock12PC := 37.
        ].
        recoveredBlock12Step = 37 ifTrue: [
            recoveredBlock12Stack3 := recoveredBlock12Arg1.
            recoveredBlock12PC := 38.
        ].
        recoveredBlock12Step = 38 ifTrue: [
            recoveredBlock12Stack3 := (recoveredBlock12Stack3) value.
            recoveredBlock12PC := 39.
        ].
        recoveredBlock12Step = 39 ifTrue: [
            recoveredBlock12Stack3 := (recoveredBlock12Stack3) position.
            recoveredBlock12PC := 41.
        ].
        recoveredBlock12Step = 41 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) at: (recoveredBlock12Stack2) put: (recoveredBlock12Stack3).
            recoveredBlock12PC := 43.
        ].
        recoveredBlock12Step = 43 ifTrue: [
            recoveredBlock12Result := recoveredBlock12Stack1.
            recoveredBlock12Done := true.
        ].
    ].
    recoveredBlock12Result
].
    (recoveredValue2) associationsDo: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x202e161c; bytecode file offset 0xbddf08"
!EtasDatabaseDialog methodsFor: 'recovered'!
updateContents
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) dbWidget.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) uiController.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) sortedLibraryKeys.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := [:block280e6e80Arg1 | 
    | block280e6e80Value0 block280e6e80Value1 |
    block280e6e80Value0 := block280e6e80Arg1.
    block280e6e80Value1 := (block280e6e80Value0) asRBDBReference.
    block280e6e80Value1
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := [:block280e6ea4Arg1 | 
    | block280e6ea4Value0 block280e6ea4Value1 block280e6ea4Value2 block280e6ea4Value3 block280e6ea4Value4 |
    block280e6ea4Value0 := block280e6ea4Arg1.
    block280e6ea4Value1 := (block280e6ea4Value0) label.
    block280e6ea4Value2 := SGReservedNames.
    block280e6ea4Value3 := (block280e6ea4Value2) trashCanName.
    block280e6ea4Value4 := (block280e6ea4Value1) ~= (block280e6ea4Value3).
    block280e6ea4Value4
].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) updateList: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) selectedLibrary: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) selectedObject: (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202e1a38; bytecode file offset 0xbde318"
!EtasDatabaseDialog methodsFor: 'recovered'!
initializeAfterOpen
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) dbWidget.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) storeSortedItems.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 recoveredBlock11Value4 |
    recoveredBlock11Value0 := (self) dbWidget.
    recoveredBlock11Value1 := (self) classList.
    recoveredBlock11Value2 := (recoveredBlock11Value1) getItemAt: (1).
    recoveredBlock11Value3 := recoveredBlock11Arg1.
    recoveredBlock11Value4 := (recoveredBlock11Value0) initializeLocalChildrenData: (recoveredBlock11Value2) withProcessDialog: (recoveredBlock11Value3).
    recoveredBlock11Value4
].
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := 'Loading from database...'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack4 := true.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) execLongOperation: (recoveredStack1) message: (recoveredStack2) allowCancel: (recoveredStack3) showProgress: (recoveredStack4).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) dbWidget.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) initializeAfterOpen.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := 'shikhar'.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := 'EHI2007401472'.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) dbWidget.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) expandAndSelectTopItem.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20310dd8; bytecode file offset 0xc0d6b0"
!EtasDatabaseDialog methodsFor: 'recovered'!
itemListDefault: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
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
            recoveredStack1 := (recoveredStack1) isEditingInProgress.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) doit: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := [:block280ea870Arg1 | 
    nil
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) getObjectIfUndefined: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) isFolder.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := (recoveredStack2) itemPosition.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) expandCollapsePos: (recoveredStack2) notify: (recoveredStack3).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredPC := 55.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack1) ok.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2037a418; bytecode file offset 0xc76cfc"
!EtasDatabaseDialog methodsFor: 'recovered'!
okByReturn
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEditingInProgress.
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
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) focusWidget.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) isText.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) editMode.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := XmMULTILINEEDIT.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
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
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) classList.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) focusProxy.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) dbWidget.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItem.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) isFolder.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) ok.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20382394; bytecode file offset 0xc7eca4"
!EtasDatabaseDialog methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) controllerClass.
    recoveredValue2 := (recoveredValue1) create.
    (self) uiController: (recoveredValue2).
    recoveredValue3 := (self) uiController.
    recoveredValue4 := (self) dbWidget.
    recoveredValue5 := (recoveredValue4) widgetController.
    (recoveredValue3) dbWidgetController: (recoveredValue5).
    (self) updateWindowLabel.
    (self) installActionKeys.
    recoveredValue6 := (self) okButton.
    recoveredValue7 := SCOk.
    (recoveredValue6) labelString: (recoveredValue7).
    recoveredValue8 := (self) cancelButton.
    recoveredValue9 := SCCancel.
    (recoveredValue8) labelString: (recoveredValue9).
    (self) initIcon.
    (self) initFonts.
    (self) addCallbacksForDatabaseWidget.
    recoveredValue10 := (self) dbWidget.
    (recoveredValue10) updateKeyboardControlNumber: (1).
    (self) updateContents.
    (self) checkWindowConfiguration.
    (self) additionalTabGroup.
    recoveredValue11 := (self) dbWidget.
    (recoveredValue11) unmanageCloseButtons.
    ^self
! !

"ASDBase.ic method 0x2038a75c; bytecode file offset 0xc87048"
!EtasDatabaseDialog methodsFor: 'recovered'!
checkWindowConfiguration
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) lastWindowConfiguration.
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
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) layoutConfiguration.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) layoutConfiguration.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) x: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) layoutConfiguration.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) y: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) layoutConfiguration.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) width.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) width: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) layoutConfiguration.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) height.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) height: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredPC := 71.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := (recoveredStack2) defaultWidth.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack1) width: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := (recoveredStack2) defaultHeight.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack1) height: (recoveredStack2).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204b3d18; bytecode file offset 0xdb0630"
!EtasDatabaseDialog methodsFor: 'recovered'!
ok
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOkButtonSensitive.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
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
            recoveredStack0 := (recoveredStack0) isEditingInProgress.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 18].
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
            recoveredStack0 := (recoveredStack0) multipleSelectAllowed.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) allowedSelectedItems.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := [:recoveredBlock33Arg1 | 
    | recoveredBlock33Value0 recoveredBlock33Value1 |
    recoveredBlock33Value0 := recoveredBlock33Arg1.
    recoveredBlock33Value1 := (self) resultForItem: (recoveredBlock33Value0).
    recoveredBlock33Value1
].
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            result := recoveredStack0.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := result.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := MainController.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := result.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) someElement.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) setLastSelectedComponent: (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredPC := 139.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) allowedSelectedItem.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 110] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) dbWidgetOptions.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkOverwrite.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 110].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := RBUserQuestion.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := EtOverwriteExistingItem.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := (recoveredStack2) label.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := (recoveredStack0) confirm: (recoveredStack1).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack1) cancelOk.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := (recoveredStack0) prompt.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 110] ifFalse: [recoveredPC := 108].
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := recoveredLocal5.
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
            recoveredStack0 := self.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := (recoveredStack0) resultForItem: (recoveredStack1).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            result := recoveredStack0.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := MainController.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := (recoveredStack0) stationOptions.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := MainController.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := (recoveredStack1) lastComponentKey.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack2 := result.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204cdfb8; bytecode file offset 0xdca8d0"
!EtasDatabaseDialog methodsFor: 'recovered'!
installActionKeys
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredPC recoveredStep |
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
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) widgetKeyActions: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) shell.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := [
    | block28107188Value0 block28107188Value1 |
    block28107188Value0 := Dictionary.
    block28107188Value1 := (block28107188Value0) new.
    block28107188Value1
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := HKOk.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := DirectedMessageWithText.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack4 := 'ok'.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack5 := #().
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack7 := EtButtonOk.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack8 := $&.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack7 := (recoveredStack7) copyEtasNlsStringWithout: (recoveredStack8).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := (recoveredStack3) selector: (recoveredStack4) arguments: (recoveredStack5) receiver: (recoveredStack6) text: (recoveredStack7).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := HKCancel.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := DirectedMessageWithText.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack4 := 'cancel'.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack5 := #().
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack7 := EtMenuCancel.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack8 := $&.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack7 := (recoveredStack7) copyEtasNlsStringWithout: (recoveredStack8).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack3 := (recoveredStack3) selector: (recoveredStack4) arguments: (recoveredStack5) receiver: (recoveredStack6) text: (recoveredStack7).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := Character.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack3 := 13.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack3 := DirectedMessageWithText.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack4 := 'okByReturn'.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack5 := #().
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack7 := EtButtonOk.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack8 := $&.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack7 := (recoveredStack7) copyEtasNlsStringWithout: (recoveredStack8).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack3 := (recoveredStack3) selector: (recoveredStack4) arguments: (recoveredStack5) receiver: (recoveredStack6) text: (recoveredStack7).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack2 := XKCancel.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack3 := DirectedMessageWithText.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack4 := 'cancel'.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack5 := #().
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack7 := EtMenuCancel.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack8 := $&.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack7 := (recoveredStack7) copyEtasNlsStringWithout: (recoveredStack8).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack3 := (recoveredStack3) selector: (recoveredStack4) arguments: (recoveredStack5) receiver: (recoveredStack6) text: (recoveredStack7).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := (recoveredStack1) shell.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := Dictionary.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := 'hw'.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := 'fuzzer_ur000055'.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := (recoveredStack1) dbWidget.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := (recoveredStack0) dbWidget.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            (recoveredStack0) installActionKeysStarting: (recoveredStack1).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20639b8c; bytecode file offset 0xf3656c"
!EtasDatabaseDialog methodsFor: 'recovered'!
createWidgetHierarchy: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredLocal8 := recoveredStack1.
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
            recoveredStack3 := [:block28121408Arg1 | 
    | block28121408Value0 block28121408Value1 block28121408Value2 block28121408Value3 block28121408Value4 block28121408Value5 block28121408Value6 block28121408Value7 block28121408Value8 block28121408Value9 block28121408Value10 block28121408Value11 |
    block28121408Value0 := block28121408Arg1.
    block28121408Value1 := block28121408Value0.
    block28121408Value2 := MWMINPUTPRIMARYAPPLICATIONMODAL.
    (block28121408Value1) mwmInputMode: (block28121408Value2).
    block28121408Value3 := block28121408Value0.
    (block28121408Value3) title: ('Dialog').
    block28121408Value4 := block28121408Value0.
    block28121408Value5 := MWMDECORALL.
    block28121408Value6 := MWMDECORMINIMIZE.
    block28121408Value7 := (block28121408Value5) | (block28121408Value6).
    block28121408Value8 := MWMDECORMAXIMIZE.
    block28121408Value9 := (block28121408Value7) | (block28121408Value8).
    (block28121408Value4) mwmDecorations: (block28121408Value9).
    block28121408Value10 := block28121408Value0.
    (block28121408Value10) height: (342).
    block28121408Value11 := (block28121408Value0) width: (291).
    block28121408Value11
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
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := 'aDialogShell1'.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredLocal7.
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
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := 'aForm1'.
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
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := 'aSeparator'.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack3 := [:block2812142cArg1 | 
    | block2812142cValue0 block2812142cValue1 block2812142cValue2 block2812142cValue3 block2812142cValue4 block2812142cValue5 block2812142cValue6 block2812142cValue7 block2812142cValue8 |
    block2812142cValue0 := block2812142cArg1.
    block2812142cValue1 := block2812142cValue0.
    (block2812142cValue1) x: (450).
    block2812142cValue2 := block2812142cValue0.
    block2812142cValue3 := XmSINGLELINE.
    (block2812142cValue2) separatorType: (block2812142cValue3).
    block2812142cValue4 := block2812142cValue0.
    block2812142cValue5 := XmVERTICAL.
    (block2812142cValue4) orientation: (block2812142cValue5).
    block2812142cValue6 := block2812142cValue0.
    (block2812142cValue6) y: (10).
    block2812142cValue7 := block2812142cValue0.
    (block2812142cValue7) height: (370).
    block2812142cValue8 := (block2812142cValue0) width: (1).
    block2812142cValue8
].
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack1 := (recoveredStack1) createSeparator: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack2 := 'aSeparator'.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack2 := 'ok'.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack3 := [:block28121450Arg1 | 
    | block28121450Value0 block28121450Value1 block28121450Value2 block28121450Value3 block28121450Value4 block28121450Value5 block28121450Value6 block28121450Value7 block28121450Value8 block28121450Value9 block28121450Value10 |
    block28121450Value0 := block28121450Arg1.
    block28121450Value1 := block28121450Value0.
    (block28121450Value1) x: (461).
    block28121450Value2 := block28121450Value0.
    (block28121450Value2) marginRight: (10).
    block28121450Value3 := block28121450Value0.
    block28121450Value4 := EtButtonOk.
    (block28121450Value3) labelString: (block28121450Value4).
    block28121450Value5 := block28121450Value0.
    (block28121450Value5) marginWidth: (0).
    block28121450Value6 := block28121450Value0.
    (block28121450Value6) marginHeight: (0).
    block28121450Value7 := block28121450Value0.
    (block28121450Value7) y: (10).
    block28121450Value8 := block28121450Value0.
    (block28121450Value8) height: (30).
    block28121450Value9 := block28121450Value0.
    (block28121450Value9) marginBottom: (10).
    block28121450Value10 := (block28121450Value0) width: (75).
    block28121450Value10
].
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack2 := 'ok'.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack2 := 'cancel'.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack3 := [:block28121474Arg1 | 
    | block28121474Value0 block28121474Value1 block28121474Value2 block28121474Value3 block28121474Value4 block28121474Value5 block28121474Value6 block28121474Value7 block28121474Value8 block28121474Value9 block28121474Value10 |
    block28121474Value0 := block28121474Arg1.
    block28121474Value1 := block28121474Value0.
    (block28121474Value1) x: (405).
    block28121474Value2 := block28121474Value0.
    (block28121474Value2) marginRight: (10).
    block28121474Value3 := block28121474Value0.
    block28121474Value4 := EtMenuCancel.
    (block28121474Value3) labelString: (block28121474Value4).
    block28121474Value5 := block28121474Value0.
    (block28121474Value5) marginWidth: (0).
    block28121474Value6 := block28121474Value0.
    (block28121474Value6) marginHeight: (0).
    block28121474Value7 := block28121474Value0.
    (block28121474Value7) y: (50).
    block28121474Value8 := block28121474Value0.
    (block28121474Value8) height: (30).
    block28121474Value9 := block28121474Value0.
    (block28121474Value9) marginBottom: (10).
    block28121474Value10 := (block28121474Value0) width: (75).
    block28121474Value10
].
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack2 := 'cancel'.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack2 := 'anEtasDatabaseWidgetOneList1'.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack3 := [:recoveredBlock335Arg1 | 
    | recoveredBlock335Value0 recoveredBlock335Value1 recoveredBlock335Value2 recoveredBlock335Value3 recoveredBlock335Value4 |
    recoveredBlock335Value0 := recoveredBlock335Arg1.
    recoveredBlock335Value1 := recoveredBlock335Value0.
    recoveredBlock335Value2 := (self) dbWidgetOptions.
    (recoveredBlock335Value1) dbWidgetOptions: (recoveredBlock335Value2).
    recoveredBlock335Value3 := recoveredBlock335Value0.
    (recoveredBlock335Value3) y: (38).
    recoveredBlock335Value4 := (recoveredBlock335Value0) x: (32).
    recoveredBlock335Value4
].
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEtasDatabaseWidget: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            recoveredStack2 := 'anEtasDatabaseWidgetOneList1'.
            recoveredPC := 371.
        ].
        recoveredStep = 371 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 374.
        ].
        recoveredStep = 374 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 376.
        ].
        recoveredStep = 376 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            recoveredStack2 := [:recoveredBlock379Arg1 | 
    | recoveredBlock379Value0 recoveredBlock379Value1 recoveredBlock379Value2 |
    recoveredBlock379Value0 := recoveredBlock379Arg1.
    recoveredBlock379Value1 := recoveredLocal5.
    recoveredBlock379Value2 := (recoveredBlock379Value0) workWindow: (recoveredBlock379Value1).
    recoveredBlock379Value2
].
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 398.
        ].
        recoveredStep = 398 ifTrue: [
            recoveredStack2 := [:recoveredBlock398Arg1 | 
    | recoveredBlock398Value0 recoveredBlock398Value1 recoveredBlock398Value2 recoveredBlock398Value3 recoveredBlock398Value4 recoveredBlock398Value5 recoveredBlock398Value6 recoveredBlock398Value7 recoveredBlock398Value8 recoveredBlock398Value9 recoveredBlock398Value10 recoveredBlock398Value11 |
    recoveredBlock398Value0 := recoveredBlock398Arg1.
    recoveredBlock398Value1 := recoveredBlock398Value0.
    recoveredBlock398Value2 := XmATTACHFORM.
    (recoveredBlock398Value1) bottomAttachment: (recoveredBlock398Value2).
    recoveredBlock398Value3 := recoveredBlock398Value0.
    (recoveredBlock398Value3) bottomOffset: (10).
    recoveredBlock398Value4 := recoveredBlock398Value0.
    recoveredBlock398Value5 := XmATTACHFORM.
    (recoveredBlock398Value4) topAttachment: (recoveredBlock398Value5).
    recoveredBlock398Value6 := recoveredBlock398Value0.
    (recoveredBlock398Value6) topOffset: (10).
    recoveredBlock398Value7 := recoveredBlock398Value0.
    recoveredBlock398Value8 := XmATTACHWIDGET.
    (recoveredBlock398Value7) rightAttachment: (recoveredBlock398Value8).
    recoveredBlock398Value9 := recoveredBlock398Value0.
    recoveredBlock398Value10 := recoveredLocal3.
    (recoveredBlock398Value9) rightWidget: (recoveredBlock398Value10).
    recoveredBlock398Value11 := (recoveredBlock398Value0) rightOffset: (10).
    recoveredBlock398Value11
].
            recoveredPC := 454.
        ].
        recoveredStep = 454 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 456.
        ].
        recoveredStep = 456 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 459.
        ].
        recoveredStep = 459 ifTrue: [
            recoveredStack2 := [:block28121498Arg1 | 
    | block28121498Value0 block28121498Value1 block28121498Value2 block28121498Value3 block28121498Value4 block28121498Value5 block28121498Value6 |
    block28121498Value0 := block28121498Arg1.
    block28121498Value1 := block28121498Value0.
    block28121498Value2 := XmATTACHFORM.
    (block28121498Value1) topAttachment: (block28121498Value2).
    block28121498Value3 := block28121498Value0.
    (block28121498Value3) topOffset: (10).
    block28121498Value4 := block28121498Value0.
    block28121498Value5 := XmATTACHFORM.
    (block28121498Value4) rightAttachment: (block28121498Value5).
    block28121498Value6 := (block28121498Value0) rightOffset: (10).
    block28121498Value6
].
            recoveredPC := 462.
        ].
        recoveredStep = 462 ifTrue: [
            recoveredPC := 494.
        ].
        recoveredStep = 494 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 496.
        ].
        recoveredStep = 496 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 499.
        ].
        recoveredStep = 499 ifTrue: [
            recoveredStack2 := [:recoveredBlock499Arg1 | 
    | recoveredBlock499Value0 recoveredBlock499Value1 recoveredBlock499Value2 recoveredBlock499Value3 recoveredBlock499Value4 recoveredBlock499Value5 recoveredBlock499Value6 recoveredBlock499Value7 recoveredBlock499Value8 |
    recoveredBlock499Value0 := recoveredBlock499Arg1.
    recoveredBlock499Value1 := recoveredBlock499Value0.
    recoveredBlock499Value2 := XmATTACHWIDGET.
    (recoveredBlock499Value1) topAttachment: (recoveredBlock499Value2).
    recoveredBlock499Value3 := recoveredBlock499Value0.
    recoveredBlock499Value4 := recoveredLocal3.
    (recoveredBlock499Value3) topWidget: (recoveredBlock499Value4).
    recoveredBlock499Value5 := recoveredBlock499Value0.
    (recoveredBlock499Value5) topOffset: (10).
    recoveredBlock499Value6 := recoveredBlock499Value0.
    recoveredBlock499Value7 := XmATTACHFORM.
    (recoveredBlock499Value6) rightAttachment: (recoveredBlock499Value7).
    recoveredBlock499Value8 := (recoveredBlock499Value0) rightOffset: (10).
    recoveredBlock499Value8
].
            recoveredPC := 544.
        ].
        recoveredStep = 544 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 546.
        ].
        recoveredStep = 546 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 549.
        ].
        recoveredStep = 549 ifTrue: [
            recoveredStack2 := [:recoveredBlock549Arg1 | 
    | recoveredBlock549Value0 recoveredBlock549Value1 recoveredBlock549Value2 recoveredBlock549Value3 recoveredBlock549Value4 recoveredBlock549Value5 recoveredBlock549Value6 recoveredBlock549Value7 recoveredBlock549Value8 recoveredBlock549Value9 recoveredBlock549Value10 recoveredBlock549Value11 recoveredBlock549Value12 recoveredBlock549Value13 recoveredBlock549Value14 |
    recoveredBlock549Value0 := recoveredBlock549Arg1.
    recoveredBlock549Value1 := recoveredBlock549Value0.
    recoveredBlock549Value2 := XmATTACHFORM.
    (recoveredBlock549Value1) bottomAttachment: (recoveredBlock549Value2).
    recoveredBlock549Value3 := recoveredBlock549Value0.
    (recoveredBlock549Value3) bottomOffset: (5).
    recoveredBlock549Value4 := recoveredBlock549Value0.
    recoveredBlock549Value5 := XmATTACHFORM.
    (recoveredBlock549Value4) topAttachment: (recoveredBlock549Value5).
    recoveredBlock549Value6 := recoveredBlock549Value0.
    (recoveredBlock549Value6) topOffset: (5).
    recoveredBlock549Value7 := recoveredBlock549Value0.
    recoveredBlock549Value8 := XmATTACHFORM.
    (recoveredBlock549Value7) leftAttachment: (recoveredBlock549Value8).
    recoveredBlock549Value9 := recoveredBlock549Value0.
    (recoveredBlock549Value9) leftOffset: (5).
    recoveredBlock549Value10 := recoveredBlock549Value0.
    recoveredBlock549Value11 := XmATTACHWIDGET.
    (recoveredBlock549Value10) rightAttachment: (recoveredBlock549Value11).
    recoveredBlock549Value12 := recoveredBlock549Value0.
    recoveredBlock549Value13 := recoveredLocal4.
    (recoveredBlock549Value12) rightWidget: (recoveredBlock549Value13).
    recoveredBlock549Value14 := (recoveredBlock549Value0) rightOffset: (5).
    recoveredBlock549Value14
].
            recoveredPC := 618.
        ].
        recoveredStep = 618 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 620.
        ].
        recoveredStep = 620 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 623.
        ].
        recoveredStep = 623 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 626.
        ].
        recoveredStep = 626 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 627.
        ].
        recoveredStep = 627 ifTrue: [
            recoveredStack4 := 'okActivate:clientData:callData:'.
            recoveredPC := 630.
        ].
        recoveredStep = 630 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 631.
        ].
        recoveredStep = 631 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 635.
        ].
        recoveredStep = 635 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 638.
        ].
        recoveredStep = 638 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 642.
        ].
        recoveredStep = 642 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 643.
        ].
        recoveredStep = 643 ifTrue: [
            recoveredStack4 := 'cancelActivate:clientData:callData:'.
            recoveredPC := 646.
        ].
        recoveredStep = 646 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 647.
        ].
        recoveredStep = 647 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 651.
        ].
        recoveredStep = 651 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 654.
        ].
        recoveredStep = 654 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 657.
        ].
        recoveredStep = 657 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 660.
        ].
        recoveredStep = 660 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 665.
        ].
        recoveredStep = 665 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

