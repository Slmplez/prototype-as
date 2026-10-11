"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20005c20; bytecode file offset 0x902744"
!RBOptionsNotebookDialog methodsFor: 'recovered'!
updateHelpText: recoveredArg1 clientData: recoveredArg2
    ^self
! !

"ASDBase.ic method 0x2000d1cc; bytecode file offset 0x909ab8"
!RBOptionsNotebookDialog methodsFor: 'recovered'!
imageForGroupString: recoveredArg1
    ^nil
! !

"ASDBase.ic method 0x2008a204; bytecode file offset 0x986c00"
!RBOptionsNotebookDialog methodsFor: 'recovered'!
notebook
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := widgetDictionary.
    recoveredValue1 := (recoveredValue0) at: ('notebook').
    ^recoveredValue1
! !

"ASDBase.ic method 0x2008a224; bytecode file offset 0x986c00"
!RBOptionsNotebookDialog methodsFor: 'recovered'!
tabStrip
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := widgetDictionary.
    recoveredValue1 := (recoveredValue0) at: ('tabStrip').
    ^recoveredValue1
! !

"ASDBase.ic method 0x200d7b08; bytecode file offset 0x9d4494"
!RBOptionsNotebookDialog methodsFor: 'recovered'!
helpText: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) printString.
    recoveredValue2 := ('helpText') , (recoveredValue1).
    recoveredValue3 := (recoveredValue2) asAtom.
    recoveredValue4 := (self) widgetAt: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200d7bb0; bytecode file offset 0x9d4494"
!RBOptionsNotebookDialog methodsFor: 'recovered'!
optionsTableList: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) printString.
    recoveredValue2 := ('optionsTableList') , (recoveredValue1).
    recoveredValue3 := (recoveredValue2) asAtom.
    recoveredValue4 := (self) widgetAt: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200de520; bytecode file offset 0x9dae4c"
!RBOptionsNotebookDialog methodsFor: 'recovered'!
cancelButtonActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    super cancelButtonActivate: (recoveredValue0) clientData: (recoveredValue1) callData: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200de540; bytecode file offset 0x9dae4c"
!RBOptionsNotebookDialog methodsFor: 'recovered'!
defButtonActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    super defButtonActivate: (recoveredValue0) clientData: (recoveredValue1) callData: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200de590; bytecode file offset 0x9dae4c"
!RBOptionsNotebookDialog methodsFor: 'recovered'!
okButtonActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    super okButtonActivate: (recoveredValue0) clientData: (recoveredValue1) callData: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2011be0c; bytecode file offset 0xa186e0"
!RBOptionsNotebookDialog methodsFor: 'recovered'!
keyRETURN
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionsTableList.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEditingInProgress.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
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
            (recoveredStack0) ok.
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

"ASDBase.ic method 0x2011be20; bytecode file offset 0xa186e0"
!RBOptionsNotebookDialog methodsFor: 'recovered'!
keyESC
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionsTableList.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEditingInProgress.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
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
            (recoveredStack0) cancel.
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

"ASDBase.ic method 0x201379d8; bytecode file offset 0xa342a4"
!RBOptionsNotebookDialog methodsFor: 'recovered'!
optionsTableList
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) tabStrip.
    recoveredValue1 := (recoveredValue0) items.
    recoveredValue2 := (self) tabStrip.
    recoveredValue3 := (recoveredValue2) selectedItems.
    recoveredValue4 := (recoveredValue3) first.
    recoveredValue5 := (recoveredValue1) indexOf: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (self) optionsTableList: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x2018e488; bytecode file offset 0xa8ad4c"
!RBOptionsNotebookDialog methodsFor: 'recovered'!
updateOptionList
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := options.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := newKeys.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) initializePages: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            updateRequired := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := SortedCollection.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            newKeys := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201b57ec; bytecode file offset 0xab20b0"
!RBOptionsNotebookDialog methodsFor: 'recovered'!
selectPage: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) tabStrip.
    recoveredValue1 := (self) tabStrip.
    recoveredValue2 := (recoveredValue1) items.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := [
    ^self
].
    recoveredValue5 := (recoveredValue2) at: (recoveredValue3) ifAbsent: (recoveredValue4).
    (recoveredValue0) selectItem: (recoveredValue5) notify: (true).
    ^self
! !

"ASDBase.ic method 0x201eef98; bytecode file offset 0xaeb85c"
!RBOptionsNotebookDialog methodsFor: 'recovered'!
tabModifyVerifyCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) selectedItems.
    recoveredValue2 := [
    ^self
].
    recoveredValue3 := (recoveredValue1) at: (1) ifAbsent: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue4) userData.
    (recoveredValue5) unmanageChild.
    ^self
! !

"ASDBase.ic method 0x202008c4; bytecode file offset 0xafd188"
!RBOptionsNotebookDialog methodsFor: 'recovered'!
isClosingPossible
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) optionsTableList.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) isEditingInProgress.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            (recoveredBlock5Stack1) ifTrue: [recoveredBlock5PC := 18] ifFalse: [recoveredBlock5PC := 24].
        ].
        recoveredBlock5Step = 18 ifTrue: [
            recoveredBlock5Stack1 := self.
            recoveredBlock5PC := 19.
        ].
        recoveredBlock5Step = 19 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) optionsTableList.
            recoveredBlock5PC := 20.
        ].
        recoveredBlock5Step = 20 ifTrue: [
            (recoveredBlock5Stack1) cancelEdit.
            recoveredBlock5PC := 22.
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5Stack1 := false.
            recoveredBlock5PC := 23.
        ].
        recoveredBlock5Step = 23 ifTrue: [
            ^recoveredBlock5Stack1
        ].
        recoveredBlock5Step = 24 ifTrue: [
            recoveredBlock5Stack1 := true.
            recoveredBlock5PC := 25.
        ].
        recoveredBlock5Step = 25 ifTrue: [
            ^recoveredBlock5Stack1
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^true
! !

"ASDBase.ic method 0x20216250; bytecode file offset 0xb12b18"
!RBOptionsNotebookDialog methodsFor: 'recovered'!
tabStripResizeCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) tabStrip.
    recoveredValue1 := (recoveredValue0) selectedItems.
    recoveredValue2 := [
    ^self
].
    recoveredValue3 := (recoveredValue1) at: (1) ifAbsent: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := (self) tabStrip.
    recoveredValue5 := recoveredLocal1.
    (recoveredValue4) resizeTab: (recoveredValue5).
    (self) adjustColumnWidth.
    ^self
! !

"ASDBase.ic method 0x202215ac; bytecode file offset 0xb1de74"
!RBOptionsNotebookDialog methodsFor: 'recovered'!
initializePages: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) tabStrip.
    recoveredValue1 := (recoveredValue0) children.
    recoveredValue2 := (recoveredValue1) size.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := [:recoveredBlock13Arg1 :recoveredBlock13Arg2 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 recoveredBlock13Value3 recoveredBlock13Value4 |
    recoveredBlock13Value0 := recoveredBlock13Arg1.
    recoveredBlock13Value1 := recoveredBlock13Arg2.
    recoveredBlock13Value2 := recoveredLocal1.
    recoveredBlock13Value3 := (recoveredBlock13Value1) + (recoveredBlock13Value2).
    recoveredBlock13Value4 := (self) initializePageFor: (recoveredBlock13Value0) index: (recoveredBlock13Value3).
    recoveredBlock13Value4
].
    (recoveredValue3) doWithIndex: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x202dd658; bytecode file offset 0xbd9f28"
