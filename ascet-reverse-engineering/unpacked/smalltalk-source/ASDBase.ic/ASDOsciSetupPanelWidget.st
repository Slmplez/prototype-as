"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000629c; bytecode file offset 0x902de8"
!ASDOsciSetupPanelWidget methodsFor: 'recovered'!
numericFieldModify: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    ^self
! !

"ASDBase.ic method 0x20050670; bytecode file offset 0x94d048"
!ASDOsciSetupPanelWidget methodsFor: 'recovered'!
initializeAfterOpen
    (self) setCheckMethodeForValues.
    ^self
! !

"ASDBase.ic method 0x2006e214; bytecode file offset 0x96af48"
!ASDOsciSetupPanelWidget methodsFor: 'recovered'!
wMin
    | recoveredValue0 |
    recoveredValue0 := wMin.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006e8f8; bytecode file offset 0x96b41c"
!ASDOsciSetupPanelWidget methodsFor: 'recovered'!
wMax
    | recoveredValue0 |
    recoveredValue0 := wMax.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200aef38; bytecode file offset 0x9ab7f4"
!ASDOsciSetupPanelWidget methodsFor: 'recovered'!
numericFieldLosing: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) clearSelection.
    (self) checkValues.
    ^self
! !

"ASDBase.ic method 0x200ddfec; bytecode file offset 0x9da8ac"
!ASDOsciSetupPanelWidget methodsFor: 'recovered'!
numericFieldFocus: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) getLastPosition.
    recoveredValue3 := (0) @ (recoveredValue2).
    (recoveredValue0) setSelection: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x200fcd9c; bytecode file offset 0x9f965c"
!ASDOsciSetupPanelWidget methodsFor: 'recovered'!
xExt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    xExt := recoveredValue0.
    recoveredValue1 := (self) xExtentField.
    recoveredValue2 := xExt.
    recoveredValue3 := (recoveredValue2) printString.
    (recoveredValue1) value: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20100584; bytecode file offset 0x9fce40"
!ASDOsciSetupPanelWidget methodsFor: 'recovered'!
numberFromString: recoveredArg1 hex: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 11].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIntegerFromHex.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) asFloat.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20105f7c; bytecode file offset 0xa028a0"
!ASDOsciSetupPanelWidget methodsFor: 'recovered'!
extentLabel
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := widgetDictionary.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 'extentLabel'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20105f90; bytecode file offset 0xa028a0"
!ASDOsciSetupPanelWidget methodsFor: 'recovered'!
wMaxField
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := widgetDictionary.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 'wMaxField'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20105fa4; bytecode file offset 0xa028a0"
!ASDOsciSetupPanelWidget methodsFor: 'recovered'!
fromLabel
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := widgetDictionary.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 'fromLabel'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20105fb8; bytecode file offset 0xa028a0"
!ASDOsciSetupPanelWidget methodsFor: 'recovered'!
wMinField
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := widgetDictionary.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 'wMinField'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20105fcc; bytecode file offset 0xa028a0"
!ASDOsciSetupPanelWidget methodsFor: 'recovered'!
xExtentField
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := widgetDictionary.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 'xExtentField'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20105fe0; bytecode file offset 0xa028a0"
!ASDOsciSetupPanelWidget methodsFor: 'recovered'!
toLabel
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := widgetDictionary.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 'toLabel'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201437f0; bytecode file offset 0xa400b8"
!ASDOsciSetupPanelWidget methodsFor: 'recovered'!
wMin: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    wMin := recoveredValue0.
    recoveredValue1 := (self) wMinField.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) owner.
    recoveredValue4 := (recoveredValue3) hexView.
    recoveredValue5 := (self) stringFromNumber: (recoveredValue2) hex: (recoveredValue4).
    (recoveredValue1) value: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x20143820; bytecode file offset 0xa400e8"
!ASDOsciSetupPanelWidget methodsFor: 'recovered'!
wMax: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    wMax := recoveredValue0.
    recoveredValue1 := (self) wMaxField.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) owner.
    recoveredValue4 := (recoveredValue3) hexView.
    recoveredValue5 := (self) stringFromNumber: (recoveredValue2) hex: (recoveredValue4).
    (recoveredValue1) value: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x20187ba4; bytecode file offset 0xa84478"
!ASDOsciSetupPanelWidget methodsFor: 'recovered'!
stringFromNumber: recoveredArg1 hex: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 11] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) asHexString.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) printString.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201fe43c; bytecode file offset 0xafad18"
!ASDOsciSetupPanelWidget methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) fromLabel.
    recoveredValue1 := SCFrom.
    (recoveredValue0) labelString: (recoveredValue1).
    recoveredValue2 := (self) toLabel.
    recoveredValue3 := SCTo.
    (recoveredValue2) labelString: (recoveredValue3).
    recoveredValue4 := (self) extentLabel.
    recoveredValue5 := ('Extent') , (' [s]').
    (recoveredValue4) labelString: (recoveredValue5).
    (self) initializeFocusCallbacks.
    ^self
