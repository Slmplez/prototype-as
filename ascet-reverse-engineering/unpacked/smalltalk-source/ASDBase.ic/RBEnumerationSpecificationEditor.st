"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000748; bytecode file offset 0x8ffcfc"
!RBEnumerationSpecificationEditor methodsFor: 'recovered'!
updateContents
    ^self
! !

"ASDBase.ic method 0x200206e4; bytecode file offset 0x92209c"
!RBEnumerationSpecificationEditor methodsFor: 'recovered'!
defaultIcon
    ^'EditorEECalibrationEnumeration32'
! !

"ASDBase.ic method 0x2004465c; bytecode file offset 0x9451f8"
!RBEnumerationSpecificationEditor methodsFor: 'recovered'!
buttonCancel
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('buttonCancel').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20044dac; bytecode file offset 0x9451f8"
!RBEnumerationSpecificationEditor methodsFor: 'recovered'!
enumList
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('action1').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20046bdc; bytecode file offset 0x9451f8"
!RBEnumerationSpecificationEditor methodsFor: 'recovered'!
nameLabel
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('wNameText').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20047d0c; bytecode file offset 0x9451f8"
!RBEnumerationSpecificationEditor methodsFor: 'recovered'!
buttonOK
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('buttonOk').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2005a5d8; bytecode file offset 0x957a6c"
!RBEnumerationSpecificationEditor methodsFor: 'recovered'!
buttonCancelActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) cancel.
    ^self
! !

"ASDBase.ic method 0x2005ad40; bytecode file offset 0x957a6c"
!RBEnumerationSpecificationEditor methodsFor: 'recovered'!
buttonOkActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) ok.
    ^self
! !

"ASDBase.ic method 0x2007456c; bytecode file offset 0x970e20"
!RBEnumerationSpecificationEditor methodsFor: 'recovered'!
defaultWidth
    ^264
! !

"ASDBase.ic method 0x200807cc; bytecode file offset 0x97d0b0"
!RBEnumerationSpecificationEditor methodsFor: 'recovered'!
defaultHeight
    ^70
! !

"ASDBase.ic method 0x200afb28; bytecode file offset 0x9ac3f4"
!RBEnumerationSpecificationEditor methodsFor: 'recovered'!
cancel
    (self) dataElement: (nil).
    (self) close.
    ^self
! !

"ASDBase.ic method 0x200de7ac; bytecode file offset 0x9db074"
!RBEnumerationSpecificationEditor methodsFor: 'recovered'!
dataValueLosing: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) dataElement.
    recoveredValue1 := (self) widgetDataValue.
    recoveredValue2 := (recoveredValue1) value.
    recoveredValue3 := (recoveredValue2) asIntegerOrFloatOrFraction.
    (recoveredValue0) setPhysValue: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20135c80; bytecode file offset 0xa32544"
!RBEnumerationSpecificationEditor methodsFor: 'recovered'!
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

"ASDBase.ic method 0x20230e40; bytecode file offset 0xb2d710"
!RBEnumerationSpecificationEditor methodsFor: 'recovered'!
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
            recoveredPC := 33.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) enumList.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) getObject.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) enumList.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) getObject.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) setPhysValue: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) close.
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

"ASDBase.ic method 0x20253780; bytecode file offset 0xb50058"
!RBEnumerationSpecificationEditor methodsFor: 'recovered'!
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

"ASDBase.ic method 0x202ff4d0; bytecode file offset 0xbfbdc0"
!RBEnumerationSpecificationEditor methodsFor: 'recovered'!
updateWidgets
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) formula.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) physTab.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
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
            recoveredStack0 := (recoveredStack0) enumList.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := 20.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) min: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) visibleItemCount: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) nameLabel.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) dataElement.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) wName.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) enumList.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) items: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) enumList.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := (recoveredStack2) dataElement.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := (recoveredStack2) indexOfCurrentValue.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) setObject: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20319304; bytecode file offset 0xc15bec"
!RBEnumerationSpecificationEditor methodsFor: 'recovered'!
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