!RBOptionsNotebookDialog methodsFor: 'recovered'!
removeOptionGroup: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := (self) tabStrip.
    recoveredValue1 := (recoveredValue0) items.
    recoveredValue2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := (recoveredBlock6Value0) labelString.
    recoveredBlock6Value2 := recoveredArg1.
    recoveredBlock6Value3 := (recoveredBlock6Value1) = (recoveredBlock6Value2).
    recoveredBlock6Value3
].
    recoveredValue3 := [
    ^self
].
    recoveredValue4 := (recoveredValue1) detect: (recoveredValue2) ifNone: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := (self) tabStrip.
    recoveredValue6 := recoveredLocal1.
    (recoveredValue5) deleteItem: (recoveredValue6).
    recoveredValue7 := options.
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := [].
    (recoveredValue7) removeKey: (recoveredValue8) ifAbsent: (recoveredValue9).
    ^self
! !

"ASDBase.ic method 0x20300eec; bytecode file offset 0xbfd7cc"
!RBOptionsNotebookDialog methodsFor: 'recovered'!
resizeTab: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) tabStrip.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) userData.
    recoveredValue3 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 recoveredBlock12Value4 recoveredBlock12Value5 recoveredBlock12Value6 recoveredBlock12Value7 recoveredBlock12Value8 recoveredBlock12Value9 recoveredBlock12Value10 recoveredBlock12Value11 recoveredBlock12Value12 |
    recoveredBlock12Value0 := recoveredBlock12Arg1.
    recoveredBlock12Value1 := recoveredBlock12Value0.
    recoveredBlock12Value2 := recoveredLocal1.
    recoveredBlock12Value3 := (recoveredBlock12Value2) clientLeft.
    (recoveredBlock12Value1) x: (recoveredBlock12Value3).
    recoveredBlock12Value4 := recoveredBlock12Value0.
    recoveredBlock12Value5 := recoveredLocal1.
    recoveredBlock12Value6 := (recoveredBlock12Value5) clientTop.
    (recoveredBlock12Value4) y: (recoveredBlock12Value6).
    recoveredBlock12Value7 := recoveredBlock12Value0.
    recoveredBlock12Value8 := recoveredLocal1.
    recoveredBlock12Value9 := (recoveredBlock12Value8) clientWidth.
    (recoveredBlock12Value7) width: (recoveredBlock12Value9).
    recoveredBlock12Value10 := recoveredLocal1.
    recoveredBlock12Value11 := (recoveredBlock12Value10) clientHeight.
    recoveredBlock12Value12 := (recoveredBlock12Value0) height: (recoveredBlock12Value11).
    recoveredBlock12Value12
].
    (recoveredValue2) setValuesBlock: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2032ae20; bytecode file offset 0xc2771c"
!RBOptionsNotebookDialog methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := (self) shell.
    recoveredValue1 := title.
    (recoveredValue0) title: (recoveredValue1).
    recoveredValue2 := (self) class.
    recoveredValue3 := (300) @ (290).
    (recoveredValue2) minSize: (recoveredValue3).
    recoveredValue4 := (self) okButton.
    recoveredValue5 := SCOk.
    (recoveredValue4) labelString: (recoveredValue5).
    recoveredValue6 := (self) cancelButton.
    recoveredValue7 := SCCancel.
    (recoveredValue6) labelString: (recoveredValue7).
    recoveredValue8 := (self) defaultButton.
    recoveredValue9 := SCDefault.
    (recoveredValue8) labelString: (recoveredValue9).
    (self) iconSmall: ('ASCET16') large: ('ASCET32').
    (self) updateOptionList.
    (self) installActionKeys.
    (self) updateFonts.
    ^self
! !

