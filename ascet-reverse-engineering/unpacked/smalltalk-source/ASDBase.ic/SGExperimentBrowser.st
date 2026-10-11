"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004353c; bytecode file offset 0x9451f8"
!SGExperimentBrowser methodsFor: 'recovered'!
widgetExperimentList
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('experimentList').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004361c; bytecode file offset 0x9451f8"
!SGExperimentBrowser methodsFor: 'recovered'!
widgetLabelEnvironment
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('labelExperiments').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004379c; bytecode file offset 0x9451f8"
!SGExperimentBrowser methodsFor: 'recovered'!
widgetLabelComment
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('labelComment').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20043a4c; bytecode file offset 0x9451f8"
!SGExperimentBrowser methodsFor: 'recovered'!
widgetDescriptionPane
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('descriptionPane').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004565c; bytecode file offset 0x9451f8"
!SGExperimentBrowser methodsFor: 'recovered'!
widgetButtonOkOrRemove
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('buttonOkOrRemove').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20046e2c; bytecode file offset 0x9451f8"
!SGExperimentBrowser methodsFor: 'recovered'!
widgetButtonHelp
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('buttonHelp').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2005a74c; bytecode file offset 0x957a6c"
!SGExperimentBrowser methodsFor: 'recovered'!
buttonCancelActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) cancel.
    ^self
! !

"ASDBase.ic method 0x2005acc8; bytecode file offset 0x957a6c"
!SGExperimentBrowser methodsFor: 'recovered'!
experimentListdefaultActionCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) loadAndClose.
    ^self
! !

"ASDBase.ic method 0x20064ba4; bytecode file offset 0x961970"
!SGExperimentBrowser methodsFor: 'recovered'!
menuEditCopy
    | recoveredValue0 |
    recoveredValue0 := (self) widgetDescriptionPane.
    (recoveredValue0) copySelection.
    ^self
! !

"ASDBase.ic method 0x2009ad64; bytecode file offset 0x9976c0"
!SGExperimentBrowser methodsFor: 'recovered'!
experimentListbrowseSelectionCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := (recoveredValue0) item.
    (self) displayDescription: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200ad188; bytecode file offset 0x9a9a3c"
!SGExperimentBrowser methodsFor: 'recovered'!
openFor: recoveredArg1 experiments: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    owner := recoveredValue0.
    recoveredValue1 := recoveredArg2.
    experiments := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x200bd654; bytecode file offset 0x9b9f90"
!SGExperimentBrowser methodsFor: 'recovered'!
displayDescription: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) widgetDescriptionPane.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) getObject.
    recoveredValue3 := (recoveredValue2) comment.
    (recoveredValue0) setString: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2012adfc; bytecode file offset 0xa276c0"
!SGExperimentBrowser methodsFor: 'recovered'!
cancel
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := textManager.
    recoveredValue1 := (self) widgetDescriptionPane.
    (recoveredValue0) disconnectFromOwner: (recoveredValue1).
    (self) result: (nil).
    (self) close.
    ^self
! !

"ASDBase.ic method 0x201402f0; bytecode file offset 0xa3cbb4"
!SGExperimentBrowser methodsFor: 'recovered'!
isRenameExperimentPossible
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetExperimentList.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItems.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRemoveExperimentPossible.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201422d0; bytecode file offset 0xa3eb90"
!SGExperimentBrowser methodsFor: 'recovered'!
loadExperiment: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := owner.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) loadExperiment: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) close.
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

"ASDBase.ic method 0x201489ec; bytecode file offset 0xa452b0"
!SGExperimentBrowser methodsFor: 'recovered'!
buttonOkOrRemoveActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetExperimentList.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEditingInProgress.
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
            recoveredStack0 := (recoveredStack0) widgetExperimentList.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) endEdit.
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
            (recoveredStack0) loadAndClose.
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

"ASDBase.ic method 0x2014b970; bytecode file offset 0xa4827c"
!SGExperimentBrowser methodsFor: 'recovered'!
menuEditSelectAll
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredLocal2 := 0.
    recoveredValue0 := (self) widgetDescriptionPane.
    recoveredValue1 := (recoveredValue0) getLastPosition.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) widgetDescriptionPane.
    recoveredValue3 := recoveredLocal2.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue3) @ (recoveredValue4).
    (recoveredValue2) setSelection: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x201c8e44; bytecode file offset 0xac5730"
!SGExperimentBrowser methodsFor: 'recovered'!
initEditCallbacks
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) widgetExperimentList.
    recoveredValue1 := XmNendEditCallback.
    (recoveredValue0) addCallback: (recoveredValue1) receiver: (self) selector: ('experimentListendEditCallback:clientData:callData:') clientData: (nil).
    recoveredValue2 := (self) widgetExperimentList.
    recoveredValue3 := XmNbeginEditCallback.
    (recoveredValue2) addCallback: (recoveredValue3) receiver: (self) selector: ('experimentListbeginEditCallback:clientData:callData:') clientData: (nil).
    ^self
! !

"ASDBase.ic method 0x201d5094; bytecode file offset 0xad1990"
!SGExperimentBrowser methodsFor: 'recovered'!
initFonts
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := SGUserInterfaceSettings.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) widgetLabelEnvironment.
    (recoveredValue1) updateLabelFont: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := (self) widgetLabelComment.
    (recoveredValue3) updateLabelFont: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := (self) widgetExperimentList.
    (recoveredValue5) updateFontAndItemHeight: (recoveredValue6).
    recoveredValue7 := (self) widgetDescriptionPane.
    (recoveredValue0) updateTextFont: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x201fcf1c; bytecode file offset 0xaf97f0"
!SGExperimentBrowser methodsFor: 'recovered'!
initializeTextWidget
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := CwSmalltalkTextSelectionManager.
    recoveredValue1 := (self) widgetDescriptionPane.
    recoveredValue2 := (recoveredValue0) for: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) connect.
    textManager := recoveredValue3.
    recoveredValue4 := (self) widgetDescriptionPane.
    recoveredValue5 := (self) createEditMenu.
    (recoveredValue4) menu: (recoveredValue5) owner: (self).
    recoveredValue6 := (self) widgetDescriptionPane.
    recoveredValue7 := recoveredValue6.
    (recoveredValue7) wordWrap: (false).
    (recoveredValue6) cursorPosition: (1).
    ^self
! !

"ASDBase.ic method 0x2026427c; bytecode file offset 0xb60b50"
!SGExperimentBrowser methodsFor: 'recovered'!
loadAndClose
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := textManager.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) widgetDescriptionPane.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) disconnectFromOwner: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetExperimentList.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItems.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 30].
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
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) result: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) result: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) close.
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

"ASDBase.ic method 0x20268630; bytecode file offset 0xb64f10"
!SGExperimentBrowser methodsFor: 'recovered'!
experimentListbeginEditCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := (recoveredValue0) item.
    recoveredValue2 := (recoveredValue1) getObject.
    recoveredValue3 := (recoveredValue2) name.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := EwTextEditPolicy.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue4) on: (recoveredValue5).
    recoveredLocal2 := recoveredValue6.
    recoveredValue7 := recoveredLocal2.
    recoveredValue8 := recoveredValue7.
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := (recoveredValue9) size.
    recoveredValue11 := (0) @ (recoveredValue10).
    (recoveredValue8) selection: (recoveredValue11).
    recoveredValue12 := recoveredLocal1.
    (recoveredValue7) value: (recoveredValue12).
    recoveredValue13 := recoveredArg3.
    recoveredValue14 := recoveredValue13.
    recoveredValue15 := recoveredLocal2.
    (recoveredValue14) editPolicy: (recoveredValue15).
    (recoveredValue13) doit: (true).
    ^self
! !

