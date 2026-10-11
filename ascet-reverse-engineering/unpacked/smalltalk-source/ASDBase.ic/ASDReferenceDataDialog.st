"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001ba04; bytecode file offset 0x92209c"
!ASDReferenceDataDialog methodsFor: 'recovered'!
messageText
    ^'Assign an initial value for the reference element by selecting an appropriate target from the list of available elements in the combo box.'
! !

"ASDBase.ic method 0x20026c20; bytecode file offset 0x923928"
!ASDReferenceDataDialog methodsFor: 'recovered'!
titleStringTemplate
    ^'Data Editor for: %1'
! !

"ASDBase.ic method 0x200322c4; bytecode file offset 0x934580"
!ASDReferenceDataDialog methodsFor: 'recovered'!
targetList
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) uiController.
    recoveredValue1 := (recoveredValue0) targetList.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20042e8c; bytecode file offset 0x9451f8"
!ASDReferenceDataDialog methodsFor: 'recovered'!
widgetElementTypeText
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('elementTypeText').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20043e2c; bytecode file offset 0x9451f8"
!ASDReferenceDataDialog methodsFor: 'recovered'!
widgetButtonOk
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('widgetButtonOk').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200457ec; bytecode file offset 0x9451f8"
!ASDReferenceDataDialog methodsFor: 'recovered'!
widgetElementNameText
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('elementNameText').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004768c; bytecode file offset 0x9451f8"
!ASDReferenceDataDialog methodsFor: 'recovered'!
widgetButtonCancel
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('widgetButtonCancel').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20047bcc; bytecode file offset 0x9451f8"
!ASDReferenceDataDialog methodsFor: 'recovered'!
widgetElementTypeIcon
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('elementTypeIcon').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200481dc; bytecode file offset 0x9451f8"
!ASDReferenceDataDialog methodsFor: 'recovered'!
elementValueComboBox
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('elementValueComboBox').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004869c; bytecode file offset 0x9451f8"
!ASDReferenceDataDialog methodsFor: 'recovered'!
widgetElementNameIcon
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('elementNameIcon').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004fa58; bytecode file offset 0x94d048"
!ASDReferenceDataDialog methodsFor: 'recovered'!
cancel
    (self) close.
    ^self
! !

"ASDBase.ic method 0x2005127c; bytecode file offset 0x94f0e0"
!ASDReferenceDataDialog methodsFor: 'recovered'!
elementTypeLabel
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) uiController.
    recoveredValue1 := (recoveredValue0) referenceElement.
    recoveredValue2 := (recoveredValue1) sgClassLabel.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20051628; bytecode file offset 0x94f0e0"
!ASDReferenceDataDialog methodsFor: 'recovered'!
elementLabel
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) uiController.
    recoveredValue1 := (recoveredValue0) referenceElement.
    recoveredValue2 := (recoveredValue1) label.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005a89c; bytecode file offset 0x957a6c"
!ASDReferenceDataDialog methodsFor: 'recovered'!
widgetButtonOkActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) ok.
    ^self
! !

"ASDBase.ic method 0x2005a95c; bytecode file offset 0x957a6c"
!ASDReferenceDataDialog methodsFor: 'recovered'!
valueChanged: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) updateWidgets.
    ^self
! !

"ASDBase.ic method 0x2005abfc; bytecode file offset 0x957a6c"
!ASDReferenceDataDialog methodsFor: 'recovered'!
widgetButtonCancelActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) cancel.
    ^self
! !

"ASDBase.ic method 0x20062b7c; bytecode file offset 0x95f8b0"
!ASDReferenceDataDialog methodsFor: 'recovered'!
titleString
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) titleStringTemplate.
    recoveredValue1 := (self) elementLabel.
    recoveredValue2 := (recoveredValue0) bindWith: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200cabb8; bytecode file offset 0x9c747c"
!ASDReferenceDataDialog methodsFor: 'recovered'!
elementIcon
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) uiController.
    recoveredValue1 := (recoveredValue0) referenceElement.
    recoveredValue2 := (recoveredValue1) visualCallBackImageElement.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (self) returnIconWithName: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200d31f0; bytecode file offset 0x9cfac4"
!ASDReferenceDataDialog methodsFor: 'recovered'!
ok
    | recoveredValue0 |
    recoveredValue0 := (self) getValidSelectionFromComboBox.
    (self) result: (recoveredValue0).
    (self) close.
    ^self
! !

"ASDBase.ic method 0x2012b778; bytecode file offset 0xa28040"
!ASDReferenceDataDialog methodsFor: 'recovered'!
initializeAfterCreate
    (self) iconSmall: ('GeneralData') large: ('GeneralData32').
    (self) installActionKeys.
    (self) updateFonts.
    ^self
! !

"ASDBase.ic method 0x2012cc40; bytecode file offset 0xa2951c"
!ASDReferenceDataDialog methodsFor: 'recovered'!
sortedTargetList
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) targetList.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c9f24Arg1 :block280c9f24Arg2 | 
    | block280c9f24Value0 block280c9f24Value1 block280c9f24Value2 block280c9f24Value3 block280c9f24Value4 |
    block280c9f24Value0 := block280c9f24Arg1.
    block280c9f24Value1 := (block280c9f24Value0) label.
    block280c9f24Value2 := block280c9f24Arg2.
    block280c9f24Value3 := (block280c9f24Value2) label.
    block280c9f24Value4 := (block280c9f24Value1) < (block280c9f24Value3).
    block280c9f24Value4
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2017de70; bytecode file offset 0xa7a738"
!ASDReferenceDataDialog methodsFor: 'recovered'!
elementTypeIcon
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) referenceElement.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) iconName.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) returnIconWithName: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201ef290; bytecode file offset 0xaebb5c"
!ASDReferenceDataDialog methodsFor: 'recovered'!
updateWidgets
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getValidSelectionFromComboBox.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isNil.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) elementConfig.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) modifiable.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) not.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetButtonOk.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 25] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
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

"ASDBase.ic method 0x20245950; bytecode file offset 0xb4221c"
!ASDReferenceDataDialog methodsFor: 'recovered'!
getValidSelectionFromComboBox
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) elementValueComboBox.
    recoveredValue1 := (recoveredValue0) getObject.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := recoveredLocal2.
    recoveredValue3 := (recoveredValue2) label.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := (self) targetList.
    recoveredValue5 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Value0 recoveredBlock18Value1 recoveredBlock18Value2 recoveredBlock18Value3 |
    recoveredBlock18Value0 := recoveredBlock18Arg1.
    recoveredBlock18Value1 := (recoveredBlock18Value0) label.
    recoveredBlock18Value2 := recoveredLocal1.
    recoveredBlock18Value3 := (recoveredBlock18Value1) = (recoveredBlock18Value2).
    recoveredBlock18Value3
].
    recoveredValue6 := [].
    recoveredValue7 := (recoveredValue4) detect: (recoveredValue5) ifNone: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x20344234; bytecode file offset 0xc40b38"
