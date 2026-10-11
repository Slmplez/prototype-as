"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20001b68; bytecode file offset 0x8ffcfc"
!RBBooleanSpecificationEditor methodsFor: 'recovered'!
updateContents
    ^self
! !

"ASDBase.ic method 0x20017a08; bytecode file offset 0x92209c"
!RBBooleanSpecificationEditor methodsFor: 'recovered'!
defaultIcon
    ^'EditorEECalibrationBoolean32'
! !

"ASDBase.ic method 0x2001ade0; bytecode file offset 0x92209c"
!RBBooleanSpecificationEditor methodsFor: 'recovered'!
toggleButtonSpaces
    ^'  '
! !

"ASDBase.ic method 0x20042cfc; bytecode file offset 0x9451f8"
!RBBooleanSpecificationEditor methodsFor: 'recovered'!
toggleButton
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('toggleButton').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004540c; bytecode file offset 0x9451f8"
!RBBooleanSpecificationEditor methodsFor: 'recovered'!
buttonCancel
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('buttonCancel').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004587c; bytecode file offset 0x9451f8"
!RBBooleanSpecificationEditor methodsFor: 'recovered'!
buttonOK
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('buttonOk').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200466bc; bytecode file offset 0x9451f8"
!RBBooleanSpecificationEditor methodsFor: 'recovered'!
nameLabel
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('wNameText').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2005a38c; bytecode file offset 0x957a6c"
!RBBooleanSpecificationEditor methodsFor: 'recovered'!
buttonOkActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) ok.
    ^self
! !

"ASDBase.ic method 0x2005ad10; bytecode file offset 0x957a6c"
!RBBooleanSpecificationEditor methodsFor: 'recovered'!
buttonCancelActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) cancel.
    ^self
! !

"ASDBase.ic method 0x2007455c; bytecode file offset 0x970e20"
!RBBooleanSpecificationEditor methodsFor: 'recovered'!
defaultWidth
    ^264
! !

"ASDBase.ic method 0x200807ec; bytecode file offset 0x97d0b0"
!RBBooleanSpecificationEditor methodsFor: 'recovered'!
defaultHeight
    ^70
! !

"ASDBase.ic method 0x200afb08; bytecode file offset 0x9ac3f4"
!RBBooleanSpecificationEditor methodsFor: 'recovered'!
cancel
    (self) dataElement: (nil).
    (self) close.
    ^self
! !

"ASDBase.ic method 0x20135c50; bytecode file offset 0xa32544"
!RBBooleanSpecificationEditor methodsFor: 'recovered'!
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

"ASDBase.ic method 0x201c92f0; bytecode file offset 0xac5bc0"
!RBBooleanSpecificationEditor methodsFor: 'recovered'!
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
            recoveredPC := 25.
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
            recoveredStack1 := (recoveredStack1) toggleButton.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) set.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) setPhysValue: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20253728; bytecode file offset 0xb50058"
!RBBooleanSpecificationEditor methodsFor: 'recovered'!
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

"ASDBase.ic method 0x20316220; bytecode file offset 0xc12b04"
!RBBooleanSpecificationEditor methodsFor: 'recovered'!
toggleButtonValue: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) set.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := (recoveredStack3) toggleButtonSpaces.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack4 := SCTrue.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack4 := (recoveredStack4) toggleButtonSpaces.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack2) labelString: (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) colorGreen.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) foregroundColor: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredPC := 47.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := (recoveredStack3) toggleButtonSpaces.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack4 := SCFalse.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack4 := (recoveredStack4) toggleButtonSpaces.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack2) labelString: (recoveredStack3).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := (recoveredStack2) colorRed.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) foregroundColor: (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) toggleButton.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) set.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) setPhysValue: (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2031928c; bytecode file offset 0xc15bec"
!RBBooleanSpecificationEditor methodsFor: 'recovered'!
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

"ASDBase.ic method 0x20361d1c; bytecode file offset 0xc5e620"
!RBBooleanSpecificationEditor methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    (self) grayBackground.
    (self) installActionKeys.
    recoveredValue0 := (self) class.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) defaultMinSize.
    (recoveredValue0) minSize: (recoveredValue2).
    (self) iconSmall: ('EditorEECalibrationBoolean') large: ('EditorEECalibrationBoolean32').
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
    recoveredValue8 := (self) toggleButton.
    (recoveredValue8) setInputFocus.
    recoveredValue9 := (self) class.
    recoveredValue10 := (self) class.
    recoveredValue11 := (recoveredValue10) defaultMinSize.
    (recoveredValue9) minSize: (recoveredValue11).
    (self) updateFonts.
    ^self