"ASDBase.ic method 0x2027e11c; bytecode file offset 0xb7a9fc"
!SGExperimentBrowser methodsFor: 'recovered'!
experimentListvisualInfoCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := (recoveredValue0) item.
    recoveredValue2 := (recoveredValue1) getObject.
    recoveredValue3 := (recoveredValue2) iconName.
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := recoveredLocal2.
    recoveredValue5 := (self) returnIcon16WithName: (recoveredValue4).
    recoveredLocal3 := recoveredValue5.
    recoveredValue6 := recoveredArg3.
    recoveredValue7 := (recoveredValue6) item.
    recoveredValue8 := (recoveredValue7) getObject.
    recoveredValue9 := (recoveredValue8) name.
    recoveredValue10 := (recoveredValue9) , ('  ').
    recoveredValue11 := recoveredArg3.
    recoveredValue12 := (recoveredValue11) item.
    recoveredValue13 := (recoveredValue12) getObject.
    recoveredValue14 := (recoveredValue13) timeStamp.
    recoveredValue15 := (recoveredValue14) printString.
    recoveredValue16 := (recoveredValue10) , (recoveredValue15).
    recoveredLocal1 := recoveredValue16.
    recoveredValue17 := recoveredArg3.
    recoveredValue18 := recoveredValue17.
    recoveredValue19 := recoveredLocal3.
    (recoveredValue18) icon: (recoveredValue19).
    recoveredValue20 := recoveredLocal1.
    (recoveredValue17) label: (recoveredValue20).
    ^self
! !

"ASDBase.ic method 0x202ac4fc; bytecode file offset 0xba8de0"
!SGExperimentBrowser methodsFor: 'recovered'!
createEditMenu
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CwMenu.
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
            recoveredStack2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := '~Edit'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack2) title: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := 'menuEditCopy'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack4 := '~Copy'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack5 := [
    true
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := 'menuEditSelectAll'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack4 := 'Select ~All'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack5 := [
    true
].
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202d4838; bytecode file offset 0xbd111c"
!SGExperimentBrowser methodsFor: 'recovered'!
createListMenu
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := CwMenu.
    recoveredValue1 := (recoveredValue0) defaultMenuClass.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) title: ('Experiments').
    recoveredValue4 := recoveredValue2.
    recoveredValue5 := [
    | recoveredBlock18Value0 |
    recoveredBlock18Value0 := (self) isRemoveExperimentPossible.
    recoveredBlock18Value0
].
    (recoveredValue4) add: ('menuRemoveExperiment') label: ('~Delete') enable: (recoveredValue5).
    recoveredValue6 := recoveredValue2.
    recoveredValue7 := [
    | recoveredBlock34Value0 |
    recoveredBlock34Value0 := (self) isRenameExperimentPossible.
    recoveredBlock34Value0
].
    (recoveredValue6) add: ('menuRenameExperiment') label: ('~Rename') enable: (recoveredValue7).
    recoveredLocal2 := recoveredValue2.
    recoveredValue8 := recoveredLocal2.
    ^recoveredValue8
! !

"ASDBase.ic method 0x2032a208; bytecode file offset 0xc26af0"
!SGExperimentBrowser methodsFor: 'recovered'!
experimentListendEditCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) newValue.
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
            recoveredStack1 := recoveredArg3.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) newValue.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) widgetExperimentList.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) items.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := [:block280ec490Arg1 | 
    | block280ec490Value0 block280ec490Value1 block280ec490Value2 |
    block280ec490Value0 := block280ec490Arg1.
    block280ec490Value1 := (block280ec490Value0) getObject.
    block280ec490Value2 := (block280ec490Value1) name.
    block280ec490Value2
].
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) collect: (recoveredStack3).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) uniqueStringFor: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetExperimentList.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItems.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) getObject.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack1) name: (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) modified.
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

"ASDBase.ic method 0x203d15b4; bytecode file offset 0xccdec4"
!SGExperimentBrowser methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetButtonOkOrRemove.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 'Load'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetButtonHelp.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) grayBackground.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) setShellSize.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) initFonts.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) initializeTextWidget.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) initEditCallbacks.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := experiments.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetExperimentList.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := experiments.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := [:block280f7674Arg1 :block280f7674Arg2 | 
    | block280f7674Value0 block280f7674Value1 block280f7674Value2 block280f7674Value3 block280f7674Value4 block280f7674Value5 block280f7674Value6 |
    block280f7674Value0 := block280f7674Arg1.
    block280f7674Value1 := (block280f7674Value0) getObject.
    block280f7674Value2 := (block280f7674Value1) label.
    block280f7674Value3 := block280f7674Arg2.
    block280f7674Value4 := (block280f7674Value3) getObject.
    block280f7674Value5 := (block280f7674Value4) label.
    block280f7674Value6 := (block280f7674Value2) < (block280f7674Value5).
    block280f7674Value6
].
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection: (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) items: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetExperimentList.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) selectedItems: (recoveredStack1).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetExperimentList.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) createListMenu.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack0) menu: (recoveredStack1) owner: (recoveredStack2).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) displayDescription: (recoveredStack1).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203f2bb8; bytecode file offset 0xcef4bc"
!SGExperimentBrowser methodsFor: 'recovered'!
menuRemoveExperiment
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRemoveExperimentPossible.
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
            recoveredStack0 := (recoveredStack0) widgetExperimentList.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItems.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Stack0 recoveredBlock13Stack1 recoveredBlock13Stack2 recoveredBlock13Stack3 recoveredBlock13Stack4 recoveredBlock13PC recoveredBlock13Step recoveredBlock13Done recoveredBlock13Result |
    recoveredBlock13Stack0 := self.
    recoveredBlock13PC := 20.
    recoveredBlock13Done := false.
    [recoveredBlock13Done not] whileTrue: [
        recoveredBlock13Step := recoveredBlock13PC.
        recoveredBlock13Step = 20 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 21.
        ].
        recoveredBlock13Step = 21 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) getObject.
            recoveredBlock13PC := 22.
        ].
        recoveredBlock13Step = 22 ifTrue: [
            recoveredBlock13Stack2 := owner.
            recoveredBlock13PC := 24.
        ].
        recoveredBlock13Step = 24 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) simEnvironment.
            recoveredBlock13PC := 26.
        ].
        recoveredBlock13Step = 26 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) getExperiment.
            recoveredBlock13PC := 28.
        ].
        recoveredBlock13Step = 28 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) getObject.
            recoveredBlock13PC := 29.
        ].
        recoveredBlock13Step = 29 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) = (recoveredBlock13Stack2).
            recoveredBlock13PC := 30.
        ].
        recoveredBlock13Step = 30 ifTrue: [
            (recoveredBlock13Stack1) ifTrue: [recoveredBlock13PC := 34] ifFalse: [recoveredBlock13PC := 44].
        ].
        recoveredBlock13Step = 34 ifTrue: [
            recoveredBlock13Stack1 := RBUserInfo.
            recoveredBlock13PC := 36.
        ].
        recoveredBlock13Step = 36 ifTrue: [
            recoveredBlock13Stack2 := 'Current Environment is loaded and can not be removed'.
            recoveredBlock13PC := 38.
        ].
        recoveredBlock13Step = 38 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) message: (recoveredBlock13Stack2).
            recoveredBlock13PC := 40.
        ].
        recoveredBlock13Step = 40 ifTrue: [
            (recoveredBlock13Stack1) prompt.
            recoveredBlock13PC := 42.
        ].
        recoveredBlock13Step = 42 ifTrue: [
            recoveredBlock13Stack1 := nil.
            recoveredBlock13PC := 43.
        ].
        recoveredBlock13Step = 43 ifTrue: [
            ^recoveredBlock13Stack1
        ].
        recoveredBlock13Step = 44 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 45.
        ].
        recoveredBlock13Step = 45 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) getObject.
            recoveredBlock13PC := 46.
        ].
        recoveredBlock13Step = 46 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) name.
            recoveredBlock13PC := 48.
        ].
        recoveredBlock13Step = 48 ifTrue: [
            recoveredBlock13Stack2 := SGReservedNames.
            recoveredBlock13PC := 50.
        ].
        recoveredBlock13Step = 50 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) defaultExperimentName.
            recoveredBlock13PC := 52.
        ].
        recoveredBlock13Step = 52 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) = (recoveredBlock13Stack2).
            recoveredBlock13PC := 53.
        ].
        recoveredBlock13Step = 53 ifTrue: [
            (recoveredBlock13Stack1) ifTrue: [recoveredBlock13PC := 56] ifFalse: [recoveredBlock13PC := 66].
        ].
        recoveredBlock13Step = 56 ifTrue: [
            recoveredBlock13Stack1 := RBUserInfo.
            recoveredBlock13PC := 58.
        ].
        recoveredBlock13Step = 58 ifTrue: [
            recoveredBlock13Stack2 := 'Default Environment can not be removed'.
            recoveredBlock13PC := 60.
        ].
        recoveredBlock13Step = 60 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) message: (recoveredBlock13Stack2).
            recoveredBlock13PC := 62.
        ].
        recoveredBlock13Step = 62 ifTrue: [
            (recoveredBlock13Stack1) prompt.
            recoveredBlock13PC := 64.
        ].
        recoveredBlock13Step = 64 ifTrue: [
            recoveredBlock13Stack1 := nil.
            recoveredBlock13PC := 65.
        ].
        recoveredBlock13Step = 65 ifTrue: [
            ^recoveredBlock13Stack1
        ].
        recoveredBlock13Step = 66 ifTrue: [
            recoveredBlock13Stack1 := owner.
            recoveredBlock13PC := 68.
        ].
        recoveredBlock13Step = 68 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 69.
        ].
        recoveredBlock13Step = 69 ifTrue: [
            (recoveredBlock13Stack1) removeExperiment: (recoveredBlock13Stack2).
            recoveredBlock13PC := 71.
        ].
        recoveredBlock13Step = 71 ifTrue: [
            recoveredBlock13Stack1 := experiments.
            recoveredBlock13PC := 73.
        ].
        recoveredBlock13Step = 73 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 74.
        ].
        recoveredBlock13Step = 74 ifTrue: [
            recoveredBlock13Stack3 := [].
            recoveredBlock13PC := 76.
        ].
        recoveredBlock13Step = 76 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) remove: (recoveredBlock13Stack2) ifAbsent: (recoveredBlock13Stack3).
            recoveredBlock13PC := 78.
        ].
        recoveredBlock13Step = 78 ifTrue: [
            recoveredBlock13Result := recoveredBlock13Stack1.
            recoveredBlock13Done := true.
        ].
    ].
    recoveredBlock13Result
].
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetExperimentList.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := experiments.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack1) items: (recoveredStack2).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack0) refresh.
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

