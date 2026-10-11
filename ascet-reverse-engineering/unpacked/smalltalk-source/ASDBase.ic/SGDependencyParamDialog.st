"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200433fc; bytecode file offset 0x9451f8"
!SGDependencyParamDialog methodsFor: 'recovered'!
mapIdToParam
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('mapIdToParam').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20044b8c; bytecode file offset 0x9451f8"
!SGDependencyParamDialog methodsFor: 'recovered'!
dialog
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('dialog').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20045e2c; bytecode file offset 0x9451f8"
!SGDependencyParamDialog methodsFor: 'recovered'!
okButton
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('okButton').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004879c; bytecode file offset 0x9451f8"
!SGDependencyParamDialog methodsFor: 'recovered'!
formula
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('formula').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008c68c; bytecode file offset 0x989498"
!SGDependencyParamDialog methodsFor: 'recovered'!
mappingTable
    (self) widgetAt: ('mapIdToParam').
    ^self
! !

"ASDBase.ic method 0x200aeb44; bytecode file offset 0x9ab3fc"
!SGDependencyParamDialog methodsFor: 'recovered'!
cancel: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    result := nil.
    (self) close.
    ^self
! !

"ASDBase.ic method 0x200dd800; bytecode file offset 0x9da19c"
!SGDependencyParamDialog methodsFor: 'recovered'!
getIdentifier: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := (self) uiController.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (recoveredValue2) item.
    recoveredValue4 := (recoveredValue1) getIdentifierName: (recoveredValue3).
    (recoveredValue0) value: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x200dd878; bytecode file offset 0x9da19c"
!SGDependencyParamDialog methodsFor: 'recovered'!
getParameter: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := (self) uiController.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (recoveredValue2) item.
    recoveredValue4 := (recoveredValue1) getModelElementName: (recoveredValue3).
    (recoveredValue0) value: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x2017da4c; bytecode file offset 0xa7a31c"
!SGDependencyParamDialog methodsFor: 'recovered'!
endEditValue: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) uiController.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := (recoveredValue1) item.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue3) newValue.
    (recoveredValue0) changeTableEntry: (recoveredValue2) to: (recoveredValue4).
    recoveredValue5 := (self) formula.
    recoveredValue6 := (self) uiController.
    recoveredValue7 := (recoveredValue6) getFormulaWithParameterName.
    (recoveredValue5) setString: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x201eac44; bytecode file offset 0xae7510"
!SGDependencyParamDialog methodsFor: 'recovered'!
ok: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) parameter.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) isComposite.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) validateFormulaForComposite.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
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
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) table.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            result := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) close.
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

"ASDBase.ic method 0x202a6b00; bytecode file offset 0xba33d4"
!SGDependencyParamDialog methodsFor: 'recovered'!
columns
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := (self) createColumn: ('Identifier') selector: ('getIdentifier:clientData:callData:') clientData: (nil) width: (200) editable: (false).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal2.
    recoveredValue4 := recoveredLocal1.
    (recoveredValue3) add: (recoveredValue4).
    recoveredValue5 := (self) createColumn: ('Model Parameter') selector: ('getParameter:clientData:callData:') clientData: (nil) width: (200) editable: (true).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredLocal2.
    recoveredValue7 := recoveredLocal1.
    (recoveredValue6) add: (recoveredValue7).
    recoveredValue8 := recoveredLocal2.
    ^recoveredValue8
! !

"ASDBase.ic method 0x202dfdac; bytecode file offset 0xbdc69c"
!SGDependencyParamDialog methodsFor: 'recovered'!
beginEditValue: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 |
    recoveredValue0 := (self) uiController.
    recoveredValue1 := (recoveredValue0) getModelParameterNamens.
    recoveredValue2 := (recoveredValue1) asSortedCollection.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := RBComboBoxEditPolicy.
    recoveredValue4 := (self) mapIdToParam.
    recoveredValue5 := (recoveredValue3) on: (recoveredValue4).
    recoveredLocal2 := recoveredValue5.
    recoveredValue6 := recoveredLocal2.
    recoveredValue7 := recoveredValue6.
    (recoveredValue7) editable: (false).
    recoveredValue8 := recoveredValue6.
    recoveredValue9 := recoveredLocal1.
    (recoveredValue8) items: (recoveredValue9).
    recoveredValue10 := recoveredValue6.
    recoveredValue11 := recoveredLocal1.
    recoveredValue12 := (recoveredValue11) size.
    recoveredValue13 := (recoveredValue12) min: (50).
    (recoveredValue10) visibleItemCount: (recoveredValue13).
    recoveredValue14 := recoveredArg3.
    recoveredValue15 := (recoveredValue14) value.
    (recoveredValue6) value: (recoveredValue15).
    recoveredValue16 := recoveredArg3.
    recoveredValue17 := recoveredValue16.
    (recoveredValue17) doit: (true).
    recoveredValue18 := recoveredLocal2.
    (recoveredValue16) editPolicy: (recoveredValue18).
    ^self
! !

