"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20006770; bytecode file offset 0x908be4"
!EtasOptionsTableListWidget methodsFor: 'recovered'!
configWidget
    | recoveredValue0 |
    recoveredValue0 := (self) tableList.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2002e964; bytecode file offset 0x934580"
!EtasOptionsTableListWidget methodsFor: 'recovered'!
itemHeight
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) optionsTableList.
    recoveredValue1 := (recoveredValue0) itemHeight.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20033c84; bytecode file offset 0x934580"
!EtasOptionsTableListWidget methodsFor: 'recovered'!
isEditingInProgress
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) optionsTableList.
    recoveredValue1 := (recoveredValue0) isEditingInProgress.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20043bcc; bytecode file offset 0x9451f8"
!EtasOptionsTableListWidget methodsFor: 'recovered'!
helpText
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('helpText').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20045b3c; bytecode file offset 0x9451f8"
!EtasOptionsTableListWidget methodsFor: 'recovered'!
optionsTableList
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('optionsTableList').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200462fc; bytecode file offset 0x9451f8"
!EtasOptionsTableListWidget methodsFor: 'recovered'!
tableList
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('optionsTableList').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2005ac20; bytecode file offset 0x957a6c"
!EtasOptionsTableListWidget methodsFor: 'recovered'!
resizeOptionTableList: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) adjustColumnWidth.
    ^self
! !

"ASDBase.ic method 0x20063a44; bytecode file offset 0x961970"
!EtasOptionsTableListWidget methodsFor: 'recovered'!
endEdit
    | recoveredValue0 |
    recoveredValue0 := (self) optionsTableList.
    (recoveredValue0) endEdit.
    ^self
! !

"ASDBase.ic method 0x20064764; bytecode file offset 0x961970"
!EtasOptionsTableListWidget methodsFor: 'recovered'!
cancelEdit
    | recoveredValue0 |
    recoveredValue0 := (self) optionsTableList.
    (recoveredValue0) cancelEdit.
    ^self
! !

"ASDBase.ic method 0x20064e14; bytecode file offset 0x961970"
!EtasOptionsTableListWidget methodsFor: 'recovered'!
refresh
    | recoveredValue0 |
    recoveredValue0 := (self) optionsTableList.
    (recoveredValue0) refresh.
    ^self
! !

"ASDBase.ic method 0x2006dff8; bytecode file offset 0x96a9dc"
!EtasOptionsTableListWidget methodsFor: 'recovered'!
options
    | recoveredValue0 |
    recoveredValue0 := options.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006f3d0; bytecode file offset 0x96bf7c"
!EtasOptionsTableListWidget methodsFor: 'recovered'!
nameColumnWidth
    | recoveredValue0 |
    recoveredValue0 := nameColumnWidth.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006f7b0; bytecode file offset 0x96c1f4"
!EtasOptionsTableListWidget methodsFor: 'recovered'!
valueColumnWidth
    | recoveredValue0 |
    recoveredValue0 := valueColumnWidth.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20078904; bytecode file offset 0x9757c8"
!EtasOptionsTableListWidget methodsFor: 'recovered'!
isTableList
    ^true
! !

"ASDBase.ic method 0x200989b4; bytecode file offset 0x995850"
!EtasOptionsTableListWidget methodsFor: 'recovered'!
itemHeight: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) optionsTableList.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) itemHeight: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20098d74; bytecode file offset 0x995850"
!EtasOptionsTableListWidget methodsFor: 'recovered'!
headingFontList: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) tableList.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) headingFontList: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a8be8; bytecode file offset 0x9a54ac"
!EtasOptionsTableListWidget methodsFor: 'recovered'!
options: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    options := recoveredValue0.
    (self) updateContents.
    ^self
! !

"ASDBase.ic method 0x200b3b7c; bytecode file offset 0x9b0488"
!EtasOptionsTableListWidget methodsFor: 'recovered'!
widgetSplitBar
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) widgetDictionary.
    recoveredValue1 := [].
    recoveredValue2 := (recoveredValue0) at: ('splitBar') ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200c4a34; bytecode file offset 0x9c16b0"
!EtasOptionsTableListWidget methodsFor: 'recovered'!
hierarchyCallback: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    hierarchyCallback := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4e20; bytecode file offset 0x9c1afc"
!EtasOptionsTableListWidget methodsFor: 'recovered'!
endEditCallback: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    endEditCallback := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5470; bytecode file offset 0x9c1f64"
!EtasOptionsTableListWidget methodsFor: 'recovered'!
selectionPolicy: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    selectionPolicy := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c593c; bytecode file offset 0x9c22c8"
!EtasOptionsTableListWidget methodsFor: 'recovered'!
suppressModified: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    suppressModified := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5b68; bytecode file offset 0x9c25bc"
!EtasOptionsTableListWidget methodsFor: 'recovered'!
nameColumnWidth: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    nameColumnWidth := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5f00; bytecode file offset 0x9c2804"
!EtasOptionsTableListWidget methodsFor: 'recovered'!
valueColumnWidth: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    valueColumnWidth := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200ca2b4; bytecode file offset 0x9c6b78"
!EtasOptionsTableListWidget methodsFor: 'recovered'!
optionTableListcellSingleSelectionCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) helpText.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := (recoveredValue1) item.
    recoveredValue3 := (recoveredValue2) text.
    (recoveredValue0) setString: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x201097dc; bytecode file offset 0xa060a4"