!ASDReferenceDataDialog methodsFor: 'recovered'!
initializeAfterOpen
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := (self) shell.
    recoveredValue1 := (self) titleString.
    (recoveredValue0) title: (recoveredValue1).
    recoveredValue2 := (self) widgetElementNameIcon.
    recoveredValue3 := (self) elementIcon.
    (recoveredValue2) labelIcon: (recoveredValue3).
    recoveredValue4 := (self) widgetElementNameText.
    recoveredValue5 := (self) elementLabel.
    (recoveredValue4) labelString: (recoveredValue5).
    recoveredValue6 := (self) widgetElementTypeIcon.
    recoveredValue7 := (self) elementTypeIcon.
    (recoveredValue6) labelIcon: (recoveredValue7).
    recoveredValue8 := (self) widgetElementTypeText.
    recoveredValue9 := (self) elementTypeLabel.
    (recoveredValue8) labelString: (recoveredValue9).
    recoveredValue10 := (self) elementValueComboBox.
    recoveredValue11 := (self) sortedTargetList.
    (recoveredValue10) items: (recoveredValue11).
    recoveredValue12 := (self) elementValueComboBox.
    recoveredValue13 := (self) uiController.
    recoveredValue14 := (recoveredValue13) getElementConfig.
    (recoveredValue12) setObject: (recoveredValue14).
    (self) updateWidgets.
    ^self
! !