"ASDBase.ic method 0x20486270; bytecode file offset 0xd82b88"
!RBOptionsNotebookDialog methodsFor: 'recovered'!
initializeAfterOpen
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := options.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 125].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := firstSelection.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) tabStrip.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) items.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Value0 recoveredBlock19Value1 recoveredBlock19Value2 recoveredBlock19Value3 |
    recoveredBlock19Value0 := recoveredBlock19Arg1.
    recoveredBlock19Value1 := (recoveredBlock19Value0) labelString.
    recoveredBlock19Value2 := firstSelection.
    recoveredBlock19Value3 := (recoveredBlock19Value1) = (recoveredBlock19Value2).
    recoveredBlock19Value3
].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) tabStrip.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) selectItem: (recoveredStack2) notify: (recoveredStack3).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) tabStrip.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedItems.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) labelString.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            selectedGroup := recoveredStack1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) tabStrip.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedItems.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) tabStrip.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) items.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexOf: (recoveredStack2).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack1) updateContentsForPage: (recoveredStack2).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := (recoveredStack1) tabStrip.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack1) updateWindow.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := (recoveredStack1) userData.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack1) manageChild.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := (recoveredStack1) tabStrip.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack2) resizeTab: (recoveredStack3).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack1) setInputFocus.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := (recoveredStack1) okButton.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack1) setInputFocus.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionsTableList: (recoveredStack2).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := [:block28102becArg1 | 
    | block28102becValue0 block28102becValue1 block28102becValue2 block28102becValue3 block28102becValue4 block28102becValue5 block28102becValue6 |
    block28102becValue0 := block28102becArg1.
    block28102becValue1 := block28102becValue0.
    (block28102becValue1) updateWidget.
    block28102becValue2 := block28102becValue0.
    (block28102becValue2) setInputFocus.
    block28102becValue3 := block28102becValue0.
    (block28102becValue3) cursorHomeCell.
    block28102becValue4 := block28102becArg1.
    block28102becValue5 := (block28102becValue4) cursoredCell.
    block28102becValue6 := (block28102becValue0) selectionEventOnlyOnCell: (block28102becValue5) commit: (true).
    block28102becValue6
].
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            (recoveredStack0) adjustColumnWidth.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20486600; bytecode file offset 0xd82f18"
!RBOptionsNotebookDialog methodsFor: 'recovered'!
tabSelectionCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedItems.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := [
    ^self
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) userData.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := [:recoveredBlock26Arg1 | 
    | recoveredBlock26Value0 recoveredBlock26Value1 recoveredBlock26Value2 recoveredBlock26Value3 recoveredBlock26Value4 recoveredBlock26Value5 recoveredBlock26Value6 recoveredBlock26Value7 recoveredBlock26Value8 recoveredBlock26Value9 recoveredBlock26Value10 recoveredBlock26Value11 recoveredBlock26Value12 |
    recoveredBlock26Value0 := recoveredBlock26Arg1.
    recoveredBlock26Value1 := recoveredBlock26Value0.
    recoveredBlock26Value2 := recoveredArg1.
    recoveredBlock26Value3 := (recoveredBlock26Value2) clientLeft.
    (recoveredBlock26Value1) x: (recoveredBlock26Value3).
    recoveredBlock26Value4 := recoveredBlock26Value0.
    recoveredBlock26Value5 := recoveredArg1.
    recoveredBlock26Value6 := (recoveredBlock26Value5) clientTop.
    (recoveredBlock26Value4) y: (recoveredBlock26Value6).
    recoveredBlock26Value7 := recoveredBlock26Value0.
    recoveredBlock26Value8 := recoveredArg1.
    recoveredBlock26Value9 := (recoveredBlock26Value8) clientWidth.
    (recoveredBlock26Value7) width: (recoveredBlock26Value9).
    recoveredBlock26Value10 := recoveredArg1.
    recoveredBlock26Value11 := (recoveredBlock26Value10) clientHeight.
    recoveredBlock26Value12 := (recoveredBlock26Value0) height: (recoveredBlock26Value11).
    recoveredBlock26Value12
].
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) userData.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack2) manageChild.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack1) setInputFocus.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) items.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexOf: (recoveredStack2).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := (recoveredStack1) labelString.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            selectedGroup := recoveredStack1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack0) updateContentsForPage: (recoveredStack1).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionsTableList.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := [:block28102cc4Arg1 | 
    | block28102cc4Value0 block28102cc4Value1 block28102cc4Value2 block28102cc4Value3 block28102cc4Value4 block28102cc4Value5 block28102cc4Value6 |
    block28102cc4Value0 := block28102cc4Arg1.
    block28102cc4Value1 := block28102cc4Value0.
    (block28102cc4Value1) updateWidget.
    block28102cc4Value2 := block28102cc4Value0.
    (block28102cc4Value2) setInputFocus.
    block28102cc4Value3 := block28102cc4Value0.
    (block28102cc4Value3) cursorHomeCell.
    block28102cc4Value4 := block28102cc4Arg1.
    block28102cc4Value5 := (block28102cc4Value4) cursoredCell.
    block28102cc4Value6 := (block28102cc4Value0) selectionEventOnlyOnCell: (block28102cc4Value5) commit: (true).
    block28102cc4Value6
].
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20499a44; bytecode file offset 0xd96344"
!RBOptionsNotebookDialog methodsFor: 'recovered'!
initializePageFor: recoveredArg1 index: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 |
    recoveredValue0 := (self) tabStrip.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Local1 recoveredBlock8Stack0 recoveredBlock8Stack1 recoveredBlock8Stack2 recoveredBlock8PC recoveredBlock8Step recoveredBlock8Done recoveredBlock8Result |
    recoveredBlock8Stack0 := self.
    recoveredBlock8PC := 14.
    recoveredBlock8Done := false.
    [recoveredBlock8Done not] whileTrue: [
        recoveredBlock8Step := recoveredBlock8PC.
        recoveredBlock8Step = 14 ifTrue: [
            recoveredBlock8Stack1 := recoveredArg1.
            recoveredBlock8PC := 17.
        ].
        recoveredBlock8Step = 17 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) imageForGroupString: (recoveredBlock8Stack1).
            recoveredBlock8PC := 18.
        ].
        recoveredBlock8Step = 18 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Stack0.
            recoveredBlock8PC := 19.
        ].
        recoveredBlock8Step = 19 ifTrue: [
            recoveredBlock8Local1 := recoveredBlock8Stack1.
            recoveredBlock8PC := 20.
        ].
        recoveredBlock8Step = 20 ifTrue: [
            (recoveredBlock8Stack0 == nil) ifTrue: [recoveredBlock8PC := 28] ifFalse: [recoveredBlock8PC := 24].
        ].
        recoveredBlock8Step = 24 ifTrue: [
            recoveredBlock8Stack0 := recoveredBlock8Arg1.
            recoveredBlock8PC := 25.
        ].
        recoveredBlock8Step = 25 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Local1.
            recoveredBlock8PC := 26.
        ].
        recoveredBlock8Step = 26 ifTrue: [
            (recoveredBlock8Stack0) image: (recoveredBlock8Stack1).
            recoveredBlock8PC := 28.
        ].
        recoveredBlock8Step = 28 ifTrue: [
            recoveredBlock8Stack0 := recoveredBlock8Arg1.
            recoveredBlock8PC := 29.
        ].
        recoveredBlock8Step = 29 ifTrue: [
            recoveredBlock8Stack1 := recoveredArg1.
            recoveredBlock8PC := 32.
        ].
        recoveredBlock8Step = 32 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) labelString: (recoveredBlock8Stack1).
            recoveredBlock8PC := 33.
        ].
        recoveredBlock8Step = 33 ifTrue: [
            recoveredBlock8Result := recoveredBlock8Stack0.
            recoveredBlock8Done := true.
        ].
    ].
    recoveredBlock8Result
].
    recoveredValue3 := (recoveredValue0) createTabWithForm: (recoveredValue1) argBlock: (recoveredValue2).
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := widgetDictionary.
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := (recoveredValue5) printString.
    recoveredValue7 := ('tab') , (recoveredValue6).
    recoveredValue8 := (recoveredValue7) asAtom.
    recoveredValue9 := recoveredLocal2.
    (recoveredValue4) at: (recoveredValue8) put: (recoveredValue9).
    recoveredValue10 := widgetDictionary.
    recoveredValue11 := recoveredArg2.
    recoveredValue12 := (recoveredValue11) printString.
    recoveredValue13 := ('tabForm') , (recoveredValue12).
    recoveredValue14 := (recoveredValue13) asAtom.
    recoveredValue15 := recoveredLocal2.
    recoveredValue16 := (recoveredValue15) userData.
    (recoveredValue10) at: (recoveredValue14) put: (recoveredValue16).
    recoveredValue17 := recoveredLocal2.
    recoveredValue18 := (recoveredValue17) userData.
    recoveredValue19 := recoveredArg2.
    (self) createWidgetHierarchyPage: (recoveredValue18) index: (recoveredValue19).
    recoveredValue20 := recoveredArg2.
    recoveredValue21 := (self) optionsTableList: (recoveredValue20).
    recoveredValue22 := recoveredValue21.
    recoveredLocal1 := recoveredValue22.
    (recoveredValue21) itemHeight: (nil).
    recoveredValue23 := recoveredLocal1.
    recoveredValue24 := (recoveredValue23) focusProxy.
    recoveredValue25 := KeyPressMask.
    (recoveredValue24) addEventHandler: (recoveredValue25) receiver: (self) selector: ('inputEvent:clientData:callData:') clientData: (nil).
    recoveredValue26 := recoveredLocal2.
    recoveredValue27 := (recoveredValue26) userData.
    recoveredValue28 := KeyPressMask.
    (recoveredValue27) addEventHandler: (recoveredValue28) receiver: (self) selector: ('inputEvent:clientData:callData:') clientData: (nil).
    recoveredValue29 := recoveredLocal2.
    recoveredValue30 := (recoveredValue29) userData.
    ^recoveredValue30
! !

