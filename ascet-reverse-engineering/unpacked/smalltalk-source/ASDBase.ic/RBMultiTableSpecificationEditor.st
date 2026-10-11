"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200431cc; bytecode file offset 0x9451f8"
!RBMultiTableSpecificationEditor methodsFor: 'recovered'!
separator
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('aSeparator1').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004703c; bytecode file offset 0x9451f8"
!RBMultiTableSpecificationEditor methodsFor: 'recovered'!
cancelButton
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('cancelButton').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2005a848; bytecode file offset 0x957a6c"
!RBMultiTableSpecificationEditor methodsFor: 'recovered'!
cancelButtonSingleSelection: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) cancel.
    ^self
! !

"ASDBase.ic method 0x2005b0dc; bytecode file offset 0x957a6c"
!RBMultiTableSpecificationEditor methodsFor: 'recovered'!
okButtonSingleSelection: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) ok.
    ^self
! !

"ASDBase.ic method 0x20071324; bytecode file offset 0x96dc00"
!RBMultiTableSpecificationEditor methodsFor: 'recovered'!
cancelFlag
    | recoveredValue0 |
    recoveredValue0 := cancelFlag.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007724c; bytecode file offset 0x9757c8"
!RBMultiTableSpecificationEditor methodsFor: 'recovered'!
isSpecificationMode
    ^true
! !

"ASDBase.ic method 0x20080118; bytecode file offset 0x97c9cc"
!RBMultiTableSpecificationEditor methodsFor: 'recovered'!
defaultWidth
    ^680
! !

"ASDBase.ic method 0x20080bcc; bytecode file offset 0x97d480"
!RBMultiTableSpecificationEditor methodsFor: 'recovered'!
defaultHeight
    ^215
! !

"ASDBase.ic method 0x200b5398; bytecode file offset 0x9b1ce4"
!RBMultiTableSpecificationEditor methodsFor: 'recovered'!
cancel
    | recoveredValue0 |
    recoveredValue0 := (self) tableEditor.
    (recoveredValue0) resetDataElementWithoutUpdate.
    (self) close.
    ^self
! !

"ASDBase.ic method 0x200c7884; bytecode file offset 0x9c4150"
!RBMultiTableSpecificationEditor methodsFor: 'recovered'!
cancelFlag: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    cancelFlag := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d6a28; bytecode file offset 0x9d32e4"
!RBMultiTableSpecificationEditor methodsFor: 'recovered'!
initialize
    super initialize.
    cancelFlag := true.
    ^self
! !

"ASDBase.ic method 0x20135700; bytecode file offset 0xa31fc4"
!RBMultiTableSpecificationEditor methodsFor: 'recovered'!
windowClose: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ('Muzaffar') == ('Call_67134').
    (self) cancel.
    recoveredValue1 := recoveredArg3.
    (recoveredValue1) doit: (false).
    ^self
! !

"ASDBase.ic method 0x20137a68; bytecode file offset 0xa34334"
!RBMultiTableSpecificationEditor methodsFor: 'recovered'!
showInfo
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) editWidget.
    recoveredValue1 := (recoveredValue0) showInfo.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (recoveredValue2) shell.
    recoveredValue4 := (recoveredValue3) osWidget.
    (recoveredValue4) setAppModal.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (recoveredValue5) shell.
    (recoveredValue6) setInputFocus.
    ^self
! !

"ASDBase.ic method 0x2014031c; bytecode file offset 0xa3cbe4"
!RBMultiTableSpecificationEditor methodsFor: 'recovered'!
cancelIfNoTableEditorFocus
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) focusWidget.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) tableEditorSW.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) cancel.
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

"ASDBase.ic method 0x201a18bc; bytecode file offset 0xa9e188"
!RBMultiTableSpecificationEditor methodsFor: 'recovered'!
resetAlignments
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) variableComboBox.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280d2960Arg1 | 
    | block280d2960Value0 block280d2960Value1 block280d2960Value2 block280d2960Value3 |
    block280d2960Value0 := block280d2960Arg1.
    block280d2960Value1 := block280d2960Value0.
    block280d2960Value2 := XmATTACHPOSITION.
    (block280d2960Value1) rightAttachment: (block280d2960Value2).
    block280d2960Value3 := (block280d2960Value0) rightPosition: (38).
    block280d2960Value3
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
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

"ASDBase.ic method 0x20231484; bytecode file offset 0xb2dd54"
!RBMultiTableSpecificationEditor methodsFor: 'recovered'!
okIfLegal
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) sdCalibrationExt.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) sdCalibrationExt.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasSpinButtonFocus.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
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
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) focusWidget.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) tableEditorSW.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 33] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) ok.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2028267c; bytecode file offset 0xb7ef58"
!RBMultiTableSpecificationEditor methodsFor: 'recovered'!
prompt
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) openAtCurrentMousePosition.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) osWidget.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) setAppModal.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := CwAppContext.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock15Value0 recoveredBlock15Value1 |
    recoveredBlock15Value0 := (self) isDestroyed.
    recoveredBlock15Value1 := (recoveredBlock15Value0) not.
    recoveredBlock15Value1
].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) readAndDispatchWhile: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) cancelFlag.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredPC := 41.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2028c56c; bytecode file offset 0xb88e40"
!RBMultiTableSpecificationEditor methodsFor: 'recovered'!
setTabbingOrder
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) variableComboBox.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := editorWidgets.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := [:block280e21b8Arg1 | 
    | block280e21b8Value0 block280e21b8Value1 |
    block280e21b8Value0 := block280e21b8Arg1.
    block280e21b8Value1 := (block280e21b8Value0) addTabGroup.
    block280e21b8Value1
].
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) showSDExtensions.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 31].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) sdCalibrationExt.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) okButton.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) cancelButton.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2029125c; bytecode file offset 0xb8db3c"
!RBMultiTableSpecificationEditor methodsFor: 'recovered'!
createViewMenu
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
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
            recoveredStack3 := '~View'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack2) title: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := 'toggleShowKeyMapping'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack4 := 'Show ~key help'.
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
            recoveredStack6 := [
    | recoveredBlock26Value0 |
    recoveredBlock26Value0 := (self) isShowKeyHelp.
    recoveredBlock26Value0
].
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) toggle: (recoveredStack6).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack2) addLine.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2032ea9c; bytecode file offset 0xc2b390"
!RBMultiTableSpecificationEditor methodsFor: 'recovered'!
createViewMenuFrom: recoveredArg1
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
            recoveredStack3 := '~View'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack2) title: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := 'menuResetEditedCells'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack4 := GMVResetEditedCellsMarker.
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
            (recoveredStack2) addLine.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := 'menuToggleShowKeyMapping'.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := 'Show ~Key Help'.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack4 := [
    true
].
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock44Value0 recoveredBlock44Value1 |
    recoveredBlock44Value0 := (self) keyMapText.
    recoveredBlock44Value1 := (recoveredBlock44Value0) isManaged.
    recoveredBlock44Value1
].
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1) add: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4) toggle: (recoveredStack5).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2033b740; bytecode file offset 0xc3801c"
!RBMultiTableSpecificationEditor methodsFor: 'recovered'!
updateKeyHelpTextFrom: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isShowKeyHelp.
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
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) type.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 'Mem'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) keyMapText.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := HTDataVectorEditor.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) setString: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRBDataVector.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) keyMapText.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := HTDataVectorEditor.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) setString: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRBTwoDCharTable.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) keyMapText.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := HTTwoDCharTableEditor.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) setString: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) keyMapText.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := HTOneDCharTableEditor.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) setString: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20354e34; bytecode file offset 0xc5172c"
!RBMultiTableSpecificationEditor methodsFor: 'recovered'!
installActionKeys
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 |
    super installActionKeys.
    recoveredValue0 := (self) widgetKeyActions.
    recoveredValue1 := (self) shell.
    recoveredValue2 := (recoveredValue0) at: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := XKCancel.
    (recoveredValue4) at: (recoveredValue5) put: ('cancelIfNoTableEditorFocus').
    recoveredValue6 := recoveredValue3.
    recoveredValue7 := XKEscape.
    (recoveredValue6) at: (recoveredValue7) put: ('cancelIfNoTableEditorFocus').
    recoveredValue8 := recoveredValue3.
    recoveredValue9 := XKEnd.
    (recoveredValue8) at: (recoveredValue9) put: ('cancelIfNoTableEditorFocus').
    recoveredValue10 := recoveredValue3.
    recoveredValue11 := Character.
    recoveredValue12 := (recoveredValue11) value: (13).
    (recoveredValue10) at: (recoveredValue12) put: ('okIfLegal').
    recoveredValue13 := recoveredValue3.
    recoveredValue14 := HKOk.
    (recoveredValue13) at: (recoveredValue14) put: ('ok').
    recoveredValue15 := recoveredValue3.
    recoveredValue16 := HKCancel.
    (recoveredValue15) at: (recoveredValue16) put: ('cancel').
    ^self
! !