"ASDBase.ic method 0x20695f74; bytecode file offset 0xf929fc"
!ASDReferenceDataDialog methodsFor: 'recovered'!
createWidgetHierarchy: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredLocal15 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredLocal15 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 'dialogShell'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := [:block2812bf2cArg1 | 
    | block2812bf2cValue0 block2812bf2cValue1 block2812bf2cValue2 block2812bf2cValue3 block2812bf2cValue4 block2812bf2cValue5 block2812bf2cValue6 block2812bf2cValue7 block2812bf2cValue8 block2812bf2cValue9 block2812bf2cValue10 block2812bf2cValue11 block2812bf2cValue12 |
    block2812bf2cValue0 := block2812bf2cArg1.
    block2812bf2cValue1 := block2812bf2cValue0.
    (block2812bf2cValue1) allowShellResize: (true).
    block2812bf2cValue2 := block2812bf2cValue0.
    block2812bf2cValue3 := MWMINPUTPRIMARYAPPLICATIONMODAL.
    (block2812bf2cValue2) mwmInputMode: (block2812bf2cValue3).
    block2812bf2cValue4 := block2812bf2cValue0.
    (block2812bf2cValue4) title: ('Dialog').
    block2812bf2cValue5 := MWMDECORBORDER.
    block2812bf2cValue6 := MWMDECORRESIZEH.
    block2812bf2cValue7 := (block2812bf2cValue5) | (block2812bf2cValue6).
    block2812bf2cValue8 := MWMDECORTITLE.
    block2812bf2cValue9 := (block2812bf2cValue7) | (block2812bf2cValue8).
    block2812bf2cValue10 := MWMDECORMENU.
    block2812bf2cValue11 := (block2812bf2cValue9) | (block2812bf2cValue10).
    block2812bf2cValue12 := (block2812bf2cValue0) mwmDecorations: (block2812bf2cValue11).
    block2812bf2cValue12
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDialogShell: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal14 := recoveredStack1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := 'dialogShell'.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack3 := recoveredLocal14.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := 'mainWindow'.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack3 := [:block2812bf50Arg1 | 
    | block2812bf50Value0 block2812bf50Value1 block2812bf50Value2 |
    block2812bf50Value0 := block2812bf50Arg1.
    block2812bf50Value1 := block2812bf50Value0.
    (block2812bf50Value1) height: (200).
    block2812bf50Value2 := (block2812bf50Value0) width: (300).
    block2812bf50Value2
].
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := (recoveredStack1) createMainWindow: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredLocal13 := recoveredStack1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := 'mainWindow'.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack3 := recoveredLocal13.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack2 := 'mainForm'.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredLocal12 := recoveredStack1.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack2 := 'mainForm'.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack3 := recoveredLocal12.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack2 := 'widgetButtonOk'.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack3 := [:block2812bf74Arg1 | 
    | block2812bf74Value0 block2812bf74Value1 block2812bf74Value2 block2812bf74Value3 block2812bf74Value4 |
    block2812bf74Value0 := block2812bf74Arg1.
    block2812bf74Value1 := block2812bf74Value0.
    (block2812bf74Value1) labelString: ('OK').
    block2812bf74Value2 := block2812bf74Value0.
    (block2812bf74Value2) mnemonic: ($O).
    block2812bf74Value3 := block2812bf74Value0.
    (block2812bf74Value3) height: (24).
    block2812bf74Value4 := (block2812bf74Value0) width: (80).
    block2812bf74Value4
].
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack2 := 'widgetButtonOk'.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack3 := recoveredLocal11.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack2 := 'widgetButtonCancel'.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack3 := [:block2812bf98Arg1 | 
    | block2812bf98Value0 block2812bf98Value1 block2812bf98Value2 block2812bf98Value3 block2812bf98Value4 |
    block2812bf98Value0 := block2812bf98Arg1.
    block2812bf98Value1 := block2812bf98Value0.
    (block2812bf98Value1) labelString: ('Cancel').
    block2812bf98Value2 := block2812bf98Value0.
    (block2812bf98Value2) mnemonic: ($C).
    block2812bf98Value3 := block2812bf98Value0.
    (block2812bf98Value3) height: (24).
    block2812bf98Value4 := (block2812bf98Value0) width: (80).
    block2812bf98Value4
].
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack2 := 'widgetButtonCancel'.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack2 := 'messageStringText'.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack3 := [:recoveredBlock237Arg1 | 
    | recoveredBlock237Value0 recoveredBlock237Value1 recoveredBlock237Value2 recoveredBlock237Value3 recoveredBlock237Value4 recoveredBlock237Value5 recoveredBlock237Value6 recoveredBlock237Value7 recoveredBlock237Value8 recoveredBlock237Value9 recoveredBlock237Value10 |
    recoveredBlock237Value0 := recoveredBlock237Arg1.
    recoveredBlock237Value1 := recoveredBlock237Value0.
    recoveredBlock237Value2 := XmMULTILINEEDIT.
    (recoveredBlock237Value1) editMode: (recoveredBlock237Value2).
    recoveredBlock237Value3 := recoveredBlock237Value0.
    recoveredBlock237Value4 := XmALIGNMENTCENTER.
    (recoveredBlock237Value3) alignment: (recoveredBlock237Value4).
    recoveredBlock237Value5 := recoveredBlock237Value0.
    (recoveredBlock237Value5) editable: (false).
    recoveredBlock237Value6 := recoveredBlock237Value0.
    (recoveredBlock237Value6) wordWrap: (true).
    recoveredBlock237Value7 := recoveredBlock237Value0.
    (recoveredBlock237Value7) borderWidth: (0).
    recoveredBlock237Value8 := recoveredBlock237Value0.
    (recoveredBlock237Value8) height: (50).
    recoveredBlock237Value9 := (self) messageText.
    recoveredBlock237Value10 := (recoveredBlock237Value0) value: (recoveredBlock237Value9).
    recoveredBlock237Value10
].
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack1 := (recoveredStack1) createText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack2 := 'messageStringText'.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack2 := 'elementNameLabel'.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack3 := [:block2812bfbcArg1 | 
    | block2812bfbcValue0 block2812bfbcValue1 block2812bfbcValue2 block2812bfbcValue3 |
    block2812bfbcValue0 := block2812bfbcArg1.
    block2812bfbcValue1 := block2812bfbcValue0.
    block2812bfbcValue2 := XmALIGNMENTBEGINNING.
    (block2812bfbcValue1) alignment: (block2812bfbcValue2).
    block2812bfbcValue3 := block2812bfbcValue0.
    (block2812bfbcValue3) labelString: ('Element').
    block2812bfbcValue0
].
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack2 := 'elementNameLabel'.
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack2 := 'elementNameIcon'.
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            recoveredStack3 := [:block2812bfe0Arg1 | 
    | block2812bfe0Value0 block2812bfe0Value1 block2812bfe0Value2 block2812bfe0Value3 block2812bfe0Value4 block2812bfe0Value5 block2812bfe0Value6 |
    block2812bfe0Value0 := block2812bfe0Arg1.
    block2812bfe0Value1 := block2812bfe0Value0.
    block2812bfe0Value2 := XmALIGNMENTBEGINNING.
    (block2812bfe0Value1) alignment: (block2812bfe0Value2).
    block2812bfe0Value3 := block2812bfe0Value0.
    (block2812bfe0Value3) labelString: ('').
    block2812bfe0Value4 := block2812bfe0Value0.
    block2812bfe0Value5 := XmICON.
    (block2812bfe0Value4) labelType: (block2812bfe0Value5).
    block2812bfe0Value6 := block2812bfe0Value0.
    (block2812bfe0Value6) width: (20).
    block2812bfe0Value0
].
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            recoveredPC := 376.
        ].
        recoveredStep = 376 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 378.
        ].
        recoveredStep = 378 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 380.
        ].
        recoveredStep = 380 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 383.
        ].
        recoveredStep = 383 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 386.
        ].
        recoveredStep = 386 ifTrue: [
            recoveredStack2 := 'elementNameIcon'.
            recoveredPC := 390.
        ].
        recoveredStep = 390 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 398.
        ].
        recoveredStep = 398 ifTrue: [
            recoveredStack2 := 'elementNameText'.
            recoveredPC := 402.
        ].
        recoveredStep = 402 ifTrue: [
            recoveredStack3 := [:block2812c004Arg1 | 
    | block2812c004Value0 block2812c004Value1 block2812c004Value2 block2812c004Value3 |
    block2812c004Value0 := block2812c004Arg1.
    block2812c004Value1 := block2812c004Value0.
    block2812c004Value2 := XmALIGNMENTBEGINNING.
    (block2812c004Value1) alignment: (block2812c004Value2).
    block2812c004Value3 := block2812c004Value0.
    (block2812c004Value3) labelString: ('-').
    block2812c004Value0
].
            recoveredPC := 406.
        ].
        recoveredStep = 406 ifTrue: [
            recoveredPC := 423.
        ].
        recoveredStep = 423 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 425.
        ].
        recoveredStep = 425 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 427.
        ].
        recoveredStep = 427 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 430.
        ].
        recoveredStep = 430 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 433.
        ].
        recoveredStep = 433 ifTrue: [
            recoveredStack2 := 'elementNameText'.
            recoveredPC := 436.
        ].
        recoveredStep = 436 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 439.
        ].
        recoveredStep = 439 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 441.
        ].
        recoveredStep = 441 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 444.
        ].
        recoveredStep = 444 ifTrue: [
            recoveredStack2 := 'elementTypeLabel'.
            recoveredPC := 448.
        ].
        recoveredStep = 448 ifTrue: [
            recoveredStack3 := [:recoveredBlock448Arg1 | 
    | recoveredBlock448Value0 recoveredBlock448Value1 recoveredBlock448Value2 recoveredBlock448Value3 recoveredBlock448Value4 recoveredBlock448Value5 |
    recoveredBlock448Value0 := recoveredBlock448Arg1.
    recoveredBlock448Value1 := recoveredBlock448Value0.
    recoveredBlock448Value2 := XmALIGNMENTBEGINNING.
    (recoveredBlock448Value1) alignment: (recoveredBlock448Value2).
    recoveredBlock448Value3 := recoveredBlock448Value0.
    (recoveredBlock448Value3) labelString: ('Type').
    recoveredBlock448Value4 := recoveredBlock448Value0.
    recoveredBlock448Value5 := (self) defaultLabelBlue.
    (recoveredBlock448Value4) foregroundColor: (recoveredBlock448Value5).
    recoveredBlock448Value0
].
            recoveredPC := 478.
        ].
        recoveredStep = 478 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 480.
        ].
        recoveredStep = 480 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 482.
        ].
        recoveredStep = 482 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 485.
        ].
        recoveredStep = 485 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 488.
        ].
        recoveredStep = 488 ifTrue: [
            recoveredStack2 := 'elementTypeLabel'.
            recoveredPC := 492.
        ].
        recoveredStep = 492 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 495.
        ].
        recoveredStep = 495 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 497.
        ].
        recoveredStep = 497 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 500.
        ].
        recoveredStep = 500 ifTrue: [
            recoveredStack2 := 'elementTypeIcon'.
            recoveredPC := 504.
        ].
        recoveredStep = 504 ifTrue: [
            recoveredStack3 := [:block2812c028Arg1 | 
    | block2812c028Value0 block2812c028Value1 block2812c028Value2 block2812c028Value3 block2812c028Value4 block2812c028Value5 block2812c028Value6 |
    block2812c028Value0 := block2812c028Arg1.
    block2812c028Value1 := block2812c028Value0.
    block2812c028Value2 := XmALIGNMENTBEGINNING.
    (block2812c028Value1) alignment: (block2812c028Value2).
    block2812c028Value3 := block2812c028Value0.
    (block2812c028Value3) labelString: ('').
    block2812c028Value4 := block2812c028Value0.
    block2812c028Value5 := XmICON.
    (block2812c028Value4) labelType: (block2812c028Value5).
    block2812c028Value6 := block2812c028Value0.
    (block2812c028Value6) width: (20).
    block2812c028Value0
].
            recoveredPC := 508.
        ].
        recoveredStep = 508 ifTrue: [
            recoveredPC := 538.
        ].
        recoveredStep = 538 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 540.
        ].
        recoveredStep = 540 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 542.
        ].
        recoveredStep = 542 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 545.
        ].
        recoveredStep = 545 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 548.
        ].
        recoveredStep = 548 ifTrue: [
            recoveredStack2 := 'elementTypeIcon'.
            recoveredPC := 552.
        ].
        recoveredStep = 552 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 555.
        ].
        recoveredStep = 555 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 557.
        ].
        recoveredStep = 557 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 560.
        ].
        recoveredStep = 560 ifTrue: [
            recoveredStack2 := 'elementTypeText'.
            recoveredPC := 564.
        ].
        recoveredStep = 564 ifTrue: [
            recoveredStack3 := [:block2812c04cArg1 | 
    | block2812c04cValue0 block2812c04cValue1 block2812c04cValue2 block2812c04cValue3 |
    block2812c04cValue0 := block2812c04cArg1.
    block2812c04cValue1 := block2812c04cValue0.
    block2812c04cValue2 := XmALIGNMENTBEGINNING.
    (block2812c04cValue1) alignment: (block2812c04cValue2).
    block2812c04cValue3 := block2812c04cValue0.
    (block2812c04cValue3) labelString: ('-').
    block2812c04cValue0
].
            recoveredPC := 568.
        ].
        recoveredStep = 568 ifTrue: [
            recoveredPC := 585.
        ].
        recoveredStep = 585 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 587.
        ].
        recoveredStep = 587 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 589.
        ].
        recoveredStep = 589 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 592.
        ].
        recoveredStep = 592 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 595.
        ].
        recoveredStep = 595 ifTrue: [
            recoveredStack2 := 'elementTypeText'.
            recoveredPC := 598.
        ].
        recoveredStep = 598 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 601.
        ].
        recoveredStep = 601 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 603.
        ].
        recoveredStep = 603 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 606.
        ].
        recoveredStep = 606 ifTrue: [
            recoveredStack2 := 'elementValueLabel'.
            recoveredPC := 610.
        ].
        recoveredStep = 610 ifTrue: [
            recoveredStack3 := [:recoveredBlock610Arg1 | 
    | recoveredBlock610Value0 recoveredBlock610Value1 recoveredBlock610Value2 recoveredBlock610Value3 recoveredBlock610Value4 recoveredBlock610Value5 |
    recoveredBlock610Value0 := recoveredBlock610Arg1.
    recoveredBlock610Value1 := recoveredBlock610Value0.
    recoveredBlock610Value2 := XmALIGNMENTBEGINNING.
    (recoveredBlock610Value1) alignment: (recoveredBlock610Value2).
    recoveredBlock610Value3 := recoveredBlock610Value0.
    (recoveredBlock610Value3) labelString: ('Value').
    recoveredBlock610Value4 := recoveredBlock610Value0.
    recoveredBlock610Value5 := (self) defaultLabelBlue.
    (recoveredBlock610Value4) foregroundColor: (recoveredBlock610Value5).
    recoveredBlock610Value0
].
            recoveredPC := 640.
        ].
        recoveredStep = 640 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 642.
        ].
        recoveredStep = 642 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 644.
        ].
        recoveredStep = 644 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 647.
        ].
        recoveredStep = 647 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 650.
        ].
        recoveredStep = 650 ifTrue: [
            recoveredStack2 := 'elementValueLabel'.
            recoveredPC := 654.
        ].
        recoveredStep = 654 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 657.
        ].
        recoveredStep = 657 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 659.
        ].
        recoveredStep = 659 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 662.
        ].
        recoveredStep = 662 ifTrue: [
            recoveredStack2 := 'elementValueComboBox'.
            recoveredPC := 666.
        ].
        recoveredStep = 666 ifTrue: [
            recoveredStack3 := [:block2812c070Arg1 | 
    | block2812c070Stack0 block2812c070Stack1 block2812c070Stack2 block2812c070Stack3 block2812c070Stack4 block2812c070PC block2812c070Step block2812c070Done block2812c070Result |
    block2812c070Stack0 := self.
    block2812c070PC := 4.
    block2812c070Done := false.
    [block2812c070Done not] whileTrue: [
        block2812c070Step := block2812c070PC.
        block2812c070Step = 4 ifTrue: [
            block2812c070Stack1 := block2812c070Arg1.
            block2812c070PC := 5.
        ].
        block2812c070Step = 5 ifTrue: [
            block2812c070Stack2 := block2812c070Stack1.
            block2812c070PC := 6.
        ].
        block2812c070Step = 6 ifTrue: [
            block2812c070Stack3 := [:block2812c094Arg1 | 
    | block2812c094Value0 block2812c094Value1 |
    block2812c094Value0 := block2812c094Arg1.
    block2812c094Value1 := (block2812c094Value0) label.
    block2812c094Value1
].
            block2812c070PC := 10.
        ].
        block2812c070Step = 10 ifTrue: [
            block2812c070PC := 20.
        ].
        block2812c070Step = 20 ifTrue: [
            (block2812c070Stack2) printBlock: (block2812c070Stack3).
            block2812c070Stack2 := block2812c070Stack1.
            block2812c070PC := 25.
        ].
        block2812c070Step = 25 ifTrue: [
            block2812c070Stack3 := 10.
            block2812c070PC := 27.
        ].
        block2812c070Step = 27 ifTrue: [
            (block2812c070Stack2) visibleItemCount: (block2812c070Stack3).
            block2812c070PC := 31.
        ].
        block2812c070Step = 31 ifTrue: [
            block2812c070Stack2 := 25.
            block2812c070PC := 33.
        ].
        block2812c070Step = 33 ifTrue: [
            block2812c070Stack1 := (block2812c070Stack1) height: (block2812c070Stack2).
            block2812c070PC := 35.
        ].
        block2812c070Step = 35 ifTrue: [
            block2812c070Result := block2812c070Stack1.
            block2812c070Done := true.
        ].
    ].
    block2812c070Result
].
            recoveredPC := 670.
        ].
        recoveredStep = 670 ifTrue: [
            recoveredPC := 706.
        ].
        recoveredStep = 706 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEtasObjectComboBox: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 711.
        ].
        recoveredStep = 711 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 713.
        ].
        recoveredStep = 713 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 716.
        ].
        recoveredStep = 716 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 719.
        ].
        recoveredStep = 719 ifTrue: [
            recoveredStack2 := 'elementValueComboBox'.
            recoveredPC := 722.
        ].
        recoveredStep = 722 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 725.
        ].
        recoveredStep = 725 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 727.
        ].
        recoveredStep = 727 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 730.
        ].
        recoveredStep = 730 ifTrue: [
            recoveredStack2 := [:recoveredBlock730Arg1 | 
    | recoveredBlock730Value0 recoveredBlock730Value1 recoveredBlock730Value2 |
    recoveredBlock730Value0 := recoveredBlock730Arg1.
    recoveredBlock730Value1 := recoveredLocal12.
    recoveredBlock730Value2 := (recoveredBlock730Value0) workWindow: (recoveredBlock730Value1).
    recoveredBlock730Value2
].
            recoveredPC := 746.
        ].
        recoveredStep = 746 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 751.
        ].
        recoveredStep = 751 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 754.
        ].
        recoveredStep = 754 ifTrue: [
            recoveredStack2 := [:block2812c0b8Arg1 | 
    | block2812c0b8Value0 block2812c0b8Value1 block2812c0b8Value2 block2812c0b8Value3 block2812c0b8Value4 block2812c0b8Value5 block2812c0b8Value6 block2812c0b8Value7 block2812c0b8Value8 block2812c0b8Value9 block2812c0b8Value10 |
    block2812c0b8Value0 := block2812c0b8Arg1.
    block2812c0b8Value1 := block2812c0b8Value0.
    block2812c0b8Value2 := XmATTACHNONE.
    (block2812c0b8Value1) leftAttachment: (block2812c0b8Value2).
    block2812c0b8Value3 := block2812c0b8Value0.
    block2812c0b8Value4 := XmATTACHNONE.
    (block2812c0b8Value3) topAttachment: (block2812c0b8Value4).
    block2812c0b8Value5 := block2812c0b8Value0.
    block2812c0b8Value6 := XmATTACHFORM.
    (block2812c0b8Value5) rightAttachment: (block2812c0b8Value6).
    block2812c0b8Value7 := block2812c0b8Value0.
    (block2812c0b8Value7) rightOffset: (5).
    block2812c0b8Value8 := block2812c0b8Value0.
    block2812c0b8Value9 := XmATTACHFORM.
    (block2812c0b8Value8) bottomAttachment: (block2812c0b8Value9).
    block2812c0b8Value10 := (block2812c0b8Value0) bottomOffset: (5).
    block2812c0b8Value10
].
            recoveredPC := 758.
        ].
        recoveredStep = 758 ifTrue: [
            recoveredPC := 810.
        ].
        recoveredStep = 810 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 815.
        ].
        recoveredStep = 815 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 818.
        ].
        recoveredStep = 818 ifTrue: [
            recoveredStack2 := [:recoveredBlock818Arg1 | 
    | recoveredBlock818Value0 recoveredBlock818Value1 recoveredBlock818Value2 recoveredBlock818Value3 recoveredBlock818Value4 recoveredBlock818Value5 recoveredBlock818Value6 recoveredBlock818Value7 recoveredBlock818Value8 recoveredBlock818Value9 recoveredBlock818Value10 recoveredBlock818Value11 recoveredBlock818Value12 |
    recoveredBlock818Value0 := recoveredBlock818Arg1.
    recoveredBlock818Value1 := recoveredBlock818Value0.
    recoveredBlock818Value2 := XmATTACHNONE.
    (recoveredBlock818Value1) leftAttachment: (recoveredBlock818Value2).
    recoveredBlock818Value3 := recoveredBlock818Value0.
    recoveredBlock818Value4 := XmATTACHNONE.
    (recoveredBlock818Value3) topAttachment: (recoveredBlock818Value4).
    recoveredBlock818Value5 := recoveredBlock818Value0.
    recoveredBlock818Value6 := XmATTACHWIDGET.
    (recoveredBlock818Value5) rightAttachment: (recoveredBlock818Value6).
    recoveredBlock818Value7 := recoveredBlock818Value0.
    recoveredBlock818Value8 := recoveredLocal10.
    (recoveredBlock818Value7) rightWidget: (recoveredBlock818Value8).
    recoveredBlock818Value9 := recoveredBlock818Value0.
    (recoveredBlock818Value9) rightOffset: (5).
    recoveredBlock818Value10 := recoveredBlock818Value0.
    recoveredBlock818Value11 := XmATTACHFORM.
    (recoveredBlock818Value10) bottomAttachment: (recoveredBlock818Value11).
    recoveredBlock818Value12 := (recoveredBlock818Value0) bottomOffset: (5).
    recoveredBlock818Value12
].
            recoveredPC := 880.
        ].
        recoveredStep = 880 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 885.
        ].
        recoveredStep = 885 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 888.
        ].
        recoveredStep = 888 ifTrue: [
            recoveredStack2 := [:block2812c0dcArg1 | 
    | block2812c0dcValue0 block2812c0dcValue1 block2812c0dcValue2 block2812c0dcValue3 block2812c0dcValue4 block2812c0dcValue5 block2812c0dcValue6 block2812c0dcValue7 block2812c0dcValue8 block2812c0dcValue9 block2812c0dcValue10 block2812c0dcValue11 |
    block2812c0dcValue0 := block2812c0dcArg1.
    block2812c0dcValue1 := block2812c0dcValue0.
    block2812c0dcValue2 := XmATTACHFORM.
    (block2812c0dcValue1) leftAttachment: (block2812c0dcValue2).
    block2812c0dcValue3 := block2812c0dcValue0.
    (block2812c0dcValue3) leftOffset: (5).
    block2812c0dcValue4 := block2812c0dcValue0.
    block2812c0dcValue5 := XmATTACHFORM.
    (block2812c0dcValue4) topAttachment: (block2812c0dcValue5).
    block2812c0dcValue6 := block2812c0dcValue0.
    (block2812c0dcValue6) topOffset: (5).
    block2812c0dcValue7 := block2812c0dcValue0.
    block2812c0dcValue8 := XmATTACHFORM.
    (block2812c0dcValue7) rightAttachment: (block2812c0dcValue8).
    block2812c0dcValue9 := block2812c0dcValue0.
    (block2812c0dcValue9) rightOffset: (5).
    block2812c0dcValue10 := XmATTACHNONE.
    block2812c0dcValue11 := (block2812c0dcValue0) bottomAttachment: (block2812c0dcValue10).
    block2812c0dcValue11
].
            recoveredPC := 892.
        ].
        recoveredStep = 892 ifTrue: [
            recoveredPC := 950.
        ].
        recoveredStep = 950 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 955.
        ].
        recoveredStep = 955 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 958.
        ].
        recoveredStep = 958 ifTrue: [
            recoveredStack2 := [:recoveredBlock958Arg1 | 
    | recoveredBlock958Value0 recoveredBlock958Value1 recoveredBlock958Value2 recoveredBlock958Value3 recoveredBlock958Value4 recoveredBlock958Value5 recoveredBlock958Value6 recoveredBlock958Value7 recoveredBlock958Value8 recoveredBlock958Value9 recoveredBlock958Value10 recoveredBlock958Value11 recoveredBlock958Value12 |
    recoveredBlock958Value0 := recoveredBlock958Arg1.
    recoveredBlock958Value1 := recoveredBlock958Value0.
    recoveredBlock958Value2 := XmATTACHFORM.
    (recoveredBlock958Value1) leftAttachment: (recoveredBlock958Value2).
    recoveredBlock958Value3 := recoveredBlock958Value0.
    (recoveredBlock958Value3) leftOffset: (5).
    recoveredBlock958Value4 := recoveredBlock958Value0.
    recoveredBlock958Value5 := XmATTACHWIDGET.
    (recoveredBlock958Value4) topAttachment: (recoveredBlock958Value5).
    recoveredBlock958Value6 := recoveredBlock958Value0.
    recoveredBlock958Value7 := recoveredLocal9.
    (recoveredBlock958Value6) topWidget: (recoveredBlock958Value7).
    recoveredBlock958Value8 := recoveredBlock958Value0.
    (recoveredBlock958Value8) topOffset: (5).
    recoveredBlock958Value9 := recoveredBlock958Value0.
    recoveredBlock958Value10 := XmATTACHNONE.
    (recoveredBlock958Value9) rightAttachment: (recoveredBlock958Value10).
    recoveredBlock958Value11 := XmATTACHNONE.
    recoveredBlock958Value12 := (recoveredBlock958Value0) bottomAttachment: (recoveredBlock958Value11).
    recoveredBlock958Value12
].
            recoveredPC := 1020.
        ].
        recoveredStep = 1020 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1025.
        ].
        recoveredStep = 1025 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 1028.
        ].
        recoveredStep = 1028 ifTrue: [
            recoveredStack2 := [:recoveredBlock1028Arg1 | 
    | recoveredBlock1028Value0 recoveredBlock1028Value1 recoveredBlock1028Value2 recoveredBlock1028Value3 recoveredBlock1028Value4 recoveredBlock1028Value5 recoveredBlock1028Value6 recoveredBlock1028Value7 recoveredBlock1028Value8 recoveredBlock1028Value9 recoveredBlock1028Value10 recoveredBlock1028Value11 recoveredBlock1028Value12 |
    recoveredBlock1028Value0 := recoveredBlock1028Arg1.
    recoveredBlock1028Value1 := recoveredBlock1028Value0.
    recoveredBlock1028Value2 := XmATTACHFORM.
    (recoveredBlock1028Value1) leftAttachment: (recoveredBlock1028Value2).
    recoveredBlock1028Value3 := recoveredBlock1028Value0.
    (recoveredBlock1028Value3) leftOffset: (5).
    recoveredBlock1028Value4 := recoveredBlock1028Value0.
    recoveredBlock1028Value5 := XmATTACHWIDGET.
    (recoveredBlock1028Value4) topAttachment: (recoveredBlock1028Value5).
    recoveredBlock1028Value6 := recoveredBlock1028Value0.
    recoveredBlock1028Value7 := recoveredLocal8.
    (recoveredBlock1028Value6) topWidget: (recoveredBlock1028Value7).
    recoveredBlock1028Value8 := recoveredBlock1028Value0.
    (recoveredBlock1028Value8) topOffset: (5).
    recoveredBlock1028Value9 := recoveredBlock1028Value0.
    recoveredBlock1028Value10 := XmATTACHNONE.
    (recoveredBlock1028Value9) rightAttachment: (recoveredBlock1028Value10).
    recoveredBlock1028Value11 := XmATTACHNONE.
    recoveredBlock1028Value12 := (recoveredBlock1028Value0) bottomAttachment: (recoveredBlock1028Value11).
    recoveredBlock1028Value12
].
            recoveredPC := 1090.
        ].
        recoveredStep = 1090 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1095.
        ].
        recoveredStep = 1095 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 1098.
        ].
        recoveredStep = 1098 ifTrue: [
            recoveredStack2 := [:recoveredBlock1098Arg1 | 
    | recoveredBlock1098Value0 recoveredBlock1098Value1 recoveredBlock1098Value2 recoveredBlock1098Value3 recoveredBlock1098Value4 recoveredBlock1098Value5 recoveredBlock1098Value6 recoveredBlock1098Value7 recoveredBlock1098Value8 recoveredBlock1098Value9 recoveredBlock1098Value10 recoveredBlock1098Value11 recoveredBlock1098Value12 |
    recoveredBlock1098Value0 := recoveredBlock1098Arg1.
    recoveredBlock1098Value1 := recoveredBlock1098Value0.
    recoveredBlock1098Value2 := XmATTACHFORM.
    (recoveredBlock1098Value1) leftAttachment: (recoveredBlock1098Value2).
    recoveredBlock1098Value3 := recoveredBlock1098Value0.
    (recoveredBlock1098Value3) leftOffset: (5).
    recoveredBlock1098Value4 := recoveredBlock1098Value0.
    recoveredBlock1098Value5 := XmATTACHWIDGET.
    (recoveredBlock1098Value4) topAttachment: (recoveredBlock1098Value5).
    recoveredBlock1098Value6 := recoveredBlock1098Value0.
    recoveredBlock1098Value7 := recoveredLocal5.
    (recoveredBlock1098Value6) topWidget: (recoveredBlock1098Value7).
    recoveredBlock1098Value8 := recoveredBlock1098Value0.
    (recoveredBlock1098Value8) topOffset: (5).
    recoveredBlock1098Value9 := recoveredBlock1098Value0.
    recoveredBlock1098Value10 := XmATTACHNONE.
    (recoveredBlock1098Value9) rightAttachment: (recoveredBlock1098Value10).
    recoveredBlock1098Value11 := XmATTACHNONE.
    recoveredBlock1098Value12 := (recoveredBlock1098Value0) bottomAttachment: (recoveredBlock1098Value11).
    recoveredBlock1098Value12
].
            recoveredPC := 1160.
        ].
        recoveredStep = 1160 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1165.
        ].
        recoveredStep = 1165 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 1168.
        ].
        recoveredStep = 1168 ifTrue: [
            recoveredStack2 := [:recoveredBlock1168Arg1 | 
    | recoveredBlock1168Value0 recoveredBlock1168Value1 recoveredBlock1168Value2 recoveredBlock1168Value3 recoveredBlock1168Value4 recoveredBlock1168Value5 recoveredBlock1168Value6 recoveredBlock1168Value7 recoveredBlock1168Value8 recoveredBlock1168Value9 recoveredBlock1168Value10 recoveredBlock1168Value11 recoveredBlock1168Value12 recoveredBlock1168Value13 recoveredBlock1168Value14 |
    recoveredBlock1168Value0 := recoveredBlock1168Arg1.
    recoveredBlock1168Value1 := recoveredBlock1168Value0.
    recoveredBlock1168Value2 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock1168Value1) leftAttachment: (recoveredBlock1168Value2).
    recoveredBlock1168Value3 := recoveredBlock1168Value0.
    recoveredBlock1168Value4 := recoveredLocal8.
    (recoveredBlock1168Value3) leftWidget: (recoveredBlock1168Value4).
    recoveredBlock1168Value5 := recoveredBlock1168Value0.
    (recoveredBlock1168Value5) leftOffset: (80).
    recoveredBlock1168Value6 := recoveredBlock1168Value0.
    recoveredBlock1168Value7 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock1168Value6) topAttachment: (recoveredBlock1168Value7).
    recoveredBlock1168Value8 := recoveredBlock1168Value0.
    recoveredBlock1168Value9 := recoveredLocal8.
    (recoveredBlock1168Value8) topWidget: (recoveredBlock1168Value9).
    recoveredBlock1168Value10 := recoveredBlock1168Value0.
    (recoveredBlock1168Value10) topOffset: (0).
    recoveredBlock1168Value11 := recoveredBlock1168Value0.
    recoveredBlock1168Value12 := XmATTACHNONE.
    (recoveredBlock1168Value11) rightAttachment: (recoveredBlock1168Value12).
    recoveredBlock1168Value13 := XmATTACHNONE.
    recoveredBlock1168Value14 := (recoveredBlock1168Value0) bottomAttachment: (recoveredBlock1168Value13).
    recoveredBlock1168Value14
].
            recoveredPC := 1240.
        ].
        recoveredStep = 1240 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1245.
        ].
        recoveredStep = 1245 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 1248.
        ].
        recoveredStep = 1248 ifTrue: [
            recoveredStack2 := [:recoveredBlock1248Arg1 | 
    | recoveredBlock1248Value0 recoveredBlock1248Value1 recoveredBlock1248Value2 recoveredBlock1248Value3 recoveredBlock1248Value4 recoveredBlock1248Value5 recoveredBlock1248Value6 recoveredBlock1248Value7 recoveredBlock1248Value8 recoveredBlock1248Value9 recoveredBlock1248Value10 recoveredBlock1248Value11 recoveredBlock1248Value12 recoveredBlock1248Value13 recoveredBlock1248Value14 |
    recoveredBlock1248Value0 := recoveredBlock1248Arg1.
    recoveredBlock1248Value1 := recoveredBlock1248Value0.
    recoveredBlock1248Value2 := XmATTACHWIDGET.
    (recoveredBlock1248Value1) leftAttachment: (recoveredBlock1248Value2).
    recoveredBlock1248Value3 := recoveredBlock1248Value0.
    recoveredBlock1248Value4 := recoveredLocal7.
    (recoveredBlock1248Value3) leftWidget: (recoveredBlock1248Value4).
    recoveredBlock1248Value5 := recoveredBlock1248Value0.
    (recoveredBlock1248Value5) leftOffset: (5).
    recoveredBlock1248Value6 := recoveredBlock1248Value0.
    recoveredBlock1248Value7 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock1248Value6) topAttachment: (recoveredBlock1248Value7).
    recoveredBlock1248Value8 := recoveredBlock1248Value0.
    recoveredBlock1248Value9 := recoveredLocal8.
    (recoveredBlock1248Value8) topWidget: (recoveredBlock1248Value9).
    recoveredBlock1248Value10 := recoveredBlock1248Value0.
    (recoveredBlock1248Value10) topOffset: (0).
    recoveredBlock1248Value11 := recoveredBlock1248Value0.
    recoveredBlock1248Value12 := XmATTACHNONE.
    (recoveredBlock1248Value11) rightAttachment: (recoveredBlock1248Value12).
    recoveredBlock1248Value13 := XmATTACHNONE.
    recoveredBlock1248Value14 := (recoveredBlock1248Value0) bottomAttachment: (recoveredBlock1248Value13).
    recoveredBlock1248Value14
].
            recoveredPC := 1318.
        ].
        recoveredStep = 1318 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1323.
        ].
        recoveredStep = 1323 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 1326.
        ].
        recoveredStep = 1326 ifTrue: [
            recoveredStack2 := [:recoveredBlock1326Arg1 | 
    | recoveredBlock1326Value0 recoveredBlock1326Value1 recoveredBlock1326Value2 recoveredBlock1326Value3 recoveredBlock1326Value4 recoveredBlock1326Value5 recoveredBlock1326Value6 recoveredBlock1326Value7 recoveredBlock1326Value8 recoveredBlock1326Value9 recoveredBlock1326Value10 recoveredBlock1326Value11 recoveredBlock1326Value12 recoveredBlock1326Value13 recoveredBlock1326Value14 |
    recoveredBlock1326Value0 := recoveredBlock1326Arg1.
    recoveredBlock1326Value1 := recoveredBlock1326Value0.
    recoveredBlock1326Value2 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock1326Value1) leftAttachment: (recoveredBlock1326Value2).
    recoveredBlock1326Value3 := recoveredBlock1326Value0.
    recoveredBlock1326Value4 := recoveredLocal5.
    (recoveredBlock1326Value3) leftWidget: (recoveredBlock1326Value4).
    recoveredBlock1326Value5 := recoveredBlock1326Value0.
    (recoveredBlock1326Value5) leftOffset: (80).
    recoveredBlock1326Value6 := recoveredBlock1326Value0.
    recoveredBlock1326Value7 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock1326Value6) topAttachment: (recoveredBlock1326Value7).
    recoveredBlock1326Value8 := recoveredBlock1326Value0.
    recoveredBlock1326Value9 := recoveredLocal5.
    (recoveredBlock1326Value8) topWidget: (recoveredBlock1326Value9).
    recoveredBlock1326Value10 := recoveredBlock1326Value0.
    (recoveredBlock1326Value10) topOffset: (0).
    recoveredBlock1326Value11 := recoveredBlock1326Value0.
    recoveredBlock1326Value12 := XmATTACHNONE.
    (recoveredBlock1326Value11) rightAttachment: (recoveredBlock1326Value12).
    recoveredBlock1326Value13 := XmATTACHNONE.
    recoveredBlock1326Value14 := (recoveredBlock1326Value0) bottomAttachment: (recoveredBlock1326Value13).
    recoveredBlock1326Value14
].
            recoveredPC := 1398.
        ].
        recoveredStep = 1398 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1403.
        ].
        recoveredStep = 1403 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 1406.
        ].
        recoveredStep = 1406 ifTrue: [
            recoveredStack2 := [:recoveredBlock1406Arg1 | 
    | recoveredBlock1406Value0 recoveredBlock1406Value1 recoveredBlock1406Value2 recoveredBlock1406Value3 recoveredBlock1406Value4 recoveredBlock1406Value5 recoveredBlock1406Value6 recoveredBlock1406Value7 recoveredBlock1406Value8 recoveredBlock1406Value9 recoveredBlock1406Value10 recoveredBlock1406Value11 recoveredBlock1406Value12 recoveredBlock1406Value13 recoveredBlock1406Value14 |
    recoveredBlock1406Value0 := recoveredBlock1406Arg1.
    recoveredBlock1406Value1 := recoveredBlock1406Value0.
    recoveredBlock1406Value2 := XmATTACHWIDGET.
    (recoveredBlock1406Value1) leftAttachment: (recoveredBlock1406Value2).
    recoveredBlock1406Value3 := recoveredBlock1406Value0.
    recoveredBlock1406Value4 := recoveredLocal4.
    (recoveredBlock1406Value3) leftWidget: (recoveredBlock1406Value4).
    recoveredBlock1406Value5 := recoveredBlock1406Value0.
    (recoveredBlock1406Value5) leftOffset: (5).
    recoveredBlock1406Value6 := recoveredBlock1406Value0.
    recoveredBlock1406Value7 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock1406Value6) topAttachment: (recoveredBlock1406Value7).
    recoveredBlock1406Value8 := recoveredBlock1406Value0.
    recoveredBlock1406Value9 := recoveredLocal5.
    (recoveredBlock1406Value8) topWidget: (recoveredBlock1406Value9).
    recoveredBlock1406Value10 := recoveredBlock1406Value0.
    (recoveredBlock1406Value10) topOffset: (0).
    recoveredBlock1406Value11 := recoveredBlock1406Value0.
    recoveredBlock1406Value12 := XmATTACHNONE.
    (recoveredBlock1406Value11) rightAttachment: (recoveredBlock1406Value12).
    recoveredBlock1406Value13 := XmATTACHNONE.
    recoveredBlock1406Value14 := (recoveredBlock1406Value0) bottomAttachment: (recoveredBlock1406Value13).
    recoveredBlock1406Value14
].
            recoveredPC := 1476.
        ].
        recoveredStep = 1476 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1481.
        ].
        recoveredStep = 1481 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1484.
        ].
        recoveredStep = 1484 ifTrue: [
            recoveredStack2 := [:recoveredBlock1484Arg1 | 
    | recoveredBlock1484Value0 recoveredBlock1484Value1 recoveredBlock1484Value2 recoveredBlock1484Value3 recoveredBlock1484Value4 recoveredBlock1484Value5 recoveredBlock1484Value6 recoveredBlock1484Value7 recoveredBlock1484Value8 recoveredBlock1484Value9 recoveredBlock1484Value10 recoveredBlock1484Value11 recoveredBlock1484Value12 recoveredBlock1484Value13 recoveredBlock1484Value14 recoveredBlock1484Value15 |
    recoveredBlock1484Value0 := recoveredBlock1484Arg1.
    recoveredBlock1484Value1 := recoveredBlock1484Value0.
    recoveredBlock1484Value2 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock1484Value1) leftAttachment: (recoveredBlock1484Value2).
    recoveredBlock1484Value3 := recoveredBlock1484Value0.
    recoveredBlock1484Value4 := recoveredLocal2.
    (recoveredBlock1484Value3) leftWidget: (recoveredBlock1484Value4).
    recoveredBlock1484Value5 := recoveredBlock1484Value0.
    (recoveredBlock1484Value5) leftOffset: (80).
    recoveredBlock1484Value6 := recoveredBlock1484Value0.
    recoveredBlock1484Value7 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock1484Value6) topAttachment: (recoveredBlock1484Value7).
    recoveredBlock1484Value8 := recoveredBlock1484Value0.
    recoveredBlock1484Value9 := recoveredLocal2.
    (recoveredBlock1484Value8) topWidget: (recoveredBlock1484Value9).
    recoveredBlock1484Value10 := recoveredBlock1484Value0.
    (recoveredBlock1484Value10) topOffset: (0).
    recoveredBlock1484Value11 := recoveredBlock1484Value0.
    recoveredBlock1484Value12 := XmATTACHFORM.
    (recoveredBlock1484Value11) rightAttachment: (recoveredBlock1484Value12).
    recoveredBlock1484Value13 := recoveredBlock1484Value0.
    (recoveredBlock1484Value13) rightOffset: (5).
    recoveredBlock1484Value14 := XmATTACHNONE.
    recoveredBlock1484Value15 := (recoveredBlock1484Value0) bottomAttachment: (recoveredBlock1484Value14).
    recoveredBlock1484Value15
].
            recoveredPC := 1562.
        ].
        recoveredStep = 1562 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1567.
        ].
        recoveredStep = 1567 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 1570.
        ].
        recoveredStep = 1570 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 1574.
        ].
        recoveredStep = 1574 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1575.
        ].
        recoveredStep = 1575 ifTrue: [
            recoveredStack4 := 'widgetButtonOkActivate:clientData:callData:'.
            recoveredPC := 1578.
        ].
        recoveredStep = 1578 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1579.
        ].
        recoveredStep = 1579 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1583.
        ].
        recoveredStep = 1583 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 1586.
        ].
        recoveredStep = 1586 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 1590.
        ].
        recoveredStep = 1590 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1591.
        ].
        recoveredStep = 1591 ifTrue: [
            recoveredStack4 := 'widgetButtonCancelActivate:clientData:callData:'.
            recoveredPC := 1594.
        ].
        recoveredStep = 1594 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1595.
        ].
        recoveredStep = 1595 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1599.
        ].
        recoveredStep = 1599 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1602.
        ].
        recoveredStep = 1602 ifTrue: [
            recoveredStack2 := XmNsingleSelectionCallback.
            recoveredPC := 1606.
        ].
        recoveredStep = 1606 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1607.
        ].
        recoveredStep = 1607 ifTrue: [
            recoveredStack4 := 'valueChanged:clientData:callData:'.
            recoveredPC := 1610.
        ].
        recoveredStep = 1610 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1611.
        ].
        recoveredStep = 1611 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1615.
        ].
        recoveredStep = 1615 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 1618.
        ].
        recoveredStep = 1618 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1623.
        ].
        recoveredStep = 1623 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1626.
        ].
        recoveredStep = 1626 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1631.
        ].
        recoveredStep = 1631 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 1634.
        ].
        recoveredStep = 1634 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1639.
        ].
        recoveredStep = 1639 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 1642.
        ].
        recoveredStep = 1642 ifTrue: [
            recoveredStack2 := recoveredLocal15.
            recoveredPC := 1645.
        ].
        recoveredStep = 1645 ifTrue: [
            recoveredStack3 := recoveredLocal13.
            recoveredPC := 1648.
        ].
        recoveredStep = 1648 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 1653.
        ].
        recoveredStep = 1653 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