!EtasOptionsTableListWidget methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) helpText.
    recoveredValue1 := (self) defaultBackgroundGray.
    (recoveredValue0) backgroundColor: (recoveredValue1).
    recoveredValue2 := (self) optionsTableList.
    (recoveredValue2) itemHeight: (nil).
    ^self
! !

"ASDBase.ic method 0x2013b4b8; bytecode file offset 0xa37d78"
!EtasOptionsTableListWidget methodsFor: 'recovered'!
resetModified
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
            recoveredStack2 := [:block280cb70cArg1 | 
    | block280cb70cValue0 block280cb70cValue1 |
    block280cb70cValue0 := block280cb70cArg1.
    block280cb70cValue1 := (block280cb70cValue0) modified: (false).
    block280cb70cValue1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2013b4e0; bytecode file offset 0xa37da0"
!EtasOptionsTableListWidget methodsFor: 'recovered'!
setModified
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
            recoveredStack2 := [:block280cb730Arg1 | 
    | block280cb730Value0 block280cb730Value1 |
    block280cb730Value0 := block280cb730Arg1.
    block280cb730Value1 := (block280cb730Value0) modified: (true).
    block280cb730Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2015d718; bytecode file offset 0xa59fd8"
!EtasOptionsTableListWidget methodsFor: 'recovered'!
hierarchyCallback
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := hierarchyCallback.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := OrderedCollection.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) new: (recoveredStack3).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) hierarchyCallback: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := hierarchyCallback.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2015d794; bytecode file offset 0xa5a07c"
!EtasOptionsTableListWidget methodsFor: 'recovered'!
endEditCallback
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := endEditCallback.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := OrderedCollection.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) new: (recoveredStack3).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) endEditCallback: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := endEditCallback.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2019af1c; bytecode file offset 0xa977e8"
!EtasOptionsTableListWidget methodsFor: 'recovered'!
triggerHierarchyCallbackFor: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := RBOptionsDialogHierarchyCallbackData.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := options.
    (recoveredValue3) optionEntries: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    (recoveredValue2) hierarchyOptionEntry: (recoveredValue5).
    recoveredValue6 := RbOptionsDialogHierarchyCallback.
    recoveredValue7 := recoveredLocal1.
    (self) callCallbacks: (recoveredValue6) callData: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x201a74d0; bytecode file offset 0xaa3d9c"
!EtasOptionsTableListWidget methodsFor: 'recovered'!
fontList: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) helpText.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) fontList: (recoveredValue1).
    recoveredValue2 := (self) optionsTableList.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) fontList: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) fontStruct.
    recoveredValue7 := (recoveredValue6) height.
    recoveredValue8 := (recoveredValue7) + (6).
    (recoveredValue2) itemHeight: (recoveredValue8).
    ^self
! !

"ASDBase.ic method 0x201be9cc; bytecode file offset 0xabb2a0"
!EtasOptionsTableListWidget methodsFor: 'recovered'!
optionName: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := (recoveredValue0) item.
    recoveredValue2 := (recoveredValue1) name.
    recoveredValue3 := (recoveredValue2) asString.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) width.
    recoveredValue7 := CwText.
    recoveredValue8 := (recoveredValue7) lineDelimiter.
    recoveredValue9 := (self) wrapText: (recoveredValue4) width: (recoveredValue6) lineDelimiter: (recoveredValue8).
    recoveredLocal1 := recoveredValue9.
    recoveredValue10 := recoveredArg3.
    recoveredValue11 := recoveredLocal1.
    (recoveredValue10) value: (recoveredValue11).
    ^self
! !

"ASDBase.ic method 0x201e221c; bytecode file offset 0xadeae0"
!EtasOptionsTableListWidget methodsFor: 'recovered'!
modified
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := suppressModified.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := options.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := [:block280d64dcArg1 | 
    | block280d64dcValue0 block280d64dcValue1 |
    block280d64dcValue0 := block280d64dcArg1.
    block280d64dcValue1 := (block280d64dcValue0) modified.
    block280d64dcValue1
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) notNil.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201fa0bc; bytecode file offset 0xaf69a0"
!EtasOptionsTableListWidget methodsFor: 'recovered'!
heightOfParentNotebookWidgetForm: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'notebookWidgetForm'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) heightOfParentNotebookWidgetForm: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) height.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2020c23c; bytecode file offset 0xb08b00"
!EtasOptionsTableListWidget methodsFor: 'recovered'!
initialize
    | recoveredValue0 |
    super initialize.
    options := #().
    recoveredValue0 := XmCELLSINGLESELECT.
    selectionPolicy := recoveredValue0.
    suppressModified := false.
    nameColumnWidth := 150.
    valueColumnWidth := 110.
    ^self
! !

