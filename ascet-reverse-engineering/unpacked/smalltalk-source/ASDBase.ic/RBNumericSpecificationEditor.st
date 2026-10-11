"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200015a8; bytecode file offset 0x8ffcfc"
!RBNumericSpecificationEditor methodsFor: 'recovered'!
updateContents
    ^self
! !

"ASDBase.ic method 0x2000617c; bytecode file offset 0x902de8"
!RBNumericSpecificationEditor methodsFor: 'recovered'!
dataValueModify: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    ^self
! !

"ASDBase.ic method 0x2001ab28; bytecode file offset 0x92209c"
!RBNumericSpecificationEditor methodsFor: 'recovered'!
defaultIcon
    ^'EditorEECalibrationNumeric32'
! !

"ASDBase.ic method 0x20042e9c; bytecode file offset 0x9451f8"
!RBNumericSpecificationEditor methodsFor: 'recovered'!
buttonCancel
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('buttonCancel').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004661c; bytecode file offset 0x9451f8"
!RBNumericSpecificationEditor methodsFor: 'recovered'!
buttonOK
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('buttonOk').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004685c; bytecode file offset 0x9451f8"
!RBNumericSpecificationEditor methodsFor: 'recovered'!
wNameText
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('wNameText').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20046f6c; bytecode file offset 0x9451f8"
!RBNumericSpecificationEditor methodsFor: 'recovered'!
widgetDataValue
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('dataValue').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004726c; bytecode file offset 0x9451f8"
!RBNumericSpecificationEditor methodsFor: 'recovered'!
widgetDataLabel
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('wNameText').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004742c; bytecode file offset 0x9451f8"
!RBNumericSpecificationEditor methodsFor: 'recovered'!
dataValue
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('dataValue').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2005a7dc; bytecode file offset 0x957a6c"
!RBNumericSpecificationEditor methodsFor: 'recovered'!
buttonOkActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) ok.
    ^self
! !

"ASDBase.ic method 0x2005aeb4; bytecode file offset 0x957a6c"
!RBNumericSpecificationEditor methodsFor: 'recovered'!
buttonCancelActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) cancel.
    ^self
! !

"ASDBase.ic method 0x20074564; bytecode file offset 0x970e20"
!RBNumericSpecificationEditor methodsFor: 'recovered'!
defaultWidth
    ^264
! !

"ASDBase.ic method 0x200807c4; bytecode file offset 0x97d0b0"
!RBNumericSpecificationEditor methodsFor: 'recovered'!
defaultHeight
    ^70
! !

"ASDBase.ic method 0x200afb18; bytecode file offset 0x9ac3f4"
!RBNumericSpecificationEditor methodsFor: 'recovered'!
cancel
    (self) dataElement: (nil).
    (self) close.
    ^self
! !

"ASDBase.ic method 0x200de790; bytecode file offset 0x9db074"
!RBNumericSpecificationEditor methodsFor: 'recovered'!
dataValueLosing: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) dataElement.
    recoveredValue1 := (self) widgetDataValue.
    recoveredValue2 := (recoveredValue1) value.
    recoveredValue3 := (recoveredValue2) asIntegerOrFloatOrFraction.
    (recoveredValue0) setPhysValue: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x201032d4; bytecode file offset 0x9ffb9c"
!RBNumericSpecificationEditor methodsFor: 'recovered'!
setCharacterMethod
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) dataElement.
    recoveredValue1 := (recoveredValue0) getPhysType.
    recoveredValue2 := (recoveredValue1) getCharacterFilter.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := (self) widgetDataValue.
    recoveredValue4 := recoveredLocal1.
    (recoveredValue3) characterMethod: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20135c68; bytecode file offset 0xa32544"
!RBNumericSpecificationEditor methodsFor: 'recovered'!
manage: recoveredArg1 for: recoveredArg2 with: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    super manage: (recoveredValue0) for: (recoveredValue1) with: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) first.
    (self) dataElement: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x201e3938; bytecode file offset 0xae020c"
!RBNumericSpecificationEditor methodsFor: 'recovered'!
ok
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) writeProtection.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) cancel.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetDataValue.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIntegerOrFloatOrFraction.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) setPhysValue: (recoveredStack1).
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

