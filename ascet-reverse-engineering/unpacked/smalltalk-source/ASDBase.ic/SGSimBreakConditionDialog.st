"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200061b4; bytecode file offset 0x902de8"
!SGSimBreakConditionDialog methodsFor: 'recovered'!
textElementModify: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    ^self
! !

"ASDBase.ic method 0x200061cc; bytecode file offset 0x902de8"
!SGSimBreakConditionDialog methodsFor: 'recovered'!
textLevelModify: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    ^self
! !

"ASDBase.ic method 0x2004295c; bytecode file offset 0x9451f8"
!SGSimBreakConditionDialog methodsFor: 'recovered'!
widgetComboBoxOperator
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('comboBoxOperator').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20043fec; bytecode file offset 0x9451f8"
!SGSimBreakConditionDialog methodsFor: 'recovered'!
widgetButtonCancel
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('buttonCancel').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200445dc; bytecode file offset 0x9451f8"
!SGSimBreakConditionDialog methodsFor: 'recovered'!
widgetButtonOk
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('buttonOk').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20044b2c; bytecode file offset 0x9451f8"
!SGSimBreakConditionDialog methodsFor: 'recovered'!
widgetTextLevel
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('textLevel').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004510c; bytecode file offset 0x9451f8"
!SGSimBreakConditionDialog methodsFor: 'recovered'!
widgetTextElement
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('textElement').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200471ec; bytecode file offset 0x9451f8"
!SGSimBreakConditionDialog methodsFor: 'recovered'!
widgetButtonAssign
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('buttonAssign').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2005a6b0; bytecode file offset 0x957a6c"
!SGSimBreakConditionDialog methodsFor: 'recovered'!
buttonOkActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) ok.
    ^self
! !

"ASDBase.ic method 0x2005a770; bytecode file offset 0x957a6c"
!SGSimBreakConditionDialog methodsFor: 'recovered'!
buttonCancelActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) cancel.
    ^self
! !

"ASDBase.ic method 0x2005afc8; bytecode file offset 0x957a6c"
!SGSimBreakConditionDialog methodsFor: 'recovered'!
buttonAssignActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) assignElement.
    ^self
! !

"ASDBase.ic method 0x200ca7bc; bytecode file offset 0x9c70c8"
!SGSimBreakConditionDialog methodsFor: 'recovered'!
textLevelValue: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) result.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) value.
    recoveredValue3 := (recoveredValue2) asFloat.
    (recoveredValue0) level: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x200ca7ec; bytecode file offset 0x9c70c8"
!SGSimBreakConditionDialog methodsFor: 'recovered'!
comboBoxOperatorSingle: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) result.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) getString.
    recoveredValue3 := (recoveredValue2) asSymbol.
    (recoveredValue0) operator: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x200ca804; bytecode file offset 0x9c70c8"
!SGSimBreakConditionDialog methodsFor: 'recovered'!
comboBoxOperatorValue: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) result.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) getString.
    recoveredValue3 := (recoveredValue2) asSymbol.
    (recoveredValue0) operator: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x200e3498; bytecode file offset 0x9dfda8"
!SGSimBreakConditionDialog methodsFor: 'recovered'!
initializeAfterCreate
    (self) initNLSLabels.
    (self) initFonts.
    (self) initWidgets.
    ^self
! !

"ASDBase.ic method 0x2018f4ec; bytecode file offset 0xa8bdbc"
!SGSimBreakConditionDialog methodsFor: 'recovered'!
initNLSLabels
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) widgetButtonOk.
    recoveredValue1 := SCOk.
    (recoveredValue0) labelString: (recoveredValue1).
    recoveredValue2 := (self) widgetButtonCancel.
    recoveredValue3 := SCCancel.
    (recoveredValue2) labelString: (recoveredValue3).
    recoveredValue4 := (self) widgetButtonAssign.
    (recoveredValue4) labelString: ('Assign').
    ^self
! !

"ASDBase.ic method 0x201a2cb0; bytecode file offset 0xa9f580"
!SGSimBreakConditionDialog methodsFor: 'recovered'!
ok
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) result.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkCondition.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 'No valid Break Condition!!'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 18.
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

"ASDBase.ic method 0x202d6c34; bytecode file offset 0xbd3518"
!SGSimBreakConditionDialog methodsFor: 'recovered'!
initFonts
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := SGUserInterfaceSettings.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) widgetAt: ('aForm1').
    (recoveredValue1) updateLabelsForForm: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := (self) widgetComboBoxOperator.
    (recoveredValue3) updateFont: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := (self) widgetTextElement.
    (recoveredValue5) updateFont: (recoveredValue6).
    recoveredValue7 := (self) widgetTextLevel.
    (recoveredValue0) updateFont: (recoveredValue7).
    recoveredValue8 := SGUserInterfaceSettings.
    recoveredValue9 := recoveredValue8.
    recoveredValue10 := (self) widgetButtonOk.
    (recoveredValue9) updateLabelFont: (recoveredValue10).
    recoveredValue11 := recoveredValue8.
    recoveredValue12 := (self) widgetButtonCancel.
    (recoveredValue11) updateLabelFont: (recoveredValue12).
    recoveredValue13 := (self) widgetButtonAssign.
    (recoveredValue8) updateLabelFont: (recoveredValue13).
    ^self
! !