"ASDBase.ic method 0x202fe8e4; bytecode file offset 0xbfb1bc"
!EtasOptionsTableListWidget methodsFor: 'recovered'!
endEditValue: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) oldValue.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) newValue.
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedCells.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := [:recoveredBlock22Arg1 | 
    | recoveredBlock22Local1 recoveredBlock22Local2 recoveredBlock22Value0 recoveredBlock22Value1 recoveredBlock22Value2 recoveredBlock22Value3 recoveredBlock22Value4 recoveredBlock22Value5 recoveredBlock22Value6 recoveredBlock22Value7 recoveredBlock22Value8 recoveredBlock22Value9 recoveredBlock22Value10 recoveredBlock22Value11 |
    recoveredBlock22Value0 := options.
    recoveredBlock22Value1 := recoveredBlock22Arg1.
    recoveredBlock22Value2 := (recoveredBlock22Value1) y.
    recoveredBlock22Value3 := (recoveredBlock22Value0) at: (recoveredBlock22Value2).
    recoveredBlock22Local2 := recoveredBlock22Value3.
    recoveredBlock22Value4 := recoveredBlock22Local2.
    recoveredBlock22Value5 := (recoveredBlock22Value4) value.
    recoveredBlock22Local1 := recoveredBlock22Value5.
    recoveredBlock22Value6 := recoveredBlock22Local2.
    recoveredBlock22Value7 := recoveredArg3.
    recoveredBlock22Value8 := (recoveredBlock22Value7) newValue.
    (recoveredBlock22Value6) setValue: (recoveredBlock22Value8).
    recoveredBlock22Value9 := recoveredBlock22Local2.
    recoveredBlock22Value10 := recoveredBlock22Local1.
    recoveredBlock22Value11 := (self) triggerEndEditCallbackFor: (recoveredBlock22Value9) oldValue: (recoveredBlock22Value10).
    recoveredBlock22Value11
].
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203371c0; bytecode file offset 0xc33aac"
!EtasOptionsTableListWidget methodsFor: 'recovered'!
triggerEndEditCallbackFor: recoveredArg1 oldValue: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasOptionsDialogEndEditCallbackData.
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
            recoveredStack2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := options.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack2) optionEntries: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack2) item: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack2) oldValue: (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) modified: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := RbOptionsDialogEndEditCallback.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) callCallbacks: (recoveredStack1) callData: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionEntries.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := options.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0 == recoveredStack1) ifTrue: [recoveredPC := 47] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionEntries.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) options: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) setInputFocus.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) modified.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 59].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) tableList.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) refresh.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20397f24; bytecode file offset 0xc9481c"
!EtasOptionsTableListWidget methodsFor: 'recovered'!
createColumn: recoveredArg1 selector: recoveredArg2 clientData: recoveredArg3 width: recoveredArg4 editable: recoveredArg5
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 |
    recoveredValue0 := EwTableColumn.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg5.
    (recoveredValue2) editable: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg5.
    recoveredValue6 := (recoveredValue5) not.
    (recoveredValue4) etched: (recoveredValue6).
    recoveredValue7 := recoveredValue1.
    recoveredValue8 := recoveredArg1.
    (recoveredValue7) heading: (recoveredValue8).
    recoveredValue9 := recoveredValue1.
    recoveredValue10 := recoveredArg4.
    (recoveredValue9) width: (recoveredValue10).
    recoveredValue11 := recoveredValue1.
    (recoveredValue11) resizable: (true).
    recoveredValue12 := recoveredValue1.
    (recoveredValue12) showInUse: (false).
    recoveredValue13 := recoveredValue1.
    recoveredValue14 := XmALIGNMENTBEGINNING.
    (recoveredValue13) horizontalAlignment: (recoveredValue14).
    recoveredValue15 := recoveredValue1.
    recoveredValue16 := XmALIGNMENTBEGINNING.
    (recoveredValue15) horizontalHeadingAlignment: (recoveredValue16).
    recoveredLocal1 := recoveredValue1.
    recoveredValue17 := recoveredLocal1.
    recoveredValue18 := recoveredValue17.
    recoveredValue19 := XmNcellValueCallback.
    recoveredValue20 := recoveredArg2.
    recoveredValue21 := recoveredArg3.
    (recoveredValue18) addCallback: (recoveredValue19) receiver: (self) selector: (recoveredValue20) clientData: (recoveredValue21).
    recoveredValue22 := recoveredValue17.
    recoveredValue23 := XmNbeginEditCallback.
    recoveredValue24 := recoveredArg3.
    (recoveredValue22) addCallback: (recoveredValue23) receiver: (self) selector: ('beginEditValue:clientData:callData:') clientData: (recoveredValue24).
    recoveredValue25 := XmNendEditCallback.
    recoveredValue26 := recoveredArg3.
    (recoveredValue17) addCallback: (recoveredValue25) receiver: (self) selector: ('endEditValue:clientData:callData:') clientData: (recoveredValue26).
    recoveredValue27 := recoveredLocal1.
    ^recoveredValue27
! !