"ASDBase.ic method 0x20411a60; bytecode file offset 0xd0e34c"
!SGExperimentBrowser methodsFor: 'recovered'!
isRemoveExperimentPossible
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Muzaffar'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'EHI_2007401483'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetExperimentList.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItems.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := owner.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) simEnvironment.
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
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) getTopClass.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) isComponentEditable.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
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
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := [:recoveredBlock43Arg1 | 
    | recoveredBlock43Value0 recoveredBlock43Value1 recoveredBlock43Value2 recoveredBlock43Value3 recoveredBlock43Value4 recoveredBlock43Value5 |
    recoveredBlock43Value0 := recoveredBlock43Arg1.
    recoveredBlock43Value1 := (recoveredBlock43Value0) getObject.
    recoveredBlock43Value2 := recoveredLocal1.
    recoveredBlock43Value3 := (recoveredBlock43Value2) getExperiment.
    recoveredBlock43Value4 := (recoveredBlock43Value3) getObject.
    recoveredBlock43Value5 := (recoveredBlock43Value1) = (recoveredBlock43Value4).
    recoveredBlock43Value5
].
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) anySatisfy: (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := [:block280fb52cArg1 | 
    | block280fb52cValue0 block280fb52cValue1 block280fb52cValue2 block280fb52cValue3 block280fb52cValue4 block280fb52cValue5 |
    block280fb52cValue0 := block280fb52cArg1.
    block280fb52cValue1 := (block280fb52cValue0) getObject.
    block280fb52cValue2 := (block280fb52cValue1) name.
    block280fb52cValue3 := SGReservedNames.
    block280fb52cValue4 := (block280fb52cValue3) defaultExperimentName.
    block280fb52cValue5 := (block280fb52cValue2) = (block280fb52cValue4).
    block280fb52cValue5
].
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) anySatisfy: (recoveredStack1).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204313e0; bytecode file offset 0xd2dce4"
!SGExperimentBrowser methodsFor: 'recovered'!
menuRenameExperiment
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRenameExperimentPossible.
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
            recoveredStack0 := (recoveredStack0) widgetExperimentList.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItems.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal4.
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
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 103].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := owner.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) simEnvironment.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) getExperiment.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) getObject.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) getObject.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := 'Current Environment is loaded and can not be renamed'.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) getObject.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) name.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := SGReservedNames.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultExperimentName.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := 'Default Environment can not be renamed'.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetExperimentList.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := (recoveredStack0) getSelectedPos.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 92].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetExperimentList.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack0) editItemAt: (recoveredStack1).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetExperimentList.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack0) refresh.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2068ada8; bytecode file offset 0xf877e4"
!SGExperimentBrowser methodsFor: 'recovered'!
createWidgetHierarchy: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredLocal15 recoveredLocal16 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredLocal16 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal15 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal14 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := 'aDialogShell1'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := [:recoveredBlock25Arg1 | 
    | recoveredBlock25Value0 recoveredBlock25Value1 recoveredBlock25Value2 recoveredBlock25Value3 recoveredBlock25Value4 recoveredBlock25Value5 recoveredBlock25Value6 recoveredBlock25Value7 recoveredBlock25Value8 recoveredBlock25Value9 recoveredBlock25Value10 recoveredBlock25Value11 |
    recoveredBlock25Value0 := recoveredBlock25Arg1.
    recoveredBlock25Value1 := recoveredBlock25Value0.
    recoveredBlock25Value2 := MWMINPUTSYSTEMMODAL.
    (recoveredBlock25Value1) mwmInputMode: (recoveredBlock25Value2).
    recoveredBlock25Value3 := recoveredBlock25Value0.
    (recoveredBlock25Value3) title: ('Environment Browser').
    recoveredBlock25Value4 := recoveredBlock25Value0.
    recoveredBlock25Value5 := recoveredLocal14.
    recoveredBlock25Value6 := (349) * (recoveredBlock25Value5).
    recoveredBlock25Value7 := (recoveredBlock25Value6) rounded.
    (recoveredBlock25Value4) height: (recoveredBlock25Value7).
    recoveredBlock25Value8 := recoveredLocal15.
    recoveredBlock25Value9 := (444) * (recoveredBlock25Value8).
    recoveredBlock25Value10 := (recoveredBlock25Value9) rounded.
    recoveredBlock25Value11 := (recoveredBlock25Value0) width: (recoveredBlock25Value10).
    recoveredBlock25Value11
].
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDialogShell: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredLocal13 := recoveredStack1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := 'aDialogShell1'.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack3 := recoveredLocal13.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) createMainWindow: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredLocal12 := recoveredStack1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack3 := recoveredLocal12.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack3 := recoveredLocal11.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack2 := 'labelExperiments'.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack3 := [:recoveredBlock133Arg1 | 
    | recoveredBlock133Value0 recoveredBlock133Value1 recoveredBlock133Value2 recoveredBlock133Value3 recoveredBlock133Value4 recoveredBlock133Value5 recoveredBlock133Value6 recoveredBlock133Value7 recoveredBlock133Value8 recoveredBlock133Value9 recoveredBlock133Value10 recoveredBlock133Value11 |
    recoveredBlock133Value0 := recoveredBlock133Arg1.
    recoveredBlock133Value1 := recoveredBlock133Value0.
    recoveredBlock133Value2 := recoveredLocal15.
    recoveredBlock133Value3 := (5) * (recoveredBlock133Value2).
    recoveredBlock133Value4 := (recoveredBlock133Value3) rounded.
    (recoveredBlock133Value1) x: (recoveredBlock133Value4).
    recoveredBlock133Value5 := recoveredBlock133Value0.
    (recoveredBlock133Value5) labelString: ('Environments').
    recoveredBlock133Value6 := recoveredBlock133Value0.
    recoveredBlock133Value7 := recoveredLocal14.
    recoveredBlock133Value8 := (5) * (recoveredBlock133Value7).
    recoveredBlock133Value9 := (recoveredBlock133Value8) rounded.
    (recoveredBlock133Value6) y: (recoveredBlock133Value9).
    recoveredBlock133Value10 := recoveredBlock133Value0.
    recoveredBlock133Value11 := (self) defaultLabelBlue.
    (recoveredBlock133Value10) foregroundColor: (recoveredBlock133Value11).
    recoveredBlock133Value0
].
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack2 := 'labelExperiments'.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack2 := 'buttonOkOrRemove'.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack3 := [:recoveredBlock197Arg1 | 
    | recoveredBlock197Value0 recoveredBlock197Value1 recoveredBlock197Value2 recoveredBlock197Value3 recoveredBlock197Value4 recoveredBlock197Value5 recoveredBlock197Value6 recoveredBlock197Value7 recoveredBlock197Value8 recoveredBlock197Value9 recoveredBlock197Value10 recoveredBlock197Value11 recoveredBlock197Value12 recoveredBlock197Value13 |
    recoveredBlock197Value0 := recoveredBlock197Arg1.
    recoveredBlock197Value1 := recoveredBlock197Value0.
    recoveredBlock197Value2 := recoveredLocal15.
    recoveredBlock197Value3 := (294) * (recoveredBlock197Value2).
    recoveredBlock197Value4 := (recoveredBlock197Value3) rounded.
    (recoveredBlock197Value1) x: (recoveredBlock197Value4).
    recoveredBlock197Value5 := recoveredBlock197Value0.
    (recoveredBlock197Value5) labelString: ('Ok').
    recoveredBlock197Value6 := recoveredBlock197Value0.
    recoveredBlock197Value7 := recoveredLocal14.
    recoveredBlock197Value8 := (25) * (recoveredBlock197Value7).
    recoveredBlock197Value9 := (recoveredBlock197Value8) rounded.
    (recoveredBlock197Value6) y: (recoveredBlock197Value9).
    recoveredBlock197Value10 := recoveredLocal15.
    recoveredBlock197Value11 := (100) * (recoveredBlock197Value10).
    recoveredBlock197Value12 := (recoveredBlock197Value11) rounded.
    recoveredBlock197Value13 := (recoveredBlock197Value0) width: (recoveredBlock197Value12).
    recoveredBlock197Value13
].
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack2 := 'buttonOkOrRemove'.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack2 := 'buttonCancel'.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack3 := [:recoveredBlock269Arg1 | 
    | recoveredBlock269Value0 recoveredBlock269Value1 recoveredBlock269Value2 recoveredBlock269Value3 recoveredBlock269Value4 recoveredBlock269Value5 recoveredBlock269Value6 recoveredBlock269Value7 recoveredBlock269Value8 recoveredBlock269Value9 recoveredBlock269Value10 recoveredBlock269Value11 recoveredBlock269Value12 recoveredBlock269Value13 |
    recoveredBlock269Value0 := recoveredBlock269Arg1.
    recoveredBlock269Value1 := recoveredBlock269Value0.
    recoveredBlock269Value2 := recoveredLocal15.
    recoveredBlock269Value3 := (288) * (recoveredBlock269Value2).
    recoveredBlock269Value4 := (recoveredBlock269Value3) rounded.
    (recoveredBlock269Value1) x: (recoveredBlock269Value4).
    recoveredBlock269Value5 := recoveredBlock269Value0.
    (recoveredBlock269Value5) labelString: ('Cancel').
    recoveredBlock269Value6 := recoveredBlock269Value0.
    recoveredBlock269Value7 := recoveredLocal14.
    recoveredBlock269Value8 := (65) * (recoveredBlock269Value7).
    recoveredBlock269Value9 := (recoveredBlock269Value8) rounded.
    (recoveredBlock269Value6) y: (recoveredBlock269Value9).
    recoveredBlock269Value10 := recoveredLocal15.
    recoveredBlock269Value11 := (100) * (recoveredBlock269Value10).
    recoveredBlock269Value12 := (recoveredBlock269Value11) rounded.
    recoveredBlock269Value13 := (recoveredBlock269Value0) width: (recoveredBlock269Value12).
    recoveredBlock269Value13
].
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            recoveredStack2 := 'buttonCancel'.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            recoveredStack2 := 'buttonHelp'.
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredStack3 := [:recoveredBlock343Arg1 | 
    | recoveredBlock343Value0 recoveredBlock343Value1 recoveredBlock343Value2 recoveredBlock343Value3 recoveredBlock343Value4 recoveredBlock343Value5 recoveredBlock343Value6 recoveredBlock343Value7 recoveredBlock343Value8 recoveredBlock343Value9 recoveredBlock343Value10 recoveredBlock343Value11 recoveredBlock343Value12 recoveredBlock343Value13 |
    recoveredBlock343Value0 := recoveredBlock343Arg1.
    recoveredBlock343Value1 := recoveredBlock343Value0.
    recoveredBlock343Value2 := recoveredLocal15.
    recoveredBlock343Value3 := (325) * (recoveredBlock343Value2).
    recoveredBlock343Value4 := (recoveredBlock343Value3) rounded.
    (recoveredBlock343Value1) x: (recoveredBlock343Value4).
    recoveredBlock343Value5 := recoveredBlock343Value0.
    (recoveredBlock343Value5) labelString: ('Help').
    recoveredBlock343Value6 := recoveredBlock343Value0.
    recoveredBlock343Value7 := recoveredLocal14.
    recoveredBlock343Value8 := (130) * (recoveredBlock343Value7).
    recoveredBlock343Value9 := (recoveredBlock343Value8) rounded.
    (recoveredBlock343Value6) y: (recoveredBlock343Value9).
    recoveredBlock343Value10 := recoveredLocal15.
    recoveredBlock343Value11 := (100) * (recoveredBlock343Value10).
    recoveredBlock343Value12 := (recoveredBlock343Value11) rounded.
    recoveredBlock343Value13 := (recoveredBlock343Value0) width: (recoveredBlock343Value12).
    recoveredBlock343Value13
].
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 397.
        ].
        recoveredStep = 397 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 402.
        ].
        recoveredStep = 402 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            recoveredStack2 := 'buttonHelp'.
            recoveredPC := 407.
        ].
        recoveredStep = 407 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 412.
        ].
        recoveredStep = 412 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 415.
        ].
        recoveredStep = 415 ifTrue: [
            recoveredStack2 := 'aSeparator1'.
            recoveredPC := 417.
        ].
        recoveredStep = 417 ifTrue: [
            recoveredStack3 := [:recoveredBlock417Arg1 | 
    | recoveredBlock417Value0 recoveredBlock417Value1 recoveredBlock417Value2 recoveredBlock417Value3 recoveredBlock417Value4 recoveredBlock417Value5 recoveredBlock417Value6 recoveredBlock417Value7 recoveredBlock417Value8 recoveredBlock417Value9 recoveredBlock417Value10 recoveredBlock417Value11 recoveredBlock417Value12 recoveredBlock417Value13 recoveredBlock417Value14 |
    recoveredBlock417Value0 := recoveredBlock417Arg1.
    recoveredBlock417Value1 := recoveredBlock417Value0.
    recoveredBlock417Value2 := recoveredLocal15.
    recoveredBlock417Value3 := (301) * (recoveredBlock417Value2).
    recoveredBlock417Value4 := (recoveredBlock417Value3) rounded.
    (recoveredBlock417Value1) x: (recoveredBlock417Value4).
    recoveredBlock417Value5 := recoveredBlock417Value0.
    recoveredBlock417Value6 := XmVERTICAL.
    (recoveredBlock417Value5) orientation: (recoveredBlock417Value6).
    recoveredBlock417Value7 := recoveredBlock417Value0.
    recoveredBlock417Value8 := recoveredLocal14.
    recoveredBlock417Value9 := (315) * (recoveredBlock417Value8).
    recoveredBlock417Value10 := (recoveredBlock417Value9) rounded.
    (recoveredBlock417Value7) height: (recoveredBlock417Value10).
    recoveredBlock417Value11 := recoveredLocal15.
    recoveredBlock417Value12 := (10) * (recoveredBlock417Value11).
    recoveredBlock417Value13 := (recoveredBlock417Value12) rounded.
    recoveredBlock417Value14 := (recoveredBlock417Value0) width: (recoveredBlock417Value13).
    recoveredBlock417Value14
].
            recoveredPC := 467.
        ].
        recoveredStep = 467 ifTrue: [
            recoveredStack1 := (recoveredStack1) createSeparator: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 469.
        ].
        recoveredStep = 469 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 471.
        ].
        recoveredStep = 471 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 474.
        ].
        recoveredStep = 474 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 477.
        ].
        recoveredStep = 477 ifTrue: [
            recoveredStack2 := 'aSeparator1'.
            recoveredPC := 479.
        ].
        recoveredStep = 479 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 482.
        ].
        recoveredStep = 482 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 484.
        ].
        recoveredStep = 484 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 487.
        ].
        recoveredStep = 487 ifTrue: [
            recoveredStack2 := 'labelComment'.
            recoveredPC := 489.
        ].
        recoveredStep = 489 ifTrue: [
            recoveredStack3 := [:recoveredBlock489Arg1 | 
    | recoveredBlock489Value0 recoveredBlock489Value1 recoveredBlock489Value2 recoveredBlock489Value3 recoveredBlock489Value4 recoveredBlock489Value5 recoveredBlock489Value6 recoveredBlock489Value7 recoveredBlock489Value8 recoveredBlock489Value9 recoveredBlock489Value10 recoveredBlock489Value11 |
    recoveredBlock489Value0 := recoveredBlock489Arg1.
    recoveredBlock489Value1 := recoveredBlock489Value0.
    recoveredBlock489Value2 := recoveredLocal15.
    recoveredBlock489Value3 := (5) * (recoveredBlock489Value2).
    recoveredBlock489Value4 := (recoveredBlock489Value3) rounded.
    (recoveredBlock489Value1) x: (recoveredBlock489Value4).
    recoveredBlock489Value5 := recoveredBlock489Value0.
    (recoveredBlock489Value5) labelString: ('Comment').
    recoveredBlock489Value6 := recoveredBlock489Value0.
    recoveredBlock489Value7 := recoveredLocal14.
    recoveredBlock489Value8 := (201) * (recoveredBlock489Value7).
    recoveredBlock489Value9 := (recoveredBlock489Value8) rounded.
    (recoveredBlock489Value6) y: (recoveredBlock489Value9).
    recoveredBlock489Value10 := recoveredBlock489Value0.
    recoveredBlock489Value11 := (self) defaultLabelBlue.
    (recoveredBlock489Value10) foregroundColor: (recoveredBlock489Value11).
    recoveredBlock489Value0
].
            recoveredPC := 533.
        ].
        recoveredStep = 533 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 535.
        ].
        recoveredStep = 535 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 537.
        ].
        recoveredStep = 537 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 540.
        ].
        recoveredStep = 540 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 543.
        ].
        recoveredStep = 543 ifTrue: [
            recoveredStack2 := 'labelComment'.
            recoveredPC := 545.
        ].
        recoveredStep = 545 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 548.
        ].
        recoveredStep = 548 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 550.
        ].
        recoveredStep = 550 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 553.
        ].
        recoveredStep = 553 ifTrue: [
            recoveredStack2 := 'descriptionPane'.
            recoveredPC := 555.
        ].
        recoveredStep = 555 ifTrue: [
            recoveredStack3 := [:recoveredBlock555Arg1 | 
    | recoveredBlock555Value0 recoveredBlock555Value1 recoveredBlock555Value2 recoveredBlock555Value3 recoveredBlock555Value4 recoveredBlock555Value5 recoveredBlock555Value6 recoveredBlock555Value7 recoveredBlock555Value8 recoveredBlock555Value9 recoveredBlock555Value10 recoveredBlock555Value11 recoveredBlock555Value12 recoveredBlock555Value13 recoveredBlock555Value14 recoveredBlock555Value15 recoveredBlock555Value16 |
    recoveredBlock555Value0 := recoveredBlock555Arg1.
    recoveredBlock555Value1 := recoveredBlock555Value0.
    (recoveredBlock555Value1) editable: (false).
    recoveredBlock555Value2 := recoveredBlock555Value0.
    recoveredBlock555Value3 := recoveredLocal14.
    recoveredBlock555Value4 := (68) * (recoveredBlock555Value3).
    recoveredBlock555Value5 := (recoveredBlock555Value4) rounded.
    (recoveredBlock555Value2) y: (recoveredBlock555Value5).
    recoveredBlock555Value6 := recoveredBlock555Value0.
    (recoveredBlock555Value6) tabSpacing: (4).
    recoveredBlock555Value7 := recoveredBlock555Value0.
    recoveredBlock555Value8 := recoveredLocal14.
    recoveredBlock555Value9 := (62) * (recoveredBlock555Value8).
    recoveredBlock555Value10 := (recoveredBlock555Value9) rounded.
    (recoveredBlock555Value7) height: (recoveredBlock555Value10).
    recoveredBlock555Value11 := recoveredBlock555Value0.
    recoveredBlock555Value12 := recoveredLocal15.
    recoveredBlock555Value13 := (267) * (recoveredBlock555Value12).
    recoveredBlock555Value14 := (recoveredBlock555Value13) rounded.
    (recoveredBlock555Value11) width: (recoveredBlock555Value14).
    recoveredBlock555Value15 := XmMULTILINEEDIT.
    recoveredBlock555Value16 := (recoveredBlock555Value0) editMode: (recoveredBlock555Value15).
    recoveredBlock555Value16
].
            recoveredPC := 613.
        ].
        recoveredStep = 613 ifTrue: [
            recoveredStack1 := (recoveredStack1) createScrolledText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 615.
        ].
        recoveredStep = 615 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 617.
        ].
        recoveredStep = 617 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 620.
        ].
        recoveredStep = 620 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 623.
        ].
        recoveredStep = 623 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 625.
        ].
        recoveredStep = 625 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 628.
        ].
        recoveredStep = 628 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 631.
        ].
        recoveredStep = 631 ifTrue: [
            recoveredStack2 := 'aScrolledText'.
            recoveredPC := 633.
        ].
        recoveredStep = 633 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 636.
        ].
        recoveredStep = 636 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 638.
        ].
        recoveredStep = 638 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 641.
        ].
        recoveredStep = 641 ifTrue: [
            recoveredStack2 := 'descriptionPane'.
            recoveredPC := 643.
        ].
        recoveredStep = 643 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 646.
        ].
        recoveredStep = 646 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 648.
        ].
        recoveredStep = 648 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 651.
        ].
        recoveredStep = 651 ifTrue: [
            recoveredStack2 := 'experimentList'.
            recoveredPC := 653.
        ].
        recoveredStep = 653 ifTrue: [
            recoveredStack3 := [:block2812abc4Arg1 | 
    | block2812abc4Value0 block2812abc4Value1 block2812abc4Value2 |
    block2812abc4Value0 := block2812abc4Arg1.
    block2812abc4Value1 := XmBROWSESELECT.
    block2812abc4Value2 := (block2812abc4Value0) selectionPolicy: (block2812abc4Value1).
    block2812abc4Value2
].
            recoveredPC := 656.
        ].
        recoveredStep = 656 ifTrue: [
            recoveredPC := 670.
        ].
        recoveredStep = 670 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEtasScrolledIconTree: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 675.
        ].
        recoveredStep = 675 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 677.
        ].
        recoveredStep = 677 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 680.
        ].
        recoveredStep = 680 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 683.
        ].
        recoveredStep = 683 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 685.
        ].
        recoveredStep = 685 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 688.
        ].
        recoveredStep = 688 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 691.
        ].
        recoveredStep = 691 ifTrue: [
            recoveredStack2 := 'aScrolledIconTree1'.
            recoveredPC := 694.
        ].
        recoveredStep = 694 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 697.
        ].
        recoveredStep = 697 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 699.
        ].
        recoveredStep = 699 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 702.
        ].
        recoveredStep = 702 ifTrue: [
            recoveredStack2 := 'experimentList'.
            recoveredPC := 706.
        ].
        recoveredStep = 706 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 709.
        ].
        recoveredStep = 709 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 711.
        ].
        recoveredStep = 711 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 714.
        ].
        recoveredStep = 714 ifTrue: [
            recoveredStack2 := [:recoveredBlock714Arg1 | 
    | recoveredBlock714Value0 recoveredBlock714Value1 recoveredBlock714Value2 |
    recoveredBlock714Value0 := recoveredBlock714Arg1.
    recoveredBlock714Value1 := recoveredLocal11.
    recoveredBlock714Value2 := (recoveredBlock714Value0) workWindow: (recoveredBlock714Value1).
    recoveredBlock714Value2
].
            recoveredPC := 730.
        ].
        recoveredStep = 730 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 735.
        ].
        recoveredStep = 735 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 738.
        ].
        recoveredStep = 738 ifTrue: [
            recoveredStack2 := [:recoveredBlock738Arg1 | 
    | recoveredBlock738Value0 recoveredBlock738Value1 recoveredBlock738Value2 recoveredBlock738Value3 recoveredBlock738Value4 |
    recoveredBlock738Value0 := recoveredBlock738Arg1.
    recoveredBlock738Value1 := recoveredBlock738Value0.
    recoveredBlock738Value2 := recoveredLocal8.
    (recoveredBlock738Value1) cancelButton: (recoveredBlock738Value2).
    recoveredBlock738Value3 := recoveredLocal9.
    recoveredBlock738Value4 := (recoveredBlock738Value0) defaultButton: (recoveredBlock738Value3).
    recoveredBlock738Value4
].
            recoveredPC := 762.
        ].
        recoveredStep = 762 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 767.
        ].
        recoveredStep = 767 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 770.
        ].
        recoveredStep = 770 ifTrue: [
            recoveredStack2 := [:block2812abe8Arg1 | 
    | block2812abe8Value0 block2812abe8Value1 block2812abe8Value2 block2812abe8Value3 block2812abe8Value4 block2812abe8Value5 block2812abe8Value6 |
    block2812abe8Value0 := block2812abe8Arg1.
    block2812abe8Value1 := block2812abe8Value0.
    block2812abe8Value2 := XmATTACHFORM.
    (block2812abe8Value1) topAttachment: (block2812abe8Value2).
    block2812abe8Value3 := block2812abe8Value0.
    (block2812abe8Value3) topOffset: (5).
    block2812abe8Value4 := block2812abe8Value0.
    block2812abe8Value5 := XmATTACHFORM.
    (block2812abe8Value4) leftAttachment: (block2812abe8Value5).
    block2812abe8Value6 := (block2812abe8Value0) leftOffset: (5).
    block2812abe8Value6
].
            recoveredPC := 774.
        ].
        recoveredStep = 774 ifTrue: [
            recoveredPC := 810.
        ].
        recoveredStep = 810 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 815.
        ].
        recoveredStep = 815 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 818.
        ].
        recoveredStep = 818 ifTrue: [
            recoveredStack2 := [:recoveredBlock818Arg1 | 
    | recoveredBlock818Value0 recoveredBlock818Value1 recoveredBlock818Value2 recoveredBlock818Value3 recoveredBlock818Value4 recoveredBlock818Value5 recoveredBlock818Value6 recoveredBlock818Value7 recoveredBlock818Value8 recoveredBlock818Value9 recoveredBlock818Value10 recoveredBlock818Value11 |
    recoveredBlock818Value0 := recoveredBlock818Arg1.
    recoveredBlock818Value1 := recoveredBlock818Value0.
    recoveredBlock818Value2 := XmATTACHFORM.
    (recoveredBlock818Value1) topAttachment: (recoveredBlock818Value2).
    recoveredBlock818Value3 := recoveredBlock818Value0.
    (recoveredBlock818Value3) topOffset: (25).
    recoveredBlock818Value4 := recoveredBlock818Value0.
    recoveredBlock818Value5 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock818Value4) leftAttachment: (recoveredBlock818Value5).
    recoveredBlock818Value6 := recoveredBlock818Value0.
    recoveredBlock818Value7 := recoveredLocal8.
    (recoveredBlock818Value6) leftWidget: (recoveredBlock818Value7).
    recoveredBlock818Value8 := recoveredBlock818Value0.
    recoveredBlock818Value9 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock818Value8) rightAttachment: (recoveredBlock818Value9).
    recoveredBlock818Value10 := recoveredLocal8.
    recoveredBlock818Value11 := (recoveredBlock818Value0) rightWidget: (recoveredBlock818Value10).
    recoveredBlock818Value11
].
            recoveredPC := 874.
        ].
        recoveredStep = 874 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 879.
        ].
        recoveredStep = 879 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 882.
        ].
        recoveredStep = 882 ifTrue: [
            recoveredStack2 := [:recoveredBlock882Arg1 | 
    | recoveredBlock882Value0 recoveredBlock882Value1 recoveredBlock882Value2 recoveredBlock882Value3 recoveredBlock882Value4 recoveredBlock882Value5 recoveredBlock882Value6 recoveredBlock882Value7 recoveredBlock882Value8 recoveredBlock882Value9 recoveredBlock882Value10 recoveredBlock882Value11 |
    recoveredBlock882Value0 := recoveredBlock882Arg1.
    recoveredBlock882Value1 := recoveredBlock882Value0.
    recoveredBlock882Value2 := XmATTACHFORM.
    (recoveredBlock882Value1) topAttachment: (recoveredBlock882Value2).
    recoveredBlock882Value3 := recoveredBlock882Value0.
    (recoveredBlock882Value3) topOffset: (65).
    recoveredBlock882Value4 := recoveredBlock882Value0.
    recoveredBlock882Value5 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock882Value4) leftAttachment: (recoveredBlock882Value5).
    recoveredBlock882Value6 := recoveredBlock882Value0.
    recoveredBlock882Value7 := recoveredLocal7.
    (recoveredBlock882Value6) leftWidget: (recoveredBlock882Value7).
    recoveredBlock882Value8 := recoveredBlock882Value0.
    recoveredBlock882Value9 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock882Value8) rightAttachment: (recoveredBlock882Value9).
    recoveredBlock882Value10 := recoveredLocal7.
    recoveredBlock882Value11 := (recoveredBlock882Value0) rightWidget: (recoveredBlock882Value10).
    recoveredBlock882Value11
].
            recoveredPC := 940.
        ].
        recoveredStep = 940 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 945.
        ].
        recoveredStep = 945 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 948.
        ].
        recoveredStep = 948 ifTrue: [
            recoveredStack2 := [:recoveredBlock948Arg1 | 
    | recoveredBlock948Value0 recoveredBlock948Value1 recoveredBlock948Value2 recoveredBlock948Value3 recoveredBlock948Value4 recoveredBlock948Value5 recoveredBlock948Value6 recoveredBlock948Value7 recoveredBlock948Value8 recoveredBlock948Value9 recoveredBlock948Value10 recoveredBlock948Value11 |
    recoveredBlock948Value0 := recoveredBlock948Arg1.
    recoveredBlock948Value1 := recoveredBlock948Value0.
    recoveredBlock948Value2 := XmATTACHFORM.
    (recoveredBlock948Value1) topAttachment: (recoveredBlock948Value2).
    recoveredBlock948Value3 := recoveredBlock948Value0.
    (recoveredBlock948Value3) topOffset: (105).
    recoveredBlock948Value4 := recoveredBlock948Value0.
    recoveredBlock948Value5 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock948Value4) leftAttachment: (recoveredBlock948Value5).
    recoveredBlock948Value6 := recoveredBlock948Value0.
    recoveredBlock948Value7 := recoveredLocal6.
    (recoveredBlock948Value6) leftWidget: (recoveredBlock948Value7).
    recoveredBlock948Value8 := recoveredBlock948Value0.
    (recoveredBlock948Value8) leftOffset: (15).
    recoveredBlock948Value9 := recoveredBlock948Value0.
    recoveredBlock948Value10 := XmATTACHFORM.
    (recoveredBlock948Value9) rightAttachment: (recoveredBlock948Value10).
    recoveredBlock948Value11 := (recoveredBlock948Value0) rightOffset: (8).
    recoveredBlock948Value11
].
            recoveredPC := 1010.
        ].
        recoveredStep = 1010 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1015.
        ].
        recoveredStep = 1015 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 1018.
        ].
        recoveredStep = 1018 ifTrue: [
            recoveredStack2 := [:block2812ac0cArg1 | 
    | block2812ac0cValue0 block2812ac0cValue1 block2812ac0cValue2 block2812ac0cValue3 block2812ac0cValue4 block2812ac0cValue5 block2812ac0cValue6 block2812ac0cValue7 |
    block2812ac0cValue0 := block2812ac0cArg1.
    block2812ac0cValue1 := block2812ac0cValue0.
    block2812ac0cValue2 := XmATTACHFORM.
    (block2812ac0cValue1) bottomAttachment: (block2812ac0cValue2).
    block2812ac0cValue3 := block2812ac0cValue0.
    block2812ac0cValue4 := XmATTACHFORM.
    (block2812ac0cValue3) topAttachment: (block2812ac0cValue4).
    block2812ac0cValue5 := block2812ac0cValue0.
    block2812ac0cValue6 := XmATTACHFORM.
    (block2812ac0cValue5) rightAttachment: (block2812ac0cValue6).
    block2812ac0cValue7 := (block2812ac0cValue0) rightOffset: (100).
    block2812ac0cValue7
].
            recoveredPC := 1022.
        ].
        recoveredStep = 1022 ifTrue: [
            recoveredPC := 1062.
        ].
        recoveredStep = 1062 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1067.
        ].
        recoveredStep = 1067 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 1070.
        ].
        recoveredStep = 1070 ifTrue: [
            recoveredStack2 := [:recoveredBlock1070Arg1 | 
    | recoveredBlock1070Value0 recoveredBlock1070Value1 recoveredBlock1070Value2 recoveredBlock1070Value3 recoveredBlock1070Value4 recoveredBlock1070Value5 recoveredBlock1070Value6 recoveredBlock1070Value7 recoveredBlock1070Value8 |
    recoveredBlock1070Value0 := recoveredBlock1070Arg1.
    recoveredBlock1070Value1 := recoveredBlock1070Value0.
    recoveredBlock1070Value2 := XmATTACHWIDGET.
    (recoveredBlock1070Value1) topAttachment: (recoveredBlock1070Value2).
    recoveredBlock1070Value3 := recoveredBlock1070Value0.
    recoveredBlock1070Value4 := recoveredLocal2.
    (recoveredBlock1070Value3) topWidget: (recoveredBlock1070Value4).
    recoveredBlock1070Value5 := recoveredBlock1070Value0.
    (recoveredBlock1070Value5) topOffset: (5).
    recoveredBlock1070Value6 := recoveredBlock1070Value0.
    recoveredBlock1070Value7 := XmATTACHFORM.
    (recoveredBlock1070Value6) leftAttachment: (recoveredBlock1070Value7).
    recoveredBlock1070Value8 := (recoveredBlock1070Value0) leftOffset: (5).
    recoveredBlock1070Value8
].
            recoveredPC := 1116.
        ].
        recoveredStep = 1116 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1121.
        ].
        recoveredStep = 1121 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 1124.
        ].
        recoveredStep = 1124 ifTrue: [
            recoveredStack2 := [:recoveredBlock1124Arg1 | 
    | recoveredBlock1124Value0 recoveredBlock1124Value1 recoveredBlock1124Value2 recoveredBlock1124Value3 recoveredBlock1124Value4 recoveredBlock1124Value5 recoveredBlock1124Value6 recoveredBlock1124Value7 recoveredBlock1124Value8 recoveredBlock1124Value9 recoveredBlock1124Value10 recoveredBlock1124Value11 recoveredBlock1124Value12 recoveredBlock1124Value13 recoveredBlock1124Value14 recoveredBlock1124Value15 recoveredBlock1124Value16 recoveredBlock1124Value17 recoveredBlock1124Value18 recoveredBlock1124Value19 recoveredBlock1124Value20 recoveredBlock1124Value21 recoveredBlock1124Value22 recoveredBlock1124Value23 recoveredBlock1124Value24 recoveredBlock1124Value25 recoveredBlock1124Value26 recoveredBlock1124Value27 recoveredBlock1124Value28 recoveredBlock1124Value29 recoveredBlock1124Value30 |
    recoveredBlock1124Value0 := recoveredBlock1124Arg1.
    recoveredBlock1124Value1 := recoveredBlock1124Value0.
    recoveredBlock1124Value2 := XmATTACHFORM.
    (recoveredBlock1124Value1) bottomAttachment: (recoveredBlock1124Value2).
    recoveredBlock1124Value3 := recoveredBlock1124Value0.
    (recoveredBlock1124Value3) bottomOffset: (5).
    recoveredBlock1124Value4 := recoveredBlock1124Value0.
    recoveredBlock1124Value5 := XmATTACHWIDGET.
    (recoveredBlock1124Value4) topAttachment: (recoveredBlock1124Value5).
    recoveredBlock1124Value6 := recoveredBlock1124Value0.
    recoveredBlock1124Value7 := recoveredLocal5.
    (recoveredBlock1124Value6) topWidget: (recoveredBlock1124Value7).
    recoveredBlock1124Value8 := recoveredBlock1124Value0.
    recoveredBlock1124Value9 := XmATTACHFORM.
    (recoveredBlock1124Value8) leftAttachment: (recoveredBlock1124Value9).
    recoveredBlock1124Value10 := recoveredBlock1124Value0.
    (recoveredBlock1124Value10) leftOffset: (5).
    recoveredBlock1124Value11 := recoveredBlock1124Value0.
    recoveredBlock1124Value12 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock1124Value11) rightAttachment: (recoveredBlock1124Value12).
    recoveredBlock1124Value13 := recoveredBlock1124Value0.
    recoveredBlock1124Value14 := recoveredLocal2.
    (recoveredBlock1124Value13) rightWidget: (recoveredBlock1124Value14).
    recoveredBlock1124Value15 := recoveredBlock1124Value0.
    recoveredBlock1124Value16 := recoveredLocal15.
    recoveredBlock1124Value17 := (5) * (recoveredBlock1124Value16).
    recoveredBlock1124Value18 := (recoveredBlock1124Value17) rounded.
    (recoveredBlock1124Value15) x: (recoveredBlock1124Value18).
    recoveredBlock1124Value19 := recoveredBlock1124Value0.
    recoveredBlock1124Value20 := recoveredLocal14.
    recoveredBlock1124Value21 := (245) * (recoveredBlock1124Value20).
    recoveredBlock1124Value22 := (recoveredBlock1124Value21) rounded.
    (recoveredBlock1124Value19) y: (recoveredBlock1124Value22).
    recoveredBlock1124Value23 := recoveredBlock1124Value0.
    recoveredBlock1124Value24 := recoveredLocal14.
    recoveredBlock1124Value25 := (130) * (recoveredBlock1124Value24).
    recoveredBlock1124Value26 := (recoveredBlock1124Value25) rounded.
    (recoveredBlock1124Value23) height: (recoveredBlock1124Value26).
    recoveredBlock1124Value27 := recoveredLocal15.
    recoveredBlock1124Value28 := (290) * (recoveredBlock1124Value27).
    recoveredBlock1124Value29 := (recoveredBlock1124Value28) rounded.
    recoveredBlock1124Value30 := (recoveredBlock1124Value0) width: (recoveredBlock1124Value29).
    recoveredBlock1124Value30
].
            recoveredPC := 1241.
        ].
        recoveredStep = 1241 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1245.
        ].
        recoveredStep = 1245 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 1248.
        ].
        recoveredStep = 1248 ifTrue: [
            recoveredStack2 := [:recoveredBlock1248Arg1 | 
    | recoveredBlock1248Value0 recoveredBlock1248Value1 recoveredBlock1248Value2 recoveredBlock1248Value3 recoveredBlock1248Value4 recoveredBlock1248Value5 recoveredBlock1248Value6 recoveredBlock1248Value7 recoveredBlock1248Value8 recoveredBlock1248Value9 recoveredBlock1248Value10 recoveredBlock1248Value11 recoveredBlock1248Value12 recoveredBlock1248Value13 recoveredBlock1248Value14 recoveredBlock1248Value15 recoveredBlock1248Value16 recoveredBlock1248Value17 recoveredBlock1248Value18 recoveredBlock1248Value19 recoveredBlock1248Value20 recoveredBlock1248Value21 recoveredBlock1248Value22 recoveredBlock1248Value23 recoveredBlock1248Value24 recoveredBlock1248Value25 recoveredBlock1248Value26 recoveredBlock1248Value27 recoveredBlock1248Value28 recoveredBlock1248Value29 recoveredBlock1248Value30 |
    recoveredBlock1248Value0 := recoveredBlock1248Arg1.
    recoveredBlock1248Value1 := recoveredBlock1248Value0.
    recoveredBlock1248Value2 := XmATTACHPOSITION.
    (recoveredBlock1248Value1) bottomAttachment: (recoveredBlock1248Value2).
    recoveredBlock1248Value3 := recoveredBlock1248Value0.
    (recoveredBlock1248Value3) bottomPosition: (55).
    recoveredBlock1248Value4 := recoveredBlock1248Value0.
    recoveredBlock1248Value5 := XmATTACHFORM.
    (recoveredBlock1248Value4) topAttachment: (recoveredBlock1248Value5).
    recoveredBlock1248Value6 := recoveredBlock1248Value0.
    (recoveredBlock1248Value6) topOffset: (25).
    recoveredBlock1248Value7 := recoveredBlock1248Value0.
    recoveredBlock1248Value8 := XmATTACHFORM.
    (recoveredBlock1248Value7) leftAttachment: (recoveredBlock1248Value8).
    recoveredBlock1248Value9 := recoveredBlock1248Value0.
    (recoveredBlock1248Value9) leftOffset: (5).
    recoveredBlock1248Value10 := recoveredBlock1248Value0.
    recoveredBlock1248Value11 := XmATTACHWIDGET.
    (recoveredBlock1248Value10) rightAttachment: (recoveredBlock1248Value11).
    recoveredBlock1248Value12 := recoveredBlock1248Value0.
    recoveredBlock1248Value13 := recoveredLocal6.
    (recoveredBlock1248Value12) rightWidget: (recoveredBlock1248Value13).
    recoveredBlock1248Value14 := recoveredBlock1248Value0.
    (recoveredBlock1248Value14) rightOffset: (5).
    recoveredBlock1248Value15 := recoveredBlock1248Value0.
    recoveredBlock1248Value16 := recoveredLocal15.
    recoveredBlock1248Value17 := (5) * (recoveredBlock1248Value16).
    recoveredBlock1248Value18 := (recoveredBlock1248Value17) rounded.
    (recoveredBlock1248Value15) x: (recoveredBlock1248Value18).
    recoveredBlock1248Value19 := recoveredBlock1248Value0.
    recoveredBlock1248Value20 := recoveredLocal14.
    recoveredBlock1248Value21 := (25) * (recoveredBlock1248Value20).
    recoveredBlock1248Value22 := (recoveredBlock1248Value21) rounded.
    (recoveredBlock1248Value19) y: (recoveredBlock1248Value22).
    recoveredBlock1248Value23 := recoveredBlock1248Value0.
    recoveredBlock1248Value24 := recoveredLocal14.
    recoveredBlock1248Value25 := (161) * (recoveredBlock1248Value24).
    recoveredBlock1248Value26 := (recoveredBlock1248Value25) rounded.
    (recoveredBlock1248Value23) height: (recoveredBlock1248Value26).
    recoveredBlock1248Value27 := recoveredLocal15.
    recoveredBlock1248Value28 := (303) * (recoveredBlock1248Value27).
    recoveredBlock1248Value29 := (recoveredBlock1248Value28) rounded.
    recoveredBlock1248Value30 := (recoveredBlock1248Value0) width: (recoveredBlock1248Value29).
    recoveredBlock1248Value30
].
            recoveredPC := 1367.
        ].
        recoveredStep = 1367 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1371.
        ].
        recoveredStep = 1371 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 1374.
        ].
        recoveredStep = 1374 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 1378.
        ].
        recoveredStep = 1378 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1379.
        ].
        recoveredStep = 1379 ifTrue: [
            recoveredStack4 := 'buttonOkOrRemoveActivate:clientData:callData:'.
            recoveredPC := 1382.
        ].
        recoveredStep = 1382 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1383.
        ].
        recoveredStep = 1383 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1387.
        ].
        recoveredStep = 1387 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 1390.
        ].
        recoveredStep = 1390 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 1394.
        ].
        recoveredStep = 1394 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1395.
        ].
        recoveredStep = 1395 ifTrue: [
            recoveredStack4 := 'buttonCancelActivate:clientData:callData:'.
            recoveredPC := 1398.
        ].
        recoveredStep = 1398 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1399.
        ].
        recoveredStep = 1399 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1403.
        ].
        recoveredStep = 1403 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1406.
        ].
        recoveredStep = 1406 ifTrue: [
            recoveredStack2 := XmNvisualInfoCallback.
            recoveredPC := 1410.
        ].
        recoveredStep = 1410 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1411.
        ].
        recoveredStep = 1411 ifTrue: [
            recoveredStack4 := 'experimentListvisualInfoCallback:clientData:callData:'.
            recoveredPC := 1414.
        ].
        recoveredStep = 1414 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1415.
        ].
        recoveredStep = 1415 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1419.
        ].
        recoveredStep = 1419 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1422.
        ].
        recoveredStep = 1422 ifTrue: [
            recoveredStack2 := XmNbrowseSelectionCallback.
            recoveredPC := 1426.
        ].
        recoveredStep = 1426 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1427.
        ].
        recoveredStep = 1427 ifTrue: [
            recoveredStack4 := 'experimentListbrowseSelectionCallback:clientData:callData:'.
            recoveredPC := 1430.
        ].
        recoveredStep = 1430 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1431.
        ].
        recoveredStep = 1431 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1435.
        ].
        recoveredStep = 1435 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1438.
        ].
        recoveredStep = 1438 ifTrue: [
            recoveredStack2 := XmNdefaultActionCallback.
            recoveredPC := 1442.
        ].
        recoveredStep = 1442 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1443.
        ].
        recoveredStep = 1443 ifTrue: [
            recoveredStack4 := 'experimentListdefaultActionCallback:clientData:callData:'.
            recoveredPC := 1446.
        ].
        recoveredStep = 1446 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1447.
        ].
        recoveredStep = 1447 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1451.
        ].
        recoveredStep = 1451 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1454.
        ].
        recoveredStep = 1454 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1459.
        ].
        recoveredStep = 1459 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 1462.
        ].
        recoveredStep = 1462 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1467.
        ].
        recoveredStep = 1467 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 1470.
        ].
        recoveredStep = 1470 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1475.
        ].
        recoveredStep = 1475 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 1478.
        ].
        recoveredStep = 1478 ifTrue: [
            recoveredStack2 := recoveredLocal16.
            recoveredPC := 1481.
        ].
        recoveredStep = 1481 ifTrue: [
            recoveredStack3 := recoveredLocal12.
            recoveredPC := 1484.
        ].
        recoveredStep = 1484 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 1489.
        ].
        recoveredStep = 1489 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