"ASDBase.ic method 0x203704c4; bytecode file offset 0xc6cdac"
!RBMultiTableSpecificationEditor methodsFor: 'recovered'!
updateAlignments
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRBDataVector.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRBDataMatrix.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) variableComboBox.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Value0 recoveredBlock18Value1 recoveredBlock18Value2 recoveredBlock18Value3 recoveredBlock18Value4 recoveredBlock18Value5 |
    recoveredBlock18Value0 := recoveredBlock18Arg1.
    recoveredBlock18Value1 := recoveredBlock18Value0.
    recoveredBlock18Value2 := XmATTACHWIDGET.
    (recoveredBlock18Value1) rightAttachment: (recoveredBlock18Value2).
    recoveredBlock18Value3 := recoveredBlock18Value0.
    recoveredBlock18Value4 := (self) separator.
    (recoveredBlock18Value3) rightWidget: (recoveredBlock18Value4).
    recoveredBlock18Value5 := (recoveredBlock18Value0) rightOffset: (10).
    recoveredBlock18Value5
].
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredPC := 67.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) variableComboBox.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := [:block280f19ecArg1 | 
    | block280f19ecValue0 block280f19ecValue1 block280f19ecValue2 block280f19ecValue3 |
    block280f19ecValue0 := block280f19ecArg1.
    block280f19ecValue1 := block280f19ecValue0.
    block280f19ecValue2 := XmATTACHPOSITION.
    (block280f19ecValue1) rightAttachment: (block280f19ecValue2).
    block280f19ecValue3 := (block280f19ecValue0) rightPosition: (38).
    block280f19ecValue3
].
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203d9598; bytecode file offset 0xcd5e9c"
!RBMultiTableSpecificationEditor methodsFor: 'recovered'!
ok
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) writeProtection.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 11].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) cancel.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := 'Muzaffar'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := 'Call_67134'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := 'Muzaffar'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := 'EHI_72777'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) variables.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) refVariables.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) values.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) equalValues: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 57] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) monotonyViolationPosition.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 55] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) monotonyViolationOccuredAt: (recoveredStack1) forDataElement: (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) sdCalibrationExt.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := [:block280f7de8Arg1 | 
    | block280f7de8Value0 block280f7de8Value1 |
    block280f7de8Value0 := block280f7de8Arg1.
    block280f7de8Value1 := (block280f7de8Value0) updateDataElement.
    block280f7de8Value1
].
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) tableEditor.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack0) endEdit.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack1) cancelFlag: (recoveredStack2).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20419ac4; bytecode file offset 0xd163bc"
!RBMultiTableSpecificationEditor methodsFor: 'recovered'!
monotonyViolationOccuredAt: recoveredArg1 forDataElement: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Muzaffar'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_67134'.
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
            recoveredStack1 := actEditor.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) tableEditor.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack2) resetMarkedCells.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) deselectAllCells.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) errorMonotonyViolatedForDataElement: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := actEditor.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) tableEditor.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) setInputFocus.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) isPoint.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := actEditor.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) tableEditor.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) inputMapper.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) selectWithEditCheck: (recoveredStack1) doBetween: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := actEditor.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) tableEditor.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) cursorCell: (recoveredStack1) forceFullyVisible: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredPC := 98.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := actEditor.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) tableEditor.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) highlightedHeadingIndexes.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := [:recoveredBlock63Arg1 | 
    | recoveredBlock63Value0 recoveredBlock63Value1 recoveredBlock63Value2 recoveredBlock63Value3 |
    recoveredBlock63Value0 := actEditor.
    recoveredBlock63Value1 := (recoveredBlock63Value0) tableEditor.
    recoveredBlock63Value2 := recoveredBlock63Arg1.
    recoveredBlock63Value3 := (recoveredBlock63Value1) deselectionHeadingEventOn: (recoveredBlock63Value2) commit: (false).
    recoveredBlock63Value3
].
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := actEditor.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) tableEditor.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack4 := false.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack1) selectionHeadingEventFrom: (recoveredStack2) to: (recoveredStack3) commit: (recoveredStack4).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := (recoveredStack1) @ (recoveredStack2).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack0) cursorCell: (recoveredStack1) forceFullyVisible: (recoveredStack2).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20467664; bytecode file offset 0xd63f80"
!RBMultiTableSpecificationEditor methodsFor: 'recovered'!
optionsMenu
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) tableEditor.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionsMenu.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := 'changeToPhysView'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) findEntryNamed: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := 'showInfo'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := 'changeToPhysView'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := 'menuChangeTitle'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := GMVChangeTitle.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack4 := Dots.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack4 := [
    true
].
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) add: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4) before: (recoveredStack5).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := 'menuChangeTitle'.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) addLineAfter: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := 'menuToggleOptimizeSize'.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := 'Optimize Size'.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack4 := [
    true
].
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock62Value0 |
    recoveredBlock62Value0 := (self) optimizeSize.
    recoveredBlock62Value0
].
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack7 := 'menuChangeTitle'.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack1) add: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4) toggle: (recoveredStack5) for: (recoveredStack6) after: (recoveredStack7).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := 'menuToggleOptimizeSize'.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack1) addLineAfter: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := 'menuSetup'.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack3 := 'Dis~play Setup'.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack4 := Dots.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack4 := [
    true
].
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack1) add: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4) before: (recoveredStack5).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := 'menuSetup'.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack3 := CwAccelerator.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack4 := ControlMask.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack5 := XKS.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack3 := (recoveredStack3) mask: (recoveredStack4) keysym: (recoveredStack5).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack4 := 'Ctrl+S'.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack1) setAcceleratorAt: (recoveredStack2) to: (recoveredStack3) text: (recoveredStack4).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2049e0ec; bytecode file offset 0xd9aa3c"
!RBMultiTableSpecificationEditor methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := widgetDictionary.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) values.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := (self) initAsDragDropTarget: (recoveredBlock7Value0).
    recoveredBlock7Value1
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultMinSize.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) minSize: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := 'EditorTable'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := 'EditorTable32'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) iconSmall: (recoveredStack1) large: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultLabel.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) title: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := 'variableLabel'.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := LLVariablesShort.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := ':'.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack1) createEditors.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1) installActionKeys.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack1) initializeMenuBar.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack3 := 'aVariablesComboBox'.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := (recoveredStack2) widgetAt: (recoveredStack3).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack1) initAsDragDropSource: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := variables.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := (recoveredStack2) first.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack1) dataElement: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack1) updateList.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack1) createSDExtWidget.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack1) grayBackground.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack1) setTabbingOrder.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack1) updateSelectedData.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack1) initializeKeyHelpDisplay.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack0) updateFonts.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := (recoveredStack0) showSDExtensions.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 106] ifFalse: [recoveredPC := 122].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := (recoveredStack0) sdCalibrationExt.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := XmATTACHWIDGET.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack1) bottomAttachment: (recoveredStack2).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := (recoveredStack1) okButton.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack0) bottomWidget: (recoveredStack1).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredPC := 135.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := (recoveredStack0) tableEditor.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := XmATTACHWIDGET.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            (recoveredStack1) bottomAttachment: (recoveredStack2).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := (recoveredStack1) okButton.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            (recoveredStack0) bottomWidget: (recoveredStack1).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204b2818; bytecode file offset 0xdaf130"
!RBMultiTableSpecificationEditor methodsFor: 'recovered'!
popupMenuFor: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) editMenu.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := 'redo'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack2) removeLineAfter: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := 'undo'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack4 := [].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack2) remove: (recoveredStack3) ifAbsent: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := 'redo'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack4 := [].
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack2) remove: (recoveredStack3) ifAbsent: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := 'copyAllIntoClipboard'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack4 := [].
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack2) remove: (recoveredStack3) ifAbsent: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack2) addLine.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := 'menuSetup'.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack4 := GMVDisplaySetup.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack5 := Dots.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack4 := (recoveredStack4) , (recoveredStack5).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack5 := [
    true
].
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack3 := 'changeToPhysView'.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack4 := GMVChangeToPhysView.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack5 := [
    true
].
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack6 := [
    | recoveredBlock74Value0 recoveredBlock74Value1 recoveredBlock74Value2 |
    recoveredBlock74Value0 := recoveredArg1.
    recoveredBlock74Value1 := (recoveredBlock74Value0) displayModeIsHex.
    recoveredBlock74Value2 := (recoveredBlock74Value1) not.
    recoveredBlock74Value2
].
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) toggle: (recoveredStack6).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack3 := 'changeToHexView'.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack4 := GMVChangeToHexView.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack5 := [
    true
].
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack6 := [
    | recoveredBlock102Value0 recoveredBlock102Value1 |
    recoveredBlock102Value0 := recoveredArg1.
    recoveredBlock102Value1 := (recoveredBlock102Value0) displayModeIsHex.
    recoveredBlock102Value1
].
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) toggle: (recoveredStack6).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack2) addLine.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack3 := 'showInfo'.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack4 := GMVInfoAbout.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack5 := Dots.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack4 := (recoveredStack4) , (recoveredStack5).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack5 := [
    true
].
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2050900c; bytecode file offset 0xe0591c"
!RBMultiTableSpecificationEditor methodsFor: 'recovered'!
updateSelectedData
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 |
    recoveredBlock4Value0 := (self) variableComboBox.
    recoveredBlock4Value1 := [
    | recoveredBlock4Block11Stack0 recoveredBlock4Block11Stack1 recoveredBlock4Block11Stack2 recoveredBlock4Block11Stack3 recoveredBlock4Block11PC recoveredBlock4Block11Step recoveredBlock4Block11Done recoveredBlock4Block11Result |
    recoveredBlock4Block11Stack0 := self.
    recoveredBlock4Block11PC := 18.
    recoveredBlock4Block11Done := false.
    [recoveredBlock4Block11Done not] whileTrue: [
        recoveredBlock4Block11Step := recoveredBlock4Block11PC.
        recoveredBlock4Block11Step = 18 ifTrue: [
            recoveredBlock4Block11Stack0 := (recoveredBlock4Block11Stack0) tableEditor.
            recoveredBlock4Block11PC := 19.
        ].
        recoveredBlock4Block11Step = 19 ifTrue: [
            recoveredBlock4Block11Stack0 := (recoveredBlock4Block11Stack0) height.
            recoveredBlock4Block11PC := 20.
        ].
        recoveredBlock4Block11Step = 20 ifTrue: [
            recoveredLocal2 := recoveredBlock4Block11Stack0.
            recoveredBlock4Block11PC := 23.
        ].
        recoveredBlock4Block11Step = 23 ifTrue: [
            recoveredBlock4Block11Stack0 := self.
            recoveredBlock4Block11PC := 24.
        ].
        recoveredBlock4Block11Step = 24 ifTrue: [
            recoveredBlock4Block11Stack0 := (recoveredBlock4Block11Stack0) variableComboBox.
            recoveredBlock4Block11PC := 25.
        ].
        recoveredBlock4Block11Step = 25 ifTrue: [
            recoveredBlock4Block11Stack0 := (recoveredBlock4Block11Stack0) getString.
            recoveredBlock4Block11PC := 26.
        ].
        recoveredBlock4Block11Step = 26 ifTrue: [
            recoveredLocal4 := recoveredBlock4Block11Stack0.
            recoveredBlock4Block11PC := 29.
        ].
        recoveredBlock4Block11Step = 29 ifTrue: [
            recoveredBlock4Block11Stack0 := recoveredLocal4.
            recoveredBlock4Block11PC := 32.
        ].
        recoveredBlock4Block11Step = 32 ifTrue: [
            recoveredBlock4Block11Stack1 := ' <'.
            recoveredBlock4Block11PC := 34.
        ].
        recoveredBlock4Block11Step = 34 ifTrue: [
            recoveredBlock4Block11Stack0 := (recoveredBlock4Block11Stack0) asArrayOfSubstringsSeparatedBy: (recoveredBlock4Block11Stack1).
            recoveredBlock4Block11PC := 36.
        ].
        recoveredBlock4Block11Step = 36 ifTrue: [
            recoveredBlock4Block11Stack0 := (recoveredBlock4Block11Stack0) first.
            recoveredBlock4Block11PC := 38.
        ].
        recoveredBlock4Block11Step = 38 ifTrue: [
            recoveredLocal4 := recoveredBlock4Block11Stack0.
            recoveredBlock4Block11PC := 41.
        ].
        recoveredBlock4Block11Step = 41 ifTrue: [
            recoveredBlock4Block11Stack0 := self.
            recoveredBlock4Block11PC := 42.
        ].
        recoveredBlock4Block11Step = 42 ifTrue: [
            recoveredBlock4Block11Stack1 := variables.
            recoveredBlock4Block11PC := 44.
        ].
        recoveredBlock4Block11Step = 44 ifTrue: [
            recoveredBlock4Block11Stack2 := [:recoveredBlock4Block11Block44Arg1 | 
    | recoveredBlock4Block11Block44Value0 recoveredBlock4Block11Block44Value1 recoveredBlock4Block11Block44Value2 recoveredBlock4Block11Block44Value3 |
    recoveredBlock4Block11Block44Value0 := recoveredBlock4Block11Block44Arg1.
    recoveredBlock4Block11Block44Value1 := (recoveredBlock4Block11Block44Value0) wName.
    recoveredBlock4Block11Block44Value2 := recoveredLocal4.
    recoveredBlock4Block11Block44Value3 := (recoveredBlock4Block11Block44Value1) = (recoveredBlock4Block11Block44Value2).
    recoveredBlock4Block11Block44Value3
].
            recoveredBlock4Block11PC := 58.
        ].
        recoveredBlock4Block11Step = 58 ifTrue: [
            recoveredBlock4Block11Stack1 := (recoveredBlock4Block11Stack1) detect: (recoveredBlock4Block11Stack2).
            recoveredBlock4Block11PC := 60.
        ].
        recoveredBlock4Block11Step = 60 ifTrue: [
            (recoveredBlock4Block11Stack0) dataElement: (recoveredBlock4Block11Stack1).
            recoveredBlock4Block11PC := 62.
        ].
        recoveredBlock4Block11Step = 62 ifTrue: [
            recoveredBlock4Block11Stack0 := self.
            recoveredBlock4Block11PC := 63.
        ].
        recoveredBlock4Block11Step = 63 ifTrue: [
            recoveredBlock4Block11Stack0 := (recoveredBlock4Block11Stack0) showSDExtensions.
            recoveredBlock4Block11PC := 65.
        ].
        recoveredBlock4Block11Step = 65 ifTrue: [
            (recoveredBlock4Block11Stack0) ifTrue: [recoveredBlock4Block11PC := 68] ifFalse: [recoveredBlock4Block11PC := 71].
        ].
        recoveredBlock4Block11Step = 68 ifTrue: [
            recoveredBlock4Block11Stack0 := self.
            recoveredBlock4Block11PC := 69.
        ].
        recoveredBlock4Block11Step = 69 ifTrue: [
            (recoveredBlock4Block11Stack0) updateSDExtensionWidget.
            recoveredBlock4Block11PC := 71.
        ].
        recoveredBlock4Block11Step = 71 ifTrue: [
            recoveredBlock4Block11Stack0 := nil.
            recoveredBlock4Block11PC := 72.
        ].
        recoveredBlock4Block11Step = 72 ifTrue: [
            recoveredBlock4Block11Stack1 := self.
            recoveredBlock4Block11PC := 73.
        ].
        recoveredBlock4Block11Step = 73 ifTrue: [
            recoveredBlock4Block11Stack1 := (recoveredBlock4Block11Stack1) optimizeSize.
            recoveredBlock4Block11PC := 75.
        ].
        recoveredBlock4Block11Step = 75 ifTrue: [
            (recoveredBlock4Block11Stack1) ifTrue: [recoveredBlock4Block11PC := 78] ifFalse: [recoveredBlock4Block11PC := 173].
        ].
        recoveredBlock4Block11Step = 78 ifTrue: [
            recoveredBlock4Block11PC := 79.
        ].
        recoveredBlock4Block11Step = 79 ifTrue: [
            recoveredBlock4Block11Stack0 := self.
            recoveredBlock4Block11PC := 80.
        ].
        recoveredBlock4Block11Step = 80 ifTrue: [
            (recoveredBlock4Block11Stack0) updateAlignments.
            recoveredBlock4Block11PC := 82.
        ].
        recoveredBlock4Block11Step = 82 ifTrue: [
            recoveredBlock4Block11Stack0 := self.
            recoveredBlock4Block11PC := 83.
        ].
        recoveredBlock4Block11Step = 83 ifTrue: [
            recoveredBlock4Block11Stack0 := (recoveredBlock4Block11Stack0) shell.
            recoveredBlock4Block11PC := 85.
        ].
        recoveredBlock4Block11Step = 85 ifTrue: [
            recoveredBlock4Block11Stack0 := (recoveredBlock4Block11Stack0) isRealized.
            recoveredBlock4Block11PC := 87.
        ].
        recoveredBlock4Block11Step = 87 ifTrue: [
            (recoveredBlock4Block11Stack0) ifTrue: [recoveredBlock4Block11PC := 90] ifFalse: [recoveredBlock4Block11PC := 118].
        ].
        recoveredBlock4Block11Step = 90 ifTrue: [
            recoveredBlock4Block11Stack0 := recoveredLocal2.
            recoveredBlock4Block11PC := 93.
        ].
        recoveredBlock4Block11Step = 93 ifTrue: [
            recoveredBlock4Block11Stack1 := self.
            recoveredBlock4Block11PC := 94.
        ].
        recoveredBlock4Block11Step = 94 ifTrue: [
            recoveredBlock4Block11Stack1 := (recoveredBlock4Block11Stack1) tableEditor.
            recoveredBlock4Block11PC := 95.
        ].
        recoveredBlock4Block11Step = 95 ifTrue: [
            recoveredBlock4Block11Stack1 := (recoveredBlock4Block11Stack1) defaultHeight.
            recoveredBlock4Block11PC := 97.
        ].
        recoveredBlock4Block11Step = 97 ifTrue: [
            recoveredBlock4Block11Stack0 := (recoveredBlock4Block11Stack0) - (recoveredBlock4Block11Stack1).
            recoveredBlock4Block11PC := 98.
        ].
        recoveredBlock4Block11Step = 98 ifTrue: [
            recoveredLocal3 := recoveredBlock4Block11Stack0.
            recoveredBlock4Block11PC := 101.
        ].
        recoveredBlock4Block11Step = 101 ifTrue: [
            recoveredBlock4Block11Stack0 := self.
            recoveredBlock4Block11PC := 102.
        ].
        recoveredBlock4Block11Step = 102 ifTrue: [
            recoveredBlock4Block11Stack0 := (recoveredBlock4Block11Stack0) shell.
            recoveredBlock4Block11PC := 104.
        ].
        recoveredBlock4Block11Step = 104 ifTrue: [
            recoveredBlock4Block11Stack1 := self.
            recoveredBlock4Block11PC := 105.
        ].
        recoveredBlock4Block11Step = 105 ifTrue: [
            recoveredBlock4Block11Stack1 := (recoveredBlock4Block11Stack1) shell.
            recoveredBlock4Block11PC := 107.
        ].
        recoveredBlock4Block11Step = 107 ifTrue: [
            recoveredBlock4Block11Stack1 := (recoveredBlock4Block11Stack1) height.
            recoveredBlock4Block11PC := 108.
        ].
        recoveredBlock4Block11Step = 108 ifTrue: [
            recoveredBlock4Block11Stack2 := recoveredLocal3.
            recoveredBlock4Block11PC := 111.
        ].
        recoveredBlock4Block11Step = 111 ifTrue: [
            recoveredBlock4Block11Stack1 := (recoveredBlock4Block11Stack1) - (recoveredBlock4Block11Stack2).
            recoveredBlock4Block11PC := 112.
        ].
        recoveredBlock4Block11Step = 112 ifTrue: [
            (recoveredBlock4Block11Stack0) height: (recoveredBlock4Block11Stack1).
            recoveredBlock4Block11PC := 114.
        ].
        recoveredBlock4Block11Step = 114 ifTrue: [
            recoveredBlock4Block11PC := 153.
        ].
        recoveredBlock4Block11Step = 118 ifTrue: [
            recoveredBlock4Block11Stack0 := self.
            recoveredBlock4Block11PC := 119.
        ].
        recoveredBlock4Block11Step = 119 ifTrue: [
            recoveredBlock4Block11Stack0 := (recoveredBlock4Block11Stack0) isShowKeyHelp.
            recoveredBlock4Block11PC := 121.
        ].
        recoveredBlock4Block11Step = 121 ifTrue: [
            (recoveredBlock4Block11Stack0) ifTrue: [recoveredBlock4Block11PC := 124] ifFalse: [recoveredBlock4Block11PC := 140].
        ].
        recoveredBlock4Block11Step = 124 ifTrue: [
            recoveredBlock4Block11Stack0 := self.
            recoveredBlock4Block11PC := 125.
        ].
        recoveredBlock4Block11Step = 125 ifTrue: [
            recoveredBlock4Block11Stack0 := (recoveredBlock4Block11Stack0) shell.
            recoveredBlock4Block11PC := 127.
        ].
        recoveredBlock4Block11Step = 127 ifTrue: [
            recoveredBlock4Block11Stack1 := self.
            recoveredBlock4Block11PC := 128.
        ].
        recoveredBlock4Block11Step = 128 ifTrue: [
            recoveredBlock4Block11Stack1 := (recoveredBlock4Block11Stack1) tableEditor.
            recoveredBlock4Block11PC := 129.
        ].
        recoveredBlock4Block11Step = 129 ifTrue: [
            recoveredBlock4Block11Stack1 := (recoveredBlock4Block11Stack1) defaultHeight.
            recoveredBlock4Block11PC := 131.
        ].
        recoveredBlock4Block11Step = 131 ifTrue: [
            recoveredBlock4Block11Stack2 := 150.
            recoveredBlock4Block11PC := 134.
        ].
        recoveredBlock4Block11Step = 134 ifTrue: [
            recoveredBlock4Block11Stack1 := (recoveredBlock4Block11Stack1) + (recoveredBlock4Block11Stack2).
            recoveredBlock4Block11PC := 135.
        ].
        recoveredBlock4Block11Step = 135 ifTrue: [
            (recoveredBlock4Block11Stack0) height: (recoveredBlock4Block11Stack1).
            recoveredBlock4Block11PC := 137.
        ].
        recoveredBlock4Block11Step = 137 ifTrue: [
            recoveredBlock4Block11PC := 153.
        ].
        recoveredBlock4Block11Step = 140 ifTrue: [
            recoveredBlock4Block11Stack0 := self.
            recoveredBlock4Block11PC := 141.
        ].
        recoveredBlock4Block11Step = 141 ifTrue: [
            recoveredBlock4Block11Stack0 := (recoveredBlock4Block11Stack0) shell.
            recoveredBlock4Block11PC := 143.
        ].
        recoveredBlock4Block11Step = 143 ifTrue: [
            recoveredBlock4Block11Stack1 := self.
            recoveredBlock4Block11PC := 144.
        ].
        recoveredBlock4Block11Step = 144 ifTrue: [
            recoveredBlock4Block11Stack1 := (recoveredBlock4Block11Stack1) tableEditor.
            recoveredBlock4Block11PC := 145.
        ].
        recoveredBlock4Block11Step = 145 ifTrue: [
            recoveredBlock4Block11Stack1 := (recoveredBlock4Block11Stack1) defaultHeight.
            recoveredBlock4Block11PC := 147.
        ].
        recoveredBlock4Block11Step = 147 ifTrue: [
            recoveredBlock4Block11Stack2 := 115.
            recoveredBlock4Block11PC := 150.
        ].
        recoveredBlock4Block11Step = 150 ifTrue: [
            recoveredBlock4Block11Stack1 := (recoveredBlock4Block11Stack1) + (recoveredBlock4Block11Stack2).
            recoveredBlock4Block11PC := 151.
        ].
        recoveredBlock4Block11Step = 151 ifTrue: [
            (recoveredBlock4Block11Stack0) height: (recoveredBlock4Block11Stack1).
            recoveredBlock4Block11PC := 153.
        ].
        recoveredBlock4Block11Step = 153 ifTrue: [
            recoveredBlock4Block11Stack0 := self.
            recoveredBlock4Block11PC := 154.
        ].
        recoveredBlock4Block11Step = 154 ifTrue: [
            recoveredBlock4Block11Stack0 := (recoveredBlock4Block11Stack0) tableEditor.
            recoveredBlock4Block11PC := 155.
        ].
        recoveredBlock4Block11Step = 155 ifTrue: [
            recoveredBlock4Block11Stack0 := (recoveredBlock4Block11Stack0) defaultWidth.
            recoveredBlock4Block11PC := 157.
        ].
        recoveredBlock4Block11Step = 157 ifTrue: [
            recoveredLocal1 := recoveredBlock4Block11Stack0.
            recoveredBlock4Block11PC := 160.
        ].
        recoveredBlock4Block11Step = 160 ifTrue: [
            recoveredBlock4Block11Stack0 := self.
            recoveredBlock4Block11PC := 161.
        ].
        recoveredBlock4Block11Step = 161 ifTrue: [
            recoveredBlock4Block11Stack0 := (recoveredBlock4Block11Stack0) shell.
            recoveredBlock4Block11PC := 163.
        ].
        recoveredBlock4Block11Step = 163 ifTrue: [
            recoveredBlock4Block11Stack1 := recoveredLocal1.
            recoveredBlock4Block11PC := 166.
        ].
        recoveredBlock4Block11Step = 166 ifTrue: [
            recoveredBlock4Block11Stack2 := 130.
            recoveredBlock4Block11PC := 170.
        ].
        recoveredBlock4Block11Step = 170 ifTrue: [
            recoveredBlock4Block11Stack1 := (recoveredBlock4Block11Stack1) + (recoveredBlock4Block11Stack2).
            recoveredBlock4Block11PC := 171.
        ].
        recoveredBlock4Block11Step = 171 ifTrue: [
            recoveredBlock4Block11Stack0 := (recoveredBlock4Block11Stack0) width: (recoveredBlock4Block11Stack1).
            recoveredBlock4Block11PC := 173.
        ].
        recoveredBlock4Block11Step = 173 ifTrue: [
            recoveredBlock4Block11Result := recoveredBlock4Block11Stack0.
            recoveredBlock4Block11Done := true.
        ].
    ].
    recoveredBlock4Block11Result
].
    recoveredBlock4Value2 := (recoveredBlock4Value0) deferRedraw: (recoveredBlock4Value1).
    recoveredBlock4Value2
].
    (self) execShortOperation: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x20529724; bytecode file offset 0xe2606c"