"ASDBase.ic method 0x20253754; bytecode file offset 0xb50058"
!RBNumericSpecificationEditor methodsFor: 'recovered'!
prompt
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
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
            recoveredPC := 18.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := OSWidget.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) readAndDispatch.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDestroyed.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20291600; bytecode file offset 0xb8dee8"
!RBNumericSpecificationEditor methodsFor: 'recovered'!
updateWidgets
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    (self) setCharacterMethod.
    recoveredValue0 := (self) dataElement.
    recoveredValue1 := (recoveredValue0) getPhysValue.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) widgetDataLabel.
    recoveredValue3 := (self) dataElement.
    recoveredValue4 := (recoveredValue3) wName.
    (recoveredValue2) labelString: (recoveredValue4).
    recoveredValue5 := (self) widgetDataValue.
    recoveredValue6 := recoveredValue5.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (recoveredValue7) printString.
    (recoveredValue6) value: (recoveredValue8).
    recoveredValue9 := recoveredValue5.
    recoveredValue10 := (self) widgetDataValue.
    recoveredValue11 := (recoveredValue10) getLastPosition.
    recoveredValue12 := (0) @ (recoveredValue11).
    (recoveredValue9) setSelection: (recoveredValue12).
    (recoveredValue5) setInputFocus.
    ^self
! !

"ASDBase.ic method 0x203192c8; bytecode file offset 0xc15bec"
!RBNumericSpecificationEditor methodsFor: 'recovered'!
installActionKeys
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := (self) globalActionKeys.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := XKCancel.
    (recoveredValue4) at: (recoveredValue5) put: ('cancel').
    recoveredValue6 := recoveredValue3.
    recoveredValue7 := Character.
    recoveredValue8 := (recoveredValue7) value: (13).
    (recoveredValue6) at: (recoveredValue8) put: ('ok').
    recoveredValue9 := recoveredValue3.
    (recoveredValue9) at: ('Alt-o') put: ('ok').
    recoveredValue10 := recoveredValue3.
    (recoveredValue10) at: ('Alt-c') put: ('cancel').
    recoveredValue11 := recoveredLocal2.
    recoveredValue12 := (self) shell.
    recoveredValue13 := recoveredLocal1.
    (recoveredValue11) at: (recoveredValue12) put: (recoveredValue13).
    recoveredValue14 := recoveredLocal2.
    (self) widgetKeyActions: (recoveredValue14).
    ^self
! !

"ASDBase.ic method 0x2033a3a0; bytecode file offset 0xc36c9c"
!RBNumericSpecificationEditor methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    (self) grayBackground.
    (self) installActionKeys.
    recoveredValue0 := (self) class.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) defaultMinSize.
    (recoveredValue0) minSize: (recoveredValue2).
    (self) iconSmall: ('EditorEECalibrationNumeric') large: ('EditorEECalibrationNumeric32').
    recoveredValue3 := (self) defaultLabel.
    (self) title: (recoveredValue3).
    (self) makeAlwaysOnTop: (true).
    recoveredValue4 := (self) buttonOK.
    recoveredValue5 := SCOk.
    (recoveredValue4) labelString: (recoveredValue5).
    recoveredValue6 := (self) buttonCancel.
    recoveredValue7 := SCCancel.
    (recoveredValue6) labelString: (recoveredValue7).
    (self) updateWidgets.
    recoveredValue8 := (self) class.
    recoveredValue9 := (self) class.
    recoveredValue10 := (recoveredValue9) defaultMinSize.
    (recoveredValue8) minSize: (recoveredValue10).
    (self) updateFonts.
    ^self
! !