"ASDBase.ic method 0x2032ad24; bytecode file offset 0xc27620"
!SGSimBreakConditionDialog methodsFor: 'recovered'!
initWidgets
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetTextElement.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'not defined'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) setString: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'checkRejectAll:'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) characterMethod: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetTextLevel.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 'checkFloat:'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) characterMethod: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetComboBoxOperator.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) result.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) operators.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := [:block280ec5f8Arg1 | 
    | block280ec5f8Value0 block280ec5f8Value1 |
    block280ec5f8Value0 := block280ec5f8Arg1.
    block280ec5f8Value1 := (block280ec5f8Value0) asString.
    block280ec5f8Value1
].
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := (recoveredStack2) collect: (recoveredStack3).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) items: (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetComboBoxOperator.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) items.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) setString: (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) updateWidgets.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203e5e2c; bytecode file offset 0xce2724"
!SGSimBreakConditionDialog methodsFor: 'recovered'!
updateWidgets
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) result.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) result.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) wName.
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
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) <= (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := ' '.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetTextElement.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := 'checkNone:'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) characterMethod: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) setString: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := 'checkRejectAll:'.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) characterMethod: (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) result.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) operator.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 69] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetComboBoxOperator.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) result.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) operator.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) setString: (recoveredStack1).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) result.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) level.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 87] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetTextLevel.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := (recoveredStack1) result.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) level.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) printString.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0) setString: (recoveredStack1).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204291c4; bytecode file offset 0xd25ac8"
!SGSimBreakConditionDialog methodsFor: 'recovered'!
assignElement
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 |
    recoveredBlock4Value0 := (self) parent.
    recoveredBlock4Value1 := (recoveredBlock4Value0) simController.
    recoveredBlock4Value2 := (recoveredBlock4Value1) allNodesFlat.
    recoveredBlock4Value3 := recoveredBlock4Value2.
    recoveredLocal2 := recoveredBlock4Value3.
    recoveredBlock4Value2
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) execShortOperation: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := CwListPrompter.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) items: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := [:block280fd008Arg1 | 
    | block280fd008Value0 block280fd008Value1 |
    block280fd008Value0 := block280fd008Arg1.
    block280fd008Value1 := (block280fd008Value0) simPathLabel.
    block280fd008Value1
].
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) printBlock: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := 'Element Selection'.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) title: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := 'Please Select Element:'.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1) messageString: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectionPolicy: (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) prompt.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 98] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) simController.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) getSimInstanceForNode: (recoveredStack1).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := (recoveredStack0) result.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack0) dataElement: (recoveredStack1).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack0) updateWidgets.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20675d0c; bytecode file offset 0xf72714"
!SGSimBreakConditionDialog methodsFor: 'recovered'!
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
    | recoveredBlock25Value0 recoveredBlock25Value1 recoveredBlock25Value2 recoveredBlock25Value3 recoveredBlock25Value4 recoveredBlock25Value5 recoveredBlock25Value6 recoveredBlock25Value7 recoveredBlock25Value8 recoveredBlock25Value9 recoveredBlock25Value10 recoveredBlock25Value11 recoveredBlock25Value12 |
    recoveredBlock25Value0 := recoveredBlock25Arg1.
    recoveredBlock25Value1 := recoveredBlock25Value0.
    (recoveredBlock25Value1) borderWidth: (1).
    recoveredBlock25Value2 := recoveredBlock25Value0.
    recoveredBlock25Value3 := MWMINPUTSYSTEMMODAL.
    (recoveredBlock25Value2) mwmInputMode: (recoveredBlock25Value3).
    recoveredBlock25Value4 := recoveredBlock25Value0.
    (recoveredBlock25Value4) title: ('Edit Break Condition').
    recoveredBlock25Value5 := recoveredBlock25Value0.
    recoveredBlock25Value6 := recoveredLocal14.
    recoveredBlock25Value7 := (115) * (recoveredBlock25Value6).
    recoveredBlock25Value8 := (recoveredBlock25Value7) rounded.
    (recoveredBlock25Value5) height: (recoveredBlock25Value8).
    recoveredBlock25Value9 := recoveredLocal15.
    recoveredBlock25Value10 := (377) * (recoveredBlock25Value9).
    recoveredBlock25Value11 := (recoveredBlock25Value10) rounded.
    recoveredBlock25Value12 := (recoveredBlock25Value0) width: (recoveredBlock25Value11).
    recoveredBlock25Value12
].
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDialogShell: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredLocal13 := recoveredStack1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := 'aDialogShell1'.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack3 := recoveredLocal13.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := (recoveredStack1) createMainWindow: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredLocal12 := recoveredStack1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack3 := recoveredLocal12.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack3 := [:block281279d8Arg1 | 
    | block281279d8Value0 block281279d8Value1 |
    block281279d8Value0 := block281279d8Arg1.
    block281279d8Value1 := (block281279d8Value0) borderWidth: (1).
    block281279d8Value1
].
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack3 := recoveredLocal11.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack2 := 'labelData'.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack3 := [:recoveredBlock147Arg1 | 
    | recoveredBlock147Value0 recoveredBlock147Value1 recoveredBlock147Value2 recoveredBlock147Value3 recoveredBlock147Value4 recoveredBlock147Value5 recoveredBlock147Value6 recoveredBlock147Value7 recoveredBlock147Value8 recoveredBlock147Value9 recoveredBlock147Value10 recoveredBlock147Value11 recoveredBlock147Value12 recoveredBlock147Value13 |
    recoveredBlock147Value0 := recoveredBlock147Arg1.
    recoveredBlock147Value1 := recoveredBlock147Value0.
    recoveredBlock147Value2 := recoveredLocal15.
    recoveredBlock147Value3 := (5) * (recoveredBlock147Value2).
    recoveredBlock147Value4 := (recoveredBlock147Value3) rounded.
    (recoveredBlock147Value1) x: (recoveredBlock147Value4).
    recoveredBlock147Value5 := recoveredBlock147Value0.
    recoveredBlock147Value6 := XmALIGNMENTBEGINNING.
    (recoveredBlock147Value5) alignment: (recoveredBlock147Value6).
    recoveredBlock147Value7 := recoveredBlock147Value0.
    (recoveredBlock147Value7) labelString: ('Element').
    recoveredBlock147Value8 := recoveredBlock147Value0.
    recoveredBlock147Value9 := recoveredLocal14.
    recoveredBlock147Value10 := (15) * (recoveredBlock147Value9).
    recoveredBlock147Value11 := (recoveredBlock147Value10) rounded.
    (recoveredBlock147Value8) y: (recoveredBlock147Value11).
    recoveredBlock147Value12 := recoveredBlock147Value0.
    recoveredBlock147Value13 := (self) defaultLabelBlue.
    (recoveredBlock147Value12) foregroundColor: (recoveredBlock147Value13).
    recoveredBlock147Value0
].
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack2 := 'labelData'.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack2 := 'labelOperator'.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack3 := [:recoveredBlock216Arg1 | 
    | recoveredBlock216Value0 recoveredBlock216Value1 recoveredBlock216Value2 recoveredBlock216Value3 recoveredBlock216Value4 recoveredBlock216Value5 recoveredBlock216Value6 recoveredBlock216Value7 recoveredBlock216Value8 recoveredBlock216Value9 recoveredBlock216Value10 recoveredBlock216Value11 recoveredBlock216Value12 recoveredBlock216Value13 |
    recoveredBlock216Value0 := recoveredBlock216Arg1.
    recoveredBlock216Value1 := recoveredBlock216Value0.
    recoveredBlock216Value2 := recoveredLocal15.
    recoveredBlock216Value3 := (190) * (recoveredBlock216Value2).
    recoveredBlock216Value4 := (recoveredBlock216Value3) rounded.
    (recoveredBlock216Value1) x: (recoveredBlock216Value4).
    recoveredBlock216Value5 := recoveredBlock216Value0.
    recoveredBlock216Value6 := XmALIGNMENTBEGINNING.
    (recoveredBlock216Value5) alignment: (recoveredBlock216Value6).
    recoveredBlock216Value7 := recoveredBlock216Value0.
    (recoveredBlock216Value7) labelString: ('Operator').
    recoveredBlock216Value8 := recoveredBlock216Value0.
    recoveredBlock216Value9 := recoveredLocal14.
    recoveredBlock216Value10 := (15) * (recoveredBlock216Value9).
    recoveredBlock216Value11 := (recoveredBlock216Value10) rounded.
    (recoveredBlock216Value8) y: (recoveredBlock216Value11).
    recoveredBlock216Value12 := recoveredBlock216Value0.
    recoveredBlock216Value13 := (self) defaultLabelBlue.
    (recoveredBlock216Value12) foregroundColor: (recoveredBlock216Value13).
    recoveredBlock216Value0
].
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack2 := 'labelOperator'.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack2 := 'labelLevel'.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack3 := [:recoveredBlock286Arg1 | 
    | recoveredBlock286Value0 recoveredBlock286Value1 recoveredBlock286Value2 recoveredBlock286Value3 recoveredBlock286Value4 recoveredBlock286Value5 recoveredBlock286Value6 recoveredBlock286Value7 recoveredBlock286Value8 recoveredBlock286Value9 recoveredBlock286Value10 recoveredBlock286Value11 recoveredBlock286Value12 recoveredBlock286Value13 |
    recoveredBlock286Value0 := recoveredBlock286Arg1.
    recoveredBlock286Value1 := recoveredBlock286Value0.
    recoveredBlock286Value2 := recoveredLocal15.
    recoveredBlock286Value3 := (260) * (recoveredBlock286Value2).
    recoveredBlock286Value4 := (recoveredBlock286Value3) rounded.
    (recoveredBlock286Value1) x: (recoveredBlock286Value4).
    recoveredBlock286Value5 := recoveredBlock286Value0.
    recoveredBlock286Value6 := XmALIGNMENTBEGINNING.
    (recoveredBlock286Value5) alignment: (recoveredBlock286Value6).
    recoveredBlock286Value7 := recoveredBlock286Value0.
    (recoveredBlock286Value7) labelString: ('Level').
    recoveredBlock286Value8 := recoveredBlock286Value0.
    recoveredBlock286Value9 := recoveredLocal14.
    recoveredBlock286Value10 := (15) * (recoveredBlock286Value9).
    recoveredBlock286Value11 := (recoveredBlock286Value10) rounded.
    (recoveredBlock286Value8) y: (recoveredBlock286Value11).
    recoveredBlock286Value12 := recoveredBlock286Value0.
    recoveredBlock286Value13 := (self) defaultLabelBlue.
    (recoveredBlock286Value12) foregroundColor: (recoveredBlock286Value13).
    recoveredBlock286Value0
].
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            recoveredStack2 := 'labelLevel'.
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            recoveredStack2 := 'buttonAssign'.
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack3 := [:recoveredBlock356Arg1 | 
    | recoveredBlock356Value0 recoveredBlock356Value1 recoveredBlock356Value2 recoveredBlock356Value3 recoveredBlock356Value4 recoveredBlock356Value5 recoveredBlock356Value6 recoveredBlock356Value7 recoveredBlock356Value8 recoveredBlock356Value9 recoveredBlock356Value10 recoveredBlock356Value11 recoveredBlock356Value12 |
    recoveredBlock356Value0 := recoveredBlock356Arg1.
    recoveredBlock356Value1 := recoveredBlock356Value0.
    recoveredBlock356Value2 := recoveredLocal15.
    recoveredBlock356Value3 := (95) * (recoveredBlock356Value2).
    recoveredBlock356Value4 := (recoveredBlock356Value3) rounded.
    (recoveredBlock356Value1) x: (recoveredBlock356Value4).
    recoveredBlock356Value5 := recoveredBlock356Value0.
    recoveredBlock356Value6 := recoveredLocal14.
    recoveredBlock356Value7 := (9) * (recoveredBlock356Value6).
    recoveredBlock356Value8 := (recoveredBlock356Value7) rounded.
    (recoveredBlock356Value5) y: (recoveredBlock356Value8).
    recoveredBlock356Value9 := recoveredLocal15.
    recoveredBlock356Value10 := (90) * (recoveredBlock356Value9).
    recoveredBlock356Value11 := (recoveredBlock356Value10) rounded.
    recoveredBlock356Value12 := (recoveredBlock356Value0) width: (recoveredBlock356Value11).
    recoveredBlock356Value12
].
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 401.
        ].
        recoveredStep = 401 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 406.
        ].
        recoveredStep = 406 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 409.
        ].
        recoveredStep = 409 ifTrue: [
            recoveredStack2 := 'buttonAssign'.
            recoveredPC := 411.
        ].
        recoveredStep = 411 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 414.
        ].
        recoveredStep = 414 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 416.
        ].
        recoveredStep = 416 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 419.
        ].
        recoveredStep = 419 ifTrue: [
            recoveredStack2 := 'buttonCancel'.
            recoveredPC := 421.
        ].
        recoveredStep = 421 ifTrue: [
            recoveredStack3 := [:recoveredBlock421Arg1 | 
    | recoveredBlock421Value0 recoveredBlock421Value1 recoveredBlock421Value2 recoveredBlock421Value3 recoveredBlock421Value4 recoveredBlock421Value5 recoveredBlock421Value6 recoveredBlock421Value7 recoveredBlock421Value8 recoveredBlock421Value9 recoveredBlock421Value10 recoveredBlock421Value11 recoveredBlock421Value12 |
    recoveredBlock421Value0 := recoveredBlock421Arg1.
    recoveredBlock421Value1 := recoveredBlock421Value0.
    recoveredBlock421Value2 := recoveredLocal15.
    recoveredBlock421Value3 := (90) * (recoveredBlock421Value2).
    recoveredBlock421Value4 := (recoveredBlock421Value3) rounded.
    (recoveredBlock421Value1) x: (recoveredBlock421Value4).
    recoveredBlock421Value5 := recoveredBlock421Value0.
    recoveredBlock421Value6 := recoveredLocal14.
    recoveredBlock421Value7 := (80) * (recoveredBlock421Value6).
    recoveredBlock421Value8 := (recoveredBlock421Value7) rounded.
    (recoveredBlock421Value5) y: (recoveredBlock421Value8).
    recoveredBlock421Value9 := recoveredLocal15.
    recoveredBlock421Value10 := (90) * (recoveredBlock421Value9).
    recoveredBlock421Value11 := (recoveredBlock421Value10) rounded.
    recoveredBlock421Value12 := (recoveredBlock421Value0) width: (recoveredBlock421Value11).
    recoveredBlock421Value12
].
            recoveredPC := 467.
        ].
        recoveredStep = 467 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
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
            recoveredStack2 := 'buttonCancel'.
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
            recoveredStack2 := 'buttonOk'.
            recoveredPC := 489.
        ].
        recoveredStep = 489 ifTrue: [
            recoveredStack3 := [:recoveredBlock489Arg1 | 
    | recoveredBlock489Value0 recoveredBlock489Value1 recoveredBlock489Value2 recoveredBlock489Value3 recoveredBlock489Value4 recoveredBlock489Value5 recoveredBlock489Value6 recoveredBlock489Value7 recoveredBlock489Value8 recoveredBlock489Value9 recoveredBlock489Value10 recoveredBlock489Value11 recoveredBlock489Value12 |
    recoveredBlock489Value0 := recoveredBlock489Arg1.
    recoveredBlock489Value1 := recoveredBlock489Value0.
    recoveredBlock489Value2 := recoveredLocal15.
    recoveredBlock489Value3 := (195) * (recoveredBlock489Value2).
    recoveredBlock489Value4 := (recoveredBlock489Value3) rounded.
    (recoveredBlock489Value1) x: (recoveredBlock489Value4).
    recoveredBlock489Value5 := recoveredBlock489Value0.
    recoveredBlock489Value6 := recoveredLocal14.
    recoveredBlock489Value7 := (80) * (recoveredBlock489Value6).
    recoveredBlock489Value8 := (recoveredBlock489Value7) rounded.
    (recoveredBlock489Value5) y: (recoveredBlock489Value8).
    recoveredBlock489Value9 := recoveredLocal15.
    recoveredBlock489Value10 := (90) * (recoveredBlock489Value9).
    recoveredBlock489Value11 := (recoveredBlock489Value10) rounded.
    recoveredBlock489Value12 := (recoveredBlock489Value0) width: (recoveredBlock489Value11).
    recoveredBlock489Value12
].
            recoveredPC := 535.
        ].
        recoveredStep = 535 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 537.
        ].
        recoveredStep = 537 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 539.
        ].
        recoveredStep = 539 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 542.
        ].
        recoveredStep = 542 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 545.
        ].
        recoveredStep = 545 ifTrue: [
            recoveredStack2 := 'buttonOk'.
            recoveredPC := 547.
        ].
        recoveredStep = 547 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 550.
        ].
        recoveredStep = 550 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 552.
        ].
        recoveredStep = 552 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 555.
        ].
        recoveredStep = 555 ifTrue: [
            recoveredStack2 := 'aSeparator1'.
            recoveredPC := 557.
        ].
        recoveredStep = 557 ifTrue: [
            recoveredStack3 := [:recoveredBlock557Arg1 | 
    | recoveredBlock557Value0 recoveredBlock557Value1 recoveredBlock557Value2 recoveredBlock557Value3 recoveredBlock557Value4 recoveredBlock557Value5 recoveredBlock557Value6 recoveredBlock557Value7 recoveredBlock557Value8 recoveredBlock557Value9 recoveredBlock557Value10 recoveredBlock557Value11 recoveredBlock557Value12 |
    recoveredBlock557Value0 := recoveredBlock557Arg1.
    recoveredBlock557Value1 := recoveredBlock557Value0.
    recoveredBlock557Value2 := recoveredLocal14.
    recoveredBlock557Value3 := (68) * (recoveredBlock557Value2).
    recoveredBlock557Value4 := (recoveredBlock557Value3) rounded.
    (recoveredBlock557Value1) y: (recoveredBlock557Value4).
    recoveredBlock557Value5 := recoveredBlock557Value0.
    recoveredBlock557Value6 := recoveredLocal14.
    recoveredBlock557Value7 := (10) * (recoveredBlock557Value6).
    recoveredBlock557Value8 := (recoveredBlock557Value7) rounded.
    (recoveredBlock557Value5) height: (recoveredBlock557Value8).
    recoveredBlock557Value9 := recoveredLocal15.
    recoveredBlock557Value10 := (366) * (recoveredBlock557Value9).
    recoveredBlock557Value11 := (recoveredBlock557Value10) rounded.
    recoveredBlock557Value12 := (recoveredBlock557Value0) width: (recoveredBlock557Value11).
    recoveredBlock557Value12
].
            recoveredPC := 601.
        ].
        recoveredStep = 601 ifTrue: [
            recoveredStack1 := (recoveredStack1) createSeparator: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 603.
        ].
        recoveredStep = 603 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 605.
        ].
        recoveredStep = 605 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 608.
        ].
        recoveredStep = 608 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 611.
        ].
        recoveredStep = 611 ifTrue: [
            recoveredStack2 := 'aSeparator1'.
            recoveredPC := 613.
        ].
        recoveredStep = 613 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 616.
        ].
        recoveredStep = 616 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 618.
        ].
        recoveredStep = 618 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 621.
        ].
        recoveredStep = 621 ifTrue: [
            recoveredStack2 := 'textElement'.
            recoveredPC := 623.
        ].
        recoveredStep = 623 ifTrue: [
            recoveredStack3 := [:recoveredBlock623Arg1 | 
    | recoveredBlock623Value0 recoveredBlock623Value1 recoveredBlock623Value2 recoveredBlock623Value3 recoveredBlock623Value4 recoveredBlock623Value5 recoveredBlock623Value6 recoveredBlock623Value7 recoveredBlock623Value8 recoveredBlock623Value9 recoveredBlock623Value10 recoveredBlock623Value11 recoveredBlock623Value12 |
    recoveredBlock623Value0 := recoveredBlock623Arg1.
    recoveredBlock623Value1 := recoveredBlock623Value0.
    recoveredBlock623Value2 := recoveredLocal14.
    recoveredBlock623Value3 := (35) * (recoveredBlock623Value2).
    recoveredBlock623Value4 := (recoveredBlock623Value3) rounded.
    (recoveredBlock623Value1) y: (recoveredBlock623Value4).
    recoveredBlock623Value5 := recoveredBlock623Value0.
    recoveredBlock623Value6 := recoveredLocal15.
    recoveredBlock623Value7 := (5) * (recoveredBlock623Value6).
    recoveredBlock623Value8 := (recoveredBlock623Value7) rounded.
    (recoveredBlock623Value5) x: (recoveredBlock623Value8).
    recoveredBlock623Value9 := recoveredLocal15.
    recoveredBlock623Value10 := (180) * (recoveredBlock623Value9).
    recoveredBlock623Value11 := (recoveredBlock623Value10) rounded.
    recoveredBlock623Value12 := (recoveredBlock623Value0) width: (recoveredBlock623Value11).
    recoveredBlock623Value12
].
            recoveredPC := 665.
        ].
        recoveredStep = 665 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEnhancedText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 667.
        ].
        recoveredStep = 667 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 669.
        ].
        recoveredStep = 669 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 672.
        ].
        recoveredStep = 672 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 675.
        ].
        recoveredStep = 675 ifTrue: [
            recoveredStack2 := 'textElement'.
            recoveredPC := 677.
        ].
        recoveredStep = 677 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 680.
        ].
        recoveredStep = 680 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 682.
        ].
        recoveredStep = 682 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 685.
        ].
        recoveredStep = 685 ifTrue: [
            recoveredStack2 := 'comboBoxOperator'.
            recoveredPC := 687.
        ].
        recoveredStep = 687 ifTrue: [
            recoveredStack3 := [:recoveredBlock687Arg1 | 
    | recoveredBlock687Value0 recoveredBlock687Value1 recoveredBlock687Value2 recoveredBlock687Value3 recoveredBlock687Value4 recoveredBlock687Value5 recoveredBlock687Value6 recoveredBlock687Value7 recoveredBlock687Value8 recoveredBlock687Value9 recoveredBlock687Value10 recoveredBlock687Value11 recoveredBlock687Value12 |
    recoveredBlock687Value0 := recoveredBlock687Arg1.
    recoveredBlock687Value1 := recoveredBlock687Value0.
    recoveredBlock687Value2 := recoveredLocal15.
    recoveredBlock687Value3 := (190) * (recoveredBlock687Value2).
    recoveredBlock687Value4 := (recoveredBlock687Value3) rounded.
    (recoveredBlock687Value1) x: (recoveredBlock687Value4).
    recoveredBlock687Value5 := recoveredBlock687Value0.
    recoveredBlock687Value6 := recoveredLocal14.
    recoveredBlock687Value7 := (35) * (recoveredBlock687Value6).
    recoveredBlock687Value8 := (recoveredBlock687Value7) rounded.
    (recoveredBlock687Value5) y: (recoveredBlock687Value8).
    recoveredBlock687Value9 := recoveredLocal15.
    recoveredBlock687Value10 := (65) * (recoveredBlock687Value9).
    recoveredBlock687Value11 := (recoveredBlock687Value10) rounded.
    recoveredBlock687Value12 := (recoveredBlock687Value0) width: (recoveredBlock687Value11).
    recoveredBlock687Value12
].
            recoveredPC := 731.
        ].
        recoveredStep = 731 ifTrue: [
            recoveredStack1 := (recoveredStack1) createComboBox: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 733.
        ].
        recoveredStep = 733 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 735.
        ].
        recoveredStep = 735 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 738.
        ].
        recoveredStep = 738 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 741.
        ].
        recoveredStep = 741 ifTrue: [
            recoveredStack2 := 'comboBoxOperator'.
            recoveredPC := 743.
        ].
        recoveredStep = 743 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 746.
        ].
        recoveredStep = 746 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 748.
        ].
        recoveredStep = 748 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 751.
        ].
        recoveredStep = 751 ifTrue: [
            recoveredStack2 := 'textLevel'.
            recoveredPC := 753.
        ].
        recoveredStep = 753 ifTrue: [
            recoveredStack3 := [:recoveredBlock753Arg1 | 
    | recoveredBlock753Value0 recoveredBlock753Value1 recoveredBlock753Value2 recoveredBlock753Value3 recoveredBlock753Value4 recoveredBlock753Value5 recoveredBlock753Value6 recoveredBlock753Value7 recoveredBlock753Value8 recoveredBlock753Value9 recoveredBlock753Value10 recoveredBlock753Value11 recoveredBlock753Value12 recoveredBlock753Value13 recoveredBlock753Value14 recoveredBlock753Value15 recoveredBlock753Value16 |
    recoveredBlock753Value0 := recoveredBlock753Arg1.
    recoveredBlock753Value1 := recoveredBlock753Value0.
    recoveredBlock753Value2 := recoveredLocal14.
    recoveredBlock753Value3 := (35) * (recoveredBlock753Value2).
    recoveredBlock753Value4 := (recoveredBlock753Value3) rounded.
    (recoveredBlock753Value1) y: (recoveredBlock753Value4).
    recoveredBlock753Value5 := recoveredBlock753Value0.
    recoveredBlock753Value6 := recoveredLocal15.
    recoveredBlock753Value7 := (260) * (recoveredBlock753Value6).
    recoveredBlock753Value8 := (recoveredBlock753Value7) rounded.
    (recoveredBlock753Value5) x: (recoveredBlock753Value8).
    recoveredBlock753Value9 := recoveredBlock753Value0.
    recoveredBlock753Value10 := recoveredLocal14.
    recoveredBlock753Value11 := (24) * (recoveredBlock753Value10).
    recoveredBlock753Value12 := (recoveredBlock753Value11) rounded.
    (recoveredBlock753Value9) height: (recoveredBlock753Value12).
    recoveredBlock753Value13 := recoveredLocal15.
    recoveredBlock753Value14 := (105) * (recoveredBlock753Value13).
    recoveredBlock753Value15 := (recoveredBlock753Value14) rounded.
    recoveredBlock753Value16 := (recoveredBlock753Value0) width: (recoveredBlock753Value15).
    recoveredBlock753Value16
].
            recoveredPC := 807.
        ].
        recoveredStep = 807 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEnhancedText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 809.
        ].
        recoveredStep = 809 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 811.
        ].
        recoveredStep = 811 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 814.
        ].
        recoveredStep = 814 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 817.
        ].
        recoveredStep = 817 ifTrue: [
            recoveredStack2 := 'textLevel'.
            recoveredPC := 819.
        ].
        recoveredStep = 819 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 822.
        ].
        recoveredStep = 822 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 824.
        ].
        recoveredStep = 824 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 827.
        ].
        recoveredStep = 827 ifTrue: [
            recoveredStack2 := [:recoveredBlock827Arg1 | 
    | recoveredBlock827Value0 recoveredBlock827Value1 recoveredBlock827Value2 |
    recoveredBlock827Value0 := recoveredBlock827Arg1.
    recoveredBlock827Value1 := recoveredLocal11.
    recoveredBlock827Value2 := (recoveredBlock827Value0) workWindow: (recoveredBlock827Value1).
    recoveredBlock827Value2
].
            recoveredPC := 844.
        ].
        recoveredStep = 844 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 849.
        ].
        recoveredStep = 849 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 852.
        ].
        recoveredStep = 852 ifTrue: [
            recoveredStack2 := [:recoveredBlock852Arg1 | 
    | recoveredBlock852Value0 recoveredBlock852Value1 recoveredBlock852Value2 recoveredBlock852Value3 recoveredBlock852Value4 recoveredBlock852Value5 recoveredBlock852Value6 recoveredBlock852Value7 recoveredBlock852Value8 |
    recoveredBlock852Value0 := recoveredBlock852Arg1.
    recoveredBlock852Value1 := recoveredBlock852Value0.
    recoveredBlock852Value2 := XmATTACHWIDGET.
    (recoveredBlock852Value1) bottomAttachment: (recoveredBlock852Value2).
    recoveredBlock852Value3 := recoveredBlock852Value0.
    recoveredBlock852Value4 := recoveredLocal3.
    (recoveredBlock852Value3) bottomWidget: (recoveredBlock852Value4).
    recoveredBlock852Value5 := recoveredBlock852Value0.
    recoveredBlock852Value6 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock852Value5) leftAttachment: (recoveredBlock852Value6).
    recoveredBlock852Value7 := recoveredLocal3.
    recoveredBlock852Value8 := (recoveredBlock852Value0) leftWidget: (recoveredBlock852Value7).
    recoveredBlock852Value8
].
            recoveredPC := 894.
        ].
        recoveredStep = 894 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 899.
        ].
        recoveredStep = 899 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 902.
        ].
        recoveredStep = 902 ifTrue: [
            recoveredStack2 := [:recoveredBlock902Arg1 | 
    | recoveredBlock902Value0 recoveredBlock902Value1 recoveredBlock902Value2 recoveredBlock902Value3 recoveredBlock902Value4 recoveredBlock902Value5 recoveredBlock902Value6 recoveredBlock902Value7 recoveredBlock902Value8 |
    recoveredBlock902Value0 := recoveredBlock902Arg1.
    recoveredBlock902Value1 := recoveredBlock902Value0.
    recoveredBlock902Value2 := XmATTACHWIDGET.
    (recoveredBlock902Value1) bottomAttachment: (recoveredBlock902Value2).
    recoveredBlock902Value3 := recoveredBlock902Value0.
    recoveredBlock902Value4 := recoveredLocal2.
    (recoveredBlock902Value3) bottomWidget: (recoveredBlock902Value4).
    recoveredBlock902Value5 := recoveredBlock902Value0.
    recoveredBlock902Value6 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock902Value5) leftAttachment: (recoveredBlock902Value6).
    recoveredBlock902Value7 := recoveredLocal2.
    recoveredBlock902Value8 := (recoveredBlock902Value0) leftWidget: (recoveredBlock902Value7).
    recoveredBlock902Value8
].
            recoveredPC := 944.
        ].
        recoveredStep = 944 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 949.
        ].
        recoveredStep = 949 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 952.
        ].
        recoveredStep = 952 ifTrue: [
            recoveredStack2 := [:recoveredBlock952Arg1 | 
    | recoveredBlock952Value0 recoveredBlock952Value1 recoveredBlock952Value2 recoveredBlock952Value3 recoveredBlock952Value4 recoveredBlock952Value5 recoveredBlock952Value6 recoveredBlock952Value7 recoveredBlock952Value8 |
    recoveredBlock952Value0 := recoveredBlock952Arg1.
    recoveredBlock952Value1 := recoveredBlock952Value0.
    recoveredBlock952Value2 := XmATTACHWIDGET.
    (recoveredBlock952Value1) bottomAttachment: (recoveredBlock952Value2).
    recoveredBlock952Value3 := recoveredBlock952Value0.
    recoveredBlock952Value4 := recoveredLocal1.
    (recoveredBlock952Value3) bottomWidget: (recoveredBlock952Value4).
    recoveredBlock952Value5 := recoveredBlock952Value0.
    recoveredBlock952Value6 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock952Value5) leftAttachment: (recoveredBlock952Value6).
    recoveredBlock952Value7 := recoveredLocal1.
    recoveredBlock952Value8 := (recoveredBlock952Value0) leftWidget: (recoveredBlock952Value7).
    recoveredBlock952Value8
].
            recoveredPC := 994.
        ].
        recoveredStep = 994 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 999.
        ].
        recoveredStep = 999 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 1002.
        ].
        recoveredStep = 1002 ifTrue: [
            recoveredStack2 := [:recoveredBlock1002Arg1 | 
    | recoveredBlock1002Value0 recoveredBlock1002Value1 recoveredBlock1002Value2 recoveredBlock1002Value3 recoveredBlock1002Value4 recoveredBlock1002Value5 recoveredBlock1002Value6 recoveredBlock1002Value7 recoveredBlock1002Value8 |
    recoveredBlock1002Value0 := recoveredBlock1002Arg1.
    recoveredBlock1002Value1 := recoveredBlock1002Value0.
    recoveredBlock1002Value2 := XmATTACHWIDGET.
    (recoveredBlock1002Value1) bottomAttachment: (recoveredBlock1002Value2).
    recoveredBlock1002Value3 := recoveredBlock1002Value0.
    recoveredBlock1002Value4 := recoveredLocal3.
    (recoveredBlock1002Value3) bottomWidget: (recoveredBlock1002Value4).
    recoveredBlock1002Value5 := recoveredBlock1002Value0.
    recoveredBlock1002Value6 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock1002Value5) rightAttachment: (recoveredBlock1002Value6).
    recoveredBlock1002Value7 := recoveredLocal3.
    recoveredBlock1002Value8 := (recoveredBlock1002Value0) rightWidget: (recoveredBlock1002Value7).
    recoveredBlock1002Value8
].
            recoveredPC := 1044.
        ].
        recoveredStep = 1044 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1049.
        ].
        recoveredStep = 1049 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 1052.
        ].
        recoveredStep = 1052 ifTrue: [
            recoveredStack2 := [:block281279fcArg1 | 
    | block281279fcValue0 block281279fcValue1 block281279fcValue2 block281279fcValue3 block281279fcValue4 |
    block281279fcValue0 := block281279fcArg1.
    block281279fcValue1 := block281279fcValue0.
    block281279fcValue2 := XmATTACHFORM.
    (block281279fcValue1) leftAttachment: (block281279fcValue2).
    block281279fcValue3 := XmATTACHFORM.
    block281279fcValue4 := (block281279fcValue0) rightAttachment: (block281279fcValue3).
    block281279fcValue4
].
            recoveredPC := 1056.
        ].
        recoveredStep = 1056 ifTrue: [
            recoveredPC := 1080.
        ].
        recoveredStep = 1080 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1085.
        ].
        recoveredStep = 1085 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1088.
        ].
        recoveredStep = 1088 ifTrue: [
            recoveredStack2 := [:recoveredBlock1088Arg1 | 
    | recoveredBlock1088Value0 recoveredBlock1088Value1 recoveredBlock1088Value2 recoveredBlock1088Value3 recoveredBlock1088Value4 recoveredBlock1088Value5 recoveredBlock1088Value6 recoveredBlock1088Value7 recoveredBlock1088Value8 |
    recoveredBlock1088Value0 := recoveredBlock1088Arg1.
    recoveredBlock1088Value1 := recoveredBlock1088Value0.
    recoveredBlock1088Value2 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock1088Value1) bottomAttachment: (recoveredBlock1088Value2).
    recoveredBlock1088Value3 := recoveredBlock1088Value0.
    recoveredBlock1088Value4 := recoveredLocal3.
    (recoveredBlock1088Value3) bottomWidget: (recoveredBlock1088Value4).
    recoveredBlock1088Value5 := recoveredBlock1088Value0.
    recoveredBlock1088Value6 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock1088Value5) topAttachment: (recoveredBlock1088Value6).
    recoveredBlock1088Value7 := recoveredLocal3.
    recoveredBlock1088Value8 := (recoveredBlock1088Value0) topWidget: (recoveredBlock1088Value7).
    recoveredBlock1088Value8
].
            recoveredPC := 1130.
        ].
        recoveredStep = 1130 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1135.
        ].
        recoveredStep = 1135 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 1138.
        ].
        recoveredStep = 1138 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 1142.
        ].
        recoveredStep = 1142 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1143.
        ].
        recoveredStep = 1143 ifTrue: [
            recoveredStack4 := 'buttonAssignActivate:clientData:callData:'.
            recoveredPC := 1146.
        ].
        recoveredStep = 1146 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1147.
        ].
        recoveredStep = 1147 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1151.
        ].
        recoveredStep = 1151 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 1154.
        ].
        recoveredStep = 1154 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 1158.
        ].
        recoveredStep = 1158 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1159.
        ].
        recoveredStep = 1159 ifTrue: [
            recoveredStack4 := 'buttonCancelActivate:clientData:callData:'.
            recoveredPC := 1162.
        ].
        recoveredStep = 1162 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1163.
        ].
        recoveredStep = 1163 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1167.
        ].
        recoveredStep = 1167 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 1170.
        ].
        recoveredStep = 1170 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 1174.
        ].
        recoveredStep = 1174 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1175.
        ].
        recoveredStep = 1175 ifTrue: [
            recoveredStack4 := 'buttonOkActivate:clientData:callData:'.
            recoveredPC := 1178.
        ].
        recoveredStep = 1178 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1179.
        ].
        recoveredStep = 1179 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1183.
        ].
        recoveredStep = 1183 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 1186.
        ].
        recoveredStep = 1186 ifTrue: [
            recoveredStack2 := XmNmodifyVerifyCallback.
            recoveredPC := 1190.
        ].
        recoveredStep = 1190 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1191.
        ].
        recoveredStep = 1191 ifTrue: [
            recoveredStack4 := 'textElementModify:clientData:callData:'.
            recoveredPC := 1194.
        ].
        recoveredStep = 1194 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1195.
        ].
        recoveredStep = 1195 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1199.
        ].
        recoveredStep = 1199 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 1202.
        ].
        recoveredStep = 1202 ifTrue: [
            recoveredStack2 := XmNsingleSelectionCallback.
            recoveredPC := 1206.
        ].
        recoveredStep = 1206 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1207.
        ].
        recoveredStep = 1207 ifTrue: [
            recoveredStack4 := 'comboBoxOperatorSingle:clientData:callData:'.
            recoveredPC := 1210.
        ].
        recoveredStep = 1210 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1211.
        ].
        recoveredStep = 1211 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1215.
        ].
        recoveredStep = 1215 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1218.
        ].
        recoveredStep = 1218 ifTrue: [
            recoveredStack2 := XmNmodifyVerifyCallback.
            recoveredPC := 1222.
        ].
        recoveredStep = 1222 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1223.
        ].
        recoveredStep = 1223 ifTrue: [
            recoveredStack4 := 'textLevelModify:clientData:callData:'.
            recoveredPC := 1226.
        ].
        recoveredStep = 1226 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1227.
        ].
        recoveredStep = 1227 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1231.
        ].
        recoveredStep = 1231 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1234.
        ].
        recoveredStep = 1234 ifTrue: [
            recoveredStack2 := XmNvalueChangedCallback.
            recoveredPC := 1238.
        ].
        recoveredStep = 1238 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1239.
        ].
        recoveredStep = 1239 ifTrue: [
            recoveredStack4 := 'textLevelValue:clientData:callData:'.
            recoveredPC := 1242.
        ].
        recoveredStep = 1242 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1243.
        ].
        recoveredStep = 1243 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1247.
        ].
        recoveredStep = 1247 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 1250.
        ].
        recoveredStep = 1250 ifTrue: [
            recoveredStack2 := recoveredLocal16.
            recoveredPC := 1253.
        ].
        recoveredStep = 1253 ifTrue: [
            recoveredStack3 := recoveredLocal12.
            recoveredPC := 1256.
        ].
        recoveredStep = 1256 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 1261.
        ].
        recoveredStep = 1261 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