!RBMultiTableSpecificationEditor methodsFor: 'recovered'!
createSDExtWidget
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) showSDExtensions.
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
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) form.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 'rbExtWidget'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 recoveredBlock14Value3 recoveredBlock14Value4 recoveredBlock14Value5 |
    recoveredBlock14Value0 := recoveredBlock14Arg1.
    recoveredBlock14Value1 := recoveredBlock14Value0.
    (recoveredBlock14Value1) y: (34).
    recoveredBlock14Value2 := recoveredBlock14Value0.
    (recoveredBlock14Value2) height: (50).
    recoveredBlock14Value3 := (self) calibrationForm.
    recoveredBlock14Value4 := (recoveredBlock14Value3) width.
    recoveredBlock14Value5 := (recoveredBlock14Value0) width: (recoveredBlock14Value4).
    recoveredBlock14Value5
].
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) createSDCalibrationExtWidget: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := [:recoveredBlock49Arg1 | 
    | recoveredBlock49Value0 recoveredBlock49Value1 recoveredBlock49Value2 recoveredBlock49Value3 recoveredBlock49Value4 recoveredBlock49Value5 recoveredBlock49Value6 recoveredBlock49Value7 recoveredBlock49Value8 recoveredBlock49Value9 recoveredBlock49Value10 recoveredBlock49Value11 |
    recoveredBlock49Value0 := recoveredBlock49Arg1.
    recoveredBlock49Value1 := recoveredBlock49Value0.
    recoveredBlock49Value2 := XmATTACHWIDGET.
    (recoveredBlock49Value1) bottomAttachment: (recoveredBlock49Value2).
    recoveredBlock49Value3 := recoveredBlock49Value0.
    recoveredBlock49Value4 := (self) widgetAt: ('aScrolledText1').
    (recoveredBlock49Value3) bottomWidget: (recoveredBlock49Value4).
    recoveredBlock49Value5 := recoveredBlock49Value0.
    recoveredBlock49Value6 := XmATTACHFORM.
    (recoveredBlock49Value5) leftAttachment: (recoveredBlock49Value6).
    recoveredBlock49Value7 := recoveredBlock49Value0.
    recoveredBlock49Value8 := XmATTACHWIDGET.
    (recoveredBlock49Value7) rightAttachment: (recoveredBlock49Value8).
    recoveredBlock49Value9 := recoveredBlock49Value0.
    recoveredBlock49Value10 := (self) separator.
    (recoveredBlock49Value9) rightWidget: (recoveredBlock49Value10).
    recoveredBlock49Value11 := (recoveredBlock49Value0) rightOffset: (10).
    recoveredBlock49Value11
].
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := (recoveredStack0) editorWidgets.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := (recoveredStack0) values.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := [:recoveredBlock98Arg1 | 
    | recoveredBlock98Value0 recoveredBlock98Value1 recoveredBlock98Value2 |
    recoveredBlock98Value0 := recoveredBlock98Arg1.
    recoveredBlock98Value1 := [:recoveredBlock98Block105Arg1 | 
    | recoveredBlock98Block105Value0 recoveredBlock98Block105Value1 recoveredBlock98Block105Value2 recoveredBlock98Block105Value3 recoveredBlock98Block105Value4 |
    recoveredBlock98Block105Value0 := recoveredBlock98Block105Arg1.
    recoveredBlock98Block105Value1 := recoveredBlock98Block105Value0.
    recoveredBlock98Block105Value2 := XmATTACHWIDGET.
    (recoveredBlock98Block105Value1) bottomAttachment: (recoveredBlock98Block105Value2).
    recoveredBlock98Block105Value3 := recoveredLocal1.
    recoveredBlock98Block105Value4 := (recoveredBlock98Block105Value0) bottomWidget: (recoveredBlock98Block105Value3).
    recoveredBlock98Block105Value4
].
    recoveredBlock98Value2 := (recoveredBlock98Value0) setValuesBlock: (recoveredBlock98Value1).
    recoveredBlock98Value2
].
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack2 := (recoveredStack2) tableEditor.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := (recoveredStack1) popupMenuFor: (recoveredStack2).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack2 := (recoveredStack2) tableEditor.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            (recoveredStack0) menu: (recoveredStack1) owner: (recoveredStack2).
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            (recoveredStack0) initAsDragDropTarget: (recoveredStack1).
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := (recoveredStack1) shell.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := (recoveredStack1) height.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack2 := (recoveredStack2) height.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            (recoveredStack0) height: (recoveredStack1).
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack0 := widgetDictionary.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := 'sdCalibrationExt'.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack0 := widgetDictionary.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack0 := (recoveredStack0) values.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := [:block2810cc3cArg1 | 
    | block2810cc3cValue0 block2810cc3cValue1 |
    block2810cc3cValue0 := block2810cc3cArg1.
    block2810cc3cValue1 := (block2810cc3cValue0) mappedWhenManaged: (false).
    block2810cc3cValue1
].
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack0 := (recoveredStack0) sdCalibrationExt.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            (recoveredStack0) specificationMode: (recoveredStack1).
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20576078; bytecode file offset 0xe72994"
!RBMultiTableSpecificationEditor methodsFor: 'recovered'!
updateDescriptionFrom: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isRBDataVector.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRBDataMatrix.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := 'xLabel'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetAt: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) unmanageChild.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := 'xNameText'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetAt: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) unmanageChild.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := 'yLabel'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetAt: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) unmanageChild.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := 'yNameText'.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetAt: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) unmanageChild.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredPC := 250.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := 'xLabel'.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetAt: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) manageChild.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := 'xNameText'.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetAt: (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack1) manageChild.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) xSource.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 67] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := dataConfigObjects.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := (recoveredStack2) wName.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) hexView.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 108].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := ASDCalibrationEditorOptions.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionCalibrationGraphicalEditorHexAxis.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 108].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := ' ['.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := SCHex.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := ']'.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredPC := 129.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := (recoveredStack1) xUnit.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 129] ifFalse: [recoveredPC := 114].
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := ' ['.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack2 := (recoveredStack2) xUnit.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack2 := ']'.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack2 := 'xNameText'.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetAt: (recoveredStack2).
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            (recoveredStack1) labelString: (recoveredStack2).
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRBTwoDCharTable.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 142] ifFalse: [recoveredPC := 238].
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack2 := 'yLabel'.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetAt: (recoveredStack2).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            (recoveredStack1) manageChild.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack2 := 'yNameText'.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetAt: (recoveredStack2).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            (recoveredStack1) manageChild.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := (recoveredStack1) ySource.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 165] ifFalse: [recoveredPC := 162].
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack1 := dataConfigObjects.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack2 := (recoveredStack2) wName.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack1 := (recoveredStack1) hexView.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 178] ifFalse: [recoveredPC := 206].
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := ASDCalibrationEditorOptions.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionCalibrationGraphicalEditorHexAxis.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 188] ifFalse: [recoveredPC := 206].
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack2 := ' ['.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack2 := SCHex.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack2 := ']'.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredPC := 227.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack1 := (recoveredStack1) yUnit.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 227] ifFalse: [recoveredPC := 212].
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack2 := ' ['.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack2 := (recoveredStack2) yUnit.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack2 := ']'.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack2 := 'yNameText'.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetAt: (recoveredStack2).
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            (recoveredStack1) labelString: (recoveredStack2).
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredPC := 250.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack2 := 'yLabel'.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetAt: (recoveredStack2).
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            (recoveredStack1) unmanageChild.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack2 := 'yNameText'.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetAt: (recoveredStack2).
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            (recoveredStack1) unmanageChild.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2066ab5c; bytecode file offset 0xf6752c"
!RBMultiTableSpecificationEditor methodsFor: 'recovered'!
createEditors
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
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
            editorWidgets := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) form.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'kfEditWidget'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := [:block28125eb4Arg1 | 
    | block28125eb4Value0 block28125eb4Value1 block28125eb4Value2 block28125eb4Value3 |
    block28125eb4Value0 := block28125eb4Arg1.
    block28125eb4Value1 := block28125eb4Value0.
    (block28125eb4Value1) y: (34).
    block28125eb4Value2 := block28125eb4Value0.
    (block28125eb4Value2) height: (134).
    block28125eb4Value3 := (block28125eb4Value0) width: (515).
    block28125eb4Value3
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) createASDTwoDCharTableEditWidget: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := [:recoveredBlock41Arg1 | 
    | recoveredBlock41Value0 recoveredBlock41Value1 recoveredBlock41Value2 recoveredBlock41Value3 recoveredBlock41Value4 recoveredBlock41Value5 recoveredBlock41Value6 recoveredBlock41Value7 recoveredBlock41Value8 recoveredBlock41Value9 recoveredBlock41Value10 recoveredBlock41Value11 recoveredBlock41Value12 recoveredBlock41Value13 recoveredBlock41Value14 recoveredBlock41Value15 recoveredBlock41Value16 |
    recoveredBlock41Value0 := recoveredBlock41Arg1.
    recoveredBlock41Value1 := recoveredBlock41Value0.
    recoveredBlock41Value2 := XmATTACHWIDGET.
    (recoveredBlock41Value1) bottomAttachment: (recoveredBlock41Value2).
    recoveredBlock41Value3 := recoveredBlock41Value0.
    recoveredBlock41Value4 := (self) widgetAt: ('aScrolledText1').
    (recoveredBlock41Value3) bottomWidget: (recoveredBlock41Value4).
    recoveredBlock41Value5 := recoveredBlock41Value0.
    recoveredBlock41Value6 := XmATTACHWIDGET.
    (recoveredBlock41Value5) topAttachment: (recoveredBlock41Value6).
    recoveredBlock41Value7 := recoveredBlock41Value0.
    recoveredBlock41Value8 := (self) yLabel.
    (recoveredBlock41Value7) topWidget: (recoveredBlock41Value8).
    recoveredBlock41Value9 := recoveredBlock41Value0.
    (recoveredBlock41Value9) topOffset: (2).
    recoveredBlock41Value10 := recoveredBlock41Value0.
    recoveredBlock41Value11 := XmATTACHFORM.
    (recoveredBlock41Value10) leftAttachment: (recoveredBlock41Value11).
    recoveredBlock41Value12 := recoveredBlock41Value0.
    recoveredBlock41Value13 := XmATTACHWIDGET.
    (recoveredBlock41Value12) rightAttachment: (recoveredBlock41Value13).
    recoveredBlock41Value14 := recoveredBlock41Value0.
    recoveredBlock41Value15 := (self) separator.
    (recoveredBlock41Value14) rightWidget: (recoveredBlock41Value15).
    recoveredBlock41Value16 := (recoveredBlock41Value0) rightOffset: (10).
    recoveredBlock41Value16
].
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := (recoveredStack0) tableEditor.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := (recoveredStack1) popupMenuFor: (recoveredStack2).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack0) menu: (recoveredStack1) owner: (recoveredStack2).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := valueFont.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 121] ifFalse: [recoveredPC := 116].
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := valueFont.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack0) tableFont: (recoveredStack1).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack2 := (recoveredStack2) tableEditor.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            (recoveredStack1) initAsDragDropTarget: (recoveredStack2).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            (recoveredStack0) installEditCallbacks: (recoveredStack1).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack0 := editorWidgets.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack2 := 'KF'.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack3 := 'FKf'.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack4 := 'GKf'.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := (recoveredStack0) form.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := 'klEditWidget'.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack2 := [:block28125ed8Arg1 | 
    | block28125ed8Value0 block28125ed8Value1 block28125ed8Value2 block28125ed8Value3 |
    block28125ed8Value0 := block28125ed8Arg1.
    block28125ed8Value1 := block28125ed8Value0.
    (block28125ed8Value1) y: (34).
    block28125ed8Value2 := block28125ed8Value0.
    (block28125ed8Value2) height: (134).
    block28125ed8Value3 := (block28125ed8Value0) width: (515).
    block28125ed8Value3
].
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack0 := (recoveredStack0) createASDOneDCharTableEditWidget: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack1 := [:recoveredBlock179Arg1 | 
    | recoveredBlock179Value0 recoveredBlock179Value1 recoveredBlock179Value2 recoveredBlock179Value3 recoveredBlock179Value4 recoveredBlock179Value5 recoveredBlock179Value6 recoveredBlock179Value7 recoveredBlock179Value8 recoveredBlock179Value9 recoveredBlock179Value10 recoveredBlock179Value11 recoveredBlock179Value12 recoveredBlock179Value13 recoveredBlock179Value14 |
    recoveredBlock179Value0 := recoveredBlock179Arg1.
    recoveredBlock179Value1 := recoveredBlock179Value0.
    recoveredBlock179Value2 := XmATTACHWIDGET.
    (recoveredBlock179Value1) bottomAttachment: (recoveredBlock179Value2).
    recoveredBlock179Value3 := recoveredBlock179Value0.
    recoveredBlock179Value4 := (self) widgetAt: ('aScrolledText1').
    (recoveredBlock179Value3) bottomWidget: (recoveredBlock179Value4).
    recoveredBlock179Value5 := recoveredBlock179Value0.
    recoveredBlock179Value6 := XmATTACHFORM.
    (recoveredBlock179Value5) topAttachment: (recoveredBlock179Value6).
    recoveredBlock179Value7 := recoveredBlock179Value0.
    (recoveredBlock179Value7) topOffset: (30).
    recoveredBlock179Value8 := recoveredBlock179Value0.
    recoveredBlock179Value9 := XmATTACHFORM.
    (recoveredBlock179Value8) leftAttachment: (recoveredBlock179Value9).
    recoveredBlock179Value10 := recoveredBlock179Value0.
    recoveredBlock179Value11 := XmATTACHWIDGET.
    (recoveredBlock179Value10) rightAttachment: (recoveredBlock179Value11).
    recoveredBlock179Value12 := recoveredBlock179Value0.
    recoveredBlock179Value13 := (self) separator.
    (recoveredBlock179Value12) rightWidget: (recoveredBlock179Value13).
    recoveredBlock179Value14 := (recoveredBlock179Value0) rightOffset: (10).
    recoveredBlock179Value14
].
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack0 := (recoveredStack0) tableEditor.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack1 := (recoveredStack1) popupMenuFor: (recoveredStack2).
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            (recoveredStack0) menu: (recoveredStack1) owner: (recoveredStack2).
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack0 := valueFont.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 253] ifFalse: [recoveredPC := 248].
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack1 := valueFont.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            (recoveredStack0) tableFont: (recoveredStack1).
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack2 := (recoveredStack2) tableEditor.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            (recoveredStack1) initAsDragDropTarget: (recoveredStack2).
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            (recoveredStack0) installEditCallbacks: (recoveredStack1).
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack0 := editorWidgets.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack2 := 'KL'.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack3 := 'FKl'.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack4 := 'GKl'.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack0 := (recoveredStack0) form.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack1 := 'vectorEditWidget'.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack2 := [:block28125efcArg1 | 
    | block28125efcValue0 block28125efcValue1 block28125efcValue2 block28125efcValue3 |
    block28125efcValue0 := block28125efcArg1.
    block28125efcValue1 := block28125efcValue0.
    (block28125efcValue1) y: (34).
    block28125efcValue2 := block28125efcValue0.
    (block28125efcValue2) height: (134).
    block28125efcValue3 := (block28125efcValue0) width: (515).
    block28125efcValue3
].
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack0 := (recoveredStack0) createASDDataVectorEditWidget: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack1 := [:recoveredBlock311Arg1 | 
    | recoveredBlock311Value0 recoveredBlock311Value1 recoveredBlock311Value2 recoveredBlock311Value3 recoveredBlock311Value4 recoveredBlock311Value5 recoveredBlock311Value6 recoveredBlock311Value7 recoveredBlock311Value8 recoveredBlock311Value9 recoveredBlock311Value10 recoveredBlock311Value11 recoveredBlock311Value12 recoveredBlock311Value13 recoveredBlock311Value14 |
    recoveredBlock311Value0 := recoveredBlock311Arg1.
    recoveredBlock311Value1 := recoveredBlock311Value0.
    recoveredBlock311Value2 := XmATTACHWIDGET.
    (recoveredBlock311Value1) bottomAttachment: (recoveredBlock311Value2).
    recoveredBlock311Value3 := recoveredBlock311Value0.
    recoveredBlock311Value4 := (self) widgetAt: ('aScrolledText1').
    (recoveredBlock311Value3) bottomWidget: (recoveredBlock311Value4).
    recoveredBlock311Value5 := recoveredBlock311Value0.
    recoveredBlock311Value6 := XmATTACHFORM.
    (recoveredBlock311Value5) topAttachment: (recoveredBlock311Value6).
    recoveredBlock311Value7 := recoveredBlock311Value0.
    (recoveredBlock311Value7) topOffset: (30).
    recoveredBlock311Value8 := recoveredBlock311Value0.
    recoveredBlock311Value9 := XmATTACHFORM.
    (recoveredBlock311Value8) leftAttachment: (recoveredBlock311Value9).
    recoveredBlock311Value10 := recoveredBlock311Value0.
    recoveredBlock311Value11 := XmATTACHWIDGET.
    (recoveredBlock311Value10) rightAttachment: (recoveredBlock311Value11).
    recoveredBlock311Value12 := recoveredBlock311Value0.
    recoveredBlock311Value13 := (self) separator.
    (recoveredBlock311Value12) rightWidget: (recoveredBlock311Value13).
    recoveredBlock311Value14 := (recoveredBlock311Value0) rightOffset: (10).
    recoveredBlock311Value14
].
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            recoveredStack0 := (recoveredStack0) tableEditor.
            recoveredPC := 368.
        ].
        recoveredStep = 368 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            recoveredStack1 := (recoveredStack1) popupMenuFor: (recoveredStack2).
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            (recoveredStack0) menu: (recoveredStack1) owner: (recoveredStack2).
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            recoveredStack0 := valueFont.
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 385] ifFalse: [recoveredPC := 380].
        ].
        recoveredStep = 380 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 381.
        ].
        recoveredStep = 381 ifTrue: [
            recoveredStack1 := valueFont.
            recoveredPC := 383.
        ].
        recoveredStep = 383 ifTrue: [
            (recoveredStack0) tableFont: (recoveredStack1).
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 386.
        ].
        recoveredStep = 386 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 388.
        ].
        recoveredStep = 388 ifTrue: [
            recoveredStack2 := (recoveredStack2) tableEditor.
            recoveredPC := 390.
        ].
        recoveredStep = 390 ifTrue: [
            (recoveredStack1) initAsDragDropTarget: (recoveredStack2).
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            (recoveredStack0) installEditCallbacks: (recoveredStack1).
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            recoveredStack0 := editorWidgets.
            recoveredPC := 397.
        ].
        recoveredStep = 397 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            recoveredStack2 := 'KWb'.
            recoveredPC := 401.
        ].
        recoveredStep = 401 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 404.
        ].
        recoveredStep = 404 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 406.
        ].
        recoveredStep = 406 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 407.
        ].
        recoveredStep = 407 ifTrue: [
            recoveredStack0 := (recoveredStack0) form.
            recoveredPC := 408.
        ].
        recoveredStep = 408 ifTrue: [
            recoveredStack1 := 'vectorEditWidget'.
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            recoveredStack2 := [:block28125f20Arg1 | 
    | block28125f20Value0 block28125f20Value1 block28125f20Value2 block28125f20Value3 |
    block28125f20Value0 := block28125f20Arg1.
    block28125f20Value1 := block28125f20Value0.
    (block28125f20Value1) y: (34).
    block28125f20Value2 := block28125f20Value0.
    (block28125f20Value2) height: (134).
    block28125f20Value3 := (block28125f20Value0) width: (515).
    block28125f20Value3
].
            recoveredPC := 412.
        ].
        recoveredStep = 412 ifTrue: [
            recoveredPC := 435.
        ].
        recoveredStep = 435 ifTrue: [
            recoveredStack0 := (recoveredStack0) createASDDataBooleanVectorEditWidget: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 437.
        ].
        recoveredStep = 437 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 438.
        ].
        recoveredStep = 438 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 439.
        ].
        recoveredStep = 439 ifTrue: [
            recoveredStack1 := [:recoveredBlock439Arg1 | 
    | recoveredBlock439Value0 recoveredBlock439Value1 recoveredBlock439Value2 recoveredBlock439Value3 recoveredBlock439Value4 recoveredBlock439Value5 recoveredBlock439Value6 recoveredBlock439Value7 recoveredBlock439Value8 recoveredBlock439Value9 recoveredBlock439Value10 recoveredBlock439Value11 recoveredBlock439Value12 recoveredBlock439Value13 recoveredBlock439Value14 |
    recoveredBlock439Value0 := recoveredBlock439Arg1.
    recoveredBlock439Value1 := recoveredBlock439Value0.
    recoveredBlock439Value2 := XmATTACHWIDGET.
    (recoveredBlock439Value1) bottomAttachment: (recoveredBlock439Value2).
    recoveredBlock439Value3 := recoveredBlock439Value0.
    recoveredBlock439Value4 := (self) widgetAt: ('aScrolledText1').
    (recoveredBlock439Value3) bottomWidget: (recoveredBlock439Value4).
    recoveredBlock439Value5 := recoveredBlock439Value0.
    recoveredBlock439Value6 := XmATTACHFORM.
    (recoveredBlock439Value5) topAttachment: (recoveredBlock439Value6).
    recoveredBlock439Value7 := recoveredBlock439Value0.
    (recoveredBlock439Value7) topOffset: (30).
    recoveredBlock439Value8 := recoveredBlock439Value0.
    recoveredBlock439Value9 := XmATTACHFORM.
    (recoveredBlock439Value8) leftAttachment: (recoveredBlock439Value9).
    recoveredBlock439Value10 := recoveredBlock439Value0.
    recoveredBlock439Value11 := XmATTACHWIDGET.
    (recoveredBlock439Value10) rightAttachment: (recoveredBlock439Value11).
    recoveredBlock439Value12 := recoveredBlock439Value0.
    recoveredBlock439Value13 := (self) separator.
    (recoveredBlock439Value12) rightWidget: (recoveredBlock439Value13).
    recoveredBlock439Value14 := (recoveredBlock439Value0) rightOffset: (10).
    recoveredBlock439Value14
].
            recoveredPC := 491.
        ].
        recoveredStep = 491 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 493.
        ].
        recoveredStep = 493 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 494.
        ].
        recoveredStep = 494 ifTrue: [
            recoveredStack0 := (recoveredStack0) tableEditor.
            recoveredPC := 496.
        ].
        recoveredStep = 496 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 497.
        ].
        recoveredStep = 497 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 498.
        ].
        recoveredStep = 498 ifTrue: [
            recoveredStack1 := (recoveredStack1) popupMenuFor: (recoveredStack2).
            recoveredPC := 500.
        ].
        recoveredStep = 500 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 501.
        ].
        recoveredStep = 501 ifTrue: [
            (recoveredStack0) menu: (recoveredStack1) owner: (recoveredStack2).
            recoveredPC := 503.
        ].
        recoveredStep = 503 ifTrue: [
            recoveredStack0 := valueFont.
            recoveredPC := 505.
        ].
        recoveredStep = 505 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 513] ifFalse: [recoveredPC := 508].
        ].
        recoveredStep = 508 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 509.
        ].
        recoveredStep = 509 ifTrue: [
            recoveredStack1 := valueFont.
            recoveredPC := 511.
        ].
        recoveredStep = 511 ifTrue: [
            (recoveredStack0) tableFont: (recoveredStack1).
            recoveredPC := 513.
        ].
        recoveredStep = 513 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 514.
        ].
        recoveredStep = 514 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 515.
        ].
        recoveredStep = 515 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 516.
        ].
        recoveredStep = 516 ifTrue: [
            recoveredStack2 := (recoveredStack2) tableEditor.
            recoveredPC := 518.
        ].
        recoveredStep = 518 ifTrue: [
            (recoveredStack1) initAsDragDropTarget: (recoveredStack2).
            recoveredPC := 520.
        ].
        recoveredStep = 520 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 521.
        ].
        recoveredStep = 521 ifTrue: [
            (recoveredStack0) installEditCallbacks: (recoveredStack1).
            recoveredPC := 523.
        ].
        recoveredStep = 523 ifTrue: [
            recoveredStack0 := editorWidgets.
            recoveredPC := 525.
        ].
        recoveredStep = 525 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 527.
        ].
        recoveredStep = 527 ifTrue: [
            recoveredStack2 := 'VecBool'.
            recoveredPC := 529.
        ].
        recoveredStep = 529 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 531.
        ].
        recoveredStep = 531 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 532.
        ].
        recoveredStep = 532 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 534.
        ].
        recoveredStep = 534 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 535.
        ].
        recoveredStep = 535 ifTrue: [
            recoveredStack0 := (recoveredStack0) form.
            recoveredPC := 536.
        ].
        recoveredStep = 536 ifTrue: [
            recoveredStack1 := 'matrixEditWidget'.
            recoveredPC := 538.
        ].
        recoveredStep = 538 ifTrue: [
            recoveredStack2 := [:block28125f44Arg1 | 
    | block28125f44Value0 block28125f44Value1 block28125f44Value2 block28125f44Value3 |
    block28125f44Value0 := block28125f44Arg1.
    block28125f44Value1 := block28125f44Value0.
    (block28125f44Value1) y: (34).
    block28125f44Value2 := block28125f44Value0.
    (block28125f44Value2) height: (134).
    block28125f44Value3 := (block28125f44Value0) width: (515).
    block28125f44Value3
].
            recoveredPC := 540.
        ].
        recoveredStep = 540 ifTrue: [
            recoveredPC := 563.
        ].
        recoveredStep = 563 ifTrue: [
            recoveredStack0 := (recoveredStack0) createASDDataMatrixEditWidget: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 565.
        ].
        recoveredStep = 565 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 566.
        ].
        recoveredStep = 566 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 567.
        ].
        recoveredStep = 567 ifTrue: [
            recoveredStack1 := [:recoveredBlock567Arg1 | 
    | recoveredBlock567Value0 recoveredBlock567Value1 recoveredBlock567Value2 recoveredBlock567Value3 recoveredBlock567Value4 recoveredBlock567Value5 recoveredBlock567Value6 recoveredBlock567Value7 recoveredBlock567Value8 recoveredBlock567Value9 recoveredBlock567Value10 recoveredBlock567Value11 recoveredBlock567Value12 recoveredBlock567Value13 recoveredBlock567Value14 |
    recoveredBlock567Value0 := recoveredBlock567Arg1.
    recoveredBlock567Value1 := recoveredBlock567Value0.
    recoveredBlock567Value2 := XmATTACHWIDGET.
    (recoveredBlock567Value1) bottomAttachment: (recoveredBlock567Value2).
    recoveredBlock567Value3 := recoveredBlock567Value0.
    recoveredBlock567Value4 := (self) widgetAt: ('aScrolledText1').
    (recoveredBlock567Value3) bottomWidget: (recoveredBlock567Value4).
    recoveredBlock567Value5 := recoveredBlock567Value0.
    recoveredBlock567Value6 := XmATTACHFORM.
    (recoveredBlock567Value5) topAttachment: (recoveredBlock567Value6).
    recoveredBlock567Value7 := recoveredBlock567Value0.
    (recoveredBlock567Value7) topOffset: (30).
    recoveredBlock567Value8 := recoveredBlock567Value0.
    recoveredBlock567Value9 := XmATTACHFORM.
    (recoveredBlock567Value8) leftAttachment: (recoveredBlock567Value9).
    recoveredBlock567Value10 := recoveredBlock567Value0.
    recoveredBlock567Value11 := XmATTACHWIDGET.
    (recoveredBlock567Value10) rightAttachment: (recoveredBlock567Value11).
    recoveredBlock567Value12 := recoveredBlock567Value0.
    recoveredBlock567Value13 := (self) separator.
    (recoveredBlock567Value12) rightWidget: (recoveredBlock567Value13).
    recoveredBlock567Value14 := (recoveredBlock567Value0) rightOffset: (10).
    recoveredBlock567Value14
].
            recoveredPC := 619.
        ].
        recoveredStep = 619 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 621.
        ].
        recoveredStep = 621 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 622.
        ].
        recoveredStep = 622 ifTrue: [
            recoveredStack0 := (recoveredStack0) tableEditor.
            recoveredPC := 624.
        ].
        recoveredStep = 624 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 625.
        ].
        recoveredStep = 625 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 626.
        ].
        recoveredStep = 626 ifTrue: [
            recoveredStack1 := (recoveredStack1) popupMenuFor: (recoveredStack2).
            recoveredPC := 628.
        ].
        recoveredStep = 628 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 629.
        ].
        recoveredStep = 629 ifTrue: [
            (recoveredStack0) menu: (recoveredStack1) owner: (recoveredStack2).
            recoveredPC := 631.
        ].
        recoveredStep = 631 ifTrue: [
            recoveredStack0 := valueFont.
            recoveredPC := 633.
        ].
        recoveredStep = 633 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 641] ifFalse: [recoveredPC := 636].
        ].
        recoveredStep = 636 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 637.
        ].
        recoveredStep = 637 ifTrue: [
            recoveredStack1 := valueFont.
            recoveredPC := 639.
        ].
        recoveredStep = 639 ifTrue: [
            (recoveredStack0) tableFont: (recoveredStack1).
            recoveredPC := 641.
        ].
        recoveredStep = 641 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 642.
        ].
        recoveredStep = 642 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 643.
        ].
        recoveredStep = 643 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 644.
        ].
        recoveredStep = 644 ifTrue: [
            recoveredStack2 := (recoveredStack2) tableEditor.
            recoveredPC := 646.
        ].
        recoveredStep = 646 ifTrue: [
            (recoveredStack1) initAsDragDropTarget: (recoveredStack2).
            recoveredPC := 648.
        ].
        recoveredStep = 648 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 649.
        ].
        recoveredStep = 649 ifTrue: [
            (recoveredStack0) installEditCallbacks: (recoveredStack1).
            recoveredPC := 651.
        ].
        recoveredStep = 651 ifTrue: [
            recoveredStack0 := editorWidgets.
            recoveredPC := 653.
        ].
        recoveredStep = 653 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 655.
        ].
        recoveredStep = 655 ifTrue: [
            recoveredStack2 := 'Mat'.
            recoveredPC := 657.
        ].
        recoveredStep = 657 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 659.
        ].
        recoveredStep = 659 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 660.
        ].
        recoveredStep = 660 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 662.
        ].
        recoveredStep = 662 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 663.
        ].
        recoveredStep = 663 ifTrue: [
            recoveredStack0 := (recoveredStack0) form.
            recoveredPC := 664.
        ].
        recoveredStep = 664 ifTrue: [
            recoveredStack1 := 'vectorEditWidget'.
            recoveredPC := 666.
        ].
        recoveredStep = 666 ifTrue: [
            recoveredStack2 := [:block28125f68Arg1 | 
    | block28125f68Value0 block28125f68Value1 block28125f68Value2 block28125f68Value3 |
    block28125f68Value0 := block28125f68Arg1.
    block28125f68Value1 := block28125f68Value0.
    (block28125f68Value1) y: (34).
    block28125f68Value2 := block28125f68Value0.
    (block28125f68Value2) height: (134).
    block28125f68Value3 := (block28125f68Value0) width: (515).
    block28125f68Value3
].
            recoveredPC := 668.
        ].
        recoveredStep = 668 ifTrue: [
            recoveredPC := 691.
        ].
        recoveredStep = 691 ifTrue: [
            recoveredStack0 := (recoveredStack0) createASDDataBooleanMatrixEditWidget: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 693.
        ].
        recoveredStep = 693 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 694.
        ].
        recoveredStep = 694 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 695.
        ].
        recoveredStep = 695 ifTrue: [
            recoveredStack1 := [:recoveredBlock695Arg1 | 
    | recoveredBlock695Value0 recoveredBlock695Value1 recoveredBlock695Value2 recoveredBlock695Value3 recoveredBlock695Value4 recoveredBlock695Value5 recoveredBlock695Value6 recoveredBlock695Value7 recoveredBlock695Value8 recoveredBlock695Value9 recoveredBlock695Value10 recoveredBlock695Value11 recoveredBlock695Value12 recoveredBlock695Value13 recoveredBlock695Value14 |
    recoveredBlock695Value0 := recoveredBlock695Arg1.
    recoveredBlock695Value1 := recoveredBlock695Value0.
    recoveredBlock695Value2 := XmATTACHWIDGET.
    (recoveredBlock695Value1) bottomAttachment: (recoveredBlock695Value2).
    recoveredBlock695Value3 := recoveredBlock695Value0.
    recoveredBlock695Value4 := (self) widgetAt: ('aScrolledText1').
    (recoveredBlock695Value3) bottomWidget: (recoveredBlock695Value4).
    recoveredBlock695Value5 := recoveredBlock695Value0.
    recoveredBlock695Value6 := XmATTACHFORM.
    (recoveredBlock695Value5) topAttachment: (recoveredBlock695Value6).
    recoveredBlock695Value7 := recoveredBlock695Value0.
    (recoveredBlock695Value7) topOffset: (30).
    recoveredBlock695Value8 := recoveredBlock695Value0.
    recoveredBlock695Value9 := XmATTACHFORM.
    (recoveredBlock695Value8) leftAttachment: (recoveredBlock695Value9).
    recoveredBlock695Value10 := recoveredBlock695Value0.
    recoveredBlock695Value11 := XmATTACHWIDGET.
    (recoveredBlock695Value10) rightAttachment: (recoveredBlock695Value11).
    recoveredBlock695Value12 := recoveredBlock695Value0.
    recoveredBlock695Value13 := (self) separator.
    (recoveredBlock695Value12) rightWidget: (recoveredBlock695Value13).
    recoveredBlock695Value14 := (recoveredBlock695Value0) rightOffset: (10).
    recoveredBlock695Value14
].
            recoveredPC := 747.
        ].
        recoveredStep = 747 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 749.
        ].
        recoveredStep = 749 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 750.
        ].
        recoveredStep = 750 ifTrue: [
            recoveredStack0 := (recoveredStack0) tableEditor.
            recoveredPC := 752.
        ].
        recoveredStep = 752 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 753.
        ].
        recoveredStep = 753 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 754.
        ].
        recoveredStep = 754 ifTrue: [
            recoveredStack1 := (recoveredStack1) popupMenuFor: (recoveredStack2).
            recoveredPC := 756.
        ].
        recoveredStep = 756 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 757.
        ].
        recoveredStep = 757 ifTrue: [
            (recoveredStack0) menu: (recoveredStack1) owner: (recoveredStack2).
            recoveredPC := 759.
        ].
        recoveredStep = 759 ifTrue: [
            recoveredStack0 := valueFont.
            recoveredPC := 761.
        ].
        recoveredStep = 761 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 769] ifFalse: [recoveredPC := 764].
        ].
        recoveredStep = 764 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 765.
        ].
        recoveredStep = 765 ifTrue: [
            recoveredStack1 := valueFont.
            recoveredPC := 767.
        ].
        recoveredStep = 767 ifTrue: [
            (recoveredStack0) tableFont: (recoveredStack1).
            recoveredPC := 769.
        ].
        recoveredStep = 769 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 770.
        ].
        recoveredStep = 770 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 771.
        ].
        recoveredStep = 771 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 772.
        ].
        recoveredStep = 772 ifTrue: [
            recoveredStack2 := (recoveredStack2) tableEditor.
            recoveredPC := 774.
        ].
        recoveredStep = 774 ifTrue: [
            (recoveredStack1) initAsDragDropTarget: (recoveredStack2).
            recoveredPC := 776.
        ].
        recoveredStep = 776 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 777.
        ].
        recoveredStep = 777 ifTrue: [
            (recoveredStack0) installEditCallbacks: (recoveredStack1).
            recoveredPC := 779.
        ].
        recoveredStep = 779 ifTrue: [
            recoveredStack0 := editorWidgets.
            recoveredPC := 781.
        ].
        recoveredStep = 781 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 783.
        ].
        recoveredStep = 783 ifTrue: [
            recoveredStack2 := 'MatBool'.
            recoveredPC := 786.
        ].
        recoveredStep = 786 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 788.
        ].
        recoveredStep = 788 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 789.
        ].
        recoveredStep = 789 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 791.
        ].
        recoveredStep = 791 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 792.
        ].
        recoveredStep = 792 ifTrue: [
            recoveredStack0 := (recoveredStack0) form.
            recoveredPC := 793.
        ].
        recoveredStep = 793 ifTrue: [
            recoveredStack1 := 'distributionEditWidget'.
            recoveredPC := 796.
        ].
        recoveredStep = 796 ifTrue: [
            recoveredStack2 := [:block28125f8cArg1 | 
    | block28125f8cValue0 block28125f8cValue1 block28125f8cValue2 block28125f8cValue3 |
    block28125f8cValue0 := block28125f8cArg1.
    block28125f8cValue1 := block28125f8cValue0.
    (block28125f8cValue1) y: (34).
    block28125f8cValue2 := block28125f8cValue0.
    (block28125f8cValue2) height: (134).
    block28125f8cValue3 := (block28125f8cValue0) width: (515).
    block28125f8cValue3
].
            recoveredPC := 800.
        ].
        recoveredStep = 800 ifTrue: [
            recoveredPC := 823.
        ].
        recoveredStep = 823 ifTrue: [
            recoveredStack0 := (recoveredStack0) createASDGroupDistributionEditWidget: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 827.
        ].
        recoveredStep = 827 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 828.
        ].
        recoveredStep = 828 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 829.
        ].
        recoveredStep = 829 ifTrue: [
            recoveredStack1 := [:recoveredBlock829Arg1 | 
    | recoveredBlock829Value0 recoveredBlock829Value1 recoveredBlock829Value2 recoveredBlock829Value3 recoveredBlock829Value4 recoveredBlock829Value5 recoveredBlock829Value6 recoveredBlock829Value7 recoveredBlock829Value8 recoveredBlock829Value9 recoveredBlock829Value10 recoveredBlock829Value11 recoveredBlock829Value12 recoveredBlock829Value13 recoveredBlock829Value14 |
    recoveredBlock829Value0 := recoveredBlock829Arg1.
    recoveredBlock829Value1 := recoveredBlock829Value0.
    recoveredBlock829Value2 := XmATTACHWIDGET.
    (recoveredBlock829Value1) bottomAttachment: (recoveredBlock829Value2).
    recoveredBlock829Value3 := recoveredBlock829Value0.
    recoveredBlock829Value4 := (self) widgetAt: ('aScrolledText1').
    (recoveredBlock829Value3) bottomWidget: (recoveredBlock829Value4).
    recoveredBlock829Value5 := recoveredBlock829Value0.
    recoveredBlock829Value6 := XmATTACHFORM.
    (recoveredBlock829Value5) topAttachment: (recoveredBlock829Value6).
    recoveredBlock829Value7 := recoveredBlock829Value0.
    (recoveredBlock829Value7) topOffset: (30).
    recoveredBlock829Value8 := recoveredBlock829Value0.
    recoveredBlock829Value9 := XmATTACHFORM.
    (recoveredBlock829Value8) leftAttachment: (recoveredBlock829Value9).
    recoveredBlock829Value10 := recoveredBlock829Value0.
    recoveredBlock829Value11 := XmATTACHWIDGET.
    (recoveredBlock829Value10) rightAttachment: (recoveredBlock829Value11).
    recoveredBlock829Value12 := recoveredBlock829Value0.
    recoveredBlock829Value13 := (self) separator.
    (recoveredBlock829Value12) rightWidget: (recoveredBlock829Value13).
    recoveredBlock829Value14 := (recoveredBlock829Value0) rightOffset: (10).
    recoveredBlock829Value14
].
            recoveredPC := 881.
        ].
        recoveredStep = 881 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 883.
        ].
        recoveredStep = 883 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 884.
        ].
        recoveredStep = 884 ifTrue: [
            recoveredStack0 := (recoveredStack0) tableEditor.
            recoveredPC := 886.
        ].
        recoveredStep = 886 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 887.
        ].
        recoveredStep = 887 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 888.
        ].
        recoveredStep = 888 ifTrue: [
            recoveredStack1 := (recoveredStack1) popupMenuFor: (recoveredStack2).
            recoveredPC := 890.
        ].
        recoveredStep = 890 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 891.
        ].
        recoveredStep = 891 ifTrue: [
            (recoveredStack0) menu: (recoveredStack1) owner: (recoveredStack2).
            recoveredPC := 893.
        ].
        recoveredStep = 893 ifTrue: [
            recoveredStack0 := valueFont.
            recoveredPC := 895.
        ].
        recoveredStep = 895 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 903] ifFalse: [recoveredPC := 898].
        ].
        recoveredStep = 898 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 899.
        ].
        recoveredStep = 899 ifTrue: [
            recoveredStack1 := valueFont.
            recoveredPC := 901.
        ].
        recoveredStep = 901 ifTrue: [
            (recoveredStack0) tableFont: (recoveredStack1).
            recoveredPC := 903.
        ].
        recoveredStep = 903 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 904.
        ].
        recoveredStep = 904 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 905.
        ].
        recoveredStep = 905 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 906.
        ].
        recoveredStep = 906 ifTrue: [
            recoveredStack2 := (recoveredStack2) tableEditor.
            recoveredPC := 908.
        ].
        recoveredStep = 908 ifTrue: [
            (recoveredStack1) initAsDragDropTarget: (recoveredStack2).
            recoveredPC := 910.
        ].
        recoveredStep = 910 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 911.
        ].
        recoveredStep = 911 ifTrue: [
            (recoveredStack0) installEditCallbacks: (recoveredStack1).
            recoveredPC := 913.
        ].
        recoveredStep = 913 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 914.
        ].
        recoveredStep = 914 ifTrue: [
            recoveredStack1 := RbChangedGroupDistributionCallback.
            recoveredPC := 918.
        ].
        recoveredStep = 918 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 919.
        ].
        recoveredStep = 919 ifTrue: [
            recoveredStack3 := 'changedGroupDistribution:clientData:callData:'.
            recoveredPC := 922.
        ].
        recoveredStep = 922 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 923.
        ].
        recoveredStep = 923 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 927.
        ].
        recoveredStep = 927 ifTrue: [
            recoveredStack0 := editorWidgets.
            recoveredPC := 929.
        ].
        recoveredStep = 929 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 931.
        ].
        recoveredStep = 931 ifTrue: [
            recoveredStack2 := 'GSt'.
            recoveredPC := 934.
        ].
        recoveredStep = 934 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 936.
        ].
        recoveredStep = 936 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 937.
        ].
        recoveredStep = 937 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 939.
        ].
        recoveredStep = 939 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 940.
        ].
        recoveredStep = 940 ifTrue: [
            recoveredStack0 := (recoveredStack0) form.
            recoveredPC := 941.
        ].
        recoveredStep = 941 ifTrue: [
            recoveredStack1 := 'klEditWidget'.
            recoveredPC := 943.
        ].
        recoveredStep = 943 ifTrue: [
            recoveredStack2 := [:block28125fb0Arg1 | 
    | block28125fb0Value0 block28125fb0Value1 block28125fb0Value2 block28125fb0Value3 |
    block28125fb0Value0 := block28125fb0Arg1.
    block28125fb0Value1 := block28125fb0Value0.
    (block28125fb0Value1) y: (34).
    block28125fb0Value2 := block28125fb0Value0.
    (block28125fb0Value2) height: (134).
    block28125fb0Value3 := (block28125fb0Value0) width: (515).
    block28125fb0Value3
].
            recoveredPC := 946.
        ].
        recoveredStep = 946 ifTrue: [
            recoveredPC := 969.
        ].
        recoveredStep = 969 ifTrue: [
            recoveredStack0 := (recoveredStack0) createASDMemoryBlockEditWidget: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 973.
        ].
        recoveredStep = 973 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 974.
        ].
        recoveredStep = 974 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 975.
        ].
        recoveredStep = 975 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 976.
        ].
        recoveredStep = 976 ifTrue: [
            recoveredStack2 := [:recoveredBlock976Arg1 | 
    | recoveredBlock976Value0 recoveredBlock976Value1 recoveredBlock976Value2 recoveredBlock976Value3 recoveredBlock976Value4 recoveredBlock976Value5 recoveredBlock976Value6 recoveredBlock976Value7 recoveredBlock976Value8 recoveredBlock976Value9 recoveredBlock976Value10 recoveredBlock976Value11 recoveredBlock976Value12 recoveredBlock976Value13 recoveredBlock976Value14 recoveredBlock976Value15 |
    recoveredBlock976Value0 := recoveredBlock976Arg1.
    recoveredBlock976Value1 := recoveredBlock976Value0.
    recoveredBlock976Value2 := XmATTACHWIDGET.
    (recoveredBlock976Value1) bottomAttachment: (recoveredBlock976Value2).
    recoveredBlock976Value3 := recoveredBlock976Value0.
    recoveredBlock976Value4 := (self) widgetAt: ('aScrolledText1').
    (recoveredBlock976Value3) bottomWidget: (recoveredBlock976Value4).
    recoveredBlock976Value5 := recoveredBlock976Value0.
    recoveredBlock976Value6 := XmATTACHFORM.
    (recoveredBlock976Value5) topAttachment: (recoveredBlock976Value6).
    recoveredBlock976Value7 := recoveredBlock976Value0.
    (recoveredBlock976Value7) topOffset: (30).
    recoveredBlock976Value8 := recoveredBlock976Value0.
    (recoveredBlock976Value8) topOffset: (5).
    recoveredBlock976Value9 := recoveredBlock976Value0.
    recoveredBlock976Value10 := XmATTACHFORM.
    (recoveredBlock976Value9) leftAttachment: (recoveredBlock976Value10).
    recoveredBlock976Value11 := recoveredBlock976Value0.
    recoveredBlock976Value12 := XmATTACHWIDGET.
    (recoveredBlock976Value11) rightAttachment: (recoveredBlock976Value12).
    recoveredBlock976Value13 := recoveredBlock976Value0.
    recoveredBlock976Value14 := (self) separator.
    (recoveredBlock976Value13) rightWidget: (recoveredBlock976Value14).
    recoveredBlock976Value15 := (recoveredBlock976Value0) rightOffset: (10).
    recoveredBlock976Value15
].
            recoveredPC := 1032.
        ].
        recoveredStep = 1032 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1034.
        ].
        recoveredStep = 1034 ifTrue: [
            (recoveredStack0) changeToHexView.
            recoveredPC := 1039.
        ].
        recoveredStep = 1039 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 1040.
        ].
        recoveredStep = 1040 ifTrue: [
            recoveredStack0 := (recoveredStack0) tableEditor.
            recoveredPC := 1042.
        ].
        recoveredStep = 1042 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 1043.
        ].
        recoveredStep = 1043 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 1044.
        ].
        recoveredStep = 1044 ifTrue: [
            recoveredStack1 := (recoveredStack1) popupMenuFor: (recoveredStack2).
            recoveredPC := 1046.
        ].
        recoveredStep = 1046 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 1047.
        ].
        recoveredStep = 1047 ifTrue: [
            (recoveredStack0) menu: (recoveredStack1) owner: (recoveredStack2).
            recoveredPC := 1049.
        ].
        recoveredStep = 1049 ifTrue: [
            recoveredStack0 := valueFont.
            recoveredPC := 1051.
        ].
        recoveredStep = 1051 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 1059] ifFalse: [recoveredPC := 1054].
        ].
        recoveredStep = 1054 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 1055.
        ].
        recoveredStep = 1055 ifTrue: [
            recoveredStack1 := valueFont.
            recoveredPC := 1057.
        ].
        recoveredStep = 1057 ifTrue: [
            (recoveredStack0) tableFont: (recoveredStack1).
            recoveredPC := 1059.
        ].
        recoveredStep = 1059 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 1060.
        ].
        recoveredStep = 1060 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 1061.
        ].
        recoveredStep = 1061 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 1062.
        ].
        recoveredStep = 1062 ifTrue: [
            recoveredStack2 := (recoveredStack2) tableEditor.
            recoveredPC := 1064.
        ].
        recoveredStep = 1064 ifTrue: [
            (recoveredStack1) initAsDragDropTarget: (recoveredStack2).
            recoveredPC := 1066.
        ].
        recoveredStep = 1066 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1067.
        ].
        recoveredStep = 1067 ifTrue: [
            (recoveredStack0) installEditCallbacks: (recoveredStack1).
            recoveredPC := 1069.
        ].
        recoveredStep = 1069 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 1070.
        ].
        recoveredStep = 1070 ifTrue: [
            recoveredStack1 := RbChangedStartAddressCallback.
            recoveredPC := 1074.
        ].
        recoveredStep = 1074 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 1075.
        ].
        recoveredStep = 1075 ifTrue: [
            recoveredStack3 := 'changedStartAddress:clientData:callData:'.
            recoveredPC := 1078.
        ].
        recoveredStep = 1078 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 1079.
        ].
        recoveredStep = 1079 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 1083.
        ].
        recoveredStep = 1083 ifTrue: [
            recoveredStack0 := editorWidgets.
            recoveredPC := 1085.
        ].
        recoveredStep = 1085 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 1087.
        ].
        recoveredStep = 1087 ifTrue: [
            recoveredStack2 := 'Mem'.
            recoveredPC := 1090.
        ].
        recoveredStep = 1090 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 1092.
        ].
        recoveredStep = 1092 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 1093.
        ].
        recoveredStep = 1093 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 1095.
        ].
        recoveredStep = 1095 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 1096.
        ].
        recoveredStep = 1096 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20689610; bytecode file offset 0xf86060"