"ASDBase.ic method 0x2032ac8c; bytecode file offset 0xc27594"
!SGDependencyParamDialog methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 |
    recoveredValue0 := (self) dialog.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) uiController.
    recoveredValue3 := (recoveredValue2) getParameterName.
    recoveredValue4 := ('Edit Dependency for: %1') bindWith: (recoveredValue3).
    (recoveredValue1) title: (recoveredValue4).
    recoveredValue5 := (self) resourceManager.
    recoveredValue6 := (self) uiController.
    recoveredValue7 := (recoveredValue6) parameter.
    recoveredValue8 := (recoveredValue7) visualCallBackImage.
    recoveredValue9 := (recoveredValue5) returnIconWithName: (recoveredValue8).
    (recoveredValue0) icon: (recoveredValue9).
    recoveredValue10 := (self) mapIdToParam.
    recoveredValue11 := (self) uiController.
    recoveredValue12 := (recoveredValue11) getTableAsList.
    (recoveredValue10) items: (recoveredValue12).
    recoveredValue13 := (self) formula.
    recoveredValue14 := (self) uiController.
    recoveredValue15 := (recoveredValue14) getFormulaWithParameterName.
    (recoveredValue13) setString: (recoveredValue15).
    (self) updateFonts.
    recoveredValue16 := (self) okButton.
    recoveredValue17 := (self) uiController.
    recoveredValue18 := (recoveredValue17) isWritable.
    (recoveredValue16) sensitive: (recoveredValue18).
    ^self
! !