! !

"ASDBase.ic method 0x2027b038; bytecode file offset 0xb77908"
!ASDOsciSetupPanelWidget methodsFor: 'recovered'!
fieldHeight: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) fontStruct.
    recoveredValue2 := (recoveredValue1) height.
    recoveredValue3 := (recoveredValue2) + (4).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := (self) xExtentField.
    recoveredValue5 := recoveredValue4.
    recoveredValue6 := recoveredArg1.
    (recoveredValue5) fontList: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    (recoveredValue4) height: (recoveredValue7).
    recoveredValue8 := (self) wMinField.
    recoveredValue9 := recoveredValue8.
    recoveredValue10 := recoveredArg1.
    (recoveredValue9) fontList: (recoveredValue10).
    recoveredValue11 := recoveredLocal1.
    (recoveredValue8) height: (recoveredValue11).
    recoveredValue12 := (self) wMaxField.
    recoveredValue13 := recoveredValue12.
    recoveredValue14 := recoveredArg1.
    (recoveredValue13) fontList: (recoveredValue14).
    recoveredValue15 := recoveredLocal1.
    (recoveredValue12) height: (recoveredValue15).
    ^self
! !

"ASDBase.ic method 0x202eb194; bytecode file offset 0xbe7a68"
!ASDOsciSetupPanelWidget methodsFor: 'recovered'!
fontList: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := recoveredArg1.
    smallFont := recoveredValue0.
    recoveredValue1 := (self) wMinField.
    recoveredValue2 := smallFont.
    (recoveredValue1) fontList: (recoveredValue2).
    recoveredValue3 := (self) wMaxField.
    recoveredValue4 := smallFont.
    (recoveredValue3) fontList: (recoveredValue4).
    recoveredValue5 := (self) xExtentField.
    recoveredValue6 := smallFont.
    (recoveredValue5) fontList: (recoveredValue6).
    recoveredValue7 := (self) fromLabel.
    recoveredValue8 := smallFont.
    (recoveredValue7) fontList: (recoveredValue8).
    recoveredValue9 := (self) toLabel.
    recoveredValue10 := smallFont.
    (recoveredValue9) fontList: (recoveredValue10).
    recoveredValue11 := (self) extentLabel.
    recoveredValue12 := smallFont.
    (recoveredValue11) fontList: (recoveredValue12).
    recoveredValue13 := smallFont.
    (self) fieldHeight: (recoveredValue13).
    ^self
! !

"ASDBase.ic method 0x20357c34; bytecode file offset 0xc54510"
!ASDOsciSetupPanelWidget methodsFor: 'recovered'!
initializeLabelColors
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 |
    recoveredValue0 := (self) defaultBackgroundGray.
    recoveredLocal3 := recoveredValue0.
    recoveredValue1 := recoveredLocal3.
    recoveredValue2 := (recoveredValue1) asOSRGB.
    recoveredLocal3 := recoveredValue2.
    recoveredValue3 := CgStockObjects.
    recoveredValue4 := (recoveredValue3) etasGrayBrush.
    recoveredLocal2 := recoveredValue4.
    recoveredValue5 := recoveredLocal3.
    recoveredValue6 := recoveredLocal2.
    (self) background: (recoveredValue5) brush: (recoveredValue6).
    recoveredValue7 := (self) fromLabel.
    recoveredValue8 := recoveredLocal3.
    recoveredValue9 := recoveredLocal2.
    (recoveredValue7) background: (recoveredValue8) brush: (recoveredValue9).
    recoveredValue10 := (self) fromLabel.
    recoveredValue11 := (self) defaultLabelBlue.
    (recoveredValue10) foregroundColor: (recoveredValue11).
    recoveredValue12 := (self) toLabel.
    recoveredValue13 := recoveredLocal3.
    recoveredValue14 := recoveredLocal2.
    (recoveredValue12) background: (recoveredValue13) brush: (recoveredValue14).
    recoveredValue15 := (self) toLabel.
    recoveredValue16 := (self) defaultLabelBlue.
    (recoveredValue15) foregroundColor: (recoveredValue16).
    recoveredValue17 := (self) extentLabel.
    recoveredValue18 := recoveredLocal3.
    recoveredValue19 := recoveredLocal2.
    (recoveredValue17) background: (recoveredValue18) brush: (recoveredValue19).
    recoveredValue20 := (self) extentLabel.
    recoveredValue21 := (self) defaultLabelBlue.
    (recoveredValue20) foregroundColor: (recoveredValue21).
    ^self