"ASDBase.ic method 0x20513810; bytecode file offset 0xe10138"
!RBOptionsNotebookDialog methodsFor: 'recovered'!
installActionKeys
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 |
    recoveredValue0 := (self) globalActionKeys.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := Character.
    recoveredValue4 := (recoveredValue3) value: (13).
    recoveredValue5 := DirectedMessageWithText.
    recoveredValue6 := SCOk.
    recoveredValue7 := (recoveredValue5) selector: ('keyRETURN') arguments: (#()) receiver: (self) text: (recoveredValue6).
    (recoveredValue2) at: (recoveredValue4) put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := XKCancel.
    recoveredValue10 := DirectedMessageWithText.
    recoveredValue11 := SCCancel.
    recoveredValue12 := (recoveredValue10) selector: ('keyESC') arguments: (#()) receiver: (self) text: (recoveredValue11).
    (recoveredValue8) at: (recoveredValue9) put: (recoveredValue12).
    recoveredValue13 := recoveredValue1.
    recoveredValue14 := SCOk.
    recoveredValue15 := (recoveredValue14) getHotkeyString.
    recoveredValue16 := ('Alt-') , (recoveredValue15).
    recoveredValue17 := DirectedMessageWithText.
    recoveredValue18 := SCOk.
    recoveredValue19 := (recoveredValue17) selector: ('ok') arguments: (#()) receiver: (self) text: (recoveredValue18).
    (recoveredValue13) at: (recoveredValue16) put: (recoveredValue19).
    recoveredValue20 := recoveredValue1.
    recoveredValue21 := SCCancel.
    recoveredValue22 := (recoveredValue21) getHotkeyString.
    recoveredValue23 := ('Alt-') , (recoveredValue22).
    recoveredValue24 := DirectedMessageWithText.
    recoveredValue25 := SCCancel.
    recoveredValue26 := (recoveredValue24) selector: ('cancel') arguments: (#()) receiver: (self) text: (recoveredValue25).
    (recoveredValue20) at: (recoveredValue23) put: (recoveredValue26).
    recoveredValue27 := recoveredValue1.
    recoveredValue28 := SCDefault.
    recoveredValue29 := (recoveredValue28) getHotkeyString.
    recoveredValue30 := ('Alt-') , (recoveredValue29).
    recoveredValue31 := DirectedMessageWithText.
    recoveredValue32 := SCDefault.
    recoveredValue33 := (recoveredValue32) copyWithout: ($&).
    recoveredValue34 := (recoveredValue31) selector: ('setSelectedOptionToDefault') arguments: (#()) receiver: (self) text: (recoveredValue33).
    (recoveredValue27) at: (recoveredValue30) put: (recoveredValue34).
    recoveredValue35 := options.
    recoveredValue36 := (recoveredValue35) keys.
    recoveredValue37 := (recoveredValue36) asSortedCollection.
    recoveredValue38 := [:recoveredBlock130Arg1 :recoveredBlock130Arg2 | 
    | recoveredBlock130Local1 recoveredBlock130Stack0 recoveredBlock130Stack1 recoveredBlock130Stack2 recoveredBlock130Stack3 recoveredBlock130Stack4 recoveredBlock130Stack5 recoveredBlock130Stack6 recoveredBlock130Stack7 recoveredBlock130Stack8 recoveredBlock130PC recoveredBlock130Step recoveredBlock130Done recoveredBlock130Result |
    recoveredBlock130Stack0 := self.
    recoveredBlock130PC := 136.
    recoveredBlock130Done := false.
    [recoveredBlock130Done not] whileTrue: [
        recoveredBlock130Step := recoveredBlock130PC.
        recoveredBlock130Step = 136 ifTrue: [
            recoveredBlock130Stack1 := nil.
            recoveredBlock130PC := 137.
        ].
        recoveredBlock130Step = 137 ifTrue: [
            recoveredBlock130Stack2 := recoveredBlock130Arg1.
            recoveredBlock130PC := 138.
        ].
        recoveredBlock130Step = 138 ifTrue: [
            recoveredBlock130Stack2 := (recoveredBlock130Stack2) getHotkeyString.
            recoveredBlock130PC := 140.
        ].
        recoveredBlock130Step = 140 ifTrue: [
            recoveredBlock130Stack3 := recoveredBlock130Stack2.
            recoveredBlock130PC := 141.
        ].
        recoveredBlock130Step = 141 ifTrue: [
            recoveredBlock130Local1 := recoveredBlock130Stack3.
            recoveredBlock130PC := 142.
        ].
        recoveredBlock130Step = 142 ifTrue: [
            recoveredBlock130Stack2 := (recoveredBlock130Stack2) isEmpty.
            recoveredBlock130PC := 144.
        ].
        recoveredBlock130Step = 144 ifTrue: [
            (recoveredBlock130Stack2) ifTrue: [recoveredBlock130PC := 173] ifFalse: [recoveredBlock130PC := 148].
        ].
        recoveredBlock130Step = 148 ifTrue: [
            recoveredBlock130PC := 149.
        ].
        recoveredBlock130Step = 149 ifTrue: [
            recoveredBlock130Stack1 := recoveredLocal1.
            recoveredBlock130PC := 152.
        ].
        recoveredBlock130Step = 152 ifTrue: [
            recoveredBlock130Stack2 := 'Alt-'.
            recoveredBlock130PC := 154.
        ].
        recoveredBlock130Step = 154 ifTrue: [
            recoveredBlock130Stack3 := recoveredBlock130Local1.
            recoveredBlock130PC := 155.
        ].
        recoveredBlock130Step = 155 ifTrue: [
            recoveredBlock130Stack2 := (recoveredBlock130Stack2) , (recoveredBlock130Stack3).
            recoveredBlock130PC := 157.
        ].
        recoveredBlock130Step = 157 ifTrue: [
            recoveredBlock130Stack3 := DirectedMessageWithText.
            recoveredBlock130PC := 159.
        ].
        recoveredBlock130Step = 159 ifTrue: [
            recoveredBlock130Stack4 := 'selectPage:'.
            recoveredBlock130PC := 161.
        ].
        recoveredBlock130Step = 161 ifTrue: [
            recoveredBlock130Stack5 := Array.
            recoveredBlock130PC := 163.
        ].
        recoveredBlock130Step = 163 ifTrue: [
            recoveredBlock130Stack6 := recoveredBlock130Arg2.
            recoveredBlock130PC := 164.
        ].
        recoveredBlock130Step = 164 ifTrue: [
            recoveredBlock130Stack5 := (recoveredBlock130Stack5) with: (recoveredBlock130Stack6).
            recoveredBlock130PC := 166.
        ].
        recoveredBlock130Step = 166 ifTrue: [
            recoveredBlock130Stack6 := self.
            recoveredBlock130PC := 167.
        ].
        recoveredBlock130Step = 167 ifTrue: [
            recoveredBlock130Stack7 := recoveredBlock130Arg1.
            recoveredBlock130PC := 168.
        ].
        recoveredBlock130Step = 168 ifTrue: [
            recoveredBlock130Stack3 := (recoveredBlock130Stack3) selector: (recoveredBlock130Stack4) arguments: (recoveredBlock130Stack5) receiver: (recoveredBlock130Stack6) text: (recoveredBlock130Stack7).
            recoveredBlock130PC := 171.
        ].
        recoveredBlock130Step = 171 ifTrue: [
            recoveredBlock130Stack1 := (recoveredBlock130Stack1) at: (recoveredBlock130Stack2) put: (recoveredBlock130Stack3).
            recoveredBlock130PC := 173.
        ].
        recoveredBlock130Step = 173 ifTrue: [
            recoveredBlock130Result := recoveredBlock130Stack1.
            recoveredBlock130Done := true.
        ].
    ].
    recoveredBlock130Result
].
    (recoveredValue37) doWithIndex: (recoveredValue38).
    recoveredValue39 := recoveredLocal1.
    recoveredValue40 := (self) shell.
    (self) setActionDict: (recoveredValue39) forWidget: (recoveredValue40).
    ^self
! !

"ASDBase.ic method 0x2052f978; bytecode file offset 0xe2c2a8"
!RBOptionsNotebookDialog methodsFor: 'recovered'!
updateContentsForPage: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionsTableList: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
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
            recoveredStack0 := OrderedCollection.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) new: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) width.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := 6.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := SCOption.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := 'optionName:clientData:callData:'.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack4 := 150.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack5 := false.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) createColumn: (recoveredStack1) selector: (recoveredStack2) clientData: (recoveredStack3) width: (recoveredStack4) editable: (recoveredStack5).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := SCValue.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := 'optionValue:clientData:callData:'.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack5 := recoveredLocal4.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack5 := (recoveredStack5) first.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack5 := (recoveredStack5) width.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack4 := (recoveredStack4) - (recoveredStack5).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack5 := true.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := (recoveredStack0) createColumn: (recoveredStack1) selector: (recoveredStack2) clientData: (recoveredStack3) width: (recoveredStack4) editable: (recoveredStack5).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack0) verticalSeparatorThickness: (recoveredStack1).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock109Local1 recoveredBlock109Stack0 recoveredBlock109Stack1 recoveredBlock109Stack2 recoveredBlock109Stack3 recoveredBlock109Stack4 recoveredBlock109PC recoveredBlock109Step recoveredBlock109Done recoveredBlock109Result |
    recoveredBlock109Stack0 := self.
    recoveredBlock109PC := 116.
    recoveredBlock109Done := false.
    [recoveredBlock109Done not] whileTrue: [
        recoveredBlock109Step := recoveredBlock109PC.
        recoveredBlock109Step = 116 ifTrue: [
            recoveredBlock109Stack1 := options.
            recoveredBlock109PC := 118.
        ].
        recoveredBlock109Step = 118 ifTrue: [
            recoveredBlock109Stack2 := selectedGroup.
            recoveredBlock109PC := 120.
        ].
        recoveredBlock109Step = 120 ifTrue: [
            recoveredBlock109Stack3 := [
    #()
].
            recoveredBlock109PC := 122.
        ].
        recoveredBlock109Step = 122 ifTrue: [
            recoveredBlock109PC := 129.
        ].
        recoveredBlock109Step = 129 ifTrue: [
            recoveredBlock109Stack1 := (recoveredBlock109Stack1) at: (recoveredBlock109Stack2) ifAbsent: (recoveredBlock109Stack3).
            recoveredBlock109PC := 131.
        ].
        recoveredBlock109Step = 131 ifTrue: [
            recoveredBlock109Local1 := recoveredBlock109Stack1.
            recoveredBlock109PC := 132.
        ].
        recoveredBlock109Step = 132 ifTrue: [
            recoveredBlock109Stack0 := (recoveredBlock109Stack0) isSorted.
            recoveredBlock109PC := 134.
        ].
        recoveredBlock109Step = 134 ifTrue: [
            (recoveredBlock109Stack0) ifTrue: [recoveredBlock109PC := 138] ifFalse: [recoveredBlock109PC := 155].
        ].
        recoveredBlock109Step = 138 ifTrue: [
            recoveredBlock109Stack0 := recoveredBlock109Local1.
            recoveredBlock109PC := 139.
        ].
        recoveredBlock109Step = 139 ifTrue: [
            recoveredBlock109Stack1 := [:block2810d41cArg1 :block2810d41cArg2 | 
    | block2810d41cValue0 block2810d41cValue1 block2810d41cValue2 block2810d41cValue3 block2810d41cValue4 |
    block2810d41cValue0 := block2810d41cArg1.
    block2810d41cValue1 := (block2810d41cValue0) name.
    block2810d41cValue2 := block2810d41cArg2.
    block2810d41cValue3 := (block2810d41cValue2) name.
    block2810d41cValue4 := (block2810d41cValue1) < (block2810d41cValue3).
    block2810d41cValue4
].
            recoveredBlock109PC := 141.
        ].
        recoveredBlock109Step = 141 ifTrue: [
            recoveredBlock109PC := 152.
        ].
        recoveredBlock109Step = 152 ifTrue: [
            recoveredBlock109Stack0 := (recoveredBlock109Stack0) asSortedCollection: (recoveredBlock109Stack1).
            recoveredBlock109PC := 154.
        ].
        recoveredBlock109Step = 154 ifTrue: [
            recoveredBlock109Local1 := recoveredBlock109Stack0.
            recoveredBlock109PC := 155.
        ].
        recoveredBlock109Step = 155 ifTrue: [
            recoveredBlock109Stack0 := recoveredLocal1.
            recoveredBlock109PC := 158.
        ].
        recoveredBlock109Step = 158 ifTrue: [
            recoveredBlock109Stack1 := recoveredBlock109Stack0.
            recoveredBlock109PC := 159.
        ].
        recoveredBlock109Step = 159 ifTrue: [
            recoveredBlock109Stack2 := recoveredBlock109Local1.
            recoveredBlock109PC := 160.
        ].
        recoveredBlock109Step = 160 ifTrue: [
            (recoveredBlock109Stack1) items: (recoveredBlock109Stack2).
            recoveredBlock109PC := 162.
        ].
        recoveredBlock109Step = 162 ifTrue: [
            recoveredBlock109Stack1 := recoveredLocal4.
            recoveredBlock109PC := 165.
        ].
        recoveredBlock109Step = 165 ifTrue: [
            recoveredBlock109Stack0 := (recoveredBlock109Stack0) columns: (recoveredBlock109Stack1).
            recoveredBlock109PC := 167.
        ].
        recoveredBlock109Step = 167 ifTrue: [
            recoveredBlock109Result := recoveredBlock109Stack0.
            recoveredBlock109Done := true.
        ].
    ].
    recoveredBlock109Result
].
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            (recoveredStack0) deferRedraw: (recoveredStack1).
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := CwAppContext.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock174Value0 recoveredBlock174Value1 recoveredBlock174Value2 recoveredBlock174Value3 |
    recoveredBlock174Value0 := recoveredArg1.
    recoveredBlock174Value1 := (self) helpText: (recoveredBlock174Value0).
    (recoveredBlock174Value1) setString: ('').
    (self) adjustColumnWidth.
    recoveredBlock174Value2 := recoveredLocal1.
    recoveredBlock174Value3 := (recoveredBlock174Value2) setInputFocus.
    recoveredBlock174Value3
].
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            (recoveredStack0) syncExecInUI: (recoveredStack1).
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205babc8; bytecode file offset 0xeb753c"
!RBOptionsNotebookDialog methodsFor: 'recovered'!
createWidgetHierarchyPage: recoveredArg1 index: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDictionary.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 'optionsTableList'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := [:block281176f4Arg1 | 
    | block281176f4Value0 block281176f4Value1 block281176f4Value2 block281176f4Value3 block281176f4Value4 block281176f4Value5 block281176f4Value6 block281176f4Value7 |
    block281176f4Value0 := block281176f4Arg1.
    block281176f4Value1 := block281176f4Value0.
    (block281176f4Value1) editable: (true).
    block281176f4Value2 := block281176f4Value0.
    (block281176f4Value2) lockedColumns: (1).
    block281176f4Value3 := block281176f4Value0.
    block281176f4Value4 := RbSingleCellSelect.
    (block281176f4Value3) selectionPolicy: (block281176f4Value4).
    block281176f4Value5 := block281176f4Value0.
    (block281176f4Value5) applicationDrawnBackground: (true).
    block281176f4Value6 := XmETCHCELLS.
    block281176f4Value7 := (block281176f4Value0) headingVisualStyle: (block281176f4Value6).
    block281176f4Value7
].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) createScrolledTableList: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
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
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := 'aScrolledTableList'.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) asAtom.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := 'optionsTableList'.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := (recoveredStack1) asAtom.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := 'helpText'.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := [:block28117718Arg1 | 
    | block28117718Value0 block28117718Value1 block28117718Value2 block28117718Value3 block28117718Value4 block28117718Value5 block28117718Value6 block28117718Value7 block28117718Value8 block28117718Value9 block28117718Value10 block28117718Value11 block28117718Value12 |
    block28117718Value0 := block28117718Arg1.
    block28117718Value1 := block28117718Value0.
    block28117718Value2 := RBFontGlobal.
    block28117718Value3 := (block28117718Value2) instance.
    block28117718Value4 := (block28117718Value3) textFont.
    block28117718Value5 := (block28117718Value4) fontStruct.
    block28117718Value6 := (block28117718Value5) height.
    block28117718Value7 := (block28117718Value6) * (3).
    block28117718Value8 := (block28117718Value7) + (10).
    (block28117718Value1) height: (block28117718Value8).
    block28117718Value9 := block28117718Value0.
    (block28117718Value9) editable: (false).
    block28117718Value10 := block28117718Value0.
    (block28117718Value10) wordWrap: (true).
    block28117718Value11 := XmMULTILINEEDIT.
    block28117718Value12 := (block28117718Value0) editMode: (block28117718Value11).
    block28117718Value12
].
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack0 := (recoveredStack0) createScrolledText: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack1 := 'aScrolledText'.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := (recoveredStack1) asAtom.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack1 := 'helpText'.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack1 := (recoveredStack1) asAtom.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack1 := [:block2811773cArg1 | 
    | block2811773cValue0 block2811773cValue1 block2811773cValue2 block2811773cValue3 block2811773cValue4 block2811773cValue5 block2811773cValue6 block2811773cValue7 block2811773cValue8 block2811773cValue9 |
    block2811773cValue0 := block2811773cArg1.
    block2811773cValue1 := block2811773cValue0.
    block2811773cValue2 := XmATTACHFORM.
    (block2811773cValue1) bottomAttachment: (block2811773cValue2).
    block2811773cValue3 := block2811773cValue0.
    (block2811773cValue3) bottomOffset: (10).
    block2811773cValue4 := block2811773cValue0.
    block2811773cValue5 := XmATTACHFORM.
    (block2811773cValue4) leftAttachment: (block2811773cValue5).
    block2811773cValue6 := block2811773cValue0.
    (block2811773cValue6) leftOffset: (10).
    block2811773cValue7 := block2811773cValue0.
    block2811773cValue8 := XmATTACHFORM.
    (block2811773cValue7) rightAttachment: (block2811773cValue8).
    block2811773cValue9 := (block2811773cValue0) rightOffset: (10).
    block2811773cValue9
].
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack1 := [:recoveredBlock244Arg1 | 
    | recoveredBlock244Value0 recoveredBlock244Value1 recoveredBlock244Value2 recoveredBlock244Value3 recoveredBlock244Value4 recoveredBlock244Value5 recoveredBlock244Value6 recoveredBlock244Value7 recoveredBlock244Value8 recoveredBlock244Value9 recoveredBlock244Value10 recoveredBlock244Value11 recoveredBlock244Value12 recoveredBlock244Value13 recoveredBlock244Value14 |
    recoveredBlock244Value0 := recoveredBlock244Arg1.
    recoveredBlock244Value1 := recoveredBlock244Value0.
    recoveredBlock244Value2 := XmATTACHWIDGET.
    (recoveredBlock244Value1) bottomAttachment: (recoveredBlock244Value2).
    recoveredBlock244Value3 := recoveredBlock244Value0.
    recoveredBlock244Value4 := recoveredLocal4.
    (recoveredBlock244Value3) bottomWidget: (recoveredBlock244Value4).
    recoveredBlock244Value5 := recoveredBlock244Value0.
    (recoveredBlock244Value5) bottomOffset: (5).
    recoveredBlock244Value6 := recoveredBlock244Value0.
    recoveredBlock244Value7 := XmATTACHFORM.
    (recoveredBlock244Value6) topAttachment: (recoveredBlock244Value7).
    recoveredBlock244Value8 := recoveredBlock244Value0.
    (recoveredBlock244Value8) topOffset: (10).
    recoveredBlock244Value9 := recoveredBlock244Value0.
    recoveredBlock244Value10 := XmATTACHFORM.
    (recoveredBlock244Value9) leftAttachment: (recoveredBlock244Value10).
    recoveredBlock244Value11 := recoveredBlock244Value0.
    (recoveredBlock244Value11) leftOffset: (10).
    recoveredBlock244Value12 := recoveredBlock244Value0.
    recoveredBlock244Value13 := XmATTACHFORM.
    (recoveredBlock244Value12) rightAttachment: (recoveredBlock244Value13).
    recoveredBlock244Value14 := (recoveredBlock244Value0) rightOffset: (10).
    recoveredBlock244Value14
].
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack1 := XmNcellSingleSelectionCallback.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack3 := 'optionTableListcellSingleSelectionCallback:clientData:callData:'.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2063b194; bytecode file offset 0xf37b68"
!RBOptionsNotebookDialog methodsFor: 'recovered'!
createWidgetHierarchy: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
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
            recoveredStack3 := [:block281217b0Arg1 | 
    | block281217b0Value0 block281217b0Value1 block281217b0Value2 block281217b0Value3 block281217b0Value4 block281217b0Value5 |
    block281217b0Value0 := block281217b0Arg1.
    block281217b0Value1 := block281217b0Value0.
    block281217b0Value2 := MWMINPUTPRIMARYAPPLICATIONMODAL.
    (block281217b0Value1) mwmInputMode: (block281217b0Value2).
    block281217b0Value3 := block281217b0Value0.
    (block281217b0Value3) title: ('Dialog').
    block281217b0Value4 := block281217b0Value0.
    (block281217b0Value4) height: (450).
    block281217b0Value5 := (block281217b0Value0) width: (400).
    block281217b0Value5
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDialogShell: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := 'aDialogShell1'.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) createMainWindow: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := 'okButton'.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack3 := [:block281217d4Arg1 | 
    | block281217d4Value0 block281217d4Value1 block281217d4Value2 block281217d4Value3 block281217d4Value4 block281217d4Value5 block281217d4Value6 block281217d4Value7 |
    block281217d4Value0 := block281217d4Arg1.
    block281217d4Value1 := block281217d4Value0.
    (block281217d4Value1) x: (335).
    block281217d4Value2 := block281217d4Value0.
    (block281217d4Value2) showAsDefault: (1).
    block281217d4Value3 := block281217d4Value0.
    (block281217d4Value3) labelString: ('Ok').
    block281217d4Value4 := block281217d4Value0.
    (block281217d4Value4) y: (10).
    block281217d4Value5 := block281217d4Value0.
    (block281217d4Value5) height: (25).
    block281217d4Value6 := block281217d4Value0.
    (block281217d4Value6) width: (90).
    block281217d4Value7 := (block281217d4Value0) recomputeSize: (false).
    block281217d4Value7
].
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack2 := 'okButton'.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack2 := 'defButton'.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack3 := [:block281217f8Arg1 | 
    | block281217f8Value0 block281217f8Value1 block281217f8Value2 block281217f8Value3 block281217f8Value4 block281217f8Value5 block281217f8Value6 |
    block281217f8Value0 := block281217f8Arg1.
    block281217f8Value1 := block281217f8Value0.
    (block281217f8Value1) x: (335).
    block281217f8Value2 := block281217f8Value0.
    (block281217f8Value2) labelString: ('Default').
    block281217f8Value3 := block281217f8Value0.
    (block281217f8Value3) y: (45).
    block281217f8Value4 := block281217f8Value0.
    (block281217f8Value4) height: (25).
    block281217f8Value5 := block281217f8Value0.
    (block281217f8Value5) width: (90).
    block281217f8Value6 := (block281217f8Value0) recomputeSize: (false).
    block281217f8Value6
].
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack2 := 'defButton'.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack2 := 'cancelButton'.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack3 := [:block2812181cArg1 | 
    | block2812181cValue0 block2812181cValue1 block2812181cValue2 block2812181cValue3 block2812181cValue4 block2812181cValue5 block2812181cValue6 |
    block2812181cValue0 := block2812181cArg1.
    block2812181cValue1 := block2812181cValue0.
    (block2812181cValue1) x: (335).
    block2812181cValue2 := block2812181cValue0.
    (block2812181cValue2) labelString: ('Abbruch').
    block2812181cValue3 := block2812181cValue0.
    (block2812181cValue3) y: (45).
    block2812181cValue4 := block2812181cValue0.
    (block2812181cValue4) height: (25).
    block2812181cValue5 := block2812181cValue0.
    (block2812181cValue5) width: (90).
    block2812181cValue6 := (block2812181cValue0) recomputeSize: (false).
    block2812181cValue6
].
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack2 := 'cancelButton'.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack2 := 'tabStrip'.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack3 := [:recoveredBlock298Arg1 | 
    | recoveredBlock298Value0 recoveredBlock298Value1 recoveredBlock298Value2 recoveredBlock298Value3 recoveredBlock298Value4 recoveredBlock298Value5 recoveredBlock298Value6 recoveredBlock298Value7 recoveredBlock298Value8 |
    recoveredBlock298Value0 := recoveredBlock298Arg1.
    recoveredBlock298Value1 := recoveredBlock298Value0.
    (recoveredBlock298Value1) x: (2).
    recoveredBlock298Value2 := recoveredBlock298Value0.
    (recoveredBlock298Value2) y: (1).
    recoveredBlock298Value3 := recoveredBlock298Value0.
    (recoveredBlock298Value3) height: (299).
    recoveredBlock298Value4 := recoveredBlock298Value0.
    (recoveredBlock298Value4) width: (276).
    recoveredBlock298Value5 := options.
    recoveredBlock298Value6 := (recoveredBlock298Value5) size.
    recoveredBlock298Value7 := (recoveredBlock298Value6) > (1).
    recoveredBlock298Value8 := (recoveredBlock298Value0) multiline: (recoveredBlock298Value7).
    recoveredBlock298Value8
].
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEtasTabStrip: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack2 := 'tabStrip'.
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredStack2 := [:recoveredBlock358Arg1 | 
    | recoveredBlock358Value0 recoveredBlock358Value1 recoveredBlock358Value2 |
    recoveredBlock358Value0 := recoveredBlock358Arg1.
    recoveredBlock358Value1 := recoveredLocal5.
    recoveredBlock358Value2 := (recoveredBlock358Value0) workWindow: (recoveredBlock358Value1).
    recoveredBlock358Value2
].
            recoveredPC := 371.
        ].
        recoveredStep = 371 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 376.
        ].
        recoveredStep = 376 ifTrue: [
            recoveredStack2 := [:block28121840Arg1 | 
    | block28121840Value0 block28121840Value1 block28121840Value2 block28121840Value3 block28121840Value4 block28121840Value5 block28121840Value6 |
    block28121840Value0 := block28121840Arg1.
    block28121840Value1 := block28121840Value0.
    block28121840Value2 := XmATTACHFORM.
    (block28121840Value1) rightAttachment: (block28121840Value2).
    block28121840Value3 := block28121840Value0.
    (block28121840Value3) rightOffset: (10).
    block28121840Value4 := block28121840Value0.
    block28121840Value5 := XmATTACHFORM.
    (block28121840Value4) bottomAttachment: (block28121840Value5).
    block28121840Value6 := (block28121840Value0) bottomOffset: (10).
    block28121840Value6
].
            recoveredPC := 378.
        ].
        recoveredStep = 378 ifTrue: [
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 408.
        ].
        recoveredStep = 408 ifTrue: [
            recoveredStack2 := [:recoveredBlock408Arg1 | 
    | recoveredBlock408Value0 recoveredBlock408Value1 recoveredBlock408Value2 recoveredBlock408Value3 recoveredBlock408Value4 recoveredBlock408Value5 recoveredBlock408Value6 recoveredBlock408Value7 recoveredBlock408Value8 |
    recoveredBlock408Value0 := recoveredBlock408Arg1.
    recoveredBlock408Value1 := recoveredBlock408Value0.
    recoveredBlock408Value2 := XmATTACHWIDGET.
    (recoveredBlock408Value1) rightAttachment: (recoveredBlock408Value2).
    recoveredBlock408Value3 := recoveredBlock408Value0.
    recoveredBlock408Value4 := recoveredLocal2.
    (recoveredBlock408Value3) rightWidget: (recoveredBlock408Value4).
    recoveredBlock408Value5 := recoveredBlock408Value0.
    (recoveredBlock408Value5) rightOffset: (5).
    recoveredBlock408Value6 := recoveredBlock408Value0.
    recoveredBlock408Value7 := XmATTACHFORM.
    (recoveredBlock408Value6) bottomAttachment: (recoveredBlock408Value7).
    recoveredBlock408Value8 := (recoveredBlock408Value0) bottomOffset: (10).
    recoveredBlock408Value8
].
            recoveredPC := 441.
        ].
        recoveredStep = 441 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 443.
        ].
        recoveredStep = 443 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 446.
        ].
        recoveredStep = 446 ifTrue: [
            recoveredStack2 := [:recoveredBlock446Arg1 | 
    | recoveredBlock446Value0 recoveredBlock446Value1 recoveredBlock446Value2 recoveredBlock446Value3 recoveredBlock446Value4 recoveredBlock446Value5 recoveredBlock446Value6 recoveredBlock446Value7 recoveredBlock446Value8 |
    recoveredBlock446Value0 := recoveredBlock446Arg1.
    recoveredBlock446Value1 := recoveredBlock446Value0.
    recoveredBlock446Value2 := XmATTACHWIDGET.
    (recoveredBlock446Value1) rightAttachment: (recoveredBlock446Value2).
    recoveredBlock446Value3 := recoveredBlock446Value0.
    recoveredBlock446Value4 := recoveredLocal3.
    (recoveredBlock446Value3) rightWidget: (recoveredBlock446Value4).
    recoveredBlock446Value5 := recoveredBlock446Value0.
    (recoveredBlock446Value5) rightOffset: (5).
    recoveredBlock446Value6 := recoveredBlock446Value0.
    recoveredBlock446Value7 := XmATTACHFORM.
    (recoveredBlock446Value6) bottomAttachment: (recoveredBlock446Value7).
    recoveredBlock446Value8 := (recoveredBlock446Value0) bottomOffset: (10).
    recoveredBlock446Value8
].
            recoveredPC := 479.
        ].
        recoveredStep = 479 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 481.
        ].
        recoveredStep = 481 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 484.
        ].
        recoveredStep = 484 ifTrue: [
            recoveredStack2 := [:recoveredBlock484Arg1 | 
    | recoveredBlock484Value0 recoveredBlock484Value1 recoveredBlock484Value2 recoveredBlock484Value3 recoveredBlock484Value4 recoveredBlock484Value5 recoveredBlock484Value6 recoveredBlock484Value7 recoveredBlock484Value8 recoveredBlock484Value9 recoveredBlock484Value10 recoveredBlock484Value11 recoveredBlock484Value12 recoveredBlock484Value13 recoveredBlock484Value14 |
    recoveredBlock484Value0 := recoveredBlock484Arg1.
    recoveredBlock484Value1 := recoveredBlock484Value0.
    recoveredBlock484Value2 := XmATTACHWIDGET.
    (recoveredBlock484Value1) bottomAttachment: (recoveredBlock484Value2).
    recoveredBlock484Value3 := recoveredBlock484Value0.
    recoveredBlock484Value4 := recoveredLocal4.
    (recoveredBlock484Value3) bottomWidget: (recoveredBlock484Value4).
    recoveredBlock484Value5 := recoveredBlock484Value0.
    (recoveredBlock484Value5) bottomOffset: (10).
    recoveredBlock484Value6 := recoveredBlock484Value0.
    recoveredBlock484Value7 := XmATTACHFORM.
    (recoveredBlock484Value6) topAttachment: (recoveredBlock484Value7).
    recoveredBlock484Value8 := recoveredBlock484Value0.
    (recoveredBlock484Value8) topOffset: (10).
    recoveredBlock484Value9 := recoveredBlock484Value0.
    recoveredBlock484Value10 := XmATTACHFORM.
    (recoveredBlock484Value9) leftAttachment: (recoveredBlock484Value10).
    recoveredBlock484Value11 := recoveredBlock484Value0.
    (recoveredBlock484Value11) leftOffset: (10).
    recoveredBlock484Value12 := recoveredBlock484Value0.
    recoveredBlock484Value13 := XmATTACHFORM.
    (recoveredBlock484Value12) rightAttachment: (recoveredBlock484Value13).
    recoveredBlock484Value14 := (recoveredBlock484Value0) rightOffset: (10).
    recoveredBlock484Value14
].
            recoveredPC := 538.
        ].
        recoveredStep = 538 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 540.
        ].
        recoveredStep = 540 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 543.
        ].
        recoveredStep = 543 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 546.
        ].
        recoveredStep = 546 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 547.
        ].
        recoveredStep = 547 ifTrue: [
            recoveredStack4 := 'okButtonActivate:clientData:callData:'.
            recoveredPC := 550.
        ].
        recoveredStep = 550 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 551.
        ].
        recoveredStep = 551 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 555.
        ].
        recoveredStep = 555 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 558.
        ].
        recoveredStep = 558 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 562.
        ].
        recoveredStep = 562 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 563.
        ].
        recoveredStep = 563 ifTrue: [
            recoveredStack4 := 'cancelButtonActivate:clientData:callData:'.
            recoveredPC := 566.
        ].
        recoveredStep = 566 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 567.
        ].
        recoveredStep = 567 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 571.
        ].
        recoveredStep = 571 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 574.
        ].
        recoveredStep = 574 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 578.
        ].
        recoveredStep = 578 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 579.
        ].
        recoveredStep = 579 ifTrue: [
            recoveredStack4 := 'defButtonActivate:clientData:callData:'.
            recoveredPC := 582.
        ].
        recoveredStep = 582 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 583.
        ].
        recoveredStep = 583 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 587.
        ].
        recoveredStep = 587 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 590.
        ].
        recoveredStep = 590 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 591.
        ].
        recoveredStep = 591 ifTrue: [
            recoveredStack3 := XmNmodifyVerifyCallback.
            recoveredPC := 594.
        ].
        recoveredStep = 594 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 595.
        ].
        recoveredStep = 595 ifTrue: [
            recoveredStack5 := 'tabModifyVerifyCallback:clientData:callData:'.
            recoveredPC := 598.
        ].
        recoveredStep = 598 ifTrue: [
            recoveredStack6 := nil.
            recoveredPC := 599.
        ].
        recoveredStep = 599 ifTrue: [
            (recoveredStack2) addCallback: (recoveredStack3) receiver: (recoveredStack4) selector: (recoveredStack5) clientData: (recoveredStack6).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 603.
        ].
        recoveredStep = 603 ifTrue: [
            recoveredStack3 := XmNsingleSelectionCallback.
            recoveredPC := 606.
        ].
        recoveredStep = 606 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 607.
        ].
        recoveredStep = 607 ifTrue: [
            recoveredStack5 := 'tabSelectionCallback:clientData:callData:'.
            recoveredPC := 610.
        ].
        recoveredStep = 610 ifTrue: [
            recoveredStack6 := nil.
            recoveredPC := 611.
        ].
        recoveredStep = 611 ifTrue: [
            (recoveredStack2) addCallback: (recoveredStack3) receiver: (recoveredStack4) selector: (recoveredStack5) clientData: (recoveredStack6).
            recoveredPC := 615.
        ].
        recoveredStep = 615 ifTrue: [
            recoveredStack2 := XmNresizeCallback.
            recoveredPC := 618.
        ].
        recoveredStep = 618 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 619.
        ].
        recoveredStep = 619 ifTrue: [
            recoveredStack4 := 'tabStripResizeCallback:clientData:callData:'.
            recoveredPC := 622.
        ].
        recoveredStep = 622 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 623.
        ].
        recoveredStep = 623 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 627.
        ].
        recoveredStep = 627 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 630.
        ].
        recoveredStep = 630 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 635.
        ].
        recoveredStep = 635 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 638.
        ].
        recoveredStep = 638 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 643.
        ].
        recoveredStep = 643 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 646.
        ].
        recoveredStep = 646 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 651.
        ].
        recoveredStep = 651 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 654.
        ].
        recoveredStep = 654 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 659.
        ].
        recoveredStep = 659 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 662.
        ].
        recoveredStep = 662 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 665.
        ].
        recoveredStep = 665 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 668.
        ].
        recoveredStep = 668 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 673.
        ].
        recoveredStep = 673 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