"ASDBase.ic method 0x20674a58; bytecode file offset 0xf71474"
!SGDependencyParamDialog methodsFor: 'recovered'!
createWidgetHierarchy: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredLocal14 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal13 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal12 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := 'dialog'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := [:recoveredBlock25Arg1 | 
    | recoveredBlock25Value0 recoveredBlock25Value1 recoveredBlock25Value2 recoveredBlock25Value3 recoveredBlock25Value4 recoveredBlock25Value5 recoveredBlock25Value6 recoveredBlock25Value7 recoveredBlock25Value8 recoveredBlock25Value9 recoveredBlock25Value10 recoveredBlock25Value11 |
    recoveredBlock25Value0 := recoveredBlock25Arg1.
    recoveredBlock25Value1 := recoveredBlock25Value0.
    (recoveredBlock25Value1) title: ('Dependency Editor').
    recoveredBlock25Value2 := recoveredBlock25Value0.
    recoveredBlock25Value3 := MWMINPUTPRIMARYAPPLICATIONMODAL.
    (recoveredBlock25Value2) mwmInputMode: (recoveredBlock25Value3).
    recoveredBlock25Value4 := recoveredBlock25Value0.
    recoveredBlock25Value5 := recoveredLocal12.
    recoveredBlock25Value6 := (512) * (recoveredBlock25Value5).
    recoveredBlock25Value7 := (recoveredBlock25Value6) rounded.
    (recoveredBlock25Value4) height: (recoveredBlock25Value7).
    recoveredBlock25Value8 := recoveredLocal13.
    recoveredBlock25Value9 := (575) * (recoveredBlock25Value8).
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
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := 'dialog'.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack3 := recoveredLocal11.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := 'mainWin'.
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
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := 'mainWindow'.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := 'form'.
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
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack2 := 'form'.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack2 := 'mapIdToParam'.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack3 := [:recoveredBlock133Arg1 | 
    | recoveredBlock133Value0 recoveredBlock133Value1 recoveredBlock133Value2 recoveredBlock133Value3 recoveredBlock133Value4 recoveredBlock133Value5 recoveredBlock133Value6 recoveredBlock133Value7 recoveredBlock133Value8 recoveredBlock133Value9 recoveredBlock133Value10 recoveredBlock133Value11 recoveredBlock133Value12 recoveredBlock133Value13 |
    recoveredBlock133Value0 := recoveredBlock133Arg1.
    recoveredBlock133Value1 := recoveredBlock133Value0.
    recoveredBlock133Value2 := XmCELLSINGLESELECT.
    (recoveredBlock133Value1) selectionPolicy: (recoveredBlock133Value2).
    recoveredBlock133Value3 := recoveredBlock133Value0.
    (recoveredBlock133Value3) editable: (true).
    recoveredBlock133Value4 := recoveredBlock133Value0.
    recoveredBlock133Value5 := XmETCHCELLS.
    (recoveredBlock133Value4) visualStyle: (recoveredBlock133Value5).
    recoveredBlock133Value6 := recoveredBlock133Value0.
    recoveredBlock133Value7 := XmETCHCELLS.
    (recoveredBlock133Value6) headingVisualStyle: (recoveredBlock133Value7).
    recoveredBlock133Value8 := recoveredBlock133Value0.
    recoveredBlock133Value9 := (self) columns.
    (recoveredBlock133Value8) columns: (recoveredBlock133Value9).
    recoveredBlock133Value10 := recoveredBlock133Value0.
    (recoveredBlock133Value10) itemHeight: (25).
    recoveredBlock133Value11 := recoveredBlock133Value0.
    (recoveredBlock133Value11) lockedColumns: (0).
    recoveredBlock133Value12 := recoveredBlock133Value0.
    (recoveredBlock133Value12) applicationDrawnBackground: (true).
    recoveredBlock133Value13 := (recoveredBlock133Value0) headingSeparatorThickness: (3).
    recoveredBlock133Value13
].
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack1 := (recoveredStack1) createScrolledEnhancedTableList: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack2 := 'scrolledMapIdToParam'.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack2 := 'mapIdToParam'.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack2 := 'mapText'.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack3 := [:recoveredBlock225Arg1 | 
    | recoveredBlock225Value0 recoveredBlock225Value1 recoveredBlock225Value2 recoveredBlock225Value3 recoveredBlock225Value4 recoveredBlock225Value5 recoveredBlock225Value6 recoveredBlock225Value7 recoveredBlock225Value8 recoveredBlock225Value9 |
    recoveredBlock225Value0 := recoveredBlock225Arg1.
    recoveredBlock225Value1 := recoveredBlock225Value0.
    recoveredBlock225Value2 := recoveredLocal13.
    recoveredBlock225Value3 := (20) * (recoveredBlock225Value2).
    recoveredBlock225Value4 := (recoveredBlock225Value3) rounded.
    (recoveredBlock225Value1) x: (recoveredBlock225Value4).
    recoveredBlock225Value5 := recoveredBlock225Value0.
    (recoveredBlock225Value5) labelString: ('Mapping Table: formal to model parameter').
    recoveredBlock225Value6 := recoveredLocal12.
    recoveredBlock225Value7 := (10) * (recoveredBlock225Value6).
    recoveredBlock225Value8 := (recoveredBlock225Value7) rounded.
    recoveredBlock225Value9 := (recoveredBlock225Value0) y: (recoveredBlock225Value8).
    recoveredBlock225Value9
].
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack2 := 'mapText'.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack2 := 'formulaText'.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack3 := [:recoveredBlock282Arg1 | 
    | recoveredBlock282Value0 recoveredBlock282Value1 recoveredBlock282Value2 recoveredBlock282Value3 recoveredBlock282Value4 recoveredBlock282Value5 recoveredBlock282Value6 recoveredBlock282Value7 recoveredBlock282Value8 recoveredBlock282Value9 |
    recoveredBlock282Value0 := recoveredBlock282Arg1.
    recoveredBlock282Value1 := recoveredBlock282Value0.
    recoveredBlock282Value2 := recoveredLocal13.
    recoveredBlock282Value3 := (20) * (recoveredBlock282Value2).
    recoveredBlock282Value4 := (recoveredBlock282Value3) rounded.
    (recoveredBlock282Value1) x: (recoveredBlock282Value4).
    recoveredBlock282Value5 := recoveredBlock282Value0.
    (recoveredBlock282Value5) labelString: ('Formula').
    recoveredBlock282Value6 := recoveredLocal12.
    recoveredBlock282Value7 := (340) * (recoveredBlock282Value6).
    recoveredBlock282Value8 := (recoveredBlock282Value7) rounded.
    recoveredBlock282Value9 := (recoveredBlock282Value0) y: (recoveredBlock282Value8).
    recoveredBlock282Value9
].
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            recoveredStack2 := 'formulaText'.
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            recoveredStack2 := 'sep'.
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack3 := [:recoveredBlock339Arg1 | 
    | recoveredBlock339Value0 recoveredBlock339Value1 recoveredBlock339Value2 recoveredBlock339Value3 recoveredBlock339Value4 recoveredBlock339Value5 recoveredBlock339Value6 recoveredBlock339Value7 recoveredBlock339Value8 recoveredBlock339Value9 recoveredBlock339Value10 recoveredBlock339Value11 recoveredBlock339Value12 recoveredBlock339Value13 recoveredBlock339Value14 recoveredBlock339Value15 recoveredBlock339Value16 recoveredBlock339Value17 recoveredBlock339Value18 |
    recoveredBlock339Value0 := recoveredBlock339Arg1.
    recoveredBlock339Value1 := recoveredBlock339Value0.
    recoveredBlock339Value2 := recoveredLocal13.
    recoveredBlock339Value3 := (450) * (recoveredBlock339Value2).
    recoveredBlock339Value4 := (recoveredBlock339Value3) rounded.
    (recoveredBlock339Value1) x: (recoveredBlock339Value4).
    recoveredBlock339Value5 := recoveredBlock339Value0.
    recoveredBlock339Value6 := XmVERTICAL.
    (recoveredBlock339Value5) orientation: (recoveredBlock339Value6).
    recoveredBlock339Value7 := recoveredBlock339Value0.
    recoveredBlock339Value8 := recoveredLocal12.
    recoveredBlock339Value9 := (10) * (recoveredBlock339Value8).
    recoveredBlock339Value10 := (recoveredBlock339Value9) rounded.
    (recoveredBlock339Value7) y: (recoveredBlock339Value10).
    recoveredBlock339Value11 := recoveredBlock339Value0.
    recoveredBlock339Value12 := recoveredLocal12.
    recoveredBlock339Value13 := (490) * (recoveredBlock339Value12).
    recoveredBlock339Value14 := (recoveredBlock339Value13) rounded.
    (recoveredBlock339Value11) height: (recoveredBlock339Value14).
    recoveredBlock339Value15 := recoveredLocal13.
    recoveredBlock339Value16 := (20) * (recoveredBlock339Value15).
    recoveredBlock339Value17 := (recoveredBlock339Value16) rounded.
    recoveredBlock339Value18 := (recoveredBlock339Value0) width: (recoveredBlock339Value17).
    recoveredBlock339Value18
].
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            recoveredStack1 := (recoveredStack1) createSeparator: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 401.
        ].
        recoveredStep = 401 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 406.
        ].
        recoveredStep = 406 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 409.
        ].
        recoveredStep = 409 ifTrue: [
            recoveredStack2 := 'sep'.
            recoveredPC := 411.
        ].
        recoveredStep = 411 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 414.
        ].
        recoveredStep = 414 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 416.
        ].
        recoveredStep = 416 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 419.
        ].
        recoveredStep = 419 ifTrue: [
            recoveredStack2 := 'formula'.
            recoveredPC := 421.
        ].
        recoveredStep = 421 ifTrue: [
            recoveredStack3 := [:recoveredBlock421Arg1 | 
    | recoveredBlock421Value0 recoveredBlock421Value1 recoveredBlock421Value2 recoveredBlock421Value3 recoveredBlock421Value4 recoveredBlock421Value5 recoveredBlock421Value6 recoveredBlock421Value7 recoveredBlock421Value8 recoveredBlock421Value9 recoveredBlock421Value10 recoveredBlock421Value11 recoveredBlock421Value12 recoveredBlock421Value13 recoveredBlock421Value14 recoveredBlock421Value15 recoveredBlock421Value16 recoveredBlock421Value17 recoveredBlock421Value18 recoveredBlock421Value19 recoveredBlock421Value20 |
    recoveredBlock421Value0 := recoveredBlock421Arg1.
    recoveredBlock421Value1 := recoveredBlock421Value0.
    (recoveredBlock421Value1) editable: (false).
    recoveredBlock421Value2 := recoveredBlock421Value0.
    (recoveredBlock421Value2) wordWrap: (true).
    recoveredBlock421Value3 := recoveredBlock421Value0.
    recoveredBlock421Value4 := XmMULTILINEEDIT.
    (recoveredBlock421Value3) editMode: (recoveredBlock421Value4).
    recoveredBlock421Value5 := recoveredBlock421Value0.
    recoveredBlock421Value6 := recoveredLocal12.
    recoveredBlock421Value7 := (360) * (recoveredBlock421Value6).
    recoveredBlock421Value8 := (recoveredBlock421Value7) rounded.
    (recoveredBlock421Value5) y: (recoveredBlock421Value8).
    recoveredBlock421Value9 := recoveredBlock421Value0.
    recoveredBlock421Value10 := recoveredLocal13.
    recoveredBlock421Value11 := (20) * (recoveredBlock421Value10).
    recoveredBlock421Value12 := (recoveredBlock421Value11) rounded.
    (recoveredBlock421Value9) x: (recoveredBlock421Value12).
    recoveredBlock421Value13 := recoveredBlock421Value0.
    recoveredBlock421Value14 := recoveredLocal12.
    recoveredBlock421Value15 := (140) * (recoveredBlock421Value14).
    recoveredBlock421Value16 := (recoveredBlock421Value15) rounded.
    (recoveredBlock421Value13) height: (recoveredBlock421Value16).
    recoveredBlock421Value17 := recoveredLocal13.
    recoveredBlock421Value18 := (420) * (recoveredBlock421Value17).
    recoveredBlock421Value19 := (recoveredBlock421Value18) rounded.
    recoveredBlock421Value20 := (recoveredBlock421Value0) width: (recoveredBlock421Value19).
    recoveredBlock421Value20
].
            recoveredPC := 491.
        ].
        recoveredStep = 491 ifTrue: [
            recoveredStack1 := (recoveredStack1) createText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 493.
        ].
        recoveredStep = 493 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 495.
        ].
        recoveredStep = 495 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 498.
        ].
        recoveredStep = 498 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 501.
        ].
        recoveredStep = 501 ifTrue: [
            recoveredStack2 := 'formula'.
            recoveredPC := 504.
        ].
        recoveredStep = 504 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 507.
        ].
        recoveredStep = 507 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 509.
        ].
        recoveredStep = 509 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 512.
        ].
        recoveredStep = 512 ifTrue: [
            recoveredStack2 := 'okButton'.
            recoveredPC := 516.
        ].
        recoveredStep = 516 ifTrue: [
            recoveredStack3 := [:recoveredBlock516Arg1 | 
    | recoveredBlock516Value0 recoveredBlock516Value1 recoveredBlock516Value2 recoveredBlock516Value3 recoveredBlock516Value4 recoveredBlock516Value5 recoveredBlock516Value6 recoveredBlock516Value7 recoveredBlock516Value8 recoveredBlock516Value9 recoveredBlock516Value10 recoveredBlock516Value11 recoveredBlock516Value12 recoveredBlock516Value13 recoveredBlock516Value14 recoveredBlock516Value15 recoveredBlock516Value16 recoveredBlock516Value17 |
    recoveredBlock516Value0 := recoveredBlock516Arg1.
    recoveredBlock516Value1 := recoveredBlock516Value0.
    recoveredBlock516Value2 := recoveredLocal13.
    recoveredBlock516Value3 := (480) * (recoveredBlock516Value2).
    recoveredBlock516Value4 := (recoveredBlock516Value3) rounded.
    (recoveredBlock516Value1) x: (recoveredBlock516Value4).
    recoveredBlock516Value5 := recoveredBlock516Value0.
    (recoveredBlock516Value5) labelString: ('&Ok').
    recoveredBlock516Value6 := recoveredBlock516Value0.
    recoveredBlock516Value7 := recoveredLocal12.
    recoveredBlock516Value8 := (20) * (recoveredBlock516Value7).
    recoveredBlock516Value9 := (recoveredBlock516Value8) rounded.
    (recoveredBlock516Value6) y: (recoveredBlock516Value9).
    recoveredBlock516Value10 := recoveredBlock516Value0.
    recoveredBlock516Value11 := recoveredLocal12.
    recoveredBlock516Value12 := (40) * (recoveredBlock516Value11).
    recoveredBlock516Value13 := (recoveredBlock516Value12) rounded.
    (recoveredBlock516Value10) height: (recoveredBlock516Value13).
    recoveredBlock516Value14 := recoveredLocal13.
    recoveredBlock516Value15 := (80) * (recoveredBlock516Value14).
    recoveredBlock516Value16 := (recoveredBlock516Value15) rounded.
    recoveredBlock516Value17 := (recoveredBlock516Value0) width: (recoveredBlock516Value16).
    recoveredBlock516Value17
].
            recoveredPC := 577.
        ].
        recoveredStep = 577 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 581.
        ].
        recoveredStep = 581 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 583.
        ].
        recoveredStep = 583 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 586.
        ].
        recoveredStep = 586 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 589.
        ].
        recoveredStep = 589 ifTrue: [
            recoveredStack2 := 'okButton'.
            recoveredPC := 592.
        ].
        recoveredStep = 592 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 595.
        ].
        recoveredStep = 595 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 597.
        ].
        recoveredStep = 597 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 600.
        ].
        recoveredStep = 600 ifTrue: [
            recoveredStack2 := 'cancelButton'.
            recoveredPC := 604.
        ].
        recoveredStep = 604 ifTrue: [
            recoveredStack3 := [:recoveredBlock604Arg1 | 
    | recoveredBlock604Value0 recoveredBlock604Value1 recoveredBlock604Value2 recoveredBlock604Value3 recoveredBlock604Value4 recoveredBlock604Value5 recoveredBlock604Value6 recoveredBlock604Value7 recoveredBlock604Value8 recoveredBlock604Value9 recoveredBlock604Value10 recoveredBlock604Value11 recoveredBlock604Value12 recoveredBlock604Value13 recoveredBlock604Value14 recoveredBlock604Value15 recoveredBlock604Value16 recoveredBlock604Value17 |
    recoveredBlock604Value0 := recoveredBlock604Arg1.
    recoveredBlock604Value1 := recoveredBlock604Value0.
    recoveredBlock604Value2 := recoveredLocal13.
    recoveredBlock604Value3 := (480) * (recoveredBlock604Value2).
    recoveredBlock604Value4 := (recoveredBlock604Value3) rounded.
    (recoveredBlock604Value1) x: (recoveredBlock604Value4).
    recoveredBlock604Value5 := recoveredBlock604Value0.
    (recoveredBlock604Value5) labelString: ('&Cancel').
    recoveredBlock604Value6 := recoveredBlock604Value0.
    recoveredBlock604Value7 := recoveredLocal12.
    recoveredBlock604Value8 := (80) * (recoveredBlock604Value7).
    recoveredBlock604Value9 := (recoveredBlock604Value8) rounded.
    (recoveredBlock604Value6) y: (recoveredBlock604Value9).
    recoveredBlock604Value10 := recoveredBlock604Value0.
    recoveredBlock604Value11 := recoveredLocal12.
    recoveredBlock604Value12 := (40) * (recoveredBlock604Value11).
    recoveredBlock604Value13 := (recoveredBlock604Value12) rounded.
    (recoveredBlock604Value10) height: (recoveredBlock604Value13).
    recoveredBlock604Value14 := recoveredLocal13.
    recoveredBlock604Value15 := (80) * (recoveredBlock604Value14).
    recoveredBlock604Value16 := (recoveredBlock604Value15) rounded.
    recoveredBlock604Value17 := (recoveredBlock604Value0) width: (recoveredBlock604Value16).
    recoveredBlock604Value17
].
            recoveredPC := 665.
        ].
        recoveredStep = 665 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 669.
        ].
        recoveredStep = 669 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 671.
        ].
        recoveredStep = 671 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 674.
        ].
        recoveredStep = 674 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 677.
        ].
        recoveredStep = 677 ifTrue: [
            recoveredStack2 := 'cancelButton'.
            recoveredPC := 680.
        ].
        recoveredStep = 680 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 683.
        ].
        recoveredStep = 683 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 685.
        ].
        recoveredStep = 685 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 688.
        ].
        recoveredStep = 688 ifTrue: [
            recoveredStack2 := [:recoveredBlock688Arg1 | 
    | recoveredBlock688Value0 recoveredBlock688Value1 recoveredBlock688Value2 |
    recoveredBlock688Value0 := recoveredBlock688Arg1.
    recoveredBlock688Value1 := recoveredLocal9.
    recoveredBlock688Value2 := (recoveredBlock688Value0) workWindow: (recoveredBlock688Value1).
    recoveredBlock688Value2
].
            recoveredPC := 704.
        ].
        recoveredStep = 704 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 709.
        ].
        recoveredStep = 709 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 712.
        ].
        recoveredStep = 712 ifTrue: [
            recoveredStack2 := [:recoveredBlock712Arg1 | 
    | recoveredBlock712Value0 recoveredBlock712Value1 recoveredBlock712Value2 recoveredBlock712Value3 recoveredBlock712Value4 recoveredBlock712Value5 recoveredBlock712Value6 recoveredBlock712Value7 recoveredBlock712Value8 recoveredBlock712Value9 recoveredBlock712Value10 recoveredBlock712Value11 recoveredBlock712Value12 recoveredBlock712Value13 recoveredBlock712Value14 recoveredBlock712Value15 recoveredBlock712Value16 |
    recoveredBlock712Value0 := recoveredBlock712Arg1.
    recoveredBlock712Value1 := recoveredBlock712Value0.
    recoveredBlock712Value2 := recoveredLocal13.
    recoveredBlock712Value3 := (20) * (recoveredBlock712Value2).
    recoveredBlock712Value4 := (recoveredBlock712Value3) rounded.
    (recoveredBlock712Value1) x: (recoveredBlock712Value4).
    recoveredBlock712Value5 := recoveredBlock712Value0.
    recoveredBlock712Value6 := recoveredLocal12.
    recoveredBlock712Value7 := (30) * (recoveredBlock712Value6).
    recoveredBlock712Value8 := (recoveredBlock712Value7) rounded.
    (recoveredBlock712Value5) y: (recoveredBlock712Value8).
    recoveredBlock712Value9 := recoveredBlock712Value0.
    recoveredBlock712Value10 := recoveredLocal12.
    recoveredBlock712Value11 := (290) * (recoveredBlock712Value10).
    recoveredBlock712Value12 := (recoveredBlock712Value11) rounded.
    (recoveredBlock712Value9) height: (recoveredBlock712Value12).
    recoveredBlock712Value13 := recoveredLocal13.
    recoveredBlock712Value14 := (420) * (recoveredBlock712Value13).
    recoveredBlock712Value15 := (recoveredBlock712Value14) rounded.
    recoveredBlock712Value16 := (recoveredBlock712Value0) width: (recoveredBlock712Value15).
    recoveredBlock712Value16
].
            recoveredPC := 767.
        ].
        recoveredStep = 767 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 771.
        ].
        recoveredStep = 771 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 774.
        ].
        recoveredStep = 774 ifTrue: [
            recoveredStack2 := [:block281278b8Arg1 | 
    | block281278b8Value0 block281278b8Value1 block281278b8Value2 block281278b8Value3 block281278b8Value4 block281278b8Value5 block281278b8Value6 |
    block281278b8Value0 := block281278b8Arg1.
    block281278b8Value1 := block281278b8Value0.
    block281278b8Value2 := XmATTACHFORM.
    (block281278b8Value1) leftAttachment: (block281278b8Value2).
    block281278b8Value3 := block281278b8Value0.
    (block281278b8Value3) leftOffset: (5).
    block281278b8Value4 := block281278b8Value0.
    block281278b8Value5 := XmATTACHFORM.
    (block281278b8Value4) topAttachment: (block281278b8Value5).
    block281278b8Value6 := (block281278b8Value0) topOffset: (5).
    block281278b8Value6
].
            recoveredPC := 778.
        ].
        recoveredStep = 778 ifTrue: [
            recoveredPC := 814.
        ].
        recoveredStep = 814 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 819.
        ].
        recoveredStep = 819 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 822.
        ].
        recoveredStep = 822 ifTrue: [
            recoveredStack2 := [:block281278dcArg1 | 
    | block281278dcValue0 block281278dcValue1 block281278dcValue2 block281278dcValue3 block281278dcValue4 block281278dcValue5 block281278dcValue6 |
    block281278dcValue0 := block281278dcArg1.
    block281278dcValue1 := block281278dcValue0.
    block281278dcValue2 := XmATTACHFORM.
    (block281278dcValue1) rightAttachment: (block281278dcValue2).
    block281278dcValue3 := block281278dcValue0.
    (block281278dcValue3) rightOffset: (10).
    block281278dcValue4 := block281278dcValue0.
    block281278dcValue5 := XmATTACHFORM.
    (block281278dcValue4) topAttachment: (block281278dcValue5).
    block281278dcValue6 := (block281278dcValue0) topOffset: (30).
    block281278dcValue6
].
            recoveredPC := 826.
        ].
        recoveredStep = 826 ifTrue: [
            recoveredPC := 862.
        ].
        recoveredStep = 862 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 867.
        ].
        recoveredStep = 867 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 870.
        ].
        recoveredStep = 870 ifTrue: [
            recoveredStack2 := [:recoveredBlock870Arg1 | 
    | recoveredBlock870Value0 recoveredBlock870Value1 recoveredBlock870Value2 recoveredBlock870Value3 recoveredBlock870Value4 recoveredBlock870Value5 recoveredBlock870Value6 recoveredBlock870Value7 recoveredBlock870Value8 recoveredBlock870Value9 |
    recoveredBlock870Value0 := recoveredBlock870Arg1.
    recoveredBlock870Value1 := recoveredBlock870Value0.
    recoveredBlock870Value2 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock870Value1) rightAttachment: (recoveredBlock870Value2).
    recoveredBlock870Value3 := recoveredBlock870Value0.
    recoveredBlock870Value4 := recoveredLocal2.
    (recoveredBlock870Value3) rightWidget: (recoveredBlock870Value4).
    recoveredBlock870Value5 := recoveredBlock870Value0.
    recoveredBlock870Value6 := XmATTACHWIDGET.
    (recoveredBlock870Value5) topAttachment: (recoveredBlock870Value6).
    recoveredBlock870Value7 := recoveredBlock870Value0.
    recoveredBlock870Value8 := recoveredLocal2.
    (recoveredBlock870Value7) topWidget: (recoveredBlock870Value8).
    recoveredBlock870Value9 := (recoveredBlock870Value0) topOffset: (10).
    recoveredBlock870Value9
].
            recoveredPC := 918.
        ].
        recoveredStep = 918 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 923.
        ].
        recoveredStep = 923 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 926.
        ].
        recoveredStep = 926 ifTrue: [
            recoveredStack2 := [:recoveredBlock926Arg1 | 
    | recoveredBlock926Value0 recoveredBlock926Value1 recoveredBlock926Value2 recoveredBlock926Value3 recoveredBlock926Value4 recoveredBlock926Value5 recoveredBlock926Value6 recoveredBlock926Value7 recoveredBlock926Value8 recoveredBlock926Value9 recoveredBlock926Value10 recoveredBlock926Value11 |
    recoveredBlock926Value0 := recoveredBlock926Arg1.
    recoveredBlock926Value1 := recoveredBlock926Value0.
    recoveredBlock926Value2 := XmATTACHWIDGET.
    (recoveredBlock926Value1) rightAttachment: (recoveredBlock926Value2).
    recoveredBlock926Value3 := recoveredBlock926Value0.
    recoveredBlock926Value4 := recoveredLocal2.
    (recoveredBlock926Value3) rightWidget: (recoveredBlock926Value4).
    recoveredBlock926Value5 := recoveredBlock926Value0.
    (recoveredBlock926Value5) rightOffset: (10).
    recoveredBlock926Value6 := recoveredBlock926Value0.
    recoveredBlock926Value7 := XmATTACHFORM.
    (recoveredBlock926Value6) topAttachment: (recoveredBlock926Value7).
    recoveredBlock926Value8 := recoveredBlock926Value0.
    (recoveredBlock926Value8) topOffset: (5).
    recoveredBlock926Value9 := recoveredBlock926Value0.
    recoveredBlock926Value10 := XmATTACHFORM.
    (recoveredBlock926Value9) bottomAttachment: (recoveredBlock926Value10).
    recoveredBlock926Value11 := (recoveredBlock926Value0) bottomOffset: (5).
    recoveredBlock926Value11
].
            recoveredPC := 986.
        ].
        recoveredStep = 986 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 991.
        ].
        recoveredStep = 991 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 994.
        ].
        recoveredStep = 994 ifTrue: [
            recoveredStack2 := [:recoveredBlock994Arg1 | 
    | recoveredBlock994Value0 recoveredBlock994Value1 recoveredBlock994Value2 recoveredBlock994Value3 recoveredBlock994Value4 recoveredBlock994Value5 recoveredBlock994Value6 recoveredBlock994Value7 recoveredBlock994Value8 recoveredBlock994Value9 recoveredBlock994Value10 recoveredBlock994Value11 recoveredBlock994Value12 recoveredBlock994Value13 recoveredBlock994Value14 recoveredBlock994Value15 recoveredBlock994Value16 recoveredBlock994Value17 |
    recoveredBlock994Value0 := recoveredBlock994Arg1.
    recoveredBlock994Value1 := recoveredBlock994Value0.
    recoveredBlock994Value2 := XmATTACHWIDGET.
    (recoveredBlock994Value1) topAttachment: (recoveredBlock994Value2).
    recoveredBlock994Value3 := recoveredBlock994Value0.
    recoveredBlock994Value4 := recoveredLocal6.
    (recoveredBlock994Value3) topWidget: (recoveredBlock994Value4).
    recoveredBlock994Value5 := recoveredBlock994Value0.
    recoveredBlock994Value6 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock994Value5) leftAttachment: (recoveredBlock994Value6).
    recoveredBlock994Value7 := recoveredBlock994Value0.
    recoveredBlock994Value8 := recoveredLocal6.
    (recoveredBlock994Value7) leftWidget: (recoveredBlock994Value8).
    recoveredBlock994Value9 := recoveredBlock994Value0.
    recoveredBlock994Value10 := XmATTACHWIDGET.
    (recoveredBlock994Value9) rightAttachment: (recoveredBlock994Value10).
    recoveredBlock994Value11 := recoveredBlock994Value0.
    (recoveredBlock994Value11) rightOffset: (10).
    recoveredBlock994Value12 := recoveredBlock994Value0.
    recoveredBlock994Value13 := recoveredLocal4.
    (recoveredBlock994Value12) rightWidget: (recoveredBlock994Value13).
    recoveredBlock994Value14 := recoveredBlock994Value0.
    recoveredBlock994Value15 := XmATTACHWIDGET.
    (recoveredBlock994Value14) bottomAttachment: (recoveredBlock994Value15).
    recoveredBlock994Value16 := recoveredLocal5.
    recoveredBlock994Value17 := (recoveredBlock994Value0) bottomWidget: (recoveredBlock994Value16).
    recoveredBlock994Value17
].
            recoveredPC := 1074.
        ].
        recoveredStep = 1074 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1079.
        ].
        recoveredStep = 1079 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 1082.
        ].
        recoveredStep = 1082 ifTrue: [
            recoveredStack2 := [:recoveredBlock1082Arg1 | 
    | recoveredBlock1082Value0 recoveredBlock1082Value1 recoveredBlock1082Value2 recoveredBlock1082Value3 recoveredBlock1082Value4 recoveredBlock1082Value5 recoveredBlock1082Value6 recoveredBlock1082Value7 recoveredBlock1082Value8 |
    recoveredBlock1082Value0 := recoveredBlock1082Arg1.
    recoveredBlock1082Value1 := recoveredBlock1082Value0.
    recoveredBlock1082Value2 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock1082Value1) leftAttachment: (recoveredBlock1082Value2).
    recoveredBlock1082Value3 := recoveredBlock1082Value0.
    recoveredBlock1082Value4 := recoveredLocal3.
    (recoveredBlock1082Value3) leftWidget: (recoveredBlock1082Value4).
    recoveredBlock1082Value5 := recoveredBlock1082Value0.
    recoveredBlock1082Value6 := XmATTACHWIDGET.
    (recoveredBlock1082Value5) bottomAttachment: (recoveredBlock1082Value6).
    recoveredBlock1082Value7 := recoveredLocal3.
    recoveredBlock1082Value8 := (recoveredBlock1082Value0) bottomWidget: (recoveredBlock1082Value7).
    recoveredBlock1082Value8
].
            recoveredPC := 1124.
        ].
        recoveredStep = 1124 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1129.
        ].
        recoveredStep = 1129 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 1132.
        ].
        recoveredStep = 1132 ifTrue: [
            recoveredStack2 := [:recoveredBlock1132Arg1 | 
    | recoveredBlock1132Value0 recoveredBlock1132Value1 recoveredBlock1132Value2 recoveredBlock1132Value3 recoveredBlock1132Value4 recoveredBlock1132Value5 recoveredBlock1132Value6 recoveredBlock1132Value7 recoveredBlock1132Value8 recoveredBlock1132Value9 recoveredBlock1132Value10 recoveredBlock1132Value11 |
    recoveredBlock1132Value0 := recoveredBlock1132Arg1.
    recoveredBlock1132Value1 := recoveredBlock1132Value0.
    recoveredBlock1132Value2 := XmATTACHFORM.
    (recoveredBlock1132Value1) leftAttachment: (recoveredBlock1132Value2).
    recoveredBlock1132Value3 := recoveredBlock1132Value0.
    (recoveredBlock1132Value3) leftOffset: (5).
    recoveredBlock1132Value4 := recoveredBlock1132Value0.
    recoveredBlock1132Value5 := XmATTACHFORM.
    (recoveredBlock1132Value4) bottomAttachment: (recoveredBlock1132Value5).
    recoveredBlock1132Value6 := recoveredBlock1132Value0.
    (recoveredBlock1132Value6) bottomOffset: (10).
    recoveredBlock1132Value7 := recoveredBlock1132Value0.
    recoveredBlock1132Value8 := XmATTACHWIDGET.
    (recoveredBlock1132Value7) rightAttachment: (recoveredBlock1132Value8).
    recoveredBlock1132Value9 := recoveredBlock1132Value0.
    recoveredBlock1132Value10 := recoveredLocal4.
    (recoveredBlock1132Value9) rightWidget: (recoveredBlock1132Value10).
    recoveredBlock1132Value11 := (recoveredBlock1132Value0) rightOffset: (10).
    recoveredBlock1132Value11
].
            recoveredPC := 1192.
        ].
        recoveredStep = 1192 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1197.
        ].
        recoveredStep = 1197 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 1200.
        ].
        recoveredStep = 1200 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 1204.
        ].
        recoveredStep = 1204 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1205.
        ].
        recoveredStep = 1205 ifTrue: [
            recoveredStack4 := 'ok:clientData:callData:'.
            recoveredPC := 1208.
        ].
        recoveredStep = 1208 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1209.
        ].
        recoveredStep = 1209 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1213.
        ].
        recoveredStep = 1213 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1216.
        ].
        recoveredStep = 1216 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 1220.
        ].
        recoveredStep = 1220 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1221.
        ].
        recoveredStep = 1221 ifTrue: [
            recoveredStack4 := 'cancel:clientData:callData:'.
            recoveredPC := 1224.
        ].
        recoveredStep = 1224 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1225.
        ].
        recoveredStep = 1225 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1229.
        ].
        recoveredStep = 1229 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 1232.
        ].
        recoveredStep = 1232 ifTrue: [
            recoveredStack2 := recoveredLocal14.
            recoveredPC := 1235.
        ].
        recoveredStep = 1235 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 1238.
        ].
        recoveredStep = 1238 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 1243.
        ].
        recoveredStep = 1243 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