! !

"ASDBase.ic method 0x2035971c; bytecode file offset 0xc55ff4"
!ASDOsciSetupPanelWidget methodsFor: 'recovered'!
setCheckMethodeForValues
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) xExtentField.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'checkFloat:'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) characterMethod: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) noMenu.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) owner.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) hexView.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) wMinField.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := 'checkHex:'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) characterMethod: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) noMenu.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) wMaxField.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := 'checkHex:'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) characterMethod: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) noMenu.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredPC := 64.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) wMinField.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := 'checkFloat:'.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1) characterMethod: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) noMenu.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) wMaxField.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := 'checkFloat:'.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack1) characterMethod: (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) noMenu.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203b4038; bytecode file offset 0xcb0918"
!ASDOsciSetupPanelWidget methodsFor: 'recovered'!
initializeFocusCallbacks
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    recoveredValue0 := (self) wMinField.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := XmNfocusCallback.
    recoveredValue3 := (self) fromLabel.
    (recoveredValue1) addCallback: (recoveredValue2) receiver: (self) selector: ('gettingFocus:clientData:callData:') clientData: (recoveredValue3).
    recoveredValue4 := XmNlosingFocusCallback.
    recoveredValue5 := (self) fromLabel.
    (recoveredValue0) addCallback: (recoveredValue4) receiver: (self) selector: ('losingFocus:clientData:callData:') clientData: (recoveredValue5).
    recoveredValue6 := (self) wMaxField.
    recoveredValue7 := recoveredValue6.
    recoveredValue8 := XmNfocusCallback.
    recoveredValue9 := (self) toLabel.
    (recoveredValue7) addCallback: (recoveredValue8) receiver: (self) selector: ('gettingFocus:clientData:callData:') clientData: (recoveredValue9).
    recoveredValue10 := XmNlosingFocusCallback.
    recoveredValue11 := (self) toLabel.
    (recoveredValue6) addCallback: (recoveredValue10) receiver: (self) selector: ('losingFocus:clientData:callData:') clientData: (recoveredValue11).
    recoveredValue12 := (self) xExtentField.
    recoveredValue13 := recoveredValue12.
    recoveredValue14 := XmNfocusCallback.
    recoveredValue15 := (self) extentLabel.
    (recoveredValue13) addCallback: (recoveredValue14) receiver: (self) selector: ('gettingFocus:clientData:callData:') clientData: (recoveredValue15).
    recoveredValue16 := XmNlosingFocusCallback.
    recoveredValue17 := (self) extentLabel.
    (recoveredValue12) addCallback: (recoveredValue16) receiver: (self) selector: ('losingFocus:clientData:callData:') clientData: (recoveredValue17).
    ^self
! !