"ASDBase.ic method 0x203be7d8; bytecode file offset 0xcbb0c0"
!EtasOptionsTableListWidget methodsFor: 'recovered'!
beginEditValue: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
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
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) editable.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
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
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) isHierarchyOption.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) triggerHierarchyCallbackFor: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 36.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEditPolicyOn: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := (recoveredStack2) selectedCell.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) refreshCell: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1) doit: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1) endEditOn: (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) modified.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 69].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack1) triggerEndEditCallbackFor: (recoveredStack2) oldValue: (recoveredStack3).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredPC := 80.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack2) editPolicy: (recoveredStack3).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack1) doit: (recoveredStack2).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20453e38; bytecode file offset 0xd5073c"
!EtasOptionsTableListWidget methodsFor: 'recovered'!
optionValue: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) getValueString.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) backgroundColor.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 27] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := CgRGBColor.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) white.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) foregroundColor.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 41] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := CgRGBColor.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) black.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) fontList.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 57] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := RBFontGlobal.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) listFont.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) backgroundColor.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) foregroundColor.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) fontList.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 108] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := RBColoredStringIcon.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := CgIndexedPalette.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := (recoveredStack2) etasDefault.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := (recoveredStack2) nearestPixelValue: (recoveredStack3).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack3 := CgIndexedPalette.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack3 := (recoveredStack3) etasDefault.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack3 := (recoveredStack3) nearestPixelValue: (recoveredStack4).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := (recoveredStack1) lineColor: (recoveredStack2) backgroundColor: (recoveredStack3).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack3 := (recoveredStack3) fontStruct.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack2) font: (recoveredStack3).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := (recoveredStack1) string: (recoveredStack2).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2047f7c0; bytecode file offset 0xd7c0d4"
!EtasOptionsTableListWidget methodsFor: 'recovered'!
updateContents
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new: (2).
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := SCOption.
    recoveredValue3 := (self) nameColumnWidth.
    recoveredValue4 := (self) createColumn: (recoveredValue2) selector: ('optionName:clientData:callData:') clientData: (1) width: (recoveredValue3) editable: (false).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredLocal2.
    recoveredValue6 := recoveredLocal1.
    (recoveredValue5) add: (recoveredValue6).
    recoveredValue7 := SCValue.
    recoveredValue8 := (self) valueColumnWidth.
    recoveredValue9 := (self) createColumn: (recoveredValue7) selector: ('optionValue:clientData:callData:') clientData: (2) width: (recoveredValue8) editable: (true).
    recoveredLocal1 := recoveredValue9.
    recoveredValue10 := recoveredLocal2.
    recoveredValue11 := recoveredLocal1.
    (recoveredValue10) add: (recoveredValue11).
    recoveredValue12 := (self) optionsTableList.
    (recoveredValue12) updateDisplay.
    recoveredValue13 := (self) optionsTableList.
    recoveredValue14 := [
    | recoveredBlock69Value0 recoveredBlock69Value1 recoveredBlock69Value2 recoveredBlock69Value3 recoveredBlock69Value4 |
    recoveredBlock69Value0 := (self) optionsTableList.
    recoveredBlock69Value1 := recoveredBlock69Value0.
    recoveredBlock69Value2 := options.
    (recoveredBlock69Value1) items: (recoveredBlock69Value2).
    recoveredBlock69Value3 := recoveredLocal2.
    recoveredBlock69Value4 := (recoveredBlock69Value0) columns: (recoveredBlock69Value3).
    recoveredBlock69Value4
].
    (recoveredValue13) deferRedraw: (recoveredValue14).
    recoveredValue15 := (self) helpText.
    (recoveredValue15) setString: ('').
    recoveredValue16 := CwAppContext.
    recoveredValue17 := (recoveredValue16) default.
    recoveredValue18 := [
    | recoveredBlock102Value0 recoveredBlock102Value1 recoveredBlock102Value2 |
    recoveredBlock102Value0 := (self) optionsTableList.
    recoveredBlock102Value1 := (1) @ (1).
    (recoveredBlock102Value0) selectCell: (recoveredBlock102Value1) notify: (true).
    recoveredBlock102Value2 := (self) adjustColumnWidth.
    recoveredBlock102Value2
].
    (recoveredValue17) syncExecInUI: (recoveredValue18).
    ^self
! !