"ASDBase.ic method 0x2065462c; bytecode file offset 0xf51010"
!RBNumericSpecificationEditor methodsFor: 'recovered'!
createWidgetHierarchy
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
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
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal9 := recoveredStack1.
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
    | recoveredBlock24Value0 recoveredBlock24Value1 recoveredBlock24Value2 recoveredBlock24Value3 recoveredBlock24Value4 recoveredBlock24Value5 recoveredBlock24Value6 recoveredBlock24Value7 recoveredBlock24Value8 recoveredBlock24Value9 recoveredBlock24Value10 recoveredBlock24Value11 recoveredBlock24Value12 recoveredBlock24Value13 recoveredBlock24Value14 recoveredBlock24Value15 |
    recoveredBlock24Value0 := recoveredBlock24Arg1.
    recoveredBlock24Value1 := recoveredBlock24Value0.
    (recoveredBlock24Value1) title: ('DataScalar-Editor').
    recoveredBlock24Value2 := recoveredBlock24Value0.
    recoveredBlock24Value3 := recoveredLocal9.
    recoveredBlock24Value4 := (70) * (recoveredBlock24Value3).
    recoveredBlock24Value5 := (recoveredBlock24Value4) rounded.
    (recoveredBlock24Value2) height: (recoveredBlock24Value5).
    recoveredBlock24Value6 := recoveredBlock24Value0.
    recoveredBlock24Value7 := MWMDECORBORDER.
    recoveredBlock24Value8 := MWMDECORTITLE.
    recoveredBlock24Value9 := (recoveredBlock24Value7) | (recoveredBlock24Value8).
    recoveredBlock24Value10 := MWMDECORMENU.
    recoveredBlock24Value11 := (recoveredBlock24Value9) | (recoveredBlock24Value10).
    (recoveredBlock24Value6) mwmDecorations: (recoveredBlock24Value11).
    recoveredBlock24Value12 := recoveredLocal10.
    recoveredBlock24Value13 := (264) * (recoveredBlock24Value12).
    recoveredBlock24Value14 := (recoveredBlock24Value13) rounded.
    recoveredBlock24Value15 := (recoveredBlock24Value0) width: (recoveredBlock24Value14).
    recoveredBlock24Value15
].
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) createApplicationShell: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := 'mainWindow'.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := recoveredLocal8.
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
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack2 := 'wNameText'.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack3 := [:recoveredBlock139Arg1 | 
    | recoveredBlock139Value0 recoveredBlock139Value1 recoveredBlock139Value2 recoveredBlock139Value3 recoveredBlock139Value4 recoveredBlock139Value5 recoveredBlock139Value6 recoveredBlock139Value7 recoveredBlock139Value8 recoveredBlock139Value9 recoveredBlock139Value10 recoveredBlock139Value11 recoveredBlock139Value12 recoveredBlock139Value13 recoveredBlock139Value14 recoveredBlock139Value15 recoveredBlock139Value16 recoveredBlock139Value17 recoveredBlock139Value18 recoveredBlock139Value19 |
    recoveredBlock139Value0 := recoveredBlock139Arg1.
    recoveredBlock139Value1 := recoveredBlock139Value0.
    recoveredBlock139Value2 := recoveredLocal10.
    recoveredBlock139Value3 := (5) * (recoveredBlock139Value2).
    recoveredBlock139Value4 := (recoveredBlock139Value3) rounded.
    (recoveredBlock139Value1) x: (recoveredBlock139Value4).
    recoveredBlock139Value5 := recoveredBlock139Value0.
    recoveredBlock139Value6 := XmALIGNMENTBEGINNING.
    (recoveredBlock139Value5) alignment: (recoveredBlock139Value6).
    recoveredBlock139Value7 := recoveredBlock139Value0.
    (recoveredBlock139Value7) labelString: ('Kennwert').
    recoveredBlock139Value8 := recoveredBlock139Value0.
    recoveredBlock139Value9 := recoveredLocal9.
    recoveredBlock139Value10 := (5) * (recoveredBlock139Value9).
    recoveredBlock139Value11 := (recoveredBlock139Value10) rounded.
    (recoveredBlock139Value8) y: (recoveredBlock139Value11).
    recoveredBlock139Value12 := recoveredBlock139Value0.
    recoveredBlock139Value13 := recoveredLocal9.
    recoveredBlock139Value14 := (20) * (recoveredBlock139Value13).
    recoveredBlock139Value15 := (recoveredBlock139Value14) rounded.
    (recoveredBlock139Value12) height: (recoveredBlock139Value15).
    recoveredBlock139Value16 := recoveredLocal10.
    recoveredBlock139Value17 := (125) * (recoveredBlock139Value16).
    recoveredBlock139Value18 := (recoveredBlock139Value17) rounded.
    recoveredBlock139Value19 := (recoveredBlock139Value0) width: (recoveredBlock139Value18).
    recoveredBlock139Value19
].
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack2 := 'wNameText'.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack2 := 'buttonOk'.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack3 := [:recoveredBlock225Arg1 | 
    | recoveredBlock225Value0 recoveredBlock225Value1 recoveredBlock225Value2 recoveredBlock225Value3 recoveredBlock225Value4 recoveredBlock225Value5 recoveredBlock225Value6 recoveredBlock225Value7 recoveredBlock225Value8 recoveredBlock225Value9 recoveredBlock225Value10 recoveredBlock225Value11 recoveredBlock225Value12 recoveredBlock225Value13 recoveredBlock225Value14 recoveredBlock225Value15 recoveredBlock225Value16 recoveredBlock225Value17 |
    recoveredBlock225Value0 := recoveredBlock225Arg1.
    recoveredBlock225Value1 := recoveredBlock225Value0.
    recoveredBlock225Value2 := recoveredLocal10.
    recoveredBlock225Value3 := (185) * (recoveredBlock225Value2).
    recoveredBlock225Value4 := (recoveredBlock225Value3) rounded.
    (recoveredBlock225Value1) x: (recoveredBlock225Value4).
    recoveredBlock225Value5 := recoveredBlock225Value0.
    (recoveredBlock225Value5) labelString: ('Ok').
    recoveredBlock225Value6 := recoveredBlock225Value0.
    recoveredBlock225Value7 := recoveredLocal9.
    recoveredBlock225Value8 := (5) * (recoveredBlock225Value7).
    recoveredBlock225Value9 := (recoveredBlock225Value8) rounded.
    (recoveredBlock225Value6) y: (recoveredBlock225Value9).
    recoveredBlock225Value10 := recoveredBlock225Value0.
    recoveredBlock225Value11 := recoveredLocal9.
    recoveredBlock225Value12 := (25) * (recoveredBlock225Value11).
    recoveredBlock225Value13 := (recoveredBlock225Value12) rounded.
    (recoveredBlock225Value10) height: (recoveredBlock225Value13).
    recoveredBlock225Value14 := recoveredLocal10.
    recoveredBlock225Value15 := (85) * (recoveredBlock225Value14).
    recoveredBlock225Value16 := (recoveredBlock225Value15) rounded.
    recoveredBlock225Value17 := (recoveredBlock225Value0) width: (recoveredBlock225Value16).
    recoveredBlock225Value17
].
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack2 := 'buttonOk'.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack2 := 'buttonCancel'.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack3 := [:recoveredBlock307Arg1 | 
    | recoveredBlock307Value0 recoveredBlock307Value1 recoveredBlock307Value2 recoveredBlock307Value3 recoveredBlock307Value4 recoveredBlock307Value5 recoveredBlock307Value6 recoveredBlock307Value7 recoveredBlock307Value8 recoveredBlock307Value9 recoveredBlock307Value10 recoveredBlock307Value11 recoveredBlock307Value12 recoveredBlock307Value13 recoveredBlock307Value14 recoveredBlock307Value15 recoveredBlock307Value16 recoveredBlock307Value17 |
    recoveredBlock307Value0 := recoveredBlock307Arg1.
    recoveredBlock307Value1 := recoveredBlock307Value0.
    recoveredBlock307Value2 := recoveredLocal10.
    recoveredBlock307Value3 := (185) * (recoveredBlock307Value2).
    recoveredBlock307Value4 := (recoveredBlock307Value3) rounded.
    (recoveredBlock307Value1) x: (recoveredBlock307Value4).
    recoveredBlock307Value5 := recoveredBlock307Value0.
    (recoveredBlock307Value5) labelString: ('Cancel').
    recoveredBlock307Value6 := recoveredBlock307Value0.
    recoveredBlock307Value7 := recoveredLocal9.
    recoveredBlock307Value8 := (40) * (recoveredBlock307Value7).
    recoveredBlock307Value9 := (recoveredBlock307Value8) rounded.
    (recoveredBlock307Value6) y: (recoveredBlock307Value9).
    recoveredBlock307Value10 := recoveredBlock307Value0.
    recoveredBlock307Value11 := recoveredLocal9.
    recoveredBlock307Value12 := (25) * (recoveredBlock307Value11).
    recoveredBlock307Value13 := (recoveredBlock307Value12) rounded.
    (recoveredBlock307Value10) height: (recoveredBlock307Value13).
    recoveredBlock307Value14 := recoveredLocal10.
    recoveredBlock307Value15 := (85) * (recoveredBlock307Value14).
    recoveredBlock307Value16 := (recoveredBlock307Value15) rounded.
    recoveredBlock307Value17 := (recoveredBlock307Value0) width: (recoveredBlock307Value16).
    recoveredBlock307Value17
].
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 371.
        ].
        recoveredStep = 371 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 374.
        ].
        recoveredStep = 374 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            recoveredStack2 := 'buttonCancel'.
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 384.
        ].
        recoveredStep = 384 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            recoveredStack2 := 'aSeparator1'.
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            recoveredStack3 := [:recoveredBlock389Arg1 | 
    | recoveredBlock389Value0 recoveredBlock389Value1 recoveredBlock389Value2 recoveredBlock389Value3 recoveredBlock389Value4 recoveredBlock389Value5 recoveredBlock389Value6 recoveredBlock389Value7 recoveredBlock389Value8 recoveredBlock389Value9 recoveredBlock389Value10 recoveredBlock389Value11 recoveredBlock389Value12 recoveredBlock389Value13 recoveredBlock389Value14 |
    recoveredBlock389Value0 := recoveredBlock389Arg1.
    recoveredBlock389Value1 := recoveredBlock389Value0.
    recoveredBlock389Value2 := recoveredLocal10.
    recoveredBlock389Value3 := (170) * (recoveredBlock389Value2).
    recoveredBlock389Value4 := (recoveredBlock389Value3) rounded.
    (recoveredBlock389Value1) x: (recoveredBlock389Value4).
    recoveredBlock389Value5 := recoveredBlock389Value0.
    recoveredBlock389Value6 := XmVERTICAL.
    (recoveredBlock389Value5) orientation: (recoveredBlock389Value6).
    recoveredBlock389Value7 := recoveredBlock389Value0.
    recoveredBlock389Value8 := recoveredLocal9.
    recoveredBlock389Value9 := (70) * (recoveredBlock389Value8).
    recoveredBlock389Value10 := (recoveredBlock389Value9) rounded.
    (recoveredBlock389Value7) height: (recoveredBlock389Value10).
    recoveredBlock389Value11 := recoveredLocal10.
    recoveredBlock389Value12 := (10) * (recoveredBlock389Value11).
    recoveredBlock389Value13 := (recoveredBlock389Value12) rounded.
    recoveredBlock389Value14 := (recoveredBlock389Value0) width: (recoveredBlock389Value13).
    recoveredBlock389Value14
].
            recoveredPC := 439.
        ].
        recoveredStep = 439 ifTrue: [
            recoveredStack1 := (recoveredStack1) createSeparator: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 441.
        ].
        recoveredStep = 441 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 443.
        ].
        recoveredStep = 443 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 446.
        ].
        recoveredStep = 446 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 449.
        ].
        recoveredStep = 449 ifTrue: [
            recoveredStack2 := 'aSeparator1'.
            recoveredPC := 451.
        ].
        recoveredStep = 451 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 454.
        ].
        recoveredStep = 454 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 456.
        ].
        recoveredStep = 456 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 459.
        ].
        recoveredStep = 459 ifTrue: [
            recoveredStack2 := 'dataValue'.
            recoveredPC := 461.
        ].
        recoveredStep = 461 ifTrue: [
            recoveredStack3 := [:recoveredBlock461Arg1 | 
    | recoveredBlock461Value0 recoveredBlock461Value1 recoveredBlock461Value2 recoveredBlock461Value3 recoveredBlock461Value4 recoveredBlock461Value5 recoveredBlock461Value6 recoveredBlock461Value7 recoveredBlock461Value8 recoveredBlock461Value9 recoveredBlock461Value10 recoveredBlock461Value11 recoveredBlock461Value12 recoveredBlock461Value13 recoveredBlock461Value14 recoveredBlock461Value15 recoveredBlock461Value16 |
    recoveredBlock461Value0 := recoveredBlock461Arg1.
    recoveredBlock461Value1 := recoveredBlock461Value0.
    recoveredBlock461Value2 := recoveredLocal9.
    recoveredBlock461Value3 := (40) * (recoveredBlock461Value2).
    recoveredBlock461Value4 := (recoveredBlock461Value3) rounded.
    (recoveredBlock461Value1) y: (recoveredBlock461Value4).
    recoveredBlock461Value5 := recoveredBlock461Value0.
    recoveredBlock461Value6 := recoveredLocal10.
    recoveredBlock461Value7 := (5) * (recoveredBlock461Value6).
    recoveredBlock461Value8 := (recoveredBlock461Value7) rounded.
    (recoveredBlock461Value5) x: (recoveredBlock461Value8).
    recoveredBlock461Value9 := recoveredBlock461Value0.
    recoveredBlock461Value10 := recoveredLocal9.
    recoveredBlock461Value11 := (20) * (recoveredBlock461Value10).
    recoveredBlock461Value12 := (recoveredBlock461Value11) rounded.
    (recoveredBlock461Value9) height: (recoveredBlock461Value12).
    recoveredBlock461Value13 := recoveredLocal10.
    recoveredBlock461Value14 := (150) * (recoveredBlock461Value13).
    recoveredBlock461Value15 := (recoveredBlock461Value14) rounded.
    recoveredBlock461Value16 := (recoveredBlock461Value0) width: (recoveredBlock461Value15).
    recoveredBlock461Value16
].
            recoveredPC := 515.
        ].
        recoveredStep = 515 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEnhancedText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 517.
        ].
        recoveredStep = 517 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 519.
        ].
        recoveredStep = 519 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 522.
        ].
        recoveredStep = 522 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 525.
        ].
        recoveredStep = 525 ifTrue: [
            recoveredStack2 := 'dataValue'.
            recoveredPC := 527.
        ].
        recoveredStep = 527 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 530.
        ].
        recoveredStep = 530 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 532.
        ].
        recoveredStep = 532 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 535.
        ].
        recoveredStep = 535 ifTrue: [
            recoveredStack2 := [:recoveredBlock535Arg1 | 
    | recoveredBlock535Value0 recoveredBlock535Value1 recoveredBlock535Value2 |
    recoveredBlock535Value0 := recoveredBlock535Arg1.
    recoveredBlock535Value1 := recoveredLocal6.
    recoveredBlock535Value2 := (recoveredBlock535Value0) workWindow: (recoveredBlock535Value1).
    recoveredBlock535Value2
].
            recoveredPC := 549.
        ].
        recoveredStep = 549 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 551.
        ].
        recoveredStep = 551 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 554.
        ].
        recoveredStep = 554 ifTrue: [
            recoveredStack2 := [:recoveredBlock554Arg1 | 
    | recoveredBlock554Value0 recoveredBlock554Value1 recoveredBlock554Value2 recoveredBlock554Value3 recoveredBlock554Value4 |
    recoveredBlock554Value0 := recoveredBlock554Arg1.
    recoveredBlock554Value1 := recoveredBlock554Value0.
    recoveredBlock554Value2 := recoveredLocal3.
    (recoveredBlock554Value1) cancelButton: (recoveredBlock554Value2).
    recoveredBlock554Value3 := recoveredLocal4.
    recoveredBlock554Value4 := (recoveredBlock554Value0) defaultButton: (recoveredBlock554Value3).
    recoveredBlock554Value4
].
            recoveredPC := 573.
        ].
        recoveredStep = 573 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 575.
        ].
        recoveredStep = 575 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 578.
        ].
        recoveredStep = 578 ifTrue: [
            recoveredStack2 := [:recoveredBlock578Arg1 | 
    | recoveredBlock578Value0 recoveredBlock578Value1 recoveredBlock578Value2 recoveredBlock578Value3 recoveredBlock578Value4 recoveredBlock578Value5 recoveredBlock578Value6 recoveredBlock578Value7 recoveredBlock578Value8 recoveredBlock578Value9 recoveredBlock578Value10 recoveredBlock578Value11 |
    recoveredBlock578Value0 := recoveredBlock578Arg1.
    recoveredBlock578Value1 := recoveredBlock578Value0.
    recoveredBlock578Value2 := XmATTACHFORM.
    (recoveredBlock578Value1) topAttachment: (recoveredBlock578Value2).
    recoveredBlock578Value3 := recoveredBlock578Value0.
    (recoveredBlock578Value3) topOffset: (10).
    recoveredBlock578Value4 := recoveredBlock578Value0.
    recoveredBlock578Value5 := XmATTACHFORM.
    (recoveredBlock578Value4) leftAttachment: (recoveredBlock578Value5).
    recoveredBlock578Value6 := recoveredBlock578Value0.
    (recoveredBlock578Value6) leftOffset: (5).
    recoveredBlock578Value7 := recoveredBlock578Value0.
    recoveredBlock578Value8 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock578Value7) rightAttachment: (recoveredBlock578Value8).
    recoveredBlock578Value9 := recoveredBlock578Value0.
    recoveredBlock578Value10 := recoveredLocal2.
    (recoveredBlock578Value9) rightWidget: (recoveredBlock578Value10).
    recoveredBlock578Value11 := (recoveredBlock578Value0) rightOffset: (10).
    recoveredBlock578Value11
].
            recoveredPC := 630.
        ].
        recoveredStep = 630 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 632.
        ].
        recoveredStep = 632 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 635.
        ].
        recoveredStep = 635 ifTrue: [
            recoveredStack2 := [:block281239b8Arg1 | 
    | block281239b8Value0 block281239b8Value1 block281239b8Value2 block281239b8Value3 block281239b8Value4 block281239b8Value5 block281239b8Value6 |
    block281239b8Value0 := block281239b8Arg1.
    block281239b8Value1 := block281239b8Value0.
    block281239b8Value2 := XmATTACHFORM.
    (block281239b8Value1) topAttachment: (block281239b8Value2).
    block281239b8Value3 := block281239b8Value0.
    (block281239b8Value3) topOffset: (5).
    block281239b8Value4 := block281239b8Value0.
    block281239b8Value5 := XmATTACHFORM.
    (block281239b8Value4) rightAttachment: (block281239b8Value5).
    block281239b8Value6 := (block281239b8Value0) rightOffset: (5).
    block281239b8Value6
].
            recoveredPC := 638.
        ].
        recoveredStep = 638 ifTrue: [
            recoveredPC := 668.
        ].
        recoveredStep = 668 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 670.
        ].
        recoveredStep = 670 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 673.
        ].
        recoveredStep = 673 ifTrue: [
            recoveredStack2 := [:block281239dcArg1 | 
    | block281239dcValue0 block281239dcValue1 block281239dcValue2 block281239dcValue3 block281239dcValue4 block281239dcValue5 block281239dcValue6 |
    block281239dcValue0 := block281239dcArg1.
    block281239dcValue1 := block281239dcValue0.
    block281239dcValue2 := XmATTACHFORM.
    (block281239dcValue1) topAttachment: (block281239dcValue2).
    block281239dcValue3 := block281239dcValue0.
    (block281239dcValue3) topOffset: (40).
    block281239dcValue4 := block281239dcValue0.
    block281239dcValue5 := XmATTACHFORM.
    (block281239dcValue4) rightAttachment: (block281239dcValue5).
    block281239dcValue6 := (block281239dcValue0) rightOffset: (5).
    block281239dcValue6
].
            recoveredPC := 676.
        ].
        recoveredStep = 676 ifTrue: [
            recoveredPC := 706.
        ].
        recoveredStep = 706 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 708.
        ].
        recoveredStep = 708 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 711.
        ].
        recoveredStep = 711 ifTrue: [
            recoveredStack2 := [:block28123a00Arg1 | 
    | block28123a00Value0 block28123a00Value1 block28123a00Value2 block28123a00Value3 block28123a00Value4 block28123a00Value5 block28123a00Value6 block28123a00Value7 |
    block28123a00Value0 := block28123a00Arg1.
    block28123a00Value1 := block28123a00Value0.
    block28123a00Value2 := XmATTACHFORM.
    (block28123a00Value1) bottomAttachment: (block28123a00Value2).
    block28123a00Value3 := block28123a00Value0.
    block28123a00Value4 := XmATTACHFORM.
    (block28123a00Value3) topAttachment: (block28123a00Value4).
    block28123a00Value5 := block28123a00Value0.
    block28123a00Value6 := XmATTACHFORM.
    (block28123a00Value5) rightAttachment: (block28123a00Value6).
    block28123a00Value7 := (block28123a00Value0) rightOffset: (95).
    block28123a00Value7
].
            recoveredPC := 714.
        ].
        recoveredStep = 714 ifTrue: [
            recoveredPC := 748.
        ].
        recoveredStep = 748 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 750.
        ].
        recoveredStep = 750 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 753.
        ].
        recoveredStep = 753 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 756.
        ].
        recoveredStep = 756 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 757.
        ].
        recoveredStep = 757 ifTrue: [
            recoveredStack4 := 'buttonOkActivate:clientData:callData:'.
            recoveredPC := 760.
        ].
        recoveredStep = 760 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 761.
        ].
        recoveredStep = 761 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 765.
        ].
        recoveredStep = 765 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 768.
        ].
        recoveredStep = 768 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 772.
        ].
        recoveredStep = 772 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 773.
        ].
        recoveredStep = 773 ifTrue: [
            recoveredStack4 := 'buttonCancelActivate:clientData:callData:'.
            recoveredPC := 776.
        ].
        recoveredStep = 776 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 777.
        ].
        recoveredStep = 777 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 781.
        ].
        recoveredStep = 781 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 784.
        ].
        recoveredStep = 784 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 785.
        ].
        recoveredStep = 785 ifTrue: [
            recoveredStack3 := XmNlosingFocusCallback.
            recoveredPC := 788.
        ].
        recoveredStep = 788 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 789.
        ].
        recoveredStep = 789 ifTrue: [
            recoveredStack5 := 'dataValueLosing:clientData:callData:'.
            recoveredPC := 792.
        ].
        recoveredStep = 792 ifTrue: [
            recoveredStack6 := nil.
            recoveredPC := 793.
        ].
        recoveredStep = 793 ifTrue: [
            (recoveredStack2) addCallback: (recoveredStack3) receiver: (recoveredStack4) selector: (recoveredStack5) clientData: (recoveredStack6).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 797.
        ].
        recoveredStep = 797 ifTrue: [
            recoveredStack3 := XmNmodifyVerifyCallback.
            recoveredPC := 800.
        ].
        recoveredStep = 800 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 801.
        ].
        recoveredStep = 801 ifTrue: [
            recoveredStack5 := 'dataValueModify:clientData:callData:'.
            recoveredPC := 804.
        ].
        recoveredStep = 804 ifTrue: [
            recoveredStack6 := nil.
            recoveredPC := 805.
        ].
        recoveredStep = 805 ifTrue: [
            (recoveredStack2) addCallback: (recoveredStack3) receiver: (recoveredStack4) selector: (recoveredStack5) clientData: (recoveredStack6).
            recoveredPC := 809.
        ].
        recoveredStep = 809 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 813.
        ].
        recoveredStep = 813 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 816.
        ].
        recoveredStep = 816 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 821.
        ].
        recoveredStep = 821 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 824.
        ].
        recoveredStep = 824 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 829.
        ].
        recoveredStep = 829 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 832.
        ].
        recoveredStep = 832 ifTrue: [
            recoveredStack2 := recoveredLocal11.
            recoveredPC := 835.
        ].
        recoveredStep = 835 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 838.
        ].
        recoveredStep = 838 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 843.
        ].
        recoveredStep = 843 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