! !

"ASDBase.ic method 0x203aee80; bytecode file offset 0xcab770"
!RBBooleanSpecificationEditor methodsFor: 'recovered'!
updateWidgets
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) nameLabel.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) dataElement.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) wName.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) toggleButton.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) dataElement.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) getPhysValue.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) set: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) toggleButton.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) set.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) toggleButton.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) toggleButtonSpaces.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := SCTrue.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := (recoveredStack3) toggleButtonSpaces.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) labelString: (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) colorGreen.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) foregroundColor: (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredPC := 77.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) toggleButton.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := (recoveredStack2) toggleButtonSpaces.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := SCFalse.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack3 := (recoveredStack3) toggleButtonSpaces.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack1) labelString: (recoveredStack2).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) colorRed.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack0) foregroundColor: (recoveredStack1).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x206541a8; bytecode file offset 0xf50b8c"
!RBBooleanSpecificationEditor methodsFor: 'recovered'!
createWidgetHierarchy
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
    (recoveredBlock24Value1) title: ('DataBooleanEditor').
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
    recoveredBlock24Value13 := (200) * (recoveredBlock24Value12).
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
    | recoveredBlock139Value0 recoveredBlock139Value1 recoveredBlock139Value2 recoveredBlock139Value3 recoveredBlock139Value4 recoveredBlock139Value5 recoveredBlock139Value6 recoveredBlock139Value7 recoveredBlock139Value8 recoveredBlock139Value9 recoveredBlock139Value10 recoveredBlock139Value11 recoveredBlock139Value12 recoveredBlock139Value13 recoveredBlock139Value14 recoveredBlock139Value15 recoveredBlock139Value16 recoveredBlock139Value17 recoveredBlock139Value18 recoveredBlock139Value19 recoveredBlock139Value20 recoveredBlock139Value21 |
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
    recoveredBlock139Value16 := recoveredBlock139Value0.
    recoveredBlock139Value17 := recoveredLocal10.
    recoveredBlock139Value18 := (125) * (recoveredBlock139Value17).
    recoveredBlock139Value19 := (recoveredBlock139Value18) rounded.
    (recoveredBlock139Value16) width: (recoveredBlock139Value19).
    recoveredBlock139Value20 := recoveredBlock139Value0.
    recoveredBlock139Value21 := (self) defaultLabelBlue.
    (recoveredBlock139Value20) foregroundColor: (recoveredBlock139Value21).
    recoveredBlock139Value0
].
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack2 := 'wNameText'.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack2 := 'buttonOk'.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack3 := [:recoveredBlock231Arg1 | 
    | recoveredBlock231Value0 recoveredBlock231Value1 recoveredBlock231Value2 recoveredBlock231Value3 recoveredBlock231Value4 recoveredBlock231Value5 recoveredBlock231Value6 recoveredBlock231Value7 recoveredBlock231Value8 recoveredBlock231Value9 recoveredBlock231Value10 recoveredBlock231Value11 recoveredBlock231Value12 recoveredBlock231Value13 recoveredBlock231Value14 recoveredBlock231Value15 recoveredBlock231Value16 recoveredBlock231Value17 |
    recoveredBlock231Value0 := recoveredBlock231Arg1.
    recoveredBlock231Value1 := recoveredBlock231Value0.
    recoveredBlock231Value2 := recoveredLocal10.
    recoveredBlock231Value3 := (185) * (recoveredBlock231Value2).
    recoveredBlock231Value4 := (recoveredBlock231Value3) rounded.
    (recoveredBlock231Value1) x: (recoveredBlock231Value4).
    recoveredBlock231Value5 := recoveredBlock231Value0.
    (recoveredBlock231Value5) labelString: ('Ok').
    recoveredBlock231Value6 := recoveredBlock231Value0.
    recoveredBlock231Value7 := recoveredLocal9.
    recoveredBlock231Value8 := (5) * (recoveredBlock231Value7).
    recoveredBlock231Value9 := (recoveredBlock231Value8) rounded.
    (recoveredBlock231Value6) y: (recoveredBlock231Value9).
    recoveredBlock231Value10 := recoveredBlock231Value0.
    recoveredBlock231Value11 := recoveredLocal9.
    recoveredBlock231Value12 := (25) * (recoveredBlock231Value11).
    recoveredBlock231Value13 := (recoveredBlock231Value12) rounded.
    (recoveredBlock231Value10) height: (recoveredBlock231Value13).
    recoveredBlock231Value14 := recoveredLocal10.
    recoveredBlock231Value15 := (85) * (recoveredBlock231Value14).
    recoveredBlock231Value16 := (recoveredBlock231Value15) rounded.
    recoveredBlock231Value17 := (recoveredBlock231Value0) width: (recoveredBlock231Value16).
    recoveredBlock231Value17
].
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack2 := 'buttonOk'.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack2 := 'buttonCancel'.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack3 := [:recoveredBlock313Arg1 | 
    | recoveredBlock313Value0 recoveredBlock313Value1 recoveredBlock313Value2 recoveredBlock313Value3 recoveredBlock313Value4 recoveredBlock313Value5 recoveredBlock313Value6 recoveredBlock313Value7 recoveredBlock313Value8 recoveredBlock313Value9 recoveredBlock313Value10 recoveredBlock313Value11 recoveredBlock313Value12 recoveredBlock313Value13 recoveredBlock313Value14 recoveredBlock313Value15 recoveredBlock313Value16 recoveredBlock313Value17 |
    recoveredBlock313Value0 := recoveredBlock313Arg1.
    recoveredBlock313Value1 := recoveredBlock313Value0.
    recoveredBlock313Value2 := recoveredLocal10.
    recoveredBlock313Value3 := (185) * (recoveredBlock313Value2).
    recoveredBlock313Value4 := (recoveredBlock313Value3) rounded.
    (recoveredBlock313Value1) x: (recoveredBlock313Value4).
    recoveredBlock313Value5 := recoveredBlock313Value0.
    (recoveredBlock313Value5) labelString: ('Cancel').
    recoveredBlock313Value6 := recoveredBlock313Value0.
    recoveredBlock313Value7 := recoveredLocal9.
    recoveredBlock313Value8 := (40) * (recoveredBlock313Value7).
    recoveredBlock313Value9 := (recoveredBlock313Value8) rounded.
    (recoveredBlock313Value6) y: (recoveredBlock313Value9).
    recoveredBlock313Value10 := recoveredBlock313Value0.
    recoveredBlock313Value11 := recoveredLocal9.
    recoveredBlock313Value12 := (25) * (recoveredBlock313Value11).
    recoveredBlock313Value13 := (recoveredBlock313Value12) rounded.
    (recoveredBlock313Value10) height: (recoveredBlock313Value13).
    recoveredBlock313Value14 := recoveredLocal10.
    recoveredBlock313Value15 := (85) * (recoveredBlock313Value14).
    recoveredBlock313Value16 := (recoveredBlock313Value15) rounded.
    recoveredBlock313Value17 := (recoveredBlock313Value0) width: (recoveredBlock313Value16).
    recoveredBlock313Value17
].
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 380.
        ].
        recoveredStep = 380 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 383.
        ].
        recoveredStep = 383 ifTrue: [
            recoveredStack2 := 'buttonCancel'.
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 388.
        ].
        recoveredStep = 388 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 390.
        ].
        recoveredStep = 390 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            recoveredStack2 := 'aSeparator1'.
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            recoveredStack3 := [:recoveredBlock395Arg1 | 
    | recoveredBlock395Value0 recoveredBlock395Value1 recoveredBlock395Value2 recoveredBlock395Value3 recoveredBlock395Value4 recoveredBlock395Value5 recoveredBlock395Value6 recoveredBlock395Value7 recoveredBlock395Value8 recoveredBlock395Value9 recoveredBlock395Value10 recoveredBlock395Value11 recoveredBlock395Value12 recoveredBlock395Value13 recoveredBlock395Value14 |
    recoveredBlock395Value0 := recoveredBlock395Arg1.
    recoveredBlock395Value1 := recoveredBlock395Value0.
    recoveredBlock395Value2 := recoveredLocal10.
    recoveredBlock395Value3 := (170) * (recoveredBlock395Value2).
    recoveredBlock395Value4 := (recoveredBlock395Value3) rounded.
    (recoveredBlock395Value1) x: (recoveredBlock395Value4).
    recoveredBlock395Value5 := recoveredBlock395Value0.
    recoveredBlock395Value6 := XmVERTICAL.
    (recoveredBlock395Value5) orientation: (recoveredBlock395Value6).
    recoveredBlock395Value7 := recoveredBlock395Value0.
    recoveredBlock395Value8 := recoveredLocal9.
    recoveredBlock395Value9 := (70) * (recoveredBlock395Value8).
    recoveredBlock395Value10 := (recoveredBlock395Value9) rounded.
    (recoveredBlock395Value7) height: (recoveredBlock395Value10).
    recoveredBlock395Value11 := recoveredLocal10.
    recoveredBlock395Value12 := (10) * (recoveredBlock395Value11).
    recoveredBlock395Value13 := (recoveredBlock395Value12) rounded.
    recoveredBlock395Value14 := (recoveredBlock395Value0) width: (recoveredBlock395Value13).
    recoveredBlock395Value14
].
            recoveredPC := 445.
        ].
        recoveredStep = 445 ifTrue: [
            recoveredStack1 := (recoveredStack1) createSeparator: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 447.
        ].
        recoveredStep = 447 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 449.
        ].
        recoveredStep = 449 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 452.
        ].
        recoveredStep = 452 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 455.
        ].
        recoveredStep = 455 ifTrue: [
            recoveredStack2 := 'aSeparator1'.
            recoveredPC := 457.
        ].
        recoveredStep = 457 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 460.
        ].
        recoveredStep = 460 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 462.
        ].
        recoveredStep = 462 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 465.
        ].
        recoveredStep = 465 ifTrue: [
            recoveredStack2 := 'dataValue'.
            recoveredPC := 467.
        ].
        recoveredStep = 467 ifTrue: [
            recoveredStack3 := [:recoveredBlock467Arg1 | 
    | recoveredBlock467Value0 recoveredBlock467Value1 recoveredBlock467Value2 recoveredBlock467Value3 recoveredBlock467Value4 recoveredBlock467Value5 recoveredBlock467Value6 recoveredBlock467Value7 recoveredBlock467Value8 recoveredBlock467Value9 recoveredBlock467Value10 recoveredBlock467Value11 recoveredBlock467Value12 recoveredBlock467Value13 recoveredBlock467Value14 recoveredBlock467Value15 recoveredBlock467Value16 |
    recoveredBlock467Value0 := recoveredBlock467Arg1.
    recoveredBlock467Value1 := recoveredBlock467Value0.
    recoveredBlock467Value2 := recoveredLocal9.
    recoveredBlock467Value3 := (40) * (recoveredBlock467Value2).
    recoveredBlock467Value4 := (recoveredBlock467Value3) rounded.
    (recoveredBlock467Value1) y: (recoveredBlock467Value4).
    recoveredBlock467Value5 := recoveredBlock467Value0.
    recoveredBlock467Value6 := recoveredLocal10.
    recoveredBlock467Value7 := (5) * (recoveredBlock467Value6).
    recoveredBlock467Value8 := (recoveredBlock467Value7) rounded.
    (recoveredBlock467Value5) x: (recoveredBlock467Value8).
    recoveredBlock467Value9 := recoveredBlock467Value0.
    recoveredBlock467Value10 := recoveredLocal9.
    recoveredBlock467Value11 := (25) * (recoveredBlock467Value10).
    recoveredBlock467Value12 := (recoveredBlock467Value11) rounded.
    (recoveredBlock467Value9) height: (recoveredBlock467Value12).
    recoveredBlock467Value13 := recoveredLocal10.
    recoveredBlock467Value14 := (60) * (recoveredBlock467Value13).
    recoveredBlock467Value15 := (recoveredBlock467Value14) rounded.
    recoveredBlock467Value16 := (recoveredBlock467Value0) width: (recoveredBlock467Value15).
    recoveredBlock467Value16
].
            recoveredPC := 519.
        ].
        recoveredStep = 519 ifTrue: [
            recoveredStack1 := (recoveredStack1) createToggleButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 521.
        ].
        recoveredStep = 521 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 523.
        ].
        recoveredStep = 523 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 526.
        ].
        recoveredStep = 526 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 529.
        ].
        recoveredStep = 529 ifTrue: [
            recoveredStack2 := 'toggleButton'.
            recoveredPC := 531.
        ].
        recoveredStep = 531 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 534.
        ].
        recoveredStep = 534 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 536.
        ].
        recoveredStep = 536 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 539.
        ].
        recoveredStep = 539 ifTrue: [
            recoveredStack2 := [:recoveredBlock539Arg1 | 
    | recoveredBlock539Value0 recoveredBlock539Value1 recoveredBlock539Value2 |
    recoveredBlock539Value0 := recoveredBlock539Arg1.
    recoveredBlock539Value1 := recoveredLocal6.
    recoveredBlock539Value2 := (recoveredBlock539Value0) workWindow: (recoveredBlock539Value1).
    recoveredBlock539Value2
].
            recoveredPC := 553.
        ].
        recoveredStep = 553 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 555.
        ].
        recoveredStep = 555 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 558.
        ].
        recoveredStep = 558 ifTrue: [
            recoveredStack2 := [:recoveredBlock558Arg1 | 
    | recoveredBlock558Value0 recoveredBlock558Value1 recoveredBlock558Value2 recoveredBlock558Value3 recoveredBlock558Value4 |
    recoveredBlock558Value0 := recoveredBlock558Arg1.
    recoveredBlock558Value1 := recoveredBlock558Value0.
    recoveredBlock558Value2 := recoveredLocal3.
    (recoveredBlock558Value1) cancelButton: (recoveredBlock558Value2).
    recoveredBlock558Value3 := recoveredLocal4.
    recoveredBlock558Value4 := (recoveredBlock558Value0) defaultButton: (recoveredBlock558Value3).
    recoveredBlock558Value4
].
            recoveredPC := 577.
        ].
        recoveredStep = 577 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 579.
        ].
        recoveredStep = 579 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 582.
        ].
        recoveredStep = 582 ifTrue: [
            recoveredStack2 := [:recoveredBlock582Arg1 | 
    | recoveredBlock582Value0 recoveredBlock582Value1 recoveredBlock582Value2 recoveredBlock582Value3 recoveredBlock582Value4 recoveredBlock582Value5 recoveredBlock582Value6 recoveredBlock582Value7 recoveredBlock582Value8 recoveredBlock582Value9 recoveredBlock582Value10 recoveredBlock582Value11 |
    recoveredBlock582Value0 := recoveredBlock582Arg1.
    recoveredBlock582Value1 := recoveredBlock582Value0.
    recoveredBlock582Value2 := XmATTACHFORM.
    (recoveredBlock582Value1) topAttachment: (recoveredBlock582Value2).
    recoveredBlock582Value3 := recoveredBlock582Value0.
    (recoveredBlock582Value3) topOffset: (10).
    recoveredBlock582Value4 := recoveredBlock582Value0.
    recoveredBlock582Value5 := XmATTACHFORM.
    (recoveredBlock582Value4) leftAttachment: (recoveredBlock582Value5).
    recoveredBlock582Value6 := recoveredBlock582Value0.
    (recoveredBlock582Value6) leftOffset: (5).
    recoveredBlock582Value7 := recoveredBlock582Value0.
    recoveredBlock582Value8 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock582Value7) rightAttachment: (recoveredBlock582Value8).
    recoveredBlock582Value9 := recoveredBlock582Value0.
    recoveredBlock582Value10 := recoveredLocal2.
    (recoveredBlock582Value9) rightWidget: (recoveredBlock582Value10).
    recoveredBlock582Value11 := (recoveredBlock582Value0) rightOffset: (10).
    recoveredBlock582Value11
].
            recoveredPC := 636.
        ].
        recoveredStep = 636 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 638.
        ].
        recoveredStep = 638 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 641.
        ].
        recoveredStep = 641 ifTrue: [
            recoveredStack2 := [:block2812394cArg1 | 
    | block2812394cValue0 block2812394cValue1 block2812394cValue2 block2812394cValue3 block2812394cValue4 block2812394cValue5 block2812394cValue6 |
    block2812394cValue0 := block2812394cArg1.
    block2812394cValue1 := block2812394cValue0.
    block2812394cValue2 := XmATTACHFORM.
    (block2812394cValue1) topAttachment: (block2812394cValue2).
    block2812394cValue3 := block2812394cValue0.
    (block2812394cValue3) topOffset: (5).
    block2812394cValue4 := block2812394cValue0.
    block2812394cValue5 := XmATTACHFORM.
    (block2812394cValue4) rightAttachment: (block2812394cValue5).
    block2812394cValue6 := (block2812394cValue0) rightOffset: (5).
    block2812394cValue6
].
            recoveredPC := 644.
        ].
        recoveredStep = 644 ifTrue: [
            recoveredPC := 674.
        ].
        recoveredStep = 674 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 676.
        ].
        recoveredStep = 676 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 679.
        ].
        recoveredStep = 679 ifTrue: [
            recoveredStack2 := [:block28123970Arg1 | 
    | block28123970Value0 block28123970Value1 block28123970Value2 block28123970Value3 block28123970Value4 block28123970Value5 block28123970Value6 |
    block28123970Value0 := block28123970Arg1.
    block28123970Value1 := block28123970Value0.
    block28123970Value2 := XmATTACHFORM.
    (block28123970Value1) topAttachment: (block28123970Value2).
    block28123970Value3 := block28123970Value0.
    (block28123970Value3) topOffset: (40).
    block28123970Value4 := block28123970Value0.
    block28123970Value5 := XmATTACHFORM.
    (block28123970Value4) rightAttachment: (block28123970Value5).
    block28123970Value6 := (block28123970Value0) rightOffset: (5).
    block28123970Value6
].
            recoveredPC := 682.
        ].
        recoveredStep = 682 ifTrue: [
            recoveredPC := 712.
        ].
        recoveredStep = 712 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 714.
        ].
        recoveredStep = 714 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 717.
        ].
        recoveredStep = 717 ifTrue: [
            recoveredStack2 := [:block28123994Arg1 | 
    | block28123994Value0 block28123994Value1 block28123994Value2 block28123994Value3 block28123994Value4 block28123994Value5 block28123994Value6 block28123994Value7 |
    block28123994Value0 := block28123994Arg1.
    block28123994Value1 := block28123994Value0.
    block28123994Value2 := XmATTACHFORM.
    (block28123994Value1) bottomAttachment: (block28123994Value2).
    block28123994Value3 := block28123994Value0.
    block28123994Value4 := XmATTACHFORM.
    (block28123994Value3) topAttachment: (block28123994Value4).
    block28123994Value5 := block28123994Value0.
    block28123994Value6 := XmATTACHFORM.
    (block28123994Value5) rightAttachment: (block28123994Value6).
    block28123994Value7 := (block28123994Value0) rightOffset: (95).
    block28123994Value7
].
            recoveredPC := 720.
        ].
        recoveredStep = 720 ifTrue: [
            recoveredPC := 754.
        ].
        recoveredStep = 754 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 756.
        ].
        recoveredStep = 756 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 759.
        ].
        recoveredStep = 759 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 762.
        ].
        recoveredStep = 762 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 763.
        ].
        recoveredStep = 763 ifTrue: [
            recoveredStack4 := 'buttonOkActivate:clientData:callData:'.
            recoveredPC := 766.
        ].
        recoveredStep = 766 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 767.
        ].
        recoveredStep = 767 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 771.
        ].
        recoveredStep = 771 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 774.
        ].
        recoveredStep = 774 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 778.
        ].
        recoveredStep = 778 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 779.
        ].
        recoveredStep = 779 ifTrue: [
            recoveredStack4 := 'buttonCancelActivate:clientData:callData:'.
            recoveredPC := 782.
        ].
        recoveredStep = 782 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 783.
        ].
        recoveredStep = 783 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 787.
        ].
        recoveredStep = 787 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 790.
        ].
        recoveredStep = 790 ifTrue: [
            recoveredStack2 := XmNvalueChangedCallback.
            recoveredPC := 794.
        ].
        recoveredStep = 794 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 795.
        ].
        recoveredStep = 795 ifTrue: [
            recoveredStack4 := 'toggleButtonValue:clientData:callData:'.
            recoveredPC := 798.
        ].
        recoveredStep = 798 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 799.
        ].
        recoveredStep = 799 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 803.
        ].
        recoveredStep = 803 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 806.
        ].
        recoveredStep = 806 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 811.
        ].
        recoveredStep = 811 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 814.
        ].
        recoveredStep = 814 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 819.
        ].
        recoveredStep = 819 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 822.
        ].
        recoveredStep = 822 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 827.
        ].
        recoveredStep = 827 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 830.
        ].
        recoveredStep = 830 ifTrue: [
            recoveredStack2 := recoveredLocal11.
            recoveredPC := 833.
        ].
        recoveredStep = 833 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 836.
        ].
        recoveredStep = 836 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 841.
        ].
        recoveredStep = 841 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