"ASDBase.ic method 0x2044d2bc; bytecode file offset 0xd49bd4"
!RBEnumerationSpecificationEditor methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) grayBackground.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) installActionKeys.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultMinSize.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) minSize: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 'EditorEECalibrationEnumeration'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := 'EditorEECalibrationEnumeration32'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) iconSmall: (recoveredStack1) large: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultLabel.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) title: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := RBFontGlobal.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) instance.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) fontTiny.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            valueFont := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := valueFont.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) fontStruct.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            valueFont := recoveredStack0.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredPC := 78.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) nameLabel.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := valueFont.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) fontList: (recoveredStack1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) enumList.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := valueFont.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) fontList: (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) buttonOK.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := valueFont.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0) fontList: (recoveredStack1).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) buttonCancel.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := valueFont.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) fontList: (recoveredStack1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0) makeAlwaysOnTop: (recoveredStack1).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) buttonOK.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := SCOk.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) buttonCancel.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := SCCancel.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack0) updateWidgets.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := (recoveredStack0) enumList.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack0) setInputFocus.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultMinSize.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack0) minSize: (recoveredStack1).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20656bdc; bytecode file offset 0xf535c8"
!RBEnumerationSpecificationEditor methodsFor: 'recovered'!
createWidgetHierarchy
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
    | recoveredBlock24Value0 recoveredBlock24Value1 recoveredBlock24Value2 recoveredBlock24Value3 recoveredBlock24Value4 recoveredBlock24Value5 recoveredBlock24Value6 recoveredBlock24Value7 recoveredBlock24Value8 recoveredBlock24Value9 recoveredBlock24Value10 recoveredBlock24Value11 recoveredBlock24Value12 recoveredBlock24Value13 recoveredBlock24Value14 recoveredBlock24Value15 recoveredBlock24Value16 recoveredBlock24Value17 |
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
    recoveredBlock24Value12 := MWMDECORRESIZEH.
    recoveredBlock24Value13 := (recoveredBlock24Value11) | (recoveredBlock24Value12).
    (recoveredBlock24Value6) mwmDecorations: (recoveredBlock24Value13).
    recoveredBlock24Value14 := recoveredLocal10.
    recoveredBlock24Value15 := (200) * (recoveredBlock24Value14).
    recoveredBlock24Value16 := (recoveredBlock24Value15) rounded.
    recoveredBlock24Value17 := (recoveredBlock24Value0) width: (recoveredBlock24Value16).
    recoveredBlock24Value17
].
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) createApplicationShell: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := 'mainWindow'.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := (recoveredStack1) createMainWindow: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack2 := 'wNameText'.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack3 := [:recoveredBlock143Arg1 | 
    | recoveredBlock143Value0 recoveredBlock143Value1 recoveredBlock143Value2 recoveredBlock143Value3 recoveredBlock143Value4 recoveredBlock143Value5 recoveredBlock143Value6 recoveredBlock143Value7 recoveredBlock143Value8 recoveredBlock143Value9 recoveredBlock143Value10 recoveredBlock143Value11 recoveredBlock143Value12 recoveredBlock143Value13 recoveredBlock143Value14 recoveredBlock143Value15 recoveredBlock143Value16 recoveredBlock143Value17 recoveredBlock143Value18 recoveredBlock143Value19 recoveredBlock143Value20 recoveredBlock143Value21 |
    recoveredBlock143Value0 := recoveredBlock143Arg1.
    recoveredBlock143Value1 := recoveredBlock143Value0.
    recoveredBlock143Value2 := recoveredLocal10.
    recoveredBlock143Value3 := (5) * (recoveredBlock143Value2).
    recoveredBlock143Value4 := (recoveredBlock143Value3) rounded.
    (recoveredBlock143Value1) x: (recoveredBlock143Value4).
    recoveredBlock143Value5 := recoveredBlock143Value0.
    recoveredBlock143Value6 := XmALIGNMENTBEGINNING.
    (recoveredBlock143Value5) alignment: (recoveredBlock143Value6).
    recoveredBlock143Value7 := recoveredBlock143Value0.
    (recoveredBlock143Value7) labelString: ('Kennwert').
    recoveredBlock143Value8 := recoveredBlock143Value0.
    recoveredBlock143Value9 := recoveredLocal9.
    recoveredBlock143Value10 := (5) * (recoveredBlock143Value9).
    recoveredBlock143Value11 := (recoveredBlock143Value10) rounded.
    (recoveredBlock143Value8) y: (recoveredBlock143Value11).
    recoveredBlock143Value12 := recoveredBlock143Value0.
    recoveredBlock143Value13 := recoveredLocal9.
    recoveredBlock143Value14 := (20) * (recoveredBlock143Value13).
    recoveredBlock143Value15 := (recoveredBlock143Value14) rounded.
    (recoveredBlock143Value12) height: (recoveredBlock143Value15).
    recoveredBlock143Value16 := recoveredBlock143Value0.
    recoveredBlock143Value17 := recoveredLocal10.
    recoveredBlock143Value18 := (125) * (recoveredBlock143Value17).
    recoveredBlock143Value19 := (recoveredBlock143Value18) rounded.
    (recoveredBlock143Value16) width: (recoveredBlock143Value19).
    recoveredBlock143Value20 := (self) defaultLabelBlue.
    recoveredBlock143Value21 := (recoveredBlock143Value0) foregroundColor: (recoveredBlock143Value20).
    recoveredBlock143Value21
].
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack2 := 'wNameText'.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack2 := 'buttonOk'.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack3 := [:recoveredBlock234Arg1 | 
    | recoveredBlock234Value0 recoveredBlock234Value1 recoveredBlock234Value2 recoveredBlock234Value3 recoveredBlock234Value4 recoveredBlock234Value5 recoveredBlock234Value6 recoveredBlock234Value7 recoveredBlock234Value8 recoveredBlock234Value9 recoveredBlock234Value10 recoveredBlock234Value11 recoveredBlock234Value12 recoveredBlock234Value13 recoveredBlock234Value14 recoveredBlock234Value15 recoveredBlock234Value16 recoveredBlock234Value17 |
    recoveredBlock234Value0 := recoveredBlock234Arg1.
    recoveredBlock234Value1 := recoveredBlock234Value0.
    recoveredBlock234Value2 := recoveredLocal10.
    recoveredBlock234Value3 := (185) * (recoveredBlock234Value2).
    recoveredBlock234Value4 := (recoveredBlock234Value3) rounded.
    (recoveredBlock234Value1) x: (recoveredBlock234Value4).
    recoveredBlock234Value5 := recoveredBlock234Value0.
    (recoveredBlock234Value5) labelString: ('Ok').
    recoveredBlock234Value6 := recoveredBlock234Value0.
    recoveredBlock234Value7 := recoveredLocal9.
    recoveredBlock234Value8 := (5) * (recoveredBlock234Value7).
    recoveredBlock234Value9 := (recoveredBlock234Value8) rounded.
    (recoveredBlock234Value6) y: (recoveredBlock234Value9).
    recoveredBlock234Value10 := recoveredBlock234Value0.
    recoveredBlock234Value11 := recoveredLocal9.
    recoveredBlock234Value12 := (25) * (recoveredBlock234Value11).
    recoveredBlock234Value13 := (recoveredBlock234Value12) rounded.
    (recoveredBlock234Value10) height: (recoveredBlock234Value13).
    recoveredBlock234Value14 := recoveredLocal10.
    recoveredBlock234Value15 := (85) * (recoveredBlock234Value14).
    recoveredBlock234Value16 := (recoveredBlock234Value15) rounded.
    recoveredBlock234Value17 := (recoveredBlock234Value0) width: (recoveredBlock234Value16).
    recoveredBlock234Value17
].
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack2 := 'buttonOk'.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack2 := 'buttonCancel'.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack3 := [:recoveredBlock315Arg1 | 
    | recoveredBlock315Value0 recoveredBlock315Value1 recoveredBlock315Value2 recoveredBlock315Value3 recoveredBlock315Value4 recoveredBlock315Value5 recoveredBlock315Value6 recoveredBlock315Value7 recoveredBlock315Value8 recoveredBlock315Value9 recoveredBlock315Value10 recoveredBlock315Value11 recoveredBlock315Value12 recoveredBlock315Value13 recoveredBlock315Value14 recoveredBlock315Value15 recoveredBlock315Value16 recoveredBlock315Value17 |
    recoveredBlock315Value0 := recoveredBlock315Arg1.
    recoveredBlock315Value1 := recoveredBlock315Value0.
    recoveredBlock315Value2 := recoveredLocal10.
    recoveredBlock315Value3 := (185) * (recoveredBlock315Value2).
    recoveredBlock315Value4 := (recoveredBlock315Value3) rounded.
    (recoveredBlock315Value1) x: (recoveredBlock315Value4).
    recoveredBlock315Value5 := recoveredBlock315Value0.
    (recoveredBlock315Value5) labelString: ('Cancel').
    recoveredBlock315Value6 := recoveredBlock315Value0.
    recoveredBlock315Value7 := recoveredLocal9.
    recoveredBlock315Value8 := (40) * (recoveredBlock315Value7).
    recoveredBlock315Value9 := (recoveredBlock315Value8) rounded.
    (recoveredBlock315Value6) y: (recoveredBlock315Value9).
    recoveredBlock315Value10 := recoveredBlock315Value0.
    recoveredBlock315Value11 := recoveredLocal9.
    recoveredBlock315Value12 := (25) * (recoveredBlock315Value11).
    recoveredBlock315Value13 := (recoveredBlock315Value12) rounded.
    (recoveredBlock315Value10) height: (recoveredBlock315Value13).
    recoveredBlock315Value14 := recoveredLocal10.
    recoveredBlock315Value15 := (85) * (recoveredBlock315Value14).
    recoveredBlock315Value16 := (recoveredBlock315Value15) rounded.
    recoveredBlock315Value17 := (recoveredBlock315Value0) width: (recoveredBlock315Value16).
    recoveredBlock315Value17
].
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            recoveredStack2 := 'buttonCancel'.
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 390.
        ].
        recoveredStep = 390 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            recoveredStack2 := 'aSeparator1'.
            recoveredPC := 397.
        ].
        recoveredStep = 397 ifTrue: [
            recoveredStack3 := [:recoveredBlock397Arg1 | 
    | recoveredBlock397Value0 recoveredBlock397Value1 recoveredBlock397Value2 recoveredBlock397Value3 recoveredBlock397Value4 recoveredBlock397Value5 recoveredBlock397Value6 recoveredBlock397Value7 recoveredBlock397Value8 recoveredBlock397Value9 recoveredBlock397Value10 recoveredBlock397Value11 recoveredBlock397Value12 recoveredBlock397Value13 recoveredBlock397Value14 |
    recoveredBlock397Value0 := recoveredBlock397Arg1.
    recoveredBlock397Value1 := recoveredBlock397Value0.
    recoveredBlock397Value2 := recoveredLocal10.
    recoveredBlock397Value3 := (170) * (recoveredBlock397Value2).
    recoveredBlock397Value4 := (recoveredBlock397Value3) rounded.
    (recoveredBlock397Value1) x: (recoveredBlock397Value4).
    recoveredBlock397Value5 := recoveredBlock397Value0.
    recoveredBlock397Value6 := XmVERTICAL.
    (recoveredBlock397Value5) orientation: (recoveredBlock397Value6).
    recoveredBlock397Value7 := recoveredBlock397Value0.
    recoveredBlock397Value8 := recoveredLocal9.
    recoveredBlock397Value9 := (70) * (recoveredBlock397Value8).
    recoveredBlock397Value10 := (recoveredBlock397Value9) rounded.
    (recoveredBlock397Value7) height: (recoveredBlock397Value10).
    recoveredBlock397Value11 := recoveredLocal10.
    recoveredBlock397Value12 := (10) * (recoveredBlock397Value11).
    recoveredBlock397Value13 := (recoveredBlock397Value12) rounded.
    recoveredBlock397Value14 := (recoveredBlock397Value0) width: (recoveredBlock397Value13).
    recoveredBlock397Value14
].
            recoveredPC := 447.
        ].
        recoveredStep = 447 ifTrue: [
            recoveredStack1 := (recoveredStack1) createSeparator: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 449.
        ].
        recoveredStep = 449 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 451.
        ].
        recoveredStep = 451 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 454.
        ].
        recoveredStep = 454 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 457.
        ].
        recoveredStep = 457 ifTrue: [
            recoveredStack2 := 'aSeparator1'.
            recoveredPC := 459.
        ].
        recoveredStep = 459 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 462.
        ].
        recoveredStep = 462 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 464.
        ].
        recoveredStep = 464 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 467.
        ].
        recoveredStep = 467 ifTrue: [
            recoveredStack2 := 'action1'.
            recoveredPC := 469.
        ].
        recoveredStep = 469 ifTrue: [
            recoveredStack3 := [:block28123e80Arg1 | 
    | block28123e80Value0 block28123e80Value1 |
    block28123e80Value0 := block28123e80Arg1.
    block28123e80Value1 := (block28123e80Value0) width: (100).
    block28123e80Value1
].
            recoveredPC := 471.
        ].
        recoveredStep = 471 ifTrue: [
            recoveredPC := 481.
        ].
        recoveredStep = 481 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEtasObjectComboBox: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 483.
        ].
        recoveredStep = 483 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 485.
        ].
        recoveredStep = 485 ifTrue: [
            recoveredLocal12 := recoveredStack1.
            recoveredPC := 488.
        ].
        recoveredStep = 488 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 491.
        ].
        recoveredStep = 491 ifTrue: [
            recoveredStack2 := 'action1'.
            recoveredPC := 493.
        ].
        recoveredStep = 493 ifTrue: [
            recoveredStack3 := recoveredLocal12.
            recoveredPC := 496.
        ].
        recoveredStep = 496 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 498.
        ].
        recoveredStep = 498 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 501.
        ].
        recoveredStep = 501 ifTrue: [
            recoveredStack2 := [:recoveredBlock501Arg1 | 
    | recoveredBlock501Value0 recoveredBlock501Value1 recoveredBlock501Value2 |
    recoveredBlock501Value0 := recoveredBlock501Arg1.
    recoveredBlock501Value1 := recoveredLocal6.
    recoveredBlock501Value2 := (recoveredBlock501Value0) workWindow: (recoveredBlock501Value1).
    recoveredBlock501Value2
].
            recoveredPC := 515.
        ].
        recoveredStep = 515 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 517.
        ].
        recoveredStep = 517 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 520.
        ].
        recoveredStep = 520 ifTrue: [
            recoveredStack2 := [:recoveredBlock520Arg1 | 
    | recoveredBlock520Value0 recoveredBlock520Value1 recoveredBlock520Value2 recoveredBlock520Value3 recoveredBlock520Value4 |
    recoveredBlock520Value0 := recoveredBlock520Arg1.
    recoveredBlock520Value1 := recoveredBlock520Value0.
    recoveredBlock520Value2 := recoveredLocal3.
    (recoveredBlock520Value1) cancelButton: (recoveredBlock520Value2).
    recoveredBlock520Value3 := recoveredLocal4.
    recoveredBlock520Value4 := (recoveredBlock520Value0) defaultButton: (recoveredBlock520Value3).
    recoveredBlock520Value4
].
            recoveredPC := 539.
        ].
        recoveredStep = 539 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 541.
        ].
        recoveredStep = 541 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 544.
        ].
        recoveredStep = 544 ifTrue: [
            recoveredStack2 := [:recoveredBlock544Arg1 | 
    | recoveredBlock544Value0 recoveredBlock544Value1 recoveredBlock544Value2 recoveredBlock544Value3 recoveredBlock544Value4 recoveredBlock544Value5 recoveredBlock544Value6 recoveredBlock544Value7 recoveredBlock544Value8 recoveredBlock544Value9 recoveredBlock544Value10 recoveredBlock544Value11 |
    recoveredBlock544Value0 := recoveredBlock544Arg1.
    recoveredBlock544Value1 := recoveredBlock544Value0.
    recoveredBlock544Value2 := XmATTACHFORM.
    (recoveredBlock544Value1) topAttachment: (recoveredBlock544Value2).
    recoveredBlock544Value3 := recoveredBlock544Value0.
    (recoveredBlock544Value3) topOffset: (10).
    recoveredBlock544Value4 := recoveredBlock544Value0.
    recoveredBlock544Value5 := XmATTACHFORM.
    (recoveredBlock544Value4) leftAttachment: (recoveredBlock544Value5).
    recoveredBlock544Value6 := recoveredBlock544Value0.
    (recoveredBlock544Value6) leftOffset: (5).
    recoveredBlock544Value7 := recoveredBlock544Value0.
    recoveredBlock544Value8 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock544Value7) rightAttachment: (recoveredBlock544Value8).
    recoveredBlock544Value9 := recoveredBlock544Value0.
    recoveredBlock544Value10 := recoveredLocal2.
    (recoveredBlock544Value9) rightWidget: (recoveredBlock544Value10).
    recoveredBlock544Value11 := (recoveredBlock544Value0) rightOffset: (10).
    recoveredBlock544Value11
].
            recoveredPC := 600.
        ].
        recoveredStep = 600 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 602.
        ].
        recoveredStep = 602 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 605.
        ].
        recoveredStep = 605 ifTrue: [
            recoveredStack2 := [:recoveredBlock605Arg1 | 
    | recoveredBlock605Value0 recoveredBlock605Value1 recoveredBlock605Value2 recoveredBlock605Value3 recoveredBlock605Value4 recoveredBlock605Value5 recoveredBlock605Value6 recoveredBlock605Value7 recoveredBlock605Value8 recoveredBlock605Value9 recoveredBlock605Value10 recoveredBlock605Value11 recoveredBlock605Value12 recoveredBlock605Value13 |
    recoveredBlock605Value0 := recoveredBlock605Arg1.
    recoveredBlock605Value1 := recoveredBlock605Value0.
    recoveredBlock605Value2 := XmATTACHWIDGET.
    (recoveredBlock605Value1) topAttachment: (recoveredBlock605Value2).
    recoveredBlock605Value3 := recoveredBlock605Value0.
    recoveredBlock605Value4 := recoveredLocal5.
    (recoveredBlock605Value3) topWidget: (recoveredBlock605Value4).
    recoveredBlock605Value5 := recoveredBlock605Value0.
    (recoveredBlock605Value5) topOffset: (10).
    recoveredBlock605Value6 := recoveredBlock605Value0.
    recoveredBlock605Value7 := XmATTACHFORM.
    (recoveredBlock605Value6) leftAttachment: (recoveredBlock605Value7).
    recoveredBlock605Value8 := recoveredBlock605Value0.
    (recoveredBlock605Value8) leftOffset: (5).
    recoveredBlock605Value9 := recoveredBlock605Value0.
    recoveredBlock605Value10 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock605Value9) rightAttachment: (recoveredBlock605Value10).
    recoveredBlock605Value11 := recoveredBlock605Value0.
    recoveredBlock605Value12 := recoveredLocal2.
    (recoveredBlock605Value11) rightWidget: (recoveredBlock605Value12).
    recoveredBlock605Value13 := (recoveredBlock605Value0) rightOffset: (10).
    recoveredBlock605Value13
].
            recoveredPC := 672.
        ].
        recoveredStep = 672 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 674.
        ].
        recoveredStep = 674 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 677.
        ].
        recoveredStep = 677 ifTrue: [
            recoveredStack2 := [:block28123ea4Arg1 | 
    | block28123ea4Value0 block28123ea4Value1 block28123ea4Value2 block28123ea4Value3 block28123ea4Value4 block28123ea4Value5 block28123ea4Value6 |
    block28123ea4Value0 := block28123ea4Arg1.
    block28123ea4Value1 := block28123ea4Value0.
    block28123ea4Value2 := XmATTACHFORM.
    (block28123ea4Value1) topAttachment: (block28123ea4Value2).
    block28123ea4Value3 := block28123ea4Value0.
    (block28123ea4Value3) topOffset: (5).
    block28123ea4Value4 := block28123ea4Value0.
    block28123ea4Value5 := XmATTACHFORM.
    (block28123ea4Value4) rightAttachment: (block28123ea4Value5).
    block28123ea4Value6 := (block28123ea4Value0) rightOffset: (5).
    block28123ea4Value6
].
            recoveredPC := 680.
        ].
        recoveredStep = 680 ifTrue: [
            recoveredPC := 712.
        ].
        recoveredStep = 712 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 714.
        ].
        recoveredStep = 714 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 717.
        ].
        recoveredStep = 717 ifTrue: [
            recoveredStack2 := [:block28123ec8Arg1 | 
    | block28123ec8Value0 block28123ec8Value1 block28123ec8Value2 block28123ec8Value3 block28123ec8Value4 block28123ec8Value5 block28123ec8Value6 |
    block28123ec8Value0 := block28123ec8Arg1.
    block28123ec8Value1 := block28123ec8Value0.
    block28123ec8Value2 := XmATTACHFORM.
    (block28123ec8Value1) topAttachment: (block28123ec8Value2).
    block28123ec8Value3 := block28123ec8Value0.
    (block28123ec8Value3) topOffset: (40).
    block28123ec8Value4 := block28123ec8Value0.
    block28123ec8Value5 := XmATTACHFORM.
    (block28123ec8Value4) rightAttachment: (block28123ec8Value5).
    block28123ec8Value6 := (block28123ec8Value0) rightOffset: (5).
    block28123ec8Value6
].
            recoveredPC := 720.
        ].
        recoveredStep = 720 ifTrue: [
            recoveredPC := 752.
        ].
        recoveredStep = 752 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 754.
        ].
        recoveredStep = 754 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 757.
        ].
        recoveredStep = 757 ifTrue: [
            recoveredStack2 := [:block28123eecArg1 | 
    | block28123eecValue0 block28123eecValue1 block28123eecValue2 block28123eecValue3 block28123eecValue4 block28123eecValue5 block28123eecValue6 block28123eecValue7 |
    block28123eecValue0 := block28123eecArg1.
    block28123eecValue1 := block28123eecValue0.
    block28123eecValue2 := XmATTACHFORM.
    (block28123eecValue1) bottomAttachment: (block28123eecValue2).
    block28123eecValue3 := block28123eecValue0.
    block28123eecValue4 := XmATTACHFORM.
    (block28123eecValue3) topAttachment: (block28123eecValue4).
    block28123eecValue5 := block28123eecValue0.
    block28123eecValue6 := XmATTACHFORM.
    (block28123eecValue5) rightAttachment: (block28123eecValue6).
    block28123eecValue7 := (block28123eecValue0) rightOffset: (95).
    block28123eecValue7
].
            recoveredPC := 760.
        ].
        recoveredStep = 760 ifTrue: [
            recoveredPC := 794.
        ].
        recoveredStep = 794 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 796.
        ].
        recoveredStep = 796 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 799.
        ].
        recoveredStep = 799 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 802.
        ].
        recoveredStep = 802 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 803.
        ].
        recoveredStep = 803 ifTrue: [
            recoveredStack4 := 'buttonOkActivate:clientData:callData:'.
            recoveredPC := 806.
        ].
        recoveredStep = 806 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 807.
        ].
        recoveredStep = 807 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 811.
        ].
        recoveredStep = 811 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 814.
        ].
        recoveredStep = 814 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 818.
        ].
        recoveredStep = 818 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 819.
        ].
        recoveredStep = 819 ifTrue: [
            recoveredStack4 := 'buttonCancelActivate:clientData:callData:'.
            recoveredPC := 822.
        ].
        recoveredStep = 822 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 823.
        ].
        recoveredStep = 823 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 827.
        ].
        recoveredStep = 827 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 830.
        ].
        recoveredStep = 830 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 835.
        ].
        recoveredStep = 835 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 838.
        ].
        recoveredStep = 838 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 843.
        ].
        recoveredStep = 843 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 846.
        ].
        recoveredStep = 846 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 851.
        ].
        recoveredStep = 851 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 854.
        ].
        recoveredStep = 854 ifTrue: [
            recoveredStack2 := recoveredLocal11.
            recoveredPC := 857.
        ].
        recoveredStep = 857 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 860.
        ].
        recoveredStep = 860 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 865.
        ].
        recoveredStep = 865 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