"ASDBase.ic method 0x205008f4; bytecode file offset 0xdfd20c"
!EtasOptionsTableListWidget methodsFor: 'recovered'!
adjustColumnWidth
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionsTableList.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) columns.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) width.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal9 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) columns.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal10 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) width.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := 10.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) fontList.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) fontStruct.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) last.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) heading.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) textWidth: (recoveredStack1).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) items.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredPC := 132.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) items.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) getValueString.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := (recoveredStack1) printString.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := ReadStream.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredPC := 123.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack2 := (recoveredStack2) nextLine.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := (recoveredStack1) textWidth: (recoveredStack2).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 118] ifFalse: [recoveredPC := 121].
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := (recoveredStack1) atEnd.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 128] ifFalse: [recoveredPC := 102].
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal4 isInteger]) ifTrue: [(recoveredLocal4 + 1 <= recoveredStack0) ifTrue: [recoveredLocal4 := recoveredLocal4 + 1. recoveredPC := 80] ifFalse: [recoveredLocal4 := nil. recoveredPC := 146]] ifFalse: [recoveredPC := 136].
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredLocal4 := recoveredStack3.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 144] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack0 := (recoveredStack0) last.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := (recoveredStack1) max: (recoveredStack2).
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            (recoveredStack0) width: (recoveredStack1).
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack1 := 'Call_67984'.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack0 := (recoveredStack0) horizontalScrollBar.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            (recoveredStack0) setValue: (recoveredStack1) notify: (recoveredStack2).
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20545e04; bytecode file offset 0xe42730"
!EtasOptionsTableListWidget methodsFor: 'recovered'!
wrapText: recoveredArg1 width: recoveredArg2 lineDelimiter: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 40.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) optionsTableList.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) fontList.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) fontStruct.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := 'e'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) textWidth: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) / (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) asInteger.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := ReadStream.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) lineDelimiter: (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredPC := 64.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := (recoveredStack2) nextLine.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) atEnd.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 71] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := WriteStream.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := Locale.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := (recoveredStack2) current.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := (recoveredStack2) preferredStringClass.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := [:recoveredBlock89Arg1 | 
    | recoveredBlock89Local1 recoveredBlock89Local2 recoveredBlock89Stack0 recoveredBlock89Stack1 recoveredBlock89Stack2 recoveredBlock89Stack3 recoveredBlock89PC recoveredBlock89Step recoveredBlock89Done recoveredBlock89Result |
    recoveredBlock89Stack0 := self.
    recoveredBlock89PC := 96.
    recoveredBlock89Done := false.
    [recoveredBlock89Done not] whileTrue: [
        recoveredBlock89Step := recoveredBlock89PC.
        recoveredBlock89Step = 96 ifTrue: [
            recoveredBlock89Stack1 := recoveredBlock89Arg1.
            recoveredBlock89PC := 99.
        ].
        recoveredBlock89Step = 99 ifTrue: [
            recoveredBlock89Stack2 := ' '.
            recoveredBlock89PC := 101.
        ].
        recoveredBlock89Step = 101 ifTrue: [
            recoveredBlock89Stack1 := (recoveredBlock89Stack1) asArrayOfSubstringsSeparatedBy: (recoveredBlock89Stack2).
            recoveredBlock89PC := 103.
        ].
        recoveredBlock89Step = 103 ifTrue: [
            recoveredBlock89Local2 := recoveredBlock89Stack1.
            recoveredBlock89PC := 106.
        ].
        recoveredBlock89Step = 106 ifTrue: [
            recoveredBlock89Stack1 := ''.
            recoveredBlock89PC := 108.
        ].
        recoveredBlock89Step = 108 ifTrue: [
            recoveredBlock89Local1 := recoveredBlock89Stack1.
            recoveredBlock89PC := 111.
        ].
        recoveredBlock89Step = 111 ifTrue: [
            recoveredBlock89Stack1 := recoveredLocal1.
            recoveredBlock89PC := 114.
        ].
        recoveredBlock89Step = 114 ifTrue: [
            recoveredBlock89Stack1 := (recoveredBlock89Stack1) isEmpty.
            recoveredBlock89PC := 116.
        ].
        recoveredBlock89Step = 116 ifTrue: [
            (recoveredBlock89Stack1) ifTrue: [recoveredBlock89PC := 125] ifFalse: [recoveredBlock89PC := 120].
        ].
        recoveredBlock89Step = 120 ifTrue: [
            recoveredBlock89Stack1 := recoveredLocal1.
            recoveredBlock89PC := 123.
        ].
        recoveredBlock89Step = 123 ifTrue: [
            (recoveredBlock89Stack1) cr.
            recoveredBlock89PC := 125.
        ].
        recoveredBlock89Step = 125 ifTrue: [
            recoveredBlock89Stack1 := recoveredBlock89Local2.
            recoveredBlock89PC := 128.
        ].
        recoveredBlock89Step = 128 ifTrue: [
            recoveredBlock89Stack2 := [:recoveredBlock89Block128Arg1 | 
    | recoveredBlock89Block128Stack0 recoveredBlock89Block128Stack1 recoveredBlock89Block128Stack2 recoveredBlock89Block128Stack3 recoveredBlock89Block128Stack4 recoveredBlock89Block128PC recoveredBlock89Block128Step recoveredBlock89Block128Done recoveredBlock89Block128Result |
    recoveredBlock89Block128Stack0 := nil.
    recoveredBlock89Block128PC := 134.
    recoveredBlock89Block128Done := false.
    [recoveredBlock89Block128Done not] whileTrue: [
        recoveredBlock89Block128Step := recoveredBlock89Block128PC.
        recoveredBlock89Block128Step = 134 ifTrue: [
            recoveredBlock89Block128Stack1 := recoveredBlock89Local1.
            recoveredBlock89Block128PC := 137.
        ].
        recoveredBlock89Block128Step = 137 ifTrue: [
            recoveredBlock89Block128Stack1 := (recoveredBlock89Block128Stack1) size.
            recoveredBlock89Block128PC := 139.
        ].
        recoveredBlock89Block128Step = 139 ifTrue: [
            recoveredBlock89Block128Stack2 := recoveredBlock89Block128Arg1.
            recoveredBlock89Block128PC := 140.
        ].
        recoveredBlock89Block128Step = 140 ifTrue: [
            recoveredBlock89Block128Stack2 := (recoveredBlock89Block128Stack2) size.
            recoveredBlock89Block128PC := 142.
        ].
        recoveredBlock89Block128Step = 142 ifTrue: [
            recoveredBlock89Block128Stack1 := (recoveredBlock89Block128Stack1) + (recoveredBlock89Block128Stack2).
            recoveredBlock89Block128PC := 143.
        ].
        recoveredBlock89Block128Step = 143 ifTrue: [
            recoveredBlock89Block128Stack2 := recoveredLocal3.
            recoveredBlock89Block128PC := 146.
        ].
        recoveredBlock89Block128Step = 146 ifTrue: [
            recoveredBlock89Block128Stack1 := (recoveredBlock89Block128Stack1) < (recoveredBlock89Block128Stack2).
            recoveredBlock89Block128PC := 147.
        ].
        recoveredBlock89Block128Step = 147 ifTrue: [
            (recoveredBlock89Block128Stack1) ifTrue: [recoveredBlock89Block128PC := 150] ifFalse: [recoveredBlock89Block128PC := 168].
        ].
        recoveredBlock89Block128Step = 150 ifTrue: [
            recoveredBlock89Block128Stack1 := recoveredBlock89Local1.
            recoveredBlock89Block128PC := 153.
        ].
        recoveredBlock89Block128Step = 153 ifTrue: [
            recoveredBlock89Block128Stack2 := recoveredBlock89Block128Arg1.
            recoveredBlock89Block128PC := 154.
        ].
        recoveredBlock89Block128Step = 154 ifTrue: [
            recoveredBlock89Block128Stack1 := (recoveredBlock89Block128Stack1) , (recoveredBlock89Block128Stack2).
            recoveredBlock89Block128PC := 156.
        ].
        recoveredBlock89Block128Step = 156 ifTrue: [
            recoveredBlock89Block128Stack2 := ' '.
            recoveredBlock89Block128PC := 158.
        ].
        recoveredBlock89Block128Step = 158 ifTrue: [
            recoveredBlock89Block128Stack1 := (recoveredBlock89Block128Stack1) , (recoveredBlock89Block128Stack2).
            recoveredBlock89Block128PC := 160.
        ].
        recoveredBlock89Block128Step = 160 ifTrue: [
            recoveredBlock89Block128Stack2 := recoveredBlock89Block128Stack1.
            recoveredBlock89Block128PC := 161.
        ].
        recoveredBlock89Block128Step = 161 ifTrue: [
            recoveredBlock89Local1 := recoveredBlock89Block128Stack2.
            recoveredBlock89Block128PC := 164.
        ].
        recoveredBlock89Block128Step = 164 ifTrue: [
            recoveredBlock89Block128PC := 196.
        ].
        recoveredBlock89Block128Step = 168 ifTrue: [
            recoveredBlock89Block128Stack1 := recoveredBlock89Local1.
            recoveredBlock89Block128PC := 171.
        ].
        recoveredBlock89Block128Step = 171 ifTrue: [
            recoveredBlock89Block128Stack1 := (recoveredBlock89Block128Stack1) notEmpty.
            recoveredBlock89Block128PC := 173.
        ].
        recoveredBlock89Block128Step = 173 ifTrue: [
            (recoveredBlock89Block128Stack1) ifTrue: [recoveredBlock89Block128PC := 176] ifFalse: [recoveredBlock89Block128PC := 187].
        ].
        recoveredBlock89Block128Step = 176 ifTrue: [
            recoveredBlock89Block128Stack1 := recoveredLocal1.
            recoveredBlock89Block128PC := 179.
        ].
        recoveredBlock89Block128Step = 179 ifTrue: [
            recoveredBlock89Block128Stack2 := recoveredBlock89Block128Stack1.
            recoveredBlock89Block128PC := 180.
        ].
        recoveredBlock89Block128Step = 180 ifTrue: [
            recoveredBlock89Block128Stack3 := recoveredBlock89Local1.
            recoveredBlock89Block128PC := 183.
        ].
        recoveredBlock89Block128Step = 183 ifTrue: [
            (recoveredBlock89Block128Stack2) nextPutAll: (recoveredBlock89Block128Stack3).
            recoveredBlock89Block128PC := 185.
        ].
        recoveredBlock89Block128Step = 185 ifTrue: [
            (recoveredBlock89Block128Stack1) cr.
            recoveredBlock89Block128PC := 187.
        ].
        recoveredBlock89Block128Step = 187 ifTrue: [
            recoveredBlock89Block128Stack1 := recoveredBlock89Block128Arg1.
            recoveredBlock89Block128PC := 188.
        ].
        recoveredBlock89Block128Step = 188 ifTrue: [
            recoveredBlock89Block128Stack2 := ' '.
            recoveredBlock89Block128PC := 190.
        ].
        recoveredBlock89Block128Step = 190 ifTrue: [
            recoveredBlock89Block128Stack1 := (recoveredBlock89Block128Stack1) , (recoveredBlock89Block128Stack2).
            recoveredBlock89Block128PC := 192.
        ].
        recoveredBlock89Block128Step = 192 ifTrue: [
            recoveredBlock89Block128Stack2 := recoveredBlock89Block128Stack1.
            recoveredBlock89Block128PC := 193.
        ].
        recoveredBlock89Block128Step = 193 ifTrue: [
            recoveredBlock89Local1 := recoveredBlock89Block128Stack2.
            recoveredBlock89Block128PC := 196.
        ].
        recoveredBlock89Block128Step = 196 ifTrue: [
            recoveredBlock89Block128Result := recoveredBlock89Block128Stack1.
            recoveredBlock89Block128Done := true.
        ].
    ].
    recoveredBlock89Block128Result
].
            recoveredBlock89PC := 197.
        ].
        recoveredBlock89Step = 197 ifTrue: [
            (recoveredBlock89Stack1) do: (recoveredBlock89Stack2).
            recoveredBlock89PC := 199.
        ].
        recoveredBlock89Step = 199 ifTrue: [
            recoveredBlock89Stack1 := recoveredLocal1.
            recoveredBlock89PC := 202.
        ].
        recoveredBlock89Step = 202 ifTrue: [
            recoveredBlock89Stack2 := recoveredBlock89Local1.
            recoveredBlock89PC := 205.
        ].
        recoveredBlock89Step = 205 ifTrue: [
            recoveredBlock89Stack1 := (recoveredBlock89Stack1) nextPutAll: (recoveredBlock89Stack2).
            recoveredBlock89PC := 207.
        ].
        recoveredBlock89Step = 207 ifTrue: [
            recoveredBlock89Result := recoveredBlock89Stack1.
            recoveredBlock89Done := true.
        ].
    ].
    recoveredBlock89Result
].
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack1 := (recoveredStack1) contents.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x205e6c68; bytecode file offset 0xee35fc"
!EtasOptionsTableListWidget methodsFor: 'recovered'!
createWidgetHierarchy
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) primaryWidget.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := LookupTable.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 'optionsTableList'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Value0 recoveredBlock19Value1 recoveredBlock19Value2 recoveredBlock19Value3 recoveredBlock19Value4 recoveredBlock19Value5 recoveredBlock19Value6 recoveredBlock19Value7 |
    recoveredBlock19Value0 := recoveredBlock19Arg1.
    recoveredBlock19Value1 := recoveredBlock19Value0.
    (recoveredBlock19Value1) editable: (true).
    recoveredBlock19Value2 := recoveredBlock19Value0.
    (recoveredBlock19Value2) lockedColumns: (1).
    recoveredBlock19Value3 := recoveredBlock19Value0.
    recoveredBlock19Value4 := selectionPolicy.
    (recoveredBlock19Value3) selectionPolicy: (recoveredBlock19Value4).
    recoveredBlock19Value5 := recoveredBlock19Value0.
    (recoveredBlock19Value5) applicationDrawnBackground: (true).
    recoveredBlock19Value6 := XmETCHCELLS.
    recoveredBlock19Value7 := (recoveredBlock19Value0) headingVisualStyle: (recoveredBlock19Value6).
    recoveredBlock19Value7
].
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) createScrolledTableList: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := 'aScrolledTableList1'.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := 'optionsTableList'.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := 'helpText'.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := [:block2811abd4Arg1 | 
    | block2811abd4Value0 block2811abd4Value1 block2811abd4Value2 block2811abd4Value3 block2811abd4Value4 |
    block2811abd4Value0 := block2811abd4Arg1.
    block2811abd4Value1 := block2811abd4Value0.
    (block2811abd4Value1) editable: (false).
    block2811abd4Value2 := block2811abd4Value0.
    (block2811abd4Value2) wordWrap: (true).
    block2811abd4Value3 := XmMULTILINEEDIT.
    block2811abd4Value4 := (block2811abd4Value0) editMode: (block2811abd4Value3).
    block2811abd4Value4
].
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := (recoveredStack0) createScrolledText: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := 'aScrolledText'.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := 'helpText'.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := 'splitBar'.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack2 := [:recoveredBlock150Arg1 | 
    | recoveredBlock150Value0 recoveredBlock150Value1 recoveredBlock150Value2 recoveredBlock150Value3 recoveredBlock150Value4 recoveredBlock150Value5 recoveredBlock150Value6 recoveredBlock150Value7 recoveredBlock150Value8 recoveredBlock150Value9 recoveredBlock150Value10 |
    recoveredBlock150Value0 := recoveredBlock150Arg1.
    recoveredBlock150Value1 := recoveredBlock150Value0.
    recoveredBlock150Value2 := CgRGBColor.
    recoveredBlock150Value3 := (recoveredBlock150Value2) gray.
    (recoveredBlock150Value1) foregroundColor: (recoveredBlock150Value3).
    recoveredBlock150Value4 := recoveredBlock150Value0.
    recoveredBlock150Value5 := XmHORIZONTAL.
    (recoveredBlock150Value4) orientation: (recoveredBlock150Value5).
    recoveredBlock150Value6 := recoveredBlock150Arg1.
    recoveredBlock150Value7 := (recoveredBlock150Value6) parent.
    recoveredBlock150Value8 := (self) heightOfParentNotebookWidgetForm: (recoveredBlock150Value7).
    recoveredBlock150Value9 := (recoveredBlock150Value8) - (160).
    recoveredBlock150Value10 := (recoveredBlock150Value0) y: (recoveredBlock150Value9).
    recoveredBlock150Value10
].
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack0 := (recoveredStack0) createRBSplitBar: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := 'splitBar'.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack1 := [:recoveredBlock202Arg1 | 
    | recoveredBlock202Value0 recoveredBlock202Value1 recoveredBlock202Value2 recoveredBlock202Value3 recoveredBlock202Value4 recoveredBlock202Value5 recoveredBlock202Value6 recoveredBlock202Value7 recoveredBlock202Value8 recoveredBlock202Value9 recoveredBlock202Value10 recoveredBlock202Value11 recoveredBlock202Value12 recoveredBlock202Value13 recoveredBlock202Value14 recoveredBlock202Value15 |
    recoveredBlock202Value0 := recoveredBlock202Arg1.
    recoveredBlock202Value1 := recoveredBlock202Value0.
    recoveredBlock202Value2 := XmATTACHWIDGET.
    (recoveredBlock202Value1) topAttachment: (recoveredBlock202Value2).
    recoveredBlock202Value3 := recoveredBlock202Value0.
    recoveredBlock202Value4 := recoveredLocal1.
    (recoveredBlock202Value3) topWidget: (recoveredBlock202Value4).
    recoveredBlock202Value5 := recoveredBlock202Value0.
    (recoveredBlock202Value5) topOffset: (5).
    recoveredBlock202Value6 := recoveredBlock202Value0.
    recoveredBlock202Value7 := XmATTACHFORM.
    (recoveredBlock202Value6) bottomAttachment: (recoveredBlock202Value7).
    recoveredBlock202Value8 := recoveredBlock202Value0.
    (recoveredBlock202Value8) bottomOffset: (0).
    recoveredBlock202Value9 := recoveredBlock202Value0.
    recoveredBlock202Value10 := XmATTACHFORM.
    (recoveredBlock202Value9) leftAttachment: (recoveredBlock202Value10).
    recoveredBlock202Value11 := recoveredBlock202Value0.
    (recoveredBlock202Value11) leftOffset: (0).
    recoveredBlock202Value12 := recoveredBlock202Value0.
    recoveredBlock202Value13 := XmATTACHFORM.
    (recoveredBlock202Value12) rightAttachment: (recoveredBlock202Value13).
    recoveredBlock202Value14 := recoveredBlock202Value0.
    (recoveredBlock202Value14) rightOffset: (0).
    recoveredBlock202Value15 := (recoveredBlock202Value0) height: (45).
    recoveredBlock202Value15
].
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack1 := [:block2811abf8Arg1 | 
    | block2811abf8Value0 block2811abf8Value1 block2811abf8Value2 block2811abf8Value3 block2811abf8Value4 block2811abf8Value5 block2811abf8Value6 |
    block2811abf8Value0 := block2811abf8Arg1.
    block2811abf8Value1 := block2811abf8Value0.
    block2811abf8Value2 := XmATTACHFORM.
    (block2811abf8Value1) leftAttachment: (block2811abf8Value2).
    block2811abf8Value3 := block2811abf8Value0.
    (block2811abf8Value3) leftOffset: (0).
    block2811abf8Value4 := block2811abf8Value0.
    block2811abf8Value5 := XmATTACHFORM.
    (block2811abf8Value4) rightAttachment: (block2811abf8Value5).
    block2811abf8Value6 := (block2811abf8Value0) rightOffset: (0).
    block2811abf8Value6
].
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack1 := [:recoveredBlock296Arg1 | 
    | recoveredBlock296Value0 recoveredBlock296Value1 recoveredBlock296Value2 recoveredBlock296Value3 recoveredBlock296Value4 recoveredBlock296Value5 recoveredBlock296Value6 recoveredBlock296Value7 recoveredBlock296Value8 recoveredBlock296Value9 recoveredBlock296Value10 recoveredBlock296Value11 recoveredBlock296Value12 recoveredBlock296Value13 recoveredBlock296Value14 |
    recoveredBlock296Value0 := recoveredBlock296Arg1.
    recoveredBlock296Value1 := recoveredBlock296Value0.
    recoveredBlock296Value2 := XmATTACHWIDGET.
    (recoveredBlock296Value1) bottomAttachment: (recoveredBlock296Value2).
    recoveredBlock296Value3 := recoveredBlock296Value0.
    recoveredBlock296Value4 := recoveredLocal1.
    (recoveredBlock296Value3) bottomWidget: (recoveredBlock296Value4).
    recoveredBlock296Value5 := recoveredBlock296Value0.
    (recoveredBlock296Value5) bottomOffset: (5).
    recoveredBlock296Value6 := recoveredBlock296Value0.
    recoveredBlock296Value7 := XmATTACHFORM.
    (recoveredBlock296Value6) topAttachment: (recoveredBlock296Value7).
    recoveredBlock296Value8 := recoveredBlock296Value0.
    (recoveredBlock296Value8) topOffset: (0).
    recoveredBlock296Value9 := recoveredBlock296Value0.
    recoveredBlock296Value10 := XmATTACHFORM.
    (recoveredBlock296Value9) leftAttachment: (recoveredBlock296Value10).
    recoveredBlock296Value11 := recoveredBlock296Value0.
    (recoveredBlock296Value11) leftOffset: (0).
    recoveredBlock296Value12 := recoveredBlock296Value0.
    recoveredBlock296Value13 := XmATTACHFORM.
    (recoveredBlock296Value12) rightAttachment: (recoveredBlock296Value13).
    recoveredBlock296Value14 := (recoveredBlock296Value0) rightOffset: (0).
    recoveredBlock296Value14
].
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            recoveredStack1 := XmNexposeCallback.
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredStack3 := 'aForm1Expose:clientData:callData:'.
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            recoveredStack2 := XmNcellSingleSelectionCallback.
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            recoveredStack4 := 'optionTableListcellSingleSelectionCallback:clientData:callData:'.
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 376.
        ].
        recoveredStep = 376 ifTrue: [
            recoveredStack1 := XmNresizeCallback.
            recoveredPC := 378.
        ].
        recoveredStep = 378 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            recoveredStack3 := 'resizeOptionTableList:clientData:callData:'.
            recoveredPC := 381.
        ].
        recoveredStep = 381 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 388.
        ].
        recoveredStep = 388 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