!RBMultiTableSpecificationEditor methodsFor: 'recovered'!
createWidgetHierarchy
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
            recoveredStack1 := CwTopLevelShell.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := 'mainWindow'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := [:recoveredBlock24Arg1 | 
    | recoveredBlock24Value0 recoveredBlock24Value1 recoveredBlock24Value2 recoveredBlock24Value3 recoveredBlock24Value4 recoveredBlock24Value5 recoveredBlock24Value6 recoveredBlock24Value7 recoveredBlock24Value8 recoveredBlock24Value9 recoveredBlock24Value10 recoveredBlock24Value11 recoveredBlock24Value12 |
    recoveredBlock24Value0 := recoveredBlock24Arg1.
    recoveredBlock24Value1 := recoveredBlock24Value0.
    (recoveredBlock24Value1) title: ('Kennfeld-Editor').
    recoveredBlock24Value2 := recoveredBlock24Value0.
    (recoveredBlock24Value2) height: (240).
    recoveredBlock24Value3 := recoveredBlock24Value0.
    recoveredBlock24Value4 := MWMDECORRESIZEH.
    recoveredBlock24Value5 := MWMDECORTITLE.
    recoveredBlock24Value6 := (recoveredBlock24Value4) | (recoveredBlock24Value5).
    recoveredBlock24Value7 := MWMDECORMENU.
    recoveredBlock24Value8 := (recoveredBlock24Value6) | (recoveredBlock24Value7).
    (recoveredBlock24Value3) mwmDecorations: (recoveredBlock24Value8).
    recoveredBlock24Value9 := recoveredLocal15.
    recoveredBlock24Value10 := (680) * (recoveredBlock24Value9).
    recoveredBlock24Value11 := (recoveredBlock24Value10) rounded.
    recoveredBlock24Value12 := (recoveredBlock24Value0) width: (recoveredBlock24Value11).
    recoveredBlock24Value12
].
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) createApplicationShell: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredLocal13 := recoveredStack1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := 'mainWindow'.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack3 := recoveredLocal13.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := (recoveredStack1) createMainWindow: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
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
            recoveredStack2 := 'okButton'.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack3 := [:block2812a6b4Arg1 | 
    | block2812a6b4Value0 block2812a6b4Value1 block2812a6b4Value2 block2812a6b4Value3 block2812a6b4Value4 |
    block2812a6b4Value0 := block2812a6b4Arg1.
    block2812a6b4Value1 := block2812a6b4Value0.
    block2812a6b4Value2 := SCOk.
    (block2812a6b4Value1) labelString: (block2812a6b4Value2).
    block2812a6b4Value3 := block2812a6b4Value0.
    (block2812a6b4Value3) width: (80).
    block2812a6b4Value4 := block2812a6b4Value0.
    (block2812a6b4Value4) height: (24).
    block2812a6b4Value0
].
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack2 := 'okButton'.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack2 := 'cancelButton'.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack3 := [:block2812a6d8Arg1 | 
    | block2812a6d8Value0 block2812a6d8Value1 block2812a6d8Value2 block2812a6d8Value3 block2812a6d8Value4 |
    block2812a6d8Value0 := block2812a6d8Arg1.
    block2812a6d8Value1 := block2812a6d8Value0.
    block2812a6d8Value2 := SCCancel.
    (block2812a6d8Value1) labelString: (block2812a6d8Value2).
    block2812a6d8Value3 := block2812a6d8Value0.
    (block2812a6d8Value3) width: (80).
    block2812a6d8Value4 := block2812a6d8Value0.
    (block2812a6d8Value4) height: (24).
    block2812a6d8Value0
].
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack2 := 'cancelButton'.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack2 := 'yNameText'.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack3 := [:recoveredBlock224Arg1 | 
    | recoveredBlock224Value0 recoveredBlock224Value1 recoveredBlock224Value2 recoveredBlock224Value3 recoveredBlock224Value4 recoveredBlock224Value5 recoveredBlock224Value6 recoveredBlock224Value7 recoveredBlock224Value8 recoveredBlock224Value9 recoveredBlock224Value10 recoveredBlock224Value11 recoveredBlock224Value12 recoveredBlock224Value13 recoveredBlock224Value14 recoveredBlock224Value15 recoveredBlock224Value16 |
    recoveredBlock224Value0 := recoveredBlock224Arg1.
    recoveredBlock224Value1 := recoveredBlock224Value0.
    recoveredBlock224Value2 := XmALIGNMENTBEGINNING.
    (recoveredBlock224Value1) alignment: (recoveredBlock224Value2).
    recoveredBlock224Value3 := recoveredBlock224Value0.
    recoveredBlock224Value4 := recoveredLocal14.
    recoveredBlock224Value5 := (2) * (recoveredBlock224Value4).
    recoveredBlock224Value6 := (recoveredBlock224Value5) rounded.
    (recoveredBlock224Value3) y: (recoveredBlock224Value6).
    recoveredBlock224Value7 := recoveredBlock224Value0.
    (recoveredBlock224Value7) marginHeight: (0).
    recoveredBlock224Value8 := recoveredBlock224Value0.
    (recoveredBlock224Value8) recomputeSize: (false).
    recoveredBlock224Value9 := recoveredBlock224Value0.
    recoveredBlock224Value10 := recoveredLocal14.
    recoveredBlock224Value11 := (14) * (recoveredBlock224Value10).
    recoveredBlock224Value12 := (recoveredBlock224Value11) rounded.
    (recoveredBlock224Value9) height: (recoveredBlock224Value12).
    recoveredBlock224Value13 := recoveredLocal15.
    recoveredBlock224Value14 := (146) * (recoveredBlock224Value13).
    recoveredBlock224Value15 := (recoveredBlock224Value14) rounded.
    recoveredBlock224Value16 := (recoveredBlock224Value0) width: (recoveredBlock224Value15).
    recoveredBlock224Value16
].
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack2 := 'xNameText'.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack2 := 'yNameText'.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack3 := [:recoveredBlock301Arg1 | 
    | recoveredBlock301Value0 recoveredBlock301Value1 recoveredBlock301Value2 recoveredBlock301Value3 recoveredBlock301Value4 recoveredBlock301Value5 recoveredBlock301Value6 recoveredBlock301Value7 recoveredBlock301Value8 recoveredBlock301Value9 recoveredBlock301Value10 recoveredBlock301Value11 recoveredBlock301Value12 recoveredBlock301Value13 recoveredBlock301Value14 recoveredBlock301Value15 recoveredBlock301Value16 |
    recoveredBlock301Value0 := recoveredBlock301Arg1.
    recoveredBlock301Value1 := recoveredBlock301Value0.
    recoveredBlock301Value2 := XmALIGNMENTBEGINNING.
    (recoveredBlock301Value1) alignment: (recoveredBlock301Value2).
    recoveredBlock301Value3 := recoveredBlock301Value0.
    recoveredBlock301Value4 := recoveredLocal14.
    recoveredBlock301Value5 := (2) * (recoveredBlock301Value4).
    recoveredBlock301Value6 := (recoveredBlock301Value5) rounded.
    (recoveredBlock301Value3) y: (recoveredBlock301Value6).
    recoveredBlock301Value7 := recoveredBlock301Value0.
    (recoveredBlock301Value7) marginHeight: (0).
    recoveredBlock301Value8 := recoveredBlock301Value0.
    (recoveredBlock301Value8) recomputeSize: (false).
    recoveredBlock301Value9 := recoveredBlock301Value0.
    recoveredBlock301Value10 := recoveredLocal14.
    recoveredBlock301Value11 := (14) * (recoveredBlock301Value10).
    recoveredBlock301Value12 := (recoveredBlock301Value11) rounded.
    (recoveredBlock301Value9) height: (recoveredBlock301Value12).
    recoveredBlock301Value13 := recoveredLocal15.
    recoveredBlock301Value14 := (146) * (recoveredBlock301Value13).
    recoveredBlock301Value15 := (recoveredBlock301Value14) rounded.
    recoveredBlock301Value16 := (recoveredBlock301Value0) width: (recoveredBlock301Value15).
    recoveredBlock301Value16
].
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            recoveredStack2 := 'yNameText'.
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 374.
        ].
        recoveredStep = 374 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            recoveredStack2 := 'aVariablesComboBox'.
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            recoveredStack3 := [:recoveredBlock379Arg1 | 
    | recoveredBlock379Value0 recoveredBlock379Value1 recoveredBlock379Value2 recoveredBlock379Value3 recoveredBlock379Value4 recoveredBlock379Value5 recoveredBlock379Value6 recoveredBlock379Value7 recoveredBlock379Value8 recoveredBlock379Value9 recoveredBlock379Value10 recoveredBlock379Value11 recoveredBlock379Value12 recoveredBlock379Value13 recoveredBlock379Value14 recoveredBlock379Value15 recoveredBlock379Value16 recoveredBlock379Value17 |
    recoveredBlock379Value0 := recoveredBlock379Arg1.
    recoveredBlock379Value1 := recoveredBlock379Value0.
    recoveredBlock379Value2 := recoveredLocal15.
    recoveredBlock379Value3 := (28) * (recoveredBlock379Value2).
    recoveredBlock379Value4 := (recoveredBlock379Value3) rounded.
    (recoveredBlock379Value1) x: (recoveredBlock379Value4).
    recoveredBlock379Value5 := recoveredBlock379Value0.
    (recoveredBlock379Value5) sensitive: (false).
    recoveredBlock379Value6 := recoveredBlock379Value0.
    recoveredBlock379Value7 := recoveredLocal14.
    recoveredBlock379Value8 := (5) * (recoveredBlock379Value7).
    recoveredBlock379Value9 := (recoveredBlock379Value8) rounded.
    (recoveredBlock379Value6) y: (recoveredBlock379Value9).
    recoveredBlock379Value10 := recoveredBlock379Value0.
    recoveredBlock379Value11 := recoveredLocal14.
    recoveredBlock379Value12 := (24) * (recoveredBlock379Value11).
    recoveredBlock379Value13 := (recoveredBlock379Value12) rounded.
    (recoveredBlock379Value10) height: (recoveredBlock379Value13).
    recoveredBlock379Value14 := recoveredLocal15.
    recoveredBlock379Value15 := (99) * (recoveredBlock379Value14).
    recoveredBlock379Value16 := (recoveredBlock379Value15) rounded.
    recoveredBlock379Value17 := (recoveredBlock379Value0) width: (recoveredBlock379Value16).
    recoveredBlock379Value17
].
            recoveredPC := 437.
        ].
        recoveredStep = 437 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEtasComboBox: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 439.
        ].
        recoveredStep = 439 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 441.
        ].
        recoveredStep = 441 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 444.
        ].
        recoveredStep = 444 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 447.
        ].
        recoveredStep = 447 ifTrue: [
            recoveredStack2 := 'aVariablesComboBox'.
            recoveredPC := 449.
        ].
        recoveredStep = 449 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 452.
        ].
        recoveredStep = 452 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 454.
        ].
        recoveredStep = 454 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 457.
        ].
        recoveredStep = 457 ifTrue: [
            recoveredStack2 := 'xLabel'.
            recoveredPC := 459.
        ].
        recoveredStep = 459 ifTrue: [
            recoveredStack3 := [:recoveredBlock459Arg1 | 
    | recoveredBlock459Value0 recoveredBlock459Value1 recoveredBlock459Value2 recoveredBlock459Value3 recoveredBlock459Value4 recoveredBlock459Value5 recoveredBlock459Value6 recoveredBlock459Value7 recoveredBlock459Value8 recoveredBlock459Value9 recoveredBlock459Value10 recoveredBlock459Value11 recoveredBlock459Value12 |
    recoveredBlock459Value0 := recoveredBlock459Arg1.
    recoveredBlock459Value1 := recoveredBlock459Value0.
    (recoveredBlock459Value1) labelString: ('x:').
    recoveredBlock459Value2 := recoveredBlock459Value0.
    (recoveredBlock459Value2) marginHeight: (0).
    recoveredBlock459Value3 := recoveredBlock459Value0.
    recoveredBlock459Value4 := recoveredLocal14.
    recoveredBlock459Value5 := (14) * (recoveredBlock459Value4).
    recoveredBlock459Value6 := (recoveredBlock459Value5) rounded.
    (recoveredBlock459Value3) height: (recoveredBlock459Value6).
    recoveredBlock459Value7 := recoveredBlock459Value0.
    recoveredBlock459Value8 := recoveredLocal15.
    recoveredBlock459Value9 := (15) * (recoveredBlock459Value8).
    recoveredBlock459Value10 := (recoveredBlock459Value9) rounded.
    (recoveredBlock459Value7) width: (recoveredBlock459Value10).
    recoveredBlock459Value11 := (self) defaultLabelBlue.
    recoveredBlock459Value12 := (recoveredBlock459Value0) foregroundColor: (recoveredBlock459Value11).
    recoveredBlock459Value12
].
            recoveredPC := 505.
        ].
        recoveredStep = 505 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 507.
        ].
        recoveredStep = 507 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 509.
        ].
        recoveredStep = 509 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 512.
        ].
        recoveredStep = 512 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 515.
        ].
        recoveredStep = 515 ifTrue: [
            recoveredStack2 := 'xLabel'.
            recoveredPC := 517.
        ].
        recoveredStep = 517 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 520.
        ].
        recoveredStep = 520 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 522.
        ].
        recoveredStep = 522 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 525.
        ].
        recoveredStep = 525 ifTrue: [
            recoveredStack2 := 'yLabel'.
            recoveredPC := 527.
        ].
        recoveredStep = 527 ifTrue: [
            recoveredStack3 := [:recoveredBlock527Arg1 | 
    | recoveredBlock527Value0 recoveredBlock527Value1 recoveredBlock527Value2 recoveredBlock527Value3 recoveredBlock527Value4 recoveredBlock527Value5 recoveredBlock527Value6 recoveredBlock527Value7 recoveredBlock527Value8 recoveredBlock527Value9 recoveredBlock527Value10 recoveredBlock527Value11 recoveredBlock527Value12 recoveredBlock527Value13 recoveredBlock527Value14 recoveredBlock527Value15 recoveredBlock527Value16 |
    recoveredBlock527Value0 := recoveredBlock527Arg1.
    recoveredBlock527Value1 := recoveredBlock527Value0.
    (recoveredBlock527Value1) labelString: ('y:').
    recoveredBlock527Value2 := recoveredBlock527Value0.
    (recoveredBlock527Value2) marginHeight: (0).
    recoveredBlock527Value3 := recoveredBlock527Value0.
    recoveredBlock527Value4 := recoveredLocal14.
    recoveredBlock527Value5 := (7) * (recoveredBlock527Value4).
    recoveredBlock527Value6 := (recoveredBlock527Value5) rounded.
    (recoveredBlock527Value3) y: (recoveredBlock527Value6).
    recoveredBlock527Value7 := recoveredBlock527Value0.
    recoveredBlock527Value8 := recoveredLocal14.
    recoveredBlock527Value9 := (14) * (recoveredBlock527Value8).
    recoveredBlock527Value10 := (recoveredBlock527Value9) rounded.
    (recoveredBlock527Value7) height: (recoveredBlock527Value10).
    recoveredBlock527Value11 := recoveredBlock527Value0.
    recoveredBlock527Value12 := recoveredLocal15.
    recoveredBlock527Value13 := (15) * (recoveredBlock527Value12).
    recoveredBlock527Value14 := (recoveredBlock527Value13) rounded.
    (recoveredBlock527Value11) width: (recoveredBlock527Value14).
    recoveredBlock527Value15 := (self) defaultLabelBlue.
    recoveredBlock527Value16 := (recoveredBlock527Value0) foregroundColor: (recoveredBlock527Value15).
    recoveredBlock527Value16
].
            recoveredPC := 584.
        ].
        recoveredStep = 584 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 586.
        ].
        recoveredStep = 586 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 588.
        ].
        recoveredStep = 588 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 591.
        ].
        recoveredStep = 591 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 594.
        ].
        recoveredStep = 594 ifTrue: [
            recoveredStack2 := 'yLabel'.
            recoveredPC := 596.
        ].
        recoveredStep = 596 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 599.
        ].
        recoveredStep = 599 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 601.
        ].
        recoveredStep = 601 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 604.
        ].
        recoveredStep = 604 ifTrue: [
            recoveredStack2 := 'keyMapText'.
            recoveredPC := 606.
        ].
        recoveredStep = 606 ifTrue: [
            recoveredStack3 := [:block2812a6fcArg1 | 
    | block2812a6fcValue0 block2812a6fcValue1 block2812a6fcValue2 block2812a6fcValue3 block2812a6fcValue4 |
    block2812a6fcValue0 := block2812a6fcArg1.
    block2812a6fcValue1 := block2812a6fcValue0.
    (block2812a6fcValue1) editable: (false).
    block2812a6fcValue2 := block2812a6fcValue0.
    (block2812a6fcValue2) wordWrap: (true).
    block2812a6fcValue3 := XmMULTILINEEDIT.
    block2812a6fcValue4 := (block2812a6fcValue0) editMode: (block2812a6fcValue3).
    block2812a6fcValue4
].
            recoveredPC := 610.
        ].
        recoveredStep = 610 ifTrue: [
            recoveredPC := 636.
        ].
        recoveredStep = 636 ifTrue: [
            recoveredStack1 := (recoveredStack1) createScrolledText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 641.
        ].
        recoveredStep = 641 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 643.
        ].
        recoveredStep = 643 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 646.
        ].
        recoveredStep = 646 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 649.
        ].
        recoveredStep = 649 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 653.
        ].
        recoveredStep = 653 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 656.
        ].
        recoveredStep = 656 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 659.
        ].
        recoveredStep = 659 ifTrue: [
            recoveredStack2 := 'aScrolledText1'.
            recoveredPC := 662.
        ].
        recoveredStep = 662 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 665.
        ].
        recoveredStep = 665 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 667.
        ].
        recoveredStep = 667 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 670.
        ].
        recoveredStep = 670 ifTrue: [
            recoveredStack2 := 'keyMapText'.
            recoveredPC := 674.
        ].
        recoveredStep = 674 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 677.
        ].
        recoveredStep = 677 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 679.
        ].
        recoveredStep = 679 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 682.
        ].
        recoveredStep = 682 ifTrue: [
            recoveredStack2 := 'variableLabel'.
            recoveredPC := 686.
        ].
        recoveredStep = 686 ifTrue: [
            recoveredStack3 := [:recoveredBlock686Arg1 | 
    | recoveredBlock686Value0 recoveredBlock686Value1 recoveredBlock686Value2 recoveredBlock686Value3 recoveredBlock686Value4 recoveredBlock686Value5 recoveredBlock686Value6 recoveredBlock686Value7 recoveredBlock686Value8 recoveredBlock686Value9 recoveredBlock686Value10 recoveredBlock686Value11 recoveredBlock686Value12 recoveredBlock686Value13 recoveredBlock686Value14 recoveredBlock686Value15 |
    recoveredBlock686Value0 := recoveredBlock686Arg1.
    recoveredBlock686Value1 := recoveredBlock686Value0.
    recoveredBlock686Value2 := recoveredLocal15.
    recoveredBlock686Value3 := (12) * (recoveredBlock686Value2).
    recoveredBlock686Value4 := (recoveredBlock686Value3) rounded.
    (recoveredBlock686Value1) x: (recoveredBlock686Value4).
    recoveredBlock686Value5 := recoveredBlock686Value0.
    (recoveredBlock686Value5) labelString: ('w:').
    recoveredBlock686Value6 := recoveredBlock686Value0.
    recoveredBlock686Value7 := recoveredLocal14.
    recoveredBlock686Value8 := (14) * (recoveredBlock686Value7).
    recoveredBlock686Value9 := (recoveredBlock686Value8) rounded.
    (recoveredBlock686Value6) y: (recoveredBlock686Value9).
    recoveredBlock686Value10 := recoveredBlock686Value0.
    recoveredBlock686Value11 := recoveredLocal15.
    recoveredBlock686Value12 := (20) * (recoveredBlock686Value11).
    recoveredBlock686Value13 := (recoveredBlock686Value12) rounded.
    (recoveredBlock686Value10) width: (recoveredBlock686Value13).
    recoveredBlock686Value14 := (self) defaultLabelBlue.
    recoveredBlock686Value15 := (recoveredBlock686Value0) foregroundColor: (recoveredBlock686Value14).
    recoveredBlock686Value15
].
            recoveredPC := 738.
        ].
        recoveredStep = 738 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 740.
        ].
        recoveredStep = 740 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 742.
        ].
        recoveredStep = 742 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 745.
        ].
        recoveredStep = 745 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 748.
        ].
        recoveredStep = 748 ifTrue: [
            recoveredStack2 := 'variableLabel'.
            recoveredPC := 752.
        ].
        recoveredStep = 752 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 755.
        ].
        recoveredStep = 755 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 757.
        ].
        recoveredStep = 757 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 760.
        ].
        recoveredStep = 760 ifTrue: [
            recoveredStack2 := [:recoveredBlock760Arg1 | 
    | recoveredBlock760Value0 recoveredBlock760Value1 recoveredBlock760Value2 |
    recoveredBlock760Value0 := recoveredBlock760Arg1.
    recoveredBlock760Value1 := recoveredLocal11.
    recoveredBlock760Value2 := (recoveredBlock760Value0) workWindow: (recoveredBlock760Value1).
    recoveredBlock760Value2
].
            recoveredPC := 776.
        ].
        recoveredStep = 776 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 781.
        ].
        recoveredStep = 781 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 784.
        ].
        recoveredStep = 784 ifTrue: [
            recoveredStack2 := [:recoveredBlock784Arg1 | 
    | recoveredBlock784Value0 recoveredBlock784Value1 recoveredBlock784Value2 recoveredBlock784Value3 recoveredBlock784Value4 recoveredBlock784Value5 recoveredBlock784Value6 recoveredBlock784Value7 recoveredBlock784Value8 recoveredBlock784Value9 recoveredBlock784Value10 recoveredBlock784Value11 |
    recoveredBlock784Value0 := recoveredBlock784Arg1.
    recoveredBlock784Value1 := recoveredBlock784Value0.
    recoveredBlock784Value2 := XmATTACHFORM.
    (recoveredBlock784Value1) topAttachment: (recoveredBlock784Value2).
    recoveredBlock784Value3 := recoveredBlock784Value0.
    (recoveredBlock784Value3) topOffset: (5).
    recoveredBlock784Value4 := recoveredBlock784Value0.
    recoveredBlock784Value5 := XmATTACHWIDGET.
    (recoveredBlock784Value4) leftAttachment: (recoveredBlock784Value5).
    recoveredBlock784Value6 := recoveredBlock784Value0.
    recoveredBlock784Value7 := recoveredLocal7.
    (recoveredBlock784Value6) leftWidget: (recoveredBlock784Value7).
    recoveredBlock784Value8 := recoveredBlock784Value0.
    (recoveredBlock784Value8) leftOffset: (5).
    recoveredBlock784Value9 := recoveredBlock784Value0.
    recoveredBlock784Value10 := XmATTACHFORM.
    (recoveredBlock784Value9) rightAttachment: (recoveredBlock784Value10).
    recoveredBlock784Value11 := (recoveredBlock784Value0) rightOffset: (5).
    recoveredBlock784Value11
].
            recoveredPC := 844.
        ].
        recoveredStep = 844 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 849.
        ].
        recoveredStep = 849 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 852.
        ].
        recoveredStep = 852 ifTrue: [
            recoveredStack2 := [:recoveredBlock852Arg1 | 
    | recoveredBlock852Value0 recoveredBlock852Value1 recoveredBlock852Value2 recoveredBlock852Value3 recoveredBlock852Value4 recoveredBlock852Value5 recoveredBlock852Value6 recoveredBlock852Value7 recoveredBlock852Value8 recoveredBlock852Value9 recoveredBlock852Value10 recoveredBlock852Value11 recoveredBlock852Value12 recoveredBlock852Value13 |
    recoveredBlock852Value0 := recoveredBlock852Arg1.
    recoveredBlock852Value1 := recoveredBlock852Value0.
    recoveredBlock852Value2 := XmATTACHWIDGET.
    (recoveredBlock852Value1) topAttachment: (recoveredBlock852Value2).
    recoveredBlock852Value3 := recoveredBlock852Value0.
    recoveredBlock852Value4 := recoveredLocal10.
    (recoveredBlock852Value3) topWidget: (recoveredBlock852Value4).
    recoveredBlock852Value5 := recoveredBlock852Value0.
    (recoveredBlock852Value5) topOffset: (5).
    recoveredBlock852Value6 := recoveredBlock852Value0.
    recoveredBlock852Value7 := XmATTACHWIDGET.
    (recoveredBlock852Value6) leftAttachment: (recoveredBlock852Value7).
    recoveredBlock852Value8 := recoveredBlock852Value0.
    recoveredBlock852Value9 := recoveredLocal6.
    (recoveredBlock852Value8) leftWidget: (recoveredBlock852Value9).
    recoveredBlock852Value10 := recoveredBlock852Value0.
    (recoveredBlock852Value10) leftOffset: (5).
    recoveredBlock852Value11 := recoveredBlock852Value0.
    recoveredBlock852Value12 := XmATTACHFORM.
    (recoveredBlock852Value11) rightAttachment: (recoveredBlock852Value12).
    recoveredBlock852Value13 := (recoveredBlock852Value0) rightOffset: (5).
    recoveredBlock852Value13
].
            recoveredPC := 920.
        ].
        recoveredStep = 920 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 925.
        ].
        recoveredStep = 925 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 928.
        ].
        recoveredStep = 928 ifTrue: [
            recoveredStack2 := [:recoveredBlock928Arg1 | 
    | recoveredBlock928Value0 recoveredBlock928Value1 recoveredBlock928Value2 recoveredBlock928Value3 recoveredBlock928Value4 recoveredBlock928Value5 recoveredBlock928Value6 recoveredBlock928Value7 recoveredBlock928Value8 recoveredBlock928Value9 recoveredBlock928Value10 recoveredBlock928Value11 |
    recoveredBlock928Value0 := recoveredBlock928Arg1.
    recoveredBlock928Value1 := recoveredBlock928Value0.
    recoveredBlock928Value2 := XmATTACHFORM.
    (recoveredBlock928Value1) topAttachment: (recoveredBlock928Value2).
    recoveredBlock928Value3 := recoveredBlock928Value0.
    (recoveredBlock928Value3) topOffset: (5).
    recoveredBlock928Value4 := recoveredBlock928Value0.
    recoveredBlock928Value5 := XmATTACHWIDGET.
    (recoveredBlock928Value4) leftAttachment: (recoveredBlock928Value5).
    recoveredBlock928Value6 := recoveredBlock928Value0.
    recoveredBlock928Value7 := recoveredLocal3.
    (recoveredBlock928Value6) leftWidget: (recoveredBlock928Value7).
    recoveredBlock928Value8 := recoveredBlock928Value0.
    (recoveredBlock928Value8) leftOffset: (5).
    recoveredBlock928Value9 := recoveredBlock928Value0.
    recoveredBlock928Value10 := XmATTACHPOSITION.
    (recoveredBlock928Value9) rightAttachment: (recoveredBlock928Value10).
    recoveredBlock928Value11 := (recoveredBlock928Value0) rightPosition: (38).
    recoveredBlock928Value11
].
            recoveredPC := 988.
        ].
        recoveredStep = 988 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 993.
        ].
        recoveredStep = 993 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 996.
        ].
        recoveredStep = 996 ifTrue: [
            recoveredStack2 := [:recoveredBlock996Arg1 | 
    | recoveredBlock996Value0 recoveredBlock996Value1 recoveredBlock996Value2 recoveredBlock996Value3 recoveredBlock996Value4 recoveredBlock996Value5 recoveredBlock996Value6 recoveredBlock996Value7 recoveredBlock996Value8 |
    recoveredBlock996Value0 := recoveredBlock996Arg1.
    recoveredBlock996Value1 := recoveredBlock996Value0.
    recoveredBlock996Value2 := XmATTACHFORM.
    (recoveredBlock996Value1) topAttachment: (recoveredBlock996Value2).
    recoveredBlock996Value3 := recoveredBlock996Value0.
    (recoveredBlock996Value3) topOffset: (5).
    recoveredBlock996Value4 := recoveredBlock996Value0.
    recoveredBlock996Value5 := XmATTACHWIDGET.
    (recoveredBlock996Value4) leftAttachment: (recoveredBlock996Value5).
    recoveredBlock996Value6 := recoveredBlock996Value0.
    recoveredBlock996Value7 := recoveredLocal8.
    (recoveredBlock996Value6) leftWidget: (recoveredBlock996Value7).
    recoveredBlock996Value8 := (recoveredBlock996Value0) leftOffset: (10).
    recoveredBlock996Value8
].
            recoveredPC := 1042.
        ].
        recoveredStep = 1042 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1047.
        ].
        recoveredStep = 1047 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 1050.
        ].
        recoveredStep = 1050 ifTrue: [
            recoveredStack2 := [:recoveredBlock1050Arg1 | 
    | recoveredBlock1050Value0 recoveredBlock1050Value1 recoveredBlock1050Value2 recoveredBlock1050Value3 recoveredBlock1050Value4 recoveredBlock1050Value5 recoveredBlock1050Value6 recoveredBlock1050Value7 recoveredBlock1050Value8 recoveredBlock1050Value9 recoveredBlock1050Value10 |
    recoveredBlock1050Value0 := recoveredBlock1050Arg1.
    recoveredBlock1050Value1 := recoveredBlock1050Value0.
    recoveredBlock1050Value2 := XmATTACHWIDGET.
    (recoveredBlock1050Value1) topAttachment: (recoveredBlock1050Value2).
    recoveredBlock1050Value3 := recoveredBlock1050Value0.
    recoveredBlock1050Value4 := recoveredLocal10.
    (recoveredBlock1050Value3) topWidget: (recoveredBlock1050Value4).
    recoveredBlock1050Value5 := recoveredBlock1050Value0.
    (recoveredBlock1050Value5) topOffset: (2).
    recoveredBlock1050Value6 := recoveredBlock1050Value0.
    recoveredBlock1050Value7 := XmATTACHWIDGET.
    (recoveredBlock1050Value6) leftAttachment: (recoveredBlock1050Value7).
    recoveredBlock1050Value8 := recoveredBlock1050Value0.
    recoveredBlock1050Value9 := recoveredLocal8.
    (recoveredBlock1050Value8) leftWidget: (recoveredBlock1050Value9).
    recoveredBlock1050Value10 := (recoveredBlock1050Value0) leftOffset: (10).
    recoveredBlock1050Value10
].
            recoveredPC := 1104.
        ].
        recoveredStep = 1104 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1109.
        ].
        recoveredStep = 1109 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 1112.
        ].
        recoveredStep = 1112 ifTrue: [
            recoveredStack2 := [:recoveredBlock1112Arg1 | 
    | recoveredBlock1112Value0 recoveredBlock1112Value1 recoveredBlock1112Value2 recoveredBlock1112Value3 recoveredBlock1112Value4 recoveredBlock1112Value5 recoveredBlock1112Value6 recoveredBlock1112Value7 recoveredBlock1112Value8 recoveredBlock1112Value9 recoveredBlock1112Value10 recoveredBlock1112Value11 recoveredBlock1112Value12 recoveredBlock1112Value13 recoveredBlock1112Value14 recoveredBlock1112Value15 recoveredBlock1112Value16 recoveredBlock1112Value17 recoveredBlock1112Value18 recoveredBlock1112Value19 recoveredBlock1112Value20 recoveredBlock1112Value21 recoveredBlock1112Value22 |
    recoveredBlock1112Value0 := recoveredBlock1112Arg1.
    recoveredBlock1112Value1 := recoveredBlock1112Value0.
    recoveredBlock1112Value2 := XmATTACHWIDGET.
    (recoveredBlock1112Value1) bottomAttachment: (recoveredBlock1112Value2).
    recoveredBlock1112Value3 := recoveredBlock1112Value0.
    recoveredBlock1112Value4 := recoveredLocal1.
    (recoveredBlock1112Value3) bottomWidget: (recoveredBlock1112Value4).
    recoveredBlock1112Value5 := recoveredBlock1112Value0.
    (recoveredBlock1112Value5) bottomOffset: (5).
    recoveredBlock1112Value6 := recoveredBlock1112Value0.
    recoveredBlock1112Value7 := XmATTACHFORM.
    (recoveredBlock1112Value6) leftAttachment: (recoveredBlock1112Value7).
    recoveredBlock1112Value8 := recoveredBlock1112Value0.
    recoveredBlock1112Value9 := XmATTACHFORM.
    (recoveredBlock1112Value8) rightAttachment: (recoveredBlock1112Value9).
    recoveredBlock1112Value10 := recoveredBlock1112Value0.
    (recoveredBlock1112Value10) rightOffset: (5).
    recoveredBlock1112Value11 := recoveredBlock1112Value0.
    recoveredBlock1112Value12 := recoveredLocal14.
    recoveredBlock1112Value13 := (168) * (recoveredBlock1112Value12).
    recoveredBlock1112Value14 := (recoveredBlock1112Value13) rounded.
    (recoveredBlock1112Value11) y: (recoveredBlock1112Value14).
    recoveredBlock1112Value15 := recoveredBlock1112Value0.
    recoveredBlock1112Value16 := recoveredLocal14.
    recoveredBlock1112Value17 := (47) * (recoveredBlock1112Value16).
    recoveredBlock1112Value18 := (recoveredBlock1112Value17) rounded.
    (recoveredBlock1112Value15) height: (recoveredBlock1112Value18).
    recoveredBlock1112Value19 := recoveredLocal15.
    recoveredBlock1112Value20 := (481) * (recoveredBlock1112Value19).
    recoveredBlock1112Value21 := (recoveredBlock1112Value20) rounded.
    recoveredBlock1112Value22 := (recoveredBlock1112Value0) width: (recoveredBlock1112Value21).
    recoveredBlock1112Value22
].
            recoveredPC := 1199.
        ].
        recoveredStep = 1199 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1203.
        ].
        recoveredStep = 1203 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 1206.
        ].
        recoveredStep = 1206 ifTrue: [
            recoveredStack2 := [:block2812a720Arg1 | 
    | block2812a720Value0 block2812a720Value1 block2812a720Value2 block2812a720Value3 block2812a720Value4 block2812a720Value5 block2812a720Value6 |
    block2812a720Value0 := block2812a720Arg1.
    block2812a720Value1 := block2812a720Value0.
    block2812a720Value2 := XmATTACHFORM.
    (block2812a720Value1) topAttachment: (block2812a720Value2).
    block2812a720Value3 := block2812a720Value0.
    (block2812a720Value3) topOffset: (5).
    block2812a720Value4 := block2812a720Value0.
    block2812a720Value5 := XmATTACHFORM.
    (block2812a720Value4) leftAttachment: (block2812a720Value5).
    block2812a720Value6 := (block2812a720Value0) leftOffset: (5).
    block2812a720Value6
].
            recoveredPC := 1210.
        ].
        recoveredStep = 1210 ifTrue: [
            recoveredPC := 1246.
        ].
        recoveredStep = 1246 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1251.
        ].
        recoveredStep = 1251 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1254.
        ].
        recoveredStep = 1254 ifTrue: [
            recoveredStack2 := [:block2812a744Arg1 | 
    | block2812a744Value0 block2812a744Value1 block2812a744Value2 block2812a744Value3 block2812a744Value4 block2812a744Value5 block2812a744Value6 block2812a744Value7 block2812a744Value8 block2812a744Value9 block2812a744Value10 |
    block2812a744Value0 := block2812a744Arg1.
    block2812a744Value1 := block2812a744Value0.
    block2812a744Value2 := XmATTACHNONE.
    (block2812a744Value1) leftAttachment: (block2812a744Value2).
    block2812a744Value3 := block2812a744Value0.
    block2812a744Value4 := XmATTACHNONE.
    (block2812a744Value3) topAttachment: (block2812a744Value4).
    block2812a744Value5 := block2812a744Value0.
    block2812a744Value6 := XmATTACHFORM.
    (block2812a744Value5) rightAttachment: (block2812a744Value6).
    block2812a744Value7 := block2812a744Value0.
    (block2812a744Value7) rightOffset: (5).
    block2812a744Value8 := block2812a744Value0.
    block2812a744Value9 := XmATTACHFORM.
    (block2812a744Value8) bottomAttachment: (block2812a744Value9).
    block2812a744Value10 := (block2812a744Value0) bottomOffset: (5).
    block2812a744Value10
].
            recoveredPC := 1258.
        ].
        recoveredStep = 1258 ifTrue: [
            recoveredPC := 1310.
        ].
        recoveredStep = 1310 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1315.
        ].
        recoveredStep = 1315 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 1318.
        ].
        recoveredStep = 1318 ifTrue: [
            recoveredStack2 := [:recoveredBlock1318Arg1 | 
    | recoveredBlock1318Value0 recoveredBlock1318Value1 recoveredBlock1318Value2 recoveredBlock1318Value3 recoveredBlock1318Value4 recoveredBlock1318Value5 recoveredBlock1318Value6 recoveredBlock1318Value7 recoveredBlock1318Value8 recoveredBlock1318Value9 recoveredBlock1318Value10 recoveredBlock1318Value11 recoveredBlock1318Value12 recoveredBlock1318Value13 |
    recoveredBlock1318Value0 := recoveredBlock1318Arg1.
    recoveredBlock1318Value1 := recoveredBlock1318Value0.
    recoveredBlock1318Value2 := XmATTACHNONE.
    (recoveredBlock1318Value1) leftAttachment: (recoveredBlock1318Value2).
    recoveredBlock1318Value3 := recoveredBlock1318Value0.
    recoveredBlock1318Value4 := XmATTACHNONE.
    (recoveredBlock1318Value3) topAttachment: (recoveredBlock1318Value4).
    recoveredBlock1318Value5 := recoveredBlock1318Value0.
    recoveredBlock1318Value6 := XmATTACHWIDGET.
    (recoveredBlock1318Value5) rightAttachment: (recoveredBlock1318Value6).
    recoveredBlock1318Value7 := recoveredBlock1318Value0.
    recoveredBlock1318Value8 := recoveredLocal1.
    (recoveredBlock1318Value7) rightWidget: (recoveredBlock1318Value8).
    recoveredBlock1318Value9 := recoveredBlock1318Value0.
    (recoveredBlock1318Value9) rightOffset: (5).
    recoveredBlock1318Value10 := recoveredBlock1318Value0.
    recoveredBlock1318Value11 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock1318Value10) bottomAttachment: (recoveredBlock1318Value11).
    recoveredBlock1318Value12 := recoveredLocal1.
    recoveredBlock1318Value13 := (recoveredBlock1318Value0) bottomWidget: (recoveredBlock1318Value12).
    recoveredBlock1318Value13
].
            recoveredPC := 1382.
        ].
        recoveredStep = 1382 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1387.
        ].
        recoveredStep = 1387 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 1390.
        ].
        recoveredStep = 1390 ifTrue: [
            recoveredStack2 := XmNpopdownCallback.
            recoveredPC := 1394.
        ].
        recoveredStep = 1394 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1395.
        ].
        recoveredStep = 1395 ifTrue: [
            recoveredStack4 := 'aVariablesComboBoxPopdown:clientData:callData:'.
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
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 1406.
        ].
        recoveredStep = 1406 ifTrue: [
            recoveredStack2 := XmNpopupCallback.
            recoveredPC := 1410.
        ].
        recoveredStep = 1410 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1411.
        ].
        recoveredStep = 1411 ifTrue: [
            recoveredStack4 := 'aVariablesComboBoxPopup:clientData:callData:'.
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
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 1422.
        ].
        recoveredStep = 1422 ifTrue: [
            recoveredStack2 := XmNsingleSelectionCallback.
            recoveredPC := 1426.
        ].
        recoveredStep = 1426 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1427.
        ].
        recoveredStep = 1427 ifTrue: [
            recoveredStack4 := 'aVariablesComboBoxSingle:clientData:callData:'.
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
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 1442.
        ].
        recoveredStep = 1442 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1443.
        ].
        recoveredStep = 1443 ifTrue: [
            recoveredStack4 := 'cancelButtonSingleSelection:clientData:callData:'.
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
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 1454.
        ].
        recoveredStep = 1454 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 1458.
        ].
        recoveredStep = 1458 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1459.
        ].
        recoveredStep = 1459 ifTrue: [
            recoveredStack4 := 'okButtonSingleSelection:clientData:callData:'.
            recoveredPC := 1462.
        ].
        recoveredStep = 1462 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1463.
        ].
        recoveredStep = 1463 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1467.
        ].
        recoveredStep = 1467 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 1470.
        ].
        recoveredStep = 1470 ifTrue: [
            recoveredStack2 := recoveredLocal16.
            recoveredPC := 1473.
        ].
        recoveredStep = 1473 ifTrue: [
            recoveredStack3 := recoveredLocal12.
            recoveredPC := 1476.
        ].
        recoveredStep = 1476 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 1481.
        ].
        recoveredStep = 1481 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