"ASDBase.ic method 0x204d3da4; bytecode file offset 0xdd06cc"
!ASDOsciSetupPanelWidget methodsFor: 'recovered'!
update
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) owner.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
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
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) owner.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) xExt.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) xExt: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) owner.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) wMin.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) wMin: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) owner.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) wMax.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) wMax: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) setCheckMethodeForValues.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) wMinField.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) owner.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := (recoveredStack2) wMin.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := (recoveredStack3) owner.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := (recoveredStack3) hexView.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) stringFromNumber: (recoveredStack2) hex: (recoveredStack3).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) wMaxField.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := (recoveredStack2) owner.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := (recoveredStack2) wMax.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := (recoveredStack3) owner.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := (recoveredStack3) hexView.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) stringFromNumber: (recoveredStack2) hex: (recoveredStack3).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := String.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) owner.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) hexView.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 87].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := ' ['.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := SCHex.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := ']'.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := (recoveredStack0) owner.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOffsetExtentInterpretation.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 130].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) fromLabel.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := SCRange.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := Blank.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := SCSetupOffset.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := (recoveredStack0) toLabel.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := SCSetupHeight.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := wMax.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack2 := wMin.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            (recoveredStack0) wMax: (recoveredStack1).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredPC := 155.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack0 := (recoveredStack0) fromLabel.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := SCRange.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack2 := Blank.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack2 := SCFrom.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack0 := (recoveredStack0) toLabel.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := SCTo.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2051a268; bytecode file offset 0xe16b88"
!ASDOsciSetupPanelWidget methodsFor: 'recovered'!
checkValues
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) xExtentField.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 51] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) xExtentField.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) asFloat.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) <= (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := OSWidget.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) bell.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) xExtentField.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := xExt.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) xExtentField.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) xExt: (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) owner.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) setXExtent: (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) wMinField.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSensitive.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 177].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) wMinField.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := (recoveredStack2) owner.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := (recoveredStack2) hexView.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) numberFromString: (recoveredStack1) hex: (recoveredStack2).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) wMaxField.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := (recoveredStack2) owner.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := (recoveredStack2) hexView.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) numberFromString: (recoveredStack1) hex: (recoveredStack2).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := (recoveredStack0) owner.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOffsetExtentInterpretation.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 124].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := #[0 0 0 0 0 0 0 0].
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := (recoveredStack0) <= (recoveredStack1).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 102] ifFalse: [recoveredPC := 120].
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := OSWidget.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack0) bell.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := (recoveredStack1) wMin.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack0) wMin: (recoveredStack1).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := (recoveredStack1) wMax.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack0) wMax: (recoveredStack1).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 120 ifTrue: [
            recoveredPC := 148.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := (recoveredStack0) >= (recoveredStack1).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 130] ifFalse: [recoveredPC := 148].
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := OSWidget.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            (recoveredStack0) bell.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := (recoveredStack1) wMin.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            (recoveredStack0) wMin: (recoveredStack1).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := (recoveredStack1) wMax.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            (recoveredStack0) wMax: (recoveredStack1).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack0 := (recoveredStack0) owner.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack3 := (recoveredStack3) owner.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack3 := (recoveredStack3) connectionType.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            (recoveredStack0) setWMin: (recoveredStack1) max: (recoveredStack2) lineType: (recoveredStack3) color: (recoveredStack4).
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            (recoveredStack0) wMin: (recoveredStack1).
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            (recoveredStack0) wMax: (recoveredStack1).
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack0 := (recoveredStack0) owner.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack1 := 'all'.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            (recoveredStack0) refreshDataTableList: (recoveredStack1).
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack0 := (recoveredStack0) owner.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack1 := (recoveredStack1) owner.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasGrid.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            (recoveredStack0) showGrid: (recoveredStack1) redraw: (recoveredStack2).
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20640100; bytecode file offset 0xf3ca94"
!ASDOsciSetupPanelWidget methodsFor: 'recovered'!
createWidgetHierarchy
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
            recoveredStack0 := (recoveredStack0) primaryWidget.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal9 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal14.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := 'mainForm'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := 'wMinField'.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := [:recoveredBlock39Arg1 | 
    | recoveredBlock39Value0 recoveredBlock39Value1 recoveredBlock39Value2 recoveredBlock39Value3 recoveredBlock39Value4 recoveredBlock39Value5 recoveredBlock39Value6 recoveredBlock39Value7 recoveredBlock39Value8 |
    recoveredBlock39Value0 := recoveredBlock39Arg1.
    recoveredBlock39Value1 := recoveredBlock39Value0.
    recoveredBlock39Value2 := recoveredLocal13.
    recoveredBlock39Value3 := (50) * (recoveredBlock39Value2).
    recoveredBlock39Value4 := (recoveredBlock39Value3) rounded.
    (recoveredBlock39Value1) x: (recoveredBlock39Value4).
    recoveredBlock39Value5 := recoveredLocal12.
    recoveredBlock39Value6 := (20) * (recoveredBlock39Value5).
    recoveredBlock39Value7 := (recoveredBlock39Value6) rounded.
    recoveredBlock39Value8 := (recoveredBlock39Value0) y: (recoveredBlock39Value7).
    recoveredBlock39Value8
].
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) createEnhancedText: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := recoveredLocal14.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := 'wMinField'.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := 'wMaxField'.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := [:recoveredBlock91Arg1 | 
    | recoveredBlock91Value0 recoveredBlock91Value1 recoveredBlock91Value2 recoveredBlock91Value3 recoveredBlock91Value4 recoveredBlock91Value5 recoveredBlock91Value6 recoveredBlock91Value7 recoveredBlock91Value8 |
    recoveredBlock91Value0 := recoveredBlock91Arg1.
    recoveredBlock91Value1 := recoveredBlock91Value0.
    recoveredBlock91Value2 := recoveredLocal13.
    recoveredBlock91Value3 := (170) * (recoveredBlock91Value2).
    recoveredBlock91Value4 := (recoveredBlock91Value3) rounded.
    (recoveredBlock91Value1) x: (recoveredBlock91Value4).
    recoveredBlock91Value5 := recoveredLocal12.
    recoveredBlock91Value6 := (20) * (recoveredBlock91Value5).
    recoveredBlock91Value7 := (recoveredBlock91Value6) rounded.
    recoveredBlock91Value8 := (recoveredBlock91Value0) y: (recoveredBlock91Value7).
    recoveredBlock91Value8
].
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := (recoveredStack0) createEnhancedText: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := recoveredLocal14.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := 'wMaxField'.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := 'xExtentField'.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack2 := [:recoveredBlock145Arg1 | 
    | recoveredBlock145Value0 recoveredBlock145Value1 recoveredBlock145Value2 recoveredBlock145Value3 recoveredBlock145Value4 recoveredBlock145Value5 recoveredBlock145Value6 recoveredBlock145Value7 recoveredBlock145Value8 |
    recoveredBlock145Value0 := recoveredBlock145Arg1.
    recoveredBlock145Value1 := recoveredBlock145Value0.
    recoveredBlock145Value2 := recoveredLocal13.
    recoveredBlock145Value3 := (320) * (recoveredBlock145Value2).
    recoveredBlock145Value4 := (recoveredBlock145Value3) rounded.
    (recoveredBlock145Value1) x: (recoveredBlock145Value4).
    recoveredBlock145Value5 := recoveredLocal12.
    recoveredBlock145Value6 := (20) * (recoveredBlock145Value5).
    recoveredBlock145Value7 := (recoveredBlock145Value6) rounded.
    recoveredBlock145Value8 := (recoveredBlock145Value0) y: (recoveredBlock145Value7).
    recoveredBlock145Value8
].
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack0 := (recoveredStack0) createEnhancedText: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack0 := recoveredLocal14.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack1 := 'xExtentField'.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack1 := 'fromLabel'.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack2 := [:block28121de0Arg1 | 
    | block28121de0Value0 block28121de0Value1 block28121de0Value2 block28121de0Value3 |
    block28121de0Value0 := block28121de0Arg1.
    block28121de0Value1 := block28121de0Value0.
    block28121de0Value2 := XmALIGNMENTBEGINNING.
    (block28121de0Value1) alignment: (block28121de0Value2).
    block28121de0Value3 := (block28121de0Value0) labelString: ('von').
    block28121de0Value3
].
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack0 := recoveredLocal14.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack1 := 'fromLabel'.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack1 := 'toLabel'.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack2 := [:block28121e04Arg1 | 
    | block28121e04Value0 block28121e04Value1 block28121e04Value2 block28121e04Value3 |
    block28121e04Value0 := block28121e04Arg1.
    block28121e04Value1 := block28121e04Value0.
    block28121e04Value2 := XmALIGNMENTBEGINNING.
    (block28121e04Value1) alignment: (block28121e04Value2).
    block28121e04Value3 := (block28121e04Value0) labelString: ('bis').
    block28121e04Value3
].
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack0 := recoveredLocal14.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack1 := 'toLabel'.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack1 := 'extentLabel'.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack2 := [:block28121e28Arg1 | 
    | block28121e28Value0 block28121e28Value1 block28121e28Value2 block28121e28Value3 block28121e28Value4 |
    block28121e28Value0 := block28121e28Arg1.
    block28121e28Value1 := block28121e28Value0.
    block28121e28Value2 := XmALIGNMENTBEGINNING.
    (block28121e28Value1) alignment: (block28121e28Value2).
    block28121e28Value3 := (String new: 5) at: 1 put: (Character value: 76); at: 2 put: (Character value: 228); at: 3 put: (Character value: 110); at: 4 put: (Character value: 103); at: 5 put: (Character value: 101); yourself.
    block28121e28Value4 := (block28121e28Value0) labelString: (block28121e28Value3).
    block28121e28Value4
].
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack0 := recoveredLocal14.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack1 := 'extentLabel'.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack1 := [:block28121e4cArg1 | 
    | block28121e4cValue0 block28121e4cValue1 block28121e4cValue2 block28121e4cValue3 block28121e4cValue4 block28121e4cValue5 block28121e4cValue6 block28121e4cValue7 block28121e4cValue8 block28121e4cValue9 |
    block28121e4cValue0 := block28121e4cArg1.
    block28121e4cValue1 := block28121e4cValue0.
    block28121e4cValue2 := XmATTACHFORM.
    (block28121e4cValue1) topAttachment: (block28121e4cValue2).
    block28121e4cValue3 := block28121e4cValue0.
    (block28121e4cValue3) topOffset: (0).
    block28121e4cValue4 := block28121e4cValue0.
    block28121e4cValue5 := XmATTACHFORM.
    (block28121e4cValue4) leftAttachment: (block28121e4cValue5).
    block28121e4cValue6 := block28121e4cValue0.
    (block28121e4cValue6) leftOffset: (3).
    block28121e4cValue7 := block28121e4cValue0.
    block28121e4cValue8 := XmATTACHPOSITION.
    (block28121e4cValue7) rightAttachment: (block28121e4cValue8).
    block28121e4cValue9 := (block28121e4cValue0) rightPosition: (33).
    block28121e4cValue9
].
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack1 := [:recoveredBlock352Arg1 | 
    | recoveredBlock352Value0 recoveredBlock352Value1 recoveredBlock352Value2 recoveredBlock352Value3 recoveredBlock352Value4 recoveredBlock352Value5 recoveredBlock352Value6 recoveredBlock352Value7 recoveredBlock352Value8 recoveredBlock352Value9 recoveredBlock352Value10 recoveredBlock352Value11 |
    recoveredBlock352Value0 := recoveredBlock352Arg1.
    recoveredBlock352Value1 := recoveredBlock352Value0.
    recoveredBlock352Value2 := XmATTACHFORM.
    (recoveredBlock352Value1) topAttachment: (recoveredBlock352Value2).
    recoveredBlock352Value3 := recoveredBlock352Value0.
    (recoveredBlock352Value3) topOffset: (0).
    recoveredBlock352Value4 := recoveredBlock352Value0.
    recoveredBlock352Value5 := XmATTACHWIDGET.
    (recoveredBlock352Value4) leftAttachment: (recoveredBlock352Value5).
    recoveredBlock352Value6 := recoveredBlock352Value0.
    recoveredBlock352Value7 := recoveredLocal5.
    (recoveredBlock352Value6) leftWidget: (recoveredBlock352Value7).
    recoveredBlock352Value8 := recoveredBlock352Value0.
    (recoveredBlock352Value8) leftOffset: (3).
    recoveredBlock352Value9 := recoveredBlock352Value0.
    recoveredBlock352Value10 := XmATTACHPOSITION.
    (recoveredBlock352Value9) rightAttachment: (recoveredBlock352Value10).
    recoveredBlock352Value11 := (recoveredBlock352Value0) rightPosition: (66).
    recoveredBlock352Value11
].
            recoveredPC := 397.
        ].
        recoveredStep = 397 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 402.
        ].
        recoveredStep = 402 ifTrue: [
            recoveredStack1 := [:recoveredBlock402Arg1 | 
    | recoveredBlock402Value0 recoveredBlock402Value1 recoveredBlock402Value2 recoveredBlock402Value3 recoveredBlock402Value4 recoveredBlock402Value5 recoveredBlock402Value6 recoveredBlock402Value7 recoveredBlock402Value8 recoveredBlock402Value9 recoveredBlock402Value10 recoveredBlock402Value11 |
    recoveredBlock402Value0 := recoveredBlock402Arg1.
    recoveredBlock402Value1 := recoveredBlock402Value0.
    recoveredBlock402Value2 := XmATTACHFORM.
    (recoveredBlock402Value1) topAttachment: (recoveredBlock402Value2).
    recoveredBlock402Value3 := recoveredBlock402Value0.
    (recoveredBlock402Value3) topOffset: (0).
    recoveredBlock402Value4 := recoveredBlock402Value0.
    recoveredBlock402Value5 := XmATTACHWIDGET.
    (recoveredBlock402Value4) leftAttachment: (recoveredBlock402Value5).
    recoveredBlock402Value6 := recoveredBlock402Value0.
    recoveredBlock402Value7 := recoveredLocal4.
    (recoveredBlock402Value6) leftWidget: (recoveredBlock402Value7).
    recoveredBlock402Value8 := recoveredBlock402Value0.
    (recoveredBlock402Value8) leftOffset: (3).
    recoveredBlock402Value9 := recoveredBlock402Value0.
    recoveredBlock402Value10 := XmATTACHFORM.
    (recoveredBlock402Value9) rightAttachment: (recoveredBlock402Value10).
    recoveredBlock402Value11 := (recoveredBlock402Value0) rightOffset: (3).
    recoveredBlock402Value11
].
            recoveredPC := 445.
        ].
        recoveredStep = 445 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 447.
        ].
        recoveredStep = 447 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 450.
        ].
        recoveredStep = 450 ifTrue: [
            recoveredStack1 := [:block28121e70Arg1 | 
    | block28121e70Value0 block28121e70Value1 block28121e70Value2 block28121e70Value3 block28121e70Value4 block28121e70Value5 block28121e70Value6 block28121e70Value7 block28121e70Value8 block28121e70Value9 |
    block28121e70Value0 := block28121e70Arg1.
    block28121e70Value1 := block28121e70Value0.
    block28121e70Value2 := XmATTACHFORM.
    (block28121e70Value1) bottomAttachment: (block28121e70Value2).
    block28121e70Value3 := block28121e70Value0.
    (block28121e70Value3) bottomOffset: (3).
    block28121e70Value4 := block28121e70Value0.
    block28121e70Value5 := XmATTACHFORM.
    (block28121e70Value4) leftAttachment: (block28121e70Value5).
    block28121e70Value6 := block28121e70Value0.
    (block28121e70Value6) leftOffset: (3).
    block28121e70Value7 := block28121e70Value0.
    block28121e70Value8 := XmATTACHPOSITION.
    (block28121e70Value7) rightAttachment: (block28121e70Value8).
    block28121e70Value9 := (block28121e70Value0) rightPosition: (33).
    block28121e70Value9
].
            recoveredPC := 452.
        ].
        recoveredStep = 452 ifTrue: [
            recoveredPC := 487.
        ].
        recoveredStep = 487 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 489.
        ].
        recoveredStep = 489 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 492.
        ].
        recoveredStep = 492 ifTrue: [
            recoveredStack1 := [:recoveredBlock492Arg1 | 
    | recoveredBlock492Value0 recoveredBlock492Value1 recoveredBlock492Value2 recoveredBlock492Value3 recoveredBlock492Value4 recoveredBlock492Value5 recoveredBlock492Value6 recoveredBlock492Value7 recoveredBlock492Value8 recoveredBlock492Value9 recoveredBlock492Value10 recoveredBlock492Value11 |
    recoveredBlock492Value0 := recoveredBlock492Arg1.
    recoveredBlock492Value1 := recoveredBlock492Value0.
    recoveredBlock492Value2 := XmATTACHFORM.
    (recoveredBlock492Value1) bottomAttachment: (recoveredBlock492Value2).
    recoveredBlock492Value3 := recoveredBlock492Value0.
    (recoveredBlock492Value3) bottomOffset: (3).
    recoveredBlock492Value4 := recoveredBlock492Value0.
    recoveredBlock492Value5 := XmATTACHWIDGET.
    (recoveredBlock492Value4) leftAttachment: (recoveredBlock492Value5).
    recoveredBlock492Value6 := recoveredBlock492Value0.
    recoveredBlock492Value7 := recoveredLocal8.
    (recoveredBlock492Value6) leftWidget: (recoveredBlock492Value7).
    recoveredBlock492Value8 := recoveredBlock492Value0.
    (recoveredBlock492Value8) leftOffset: (3).
    recoveredBlock492Value9 := recoveredBlock492Value0.
    recoveredBlock492Value10 := XmATTACHPOSITION.
    (recoveredBlock492Value9) rightAttachment: (recoveredBlock492Value10).
    recoveredBlock492Value11 := (recoveredBlock492Value0) rightPosition: (66).
    recoveredBlock492Value11
].
            recoveredPC := 537.
        ].
        recoveredStep = 537 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 539.
        ].
        recoveredStep = 539 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 542.
        ].
        recoveredStep = 542 ifTrue: [
            recoveredStack1 := [:recoveredBlock542Arg1 | 
    | recoveredBlock542Value0 recoveredBlock542Value1 recoveredBlock542Value2 recoveredBlock542Value3 recoveredBlock542Value4 recoveredBlock542Value5 recoveredBlock542Value6 recoveredBlock542Value7 recoveredBlock542Value8 recoveredBlock542Value9 recoveredBlock542Value10 recoveredBlock542Value11 |
    recoveredBlock542Value0 := recoveredBlock542Arg1.
    recoveredBlock542Value1 := recoveredBlock542Value0.
    recoveredBlock542Value2 := XmATTACHFORM.
    (recoveredBlock542Value1) bottomAttachment: (recoveredBlock542Value2).
    recoveredBlock542Value3 := recoveredBlock542Value0.
    (recoveredBlock542Value3) bottomOffset: (3).
    recoveredBlock542Value4 := recoveredBlock542Value0.
    recoveredBlock542Value5 := XmATTACHWIDGET.
    (recoveredBlock542Value4) leftAttachment: (recoveredBlock542Value5).
    recoveredBlock542Value6 := recoveredBlock542Value0.
    recoveredBlock542Value7 := recoveredLocal7.
    (recoveredBlock542Value6) leftWidget: (recoveredBlock542Value7).
    recoveredBlock542Value8 := recoveredBlock542Value0.
    (recoveredBlock542Value8) leftOffset: (3).
    recoveredBlock542Value9 := recoveredBlock542Value0.
    recoveredBlock542Value10 := XmATTACHFORM.
    (recoveredBlock542Value9) rightAttachment: (recoveredBlock542Value10).
    recoveredBlock542Value11 := (recoveredBlock542Value0) rightOffset: (3).
    recoveredBlock542Value11
].
            recoveredPC := 585.
        ].
        recoveredStep = 585 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 587.
        ].
        recoveredStep = 587 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 590.
        ].
        recoveredStep = 590 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 591.
        ].
        recoveredStep = 591 ifTrue: [
            recoveredStack2 := XmNfocusCallback.
            recoveredPC := 593.
        ].
        recoveredStep = 593 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 594.
        ].
        recoveredStep = 594 ifTrue: [
            recoveredStack4 := 'numericFieldFocus:clientData:callData:'.
            recoveredPC := 596.
        ].
        recoveredStep = 596 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 597.
        ].
        recoveredStep = 597 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 600.
        ].
        recoveredStep = 600 ifTrue: [
            recoveredStack2 := XmNlosingFocusCallback.
            recoveredPC := 602.
        ].
        recoveredStep = 602 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 603.
        ].
        recoveredStep = 603 ifTrue: [
            recoveredStack4 := 'numericFieldLosing:clientData:callData:'.
            recoveredPC := 605.
        ].
        recoveredStep = 605 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 606.
        ].
        recoveredStep = 606 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 609.
        ].
        recoveredStep = 609 ifTrue: [
            recoveredStack1 := XmNmodifyVerifyCallback.
            recoveredPC := 611.
        ].
        recoveredStep = 611 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 612.
        ].
        recoveredStep = 612 ifTrue: [
            recoveredStack3 := 'numericFieldModify:clientData:callData:'.
            recoveredPC := 614.
        ].
        recoveredStep = 614 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 615.
        ].
        recoveredStep = 615 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 618.
        ].
        recoveredStep = 618 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 621.
        ].
        recoveredStep = 621 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 622.
        ].
        recoveredStep = 622 ifTrue: [
            recoveredStack2 := XmNfocusCallback.
            recoveredPC := 624.
        ].
        recoveredStep = 624 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 625.
        ].
        recoveredStep = 625 ifTrue: [
            recoveredStack4 := 'numericFieldFocus:clientData:callData:'.
            recoveredPC := 627.
        ].
        recoveredStep = 627 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 628.
        ].
        recoveredStep = 628 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 631.
        ].
        recoveredStep = 631 ifTrue: [
            recoveredStack2 := XmNlosingFocusCallback.
            recoveredPC := 633.
        ].
        recoveredStep = 633 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 634.
        ].
        recoveredStep = 634 ifTrue: [
            recoveredStack4 := 'numericFieldLosing:clientData:callData:'.
            recoveredPC := 636.
        ].
        recoveredStep = 636 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 637.
        ].
        recoveredStep = 637 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 640.
        ].
        recoveredStep = 640 ifTrue: [
            recoveredStack1 := XmNmodifyVerifyCallback.
            recoveredPC := 642.
        ].
        recoveredStep = 642 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 643.
        ].
        recoveredStep = 643 ifTrue: [
            recoveredStack3 := 'numericFieldModify:clientData:callData:'.
            recoveredPC := 645.
        ].
        recoveredStep = 645 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 646.
        ].
        recoveredStep = 646 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 649.
        ].
        recoveredStep = 649 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 652.
        ].
        recoveredStep = 652 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 653.
        ].
        recoveredStep = 653 ifTrue: [
            recoveredStack2 := XmNfocusCallback.
            recoveredPC := 655.
        ].
        recoveredStep = 655 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 656.
        ].
        recoveredStep = 656 ifTrue: [
            recoveredStack4 := 'numericFieldFocus:clientData:callData:'.
            recoveredPC := 658.
        ].
        recoveredStep = 658 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 659.
        ].
        recoveredStep = 659 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 662.
        ].
        recoveredStep = 662 ifTrue: [
            recoveredStack2 := XmNlosingFocusCallback.
            recoveredPC := 664.
        ].
        recoveredStep = 664 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 665.
        ].
        recoveredStep = 665 ifTrue: [
            recoveredStack4 := 'numericFieldLosing:clientData:callData:'.
            recoveredPC := 667.
        ].
        recoveredStep = 667 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 668.
        ].
        recoveredStep = 668 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 671.
        ].
        recoveredStep = 671 ifTrue: [
            recoveredStack1 := XmNmodifyVerifyCallback.
            recoveredPC := 673.
        ].
        recoveredStep = 673 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 674.
        ].
        recoveredStep = 674 ifTrue: [
            recoveredStack3 := 'numericFieldModify:clientData:callData:'.
            recoveredPC := 676.
        ].
        recoveredStep = 676 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 677.
        ].
        recoveredStep = 677 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 680.
        ].
        recoveredStep = 680 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 683.
        ].
        recoveredStep = 683 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 685.
        ].
        recoveredStep = 685 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 688.
        ].
        recoveredStep = 688 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 690.
        ].
        recoveredStep = 690 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 693.
        ].
        recoveredStep = 693 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 695.
        ].
        recoveredStep = 695 ifTrue: [
            recoveredStack0 := recoveredLocal14.
            recoveredPC := 698.
        ].
        recoveredStep = 698 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

