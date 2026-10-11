"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004370c; bytecode file offset 0x9451f8"
!ASDPrintDiagramDialog methodsFor: 'recovered'!
widgetCurrentComponentRadioButton
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('currentComponentRadioButton').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20043e5c; bytecode file offset 0x9451f8"
!ASDPrintDiagramDialog methodsFor: 'recovered'!
widgetPrintAllCheckBox
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('printAllCheckBox').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20045a6c; bytecode file offset 0x9451f8"
!ASDPrintDiagramDialog methodsFor: 'recovered'!
widgetVisibleRadioButton
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('visibleRadioButton').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20045efc; bytecode file offset 0x9451f8"
!ASDPrintDiagramDialog methodsFor: 'recovered'!
widgetAllComponentsRadioButton
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('allComponentsRadioButton').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20046b1c; bytecode file offset 0x9451f8"
!ASDPrintDiagramDialog methodsFor: 'recovered'!
widgetEmptyPagesCheckBox
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('emptyPagesCheckBox').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20046d1c; bytecode file offset 0x9451f8"
!ASDPrintDiagramDialog methodsFor: 'recovered'!
widgetAllRadioButton
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('allRadioButton').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004712c; bytecode file offset 0x9451f8"
!ASDPrintDiagramDialog methodsFor: 'recovered'!
widgetScaleCheckBox
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('scaleCheckBox').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20047b5c; bytecode file offset 0x9451f8"
!ASDPrintDiagramDialog methodsFor: 'recovered'!
widgetUserRadioButton
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('userRadioButton').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20047ffc; bytecode file offset 0x9451f8"
!ASDPrintDiagramDialog methodsFor: 'recovered'!
widgetPagesField
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('pagesField').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2005ab3c; bytecode file offset 0x957a6c"
!ASDPrintDiagramDialog methodsFor: 'recovered'!
okActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) ok.
    ^self
! !

"ASDBase.ic method 0x2005aca4; bytecode file offset 0x957a6c"
!ASDPrintDiagramDialog methodsFor: 'recovered'!
cancelActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) cancel.
    ^self
! !

"ASDBase.ic method 0x200a09c0; bytecode file offset 0x99d3ac"
!ASDPrintDiagramDialog methodsFor: 'recovered'!
initializeAfterCreate
    (self) installActionKeys.
    (self) updateFonts.
    ^self
! !

"ASDBase.ic method 0x20179418; bytecode file offset 0xa75cec"
!ASDPrintDiagramDialog methodsFor: 'recovered'!
allComponentsRadioButtonActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) set.
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
            recoveredStack2 := true.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) set: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCurrentComponentRadioButton.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) set: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2017942c; bytecode file offset 0xa75cec"
!ASDPrintDiagramDialog methodsFor: 'recovered'!
currentComponentRadioButtonActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) set.
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
            recoveredStack2 := true.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) set: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAllComponentsRadioButton.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) set: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201a95e4; bytecode file offset 0xaa5eac"
!ASDPrintDiagramDialog methodsFor: 'recovered'!
printAllCheckBoxActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := (self) widgetCurrentComponentRadioButton.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := (recoveredValue1) set.
    (recoveredValue0) sensitive: (recoveredValue2).
    recoveredValue3 := (self) widgetAllComponentsRadioButton.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := (recoveredValue4) set.
    (recoveredValue3) sensitive: (recoveredValue5).
    recoveredValue6 := (self) widgetScaleCheckBox.
    recoveredValue7 := recoveredArg3.
    recoveredValue8 := (recoveredValue7) set.
    recoveredValue9 := (recoveredValue8) not.
    (recoveredValue6) sensitive: (recoveredValue9).
    ^self
! !

"ASDBase.ic method 0x202d5f64; bytecode file offset 0xbd2840"
!ASDPrintDiagramDialog methodsFor: 'recovered'!
shellResizeCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) minSize.
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
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) maxSize.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) width.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 29].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) width: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) height.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 47].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) height: (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20335d00; bytecode file offset 0xc3262c"
!ASDPrintDiagramDialog methodsFor: 'recovered'!
installActionKeys
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    recoveredValue0 := (self) globalActionKeys.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := SCOk.
    recoveredValue4 := (recoveredValue3) getHotkeyString.
    recoveredValue5 := ('Alt-') , (recoveredValue4).
    recoveredValue6 := DirectedMessageWithText.
    recoveredValue7 := SCOk.
    recoveredValue8 := (recoveredValue6) selector: ('ok') arguments: (#()) receiver: (self) text: (recoveredValue7).
    (recoveredValue2) at: (recoveredValue5) put: (recoveredValue8).
    recoveredValue9 := recoveredValue1.
    recoveredValue10 := SCCancel.
    recoveredValue11 := (recoveredValue10) getHotkeyString.
    recoveredValue12 := ('Alt-') , (recoveredValue11).
    recoveredValue13 := DirectedMessageWithText.
    recoveredValue14 := SCCancel.
    recoveredValue15 := (recoveredValue13) selector: ('cancel') arguments: (#()) receiver: (self) text: (recoveredValue14).
    (recoveredValue9) at: (recoveredValue12) put: (recoveredValue15).
    recoveredValue16 := recoveredLocal1.
    recoveredValue17 := (self) shell.
    (self) setActionDict: (recoveredValue16) forWidget: (recoveredValue17).
    ^self
! !

"ASDBase.ic method 0x2034bef0; bytecode file offset 0xc487d0"
!ASDPrintDiagramDialog methodsFor: 'recovered'!
visibleRadioButtonActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) set.
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
            recoveredStack2 := true.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) set: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetScaleCheckBox.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAllRadioButton.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) set: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetUserRadioButton.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) set: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetPagesField.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetEmptyPagesCheckBox.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetPrintAllCheckBox.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCurrentComponentRadioButton.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAllComponentsRadioButton.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2034bf64; bytecode file offset 0xc48844"
!ASDPrintDiagramDialog methodsFor: 'recovered'!
userRadioButtonActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) set.
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
            recoveredStack2 := true.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) set: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetScaleCheckBox.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAllRadioButton.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) set: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetVisibleRadioButton.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) set: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetPagesField.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetEmptyPagesCheckBox.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetPrintAllCheckBox.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCurrentComponentRadioButton.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAllComponentsRadioButton.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20377550; bytecode file offset 0xc73e30"
!ASDPrintDiagramDialog methodsFor: 'recovered'!
allRadioButtonActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) set.
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
            recoveredStack2 := true.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) set: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetScaleCheckBox.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetPrintAllCheckBox.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) set.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetVisibleRadioButton.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) set: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetUserRadioButton.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) set: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetPagesField.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetEmptyPagesCheckBox.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetPrintAllCheckBox.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCurrentComponentRadioButton.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetPrintAllCheckBox.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) set.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAllComponentsRadioButton.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetPrintAllCheckBox.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) set.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205c7424; bytecode file offset 0xec3d8c"
!ASDPrintDiagramDialog methodsFor: 'recovered'!
ok
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            result := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := Set.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetPagesField.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := ';'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) asArrayOfSubstringsSeparatedBy: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := [:recoveredBlock26Arg1 | 
    | recoveredBlock26Local1 recoveredBlock26Local2 recoveredBlock26Local3 recoveredBlock26Local4 recoveredBlock26Stack0 recoveredBlock26Stack1 recoveredBlock26Stack2 recoveredBlock26Stack3 recoveredBlock26Stack4 recoveredBlock26Stack5 recoveredBlock26PC recoveredBlock26Step recoveredBlock26Done recoveredBlock26Result |
    recoveredBlock26Stack0 := self.
    recoveredBlock26PC := 32.
    recoveredBlock26Done := false.
    [recoveredBlock26Done not] whileTrue: [
        recoveredBlock26Step := recoveredBlock26PC.
        recoveredBlock26Step = 32 ifTrue: [
            recoveredBlock26Stack1 := nil.
            recoveredBlock26PC := 33.
        ].
        recoveredBlock26Step = 33 ifTrue: [
            recoveredBlock26Stack2 := recoveredBlock26Arg1.
            recoveredBlock26PC := 35.
        ].
        recoveredBlock26Step = 35 ifTrue: [
            recoveredBlock26Stack2 := (recoveredBlock26Stack2) isEmpty.
            recoveredBlock26PC := 37.
        ].
        recoveredBlock26Step = 37 ifTrue: [
            (recoveredBlock26Stack2) ifTrue: [recoveredBlock26PC := 183] ifFalse: [recoveredBlock26PC := 40].
        ].
        recoveredBlock26Step = 40 ifTrue: [
            recoveredBlock26PC := 41.
        ].
        recoveredBlock26Step = 41 ifTrue: [
            recoveredBlock26Stack1 := '1234567890'.
            recoveredBlock26PC := 43.
        ].
        recoveredBlock26Step = 43 ifTrue: [
            recoveredBlock26Stack2 := recoveredBlock26Arg1.
            recoveredBlock26PC := 45.
        ].
        recoveredBlock26Step = 45 ifTrue: [
            recoveredBlock26Stack1 := (recoveredBlock26Stack1) includesAll: (recoveredBlock26Stack2).
            recoveredBlock26PC := 47.
        ].
        recoveredBlock26Step = 47 ifTrue: [
            (recoveredBlock26Stack1) ifTrue: [recoveredBlock26PC := 50] ifFalse: [recoveredBlock26PC := 62].
        ].
        recoveredBlock26Step = 50 ifTrue: [
            recoveredBlock26Stack1 := recoveredLocal2.
            recoveredBlock26PC := 53.
        ].
        recoveredBlock26Step = 53 ifTrue: [
            recoveredBlock26Stack2 := recoveredBlock26Arg1.
            recoveredBlock26PC := 55.
        ].
        recoveredBlock26Step = 55 ifTrue: [
            recoveredBlock26Stack2 := (recoveredBlock26Stack2) asInteger.
            recoveredBlock26PC := 57.
        ].
        recoveredBlock26Step = 57 ifTrue: [
            recoveredBlock26Stack1 := (recoveredBlock26Stack1) add: (recoveredBlock26Stack2).
            recoveredBlock26PC := 59.
        ].
        recoveredBlock26Step = 59 ifTrue: [
            recoveredBlock26PC := 183.
        ].
        recoveredBlock26Step = 62 ifTrue: [
            recoveredBlock26Stack1 := recoveredBlock26Arg1.
            recoveredBlock26PC := 64.
        ].
        recoveredBlock26Step = 64 ifTrue: [
            recoveredBlock26Stack2 := '..'.
            recoveredBlock26PC := 66.
        ].
        recoveredBlock26Step = 66 ifTrue: [
            recoveredBlock26Stack1 := (recoveredBlock26Stack1) asArrayOfSubstringsSeparatedBy: (recoveredBlock26Stack2).
            recoveredBlock26PC := 68.
        ].
        recoveredBlock26Step = 68 ifTrue: [
            recoveredBlock26Local4 := recoveredBlock26Stack1.
            recoveredBlock26PC := 69.
        ].
        recoveredBlock26Step = 69 ifTrue: [
            recoveredBlock26Stack1 := recoveredBlock26Local4.
            recoveredBlock26PC := 70.
        ].
        recoveredBlock26Step = 70 ifTrue: [
            recoveredBlock26Stack1 := (recoveredBlock26Stack1) size.
            recoveredBlock26PC := 72.
        ].
        recoveredBlock26Step = 72 ifTrue: [
            recoveredBlock26Stack2 := 2.
            recoveredBlock26PC := 74.
        ].
        recoveredBlock26Step = 74 ifTrue: [
            recoveredBlock26Stack1 := (recoveredBlock26Stack1) = (recoveredBlock26Stack2).
            recoveredBlock26PC := 75.
        ].
        recoveredBlock26Step = 75 ifTrue: [
            (recoveredBlock26Stack1) ifTrue: [recoveredBlock26PC := 78] ifFalse: [recoveredBlock26PC := 176].
        ].
        recoveredBlock26Step = 78 ifTrue: [
            recoveredBlock26Stack1 := '1234567890'.
            recoveredBlock26PC := 80.
        ].
        recoveredBlock26Step = 80 ifTrue: [
            recoveredBlock26Stack2 := recoveredBlock26Local4.
            recoveredBlock26PC := 81.
        ].
        recoveredBlock26Step = 81 ifTrue: [
            recoveredBlock26Stack2 := (recoveredBlock26Stack2) first.
            recoveredBlock26PC := 83.
        ].
        recoveredBlock26Step = 83 ifTrue: [
            recoveredBlock26Stack1 := (recoveredBlock26Stack1) includesAll: (recoveredBlock26Stack2).
            recoveredBlock26PC := 85.
        ].
        recoveredBlock26Step = 85 ifTrue: [
            (recoveredBlock26Stack1) ifTrue: [recoveredBlock26PC := 88] ifFalse: [recoveredBlock26PC := 98].
        ].
        recoveredBlock26Step = 88 ifTrue: [
            recoveredBlock26Stack1 := recoveredBlock26Local4.
            recoveredBlock26PC := 89.
        ].
        recoveredBlock26Step = 89 ifTrue: [
            recoveredBlock26Stack1 := (recoveredBlock26Stack1) first.
            recoveredBlock26PC := 91.
        ].
        recoveredBlock26Step = 91 ifTrue: [
            recoveredBlock26Stack1 := (recoveredBlock26Stack1) asInteger.
            recoveredBlock26PC := 93.
        ].
        recoveredBlock26Step = 93 ifTrue: [
            recoveredBlock26Local3 := recoveredBlock26Stack1.
            recoveredBlock26PC := 94.
        ].
        recoveredBlock26Step = 94 ifTrue: [
            recoveredBlock26PC := 102.
        ].
        recoveredBlock26Step = 98 ifTrue: [
            recoveredBlock26Stack1 := true.
            recoveredBlock26PC := 99.
        ].
        recoveredBlock26Step = 99 ifTrue: [
            recoveredLocal1 := recoveredBlock26Stack1.
            recoveredBlock26PC := 102.
        ].
        recoveredBlock26Step = 102 ifTrue: [
            recoveredBlock26Stack1 := '1234567890'.
            recoveredBlock26PC := 104.
        ].
        recoveredBlock26Step = 104 ifTrue: [
            recoveredBlock26Stack2 := recoveredBlock26Local4.
            recoveredBlock26PC := 105.
        ].
        recoveredBlock26Step = 105 ifTrue: [
            recoveredBlock26Stack2 := (recoveredBlock26Stack2) last.
            recoveredBlock26PC := 107.
        ].
        recoveredBlock26Step = 107 ifTrue: [
            recoveredBlock26Stack1 := (recoveredBlock26Stack1) includesAll: (recoveredBlock26Stack2).
            recoveredBlock26PC := 109.
        ].
        recoveredBlock26Step = 109 ifTrue: [
            (recoveredBlock26Stack1) ifTrue: [recoveredBlock26PC := 112] ifFalse: [recoveredBlock26PC := 122].
        ].
        recoveredBlock26Step = 112 ifTrue: [
            recoveredBlock26Stack1 := recoveredBlock26Local4.
            recoveredBlock26PC := 113.
        ].
        recoveredBlock26Step = 113 ifTrue: [
            recoveredBlock26Stack1 := (recoveredBlock26Stack1) last.
            recoveredBlock26PC := 115.
        ].
        recoveredBlock26Step = 115 ifTrue: [
            recoveredBlock26Stack1 := (recoveredBlock26Stack1) asInteger.
            recoveredBlock26PC := 117.
        ].
        recoveredBlock26Step = 117 ifTrue: [
            recoveredBlock26Local2 := recoveredBlock26Stack1.
            recoveredBlock26PC := 118.
        ].
        recoveredBlock26Step = 118 ifTrue: [
            recoveredBlock26PC := 126.
        ].
        recoveredBlock26Step = 122 ifTrue: [
            recoveredBlock26Stack1 := true.
            recoveredBlock26PC := 123.
        ].
        recoveredBlock26Step = 123 ifTrue: [
            recoveredLocal1 := recoveredBlock26Stack1.
            recoveredBlock26PC := 126.
        ].
        recoveredBlock26Step = 126 ifTrue: [
            recoveredBlock26Stack1 := nil.
            recoveredBlock26PC := 127.
        ].
        recoveredBlock26Step = 127 ifTrue: [
            recoveredBlock26Stack2 := recoveredBlock26Local3.
            recoveredBlock26PC := 128.
        ].
        recoveredBlock26Step = 128 ifTrue: [
            recoveredBlock26Stack2 := (recoveredBlock26Stack2) isInteger.
            recoveredBlock26PC := 130.
        ].
        recoveredBlock26Step = 130 ifTrue: [
            (recoveredBlock26Stack2) ifTrue: [recoveredBlock26PC := 134] ifFalse: [recoveredBlock26PC := 168].
        ].
        recoveredBlock26Step = 134 ifTrue: [
            recoveredBlock26Stack2 := recoveredBlock26Local2.
            recoveredBlock26PC := 135.
        ].
        recoveredBlock26Step = 135 ifTrue: [
            recoveredBlock26Stack2 := (recoveredBlock26Stack2) isInteger.
            recoveredBlock26PC := 137.
        ].
        recoveredBlock26Step = 137 ifTrue: [
            (recoveredBlock26Stack2) ifTrue: [recoveredBlock26PC := 140] ifFalse: [recoveredBlock26PC := 168].
        ].
        recoveredBlock26Step = 140 ifTrue: [
            recoveredBlock26PC := 141.
        ].
        recoveredBlock26Step = 141 ifTrue: [
            recoveredBlock26Stack1 := recoveredBlock26Local3.
            recoveredBlock26PC := 142.
        ].
        recoveredBlock26Step = 142 ifTrue: [
            recoveredBlock26Stack1 := (recoveredBlock26Stack1) + (-1).
            recoveredBlock26PC := 143.
        ].
        recoveredBlock26Step = 143 ifTrue: [
            recoveredBlock26Local1 := recoveredBlock26Stack1.
            recoveredBlock26PC := 144.
        ].
        recoveredBlock26Step = 144 ifTrue: [
            recoveredBlock26Stack1 := recoveredBlock26Local2.
            recoveredBlock26PC := 145.
        ].
        recoveredBlock26Step = 145 ifTrue: [
            recoveredBlock26PC := 154.
        ].
        recoveredBlock26Step = 148 ifTrue: [
            recoveredBlock26Stack2 := recoveredLocal2.
            recoveredBlock26PC := 151.
        ].
        recoveredBlock26Step = 151 ifTrue: [
            recoveredBlock26Stack3 := recoveredBlock26Local1.
            recoveredBlock26PC := 152.
        ].
        recoveredBlock26Step = 152 ifTrue: [
            (recoveredBlock26Stack2) add: (recoveredBlock26Stack3).
            recoveredBlock26PC := 154.
        ].
        recoveredBlock26Step = 154 ifTrue: [
            (recoveredBlock26Stack1 isInteger and: [recoveredBlock26Local1 isInteger]) ifTrue: [(recoveredBlock26Local1 + 1 <= recoveredBlock26Stack1) ifTrue: [recoveredBlock26Local1 := recoveredBlock26Local1 + 1. recoveredBlock26PC := 148] ifFalse: [recoveredBlock26Local1 := nil. recoveredBlock26PC := 168]] ifFalse: [recoveredBlock26PC := 158].
        ].
        recoveredBlock26Step = 158 ifTrue: [
            recoveredBlock26Stack2 := recoveredBlock26Stack1.
            recoveredBlock26PC := 159.
        ].
        recoveredBlock26Step = 159 ifTrue: [
            recoveredBlock26Stack3 := recoveredBlock26Local1.
            recoveredBlock26PC := 160.
        ].
        recoveredBlock26Step = 160 ifTrue: [
            recoveredBlock26Stack3 := (recoveredBlock26Stack3) + (1).
            recoveredBlock26PC := 161.
        ].
        recoveredBlock26Step = 161 ifTrue: [
            recoveredBlock26Stack4 := recoveredBlock26Stack3.
            recoveredBlock26PC := 162.
        ].
        recoveredBlock26Step = 162 ifTrue: [
            recoveredBlock26Local1 := recoveredBlock26Stack4.
            recoveredBlock26PC := 163.
        ].
        recoveredBlock26Step = 163 ifTrue: [
            recoveredBlock26Stack2 := (recoveredBlock26Stack2) < (recoveredBlock26Stack3).
            recoveredBlock26PC := 164.
        ].
        recoveredBlock26Step = 164 ifTrue: [
            (recoveredBlock26Stack2) ifTrue: [recoveredBlock26PC := 166] ifFalse: [recoveredBlock26PC := 148].
        ].
        recoveredBlock26Step = 166 ifTrue: [
            recoveredBlock26Stack2 := nil.
            recoveredBlock26PC := 167.
        ].
        recoveredBlock26Step = 167 ifTrue: [
            recoveredBlock26Local1 := recoveredBlock26Stack2.
            recoveredBlock26PC := 168.
        ].
        recoveredBlock26Step = 168 ifTrue: [
            recoveredBlock26Stack2 := nil.
            recoveredBlock26PC := 169.
        ].
        recoveredBlock26Step = 169 ifTrue: [
            recoveredBlock26Stack3 := recoveredBlock26Stack2.
            recoveredBlock26PC := 170.
        ].
        recoveredBlock26Step = 170 ifTrue: [
            recoveredBlock26Local3 := recoveredBlock26Stack3.
            recoveredBlock26PC := 171.
        ].
        recoveredBlock26Step = 171 ifTrue: [
            recoveredBlock26Local2 := recoveredBlock26Stack2.
            recoveredBlock26PC := 172.
        ].
        recoveredBlock26Step = 172 ifTrue: [
            recoveredBlock26PC := 181.
        ].
        recoveredBlock26Step = 176 ifTrue: [
            recoveredBlock26Stack1 := true.
            recoveredBlock26PC := 177.
        ].
        recoveredBlock26Step = 177 ifTrue: [
            recoveredBlock26Stack2 := recoveredBlock26Stack1.
            recoveredBlock26PC := 178.
        ].
        recoveredBlock26Step = 178 ifTrue: [
            recoveredLocal1 := recoveredBlock26Stack2.
            recoveredBlock26PC := 181.
        ].
        recoveredBlock26Step = 181 ifTrue: [
            recoveredBlock26Stack2 := nil.
            recoveredBlock26PC := 182.
        ].
        recoveredBlock26Step = 182 ifTrue: [
            recoveredBlock26Local4 := recoveredBlock26Stack2.
            recoveredBlock26PC := 183.
        ].
        recoveredBlock26Step = 183 ifTrue: [
            recoveredBlock26Result := recoveredBlock26Stack1.
            recoveredBlock26Done := true.
        ].
    ].
    recoveredBlock26Result
].
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack1 := [:block28118918Arg1 :block28118918Arg2 | 
    | block28118918Value0 block28118918Value1 block28118918Value2 |
    block28118918Value0 := block28118918Arg1.
    block28118918Value1 := block28118918Arg2.
    block28118918Value2 := (block28118918Value0) < (block28118918Value1).
    block28118918Value2
].
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetUserRadioButton.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack0 := (recoveredStack0) set.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 212] ifFalse: [recoveredPC := 224].
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 220] ifFalse: [recoveredPC := 224].
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 230] ifFalse: [recoveredPC := 240].
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack1 := 'The specified value for "Pages" is invalid!!'.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorMessage: (recoveredStack1).
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack0 := result.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack2 := 'all'.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack3 := (recoveredStack3) widgetAllRadioButton.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack3 := (recoveredStack3) set.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack2 := 'visible'.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack3 := (recoveredStack3) widgetVisibleRadioButton.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack3 := (recoveredStack3) set.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack2 := 'user'.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack3 := (recoveredStack3) widgetUserRadioButton.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack3 := (recoveredStack3) set.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack2 := 'scale'.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack3 := (recoveredStack3) widgetScaleCheckBox.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack3 := (recoveredStack3) set.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack2 := 'pages'.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack3 := (recoveredStack3) asArray.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack2 := 'printAll'.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack3 := (recoveredStack3) widgetPrintAllCheckBox.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack3 := (recoveredStack3) set.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack2 := 'printEmpty'.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack3 := (recoveredStack3) widgetEmptyPagesCheckBox.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack3 := (recoveredStack3) set.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack2 := 'currentComponent'.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack3 := (recoveredStack3) widgetCurrentComponentRadioButton.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack3 := (recoveredStack3) set.
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack2 := 'allComponents'.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            recoveredStack3 := (recoveredStack3) widgetAllComponentsRadioButton.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack3 := (recoveredStack3) set.
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x206b154c; bytecode file offset 0xfae02c"
!ASDPrintDiagramDialog methodsFor: 'recovered'!
createWidgetHierarchy: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredLocal15 recoveredLocal16 recoveredLocal17 recoveredLocal18 recoveredLocal19 recoveredLocal20 recoveredLocal21 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredLocal21 := recoveredStack1.
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
            recoveredStack3 := [:block28131098Arg1 | 
    | block28131098Value0 block28131098Value1 block28131098Value2 block28131098Value3 block28131098Value4 block28131098Value5 block28131098Value6 block28131098Value7 block28131098Value8 block28131098Value9 block28131098Value10 block28131098Value11 block28131098Value12 |
    block28131098Value0 := block28131098Arg1.
    block28131098Value1 := block28131098Value0.
    block28131098Value2 := MWMINPUTPRIMARYAPPLICATIONMODAL.
    (block28131098Value1) mwmInputMode: (block28131098Value2).
    block28131098Value3 := block28131098Value0.
    (block28131098Value3) title: ('Print Diagram').
    block28131098Value4 := block28131098Value0.
    block28131098Value5 := MWMDECORALL.
    block28131098Value6 := MWMDECORMINIMIZE.
    block28131098Value7 := (block28131098Value5) | (block28131098Value6).
    block28131098Value8 := MWMDECORMAXIMIZE.
    block28131098Value9 := (block28131098Value7) | (block28131098Value8).
    (block28131098Value4) mwmDecorations: (block28131098Value9).
    block28131098Value10 := block28131098Value0.
    (block28131098Value10) height: (250).
    block28131098Value11 := block28131098Value0.
    (block28131098Value11) width: (330).
    block28131098Value12 := (block28131098Value0) defaultPosition: (true).
    block28131098Value12
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDialogShell: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal20 := recoveredStack1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredLocal21.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := 'dialogShell'.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack3 := recoveredLocal20.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := 'mainWindow'.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) createMainWindow: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredLocal19 := recoveredStack1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := recoveredLocal21.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := 'mainWindow'.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack3 := recoveredLocal19.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := recoveredLocal19.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := 'aForm'.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredLocal18 := recoveredStack1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := recoveredLocal21.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := 'mainForm'.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack3 := recoveredLocal18.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := recoveredLocal18.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack2 := 'pageSelectionFrame'.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack3 := [:block281310bcArg1 | 
    | block281310bcValue0 block281310bcValue1 |
    block281310bcValue0 := block281310bcArg1.
    block281310bcValue1 := (block281310bcValue0) labelString: ('Page Selection').
    block281310bcValue1
].
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := (recoveredStack1) createFrame: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredLocal17 := recoveredStack1.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := recoveredLocal21.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack2 := 'pageSelectionFrame'.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack3 := recoveredLocal17.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack2 := 'pageSelectionForm'.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredLocal16 := recoveredStack1.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := recoveredLocal21.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack2 := 'pageSelectionForm'.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack3 := recoveredLocal16.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack2 := 'allRadioButton'.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack3 := [:block281310e0Arg1 | 
    | block281310e0Value0 block281310e0Value1 block281310e0Value2 block281310e0Value3 block281310e0Value4 block281310e0Value5 block281310e0Value6 |
    block281310e0Value0 := block281310e0Arg1.
    block281310e0Value1 := block281310e0Value0.
    block281310e0Value2 := XmONEOFMANY.
    (block281310e0Value1) indicatorType: (block281310e0Value2).
    block281310e0Value3 := block281310e0Value0.
    (block281310e0Value3) set: (true).
    block281310e0Value4 := block281310e0Value0.
    (block281310e0Value4) labelString: ('All').
    block281310e0Value5 := block281310e0Value0.
    (block281310e0Value5) height: (22).
    block281310e0Value6 := (block281310e0Value0) width: (100).
    block281310e0Value6
].
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack1 := (recoveredStack1) createToggleButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredLocal15 := recoveredStack1.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack1 := recoveredLocal21.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack2 := 'allRadioButton'.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack3 := recoveredLocal15.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack2 := 'visibleRadioButton'.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack3 := [:block28131104Arg1 | 
    | block28131104Value0 block28131104Value1 block28131104Value2 block28131104Value3 block28131104Value4 block28131104Value5 block28131104Value6 |
    block28131104Value0 := block28131104Arg1.
    block28131104Value1 := block28131104Value0.
    block28131104Value2 := XmONEOFMANY.
    (block28131104Value1) indicatorType: (block28131104Value2).
    block28131104Value3 := block28131104Value0.
    (block28131104Value3) set: (false).
    block28131104Value4 := block28131104Value0.
    (block28131104Value4) labelString: ('Visible area').
    block28131104Value5 := block28131104Value0.
    (block28131104Value5) height: (22).
    block28131104Value6 := (block28131104Value0) width: (100).
    block28131104Value6
].
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack1 := (recoveredStack1) createToggleButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredLocal14 := recoveredStack1.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack1 := recoveredLocal21.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack2 := 'visibleRadioButton'.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack3 := recoveredLocal14.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack2 := 'userRadioButton'.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack3 := [:block28131128Arg1 | 
    | block28131128Value0 block28131128Value1 block28131128Value2 block28131128Value3 block28131128Value4 block28131128Value5 block28131128Value6 |
    block28131128Value0 := block28131128Arg1.
    block28131128Value1 := block28131128Value0.
    block28131128Value2 := XmONEOFMANY.
    (block28131128Value1) indicatorType: (block28131128Value2).
    block28131128Value3 := block28131128Value0.
    (block28131128Value3) set: (false).
    block28131128Value4 := block28131128Value0.
    (block28131128Value4) labelString: ('User defined').
    block28131128Value5 := block28131128Value0.
    (block28131128Value5) height: (22).
    block28131128Value6 := (block28131128Value0) width: (100).
    block28131128Value6
].
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack1 := (recoveredStack1) createToggleButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredLocal13 := recoveredStack1.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack1 := recoveredLocal21.
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            recoveredStack2 := 'userRadioButton'.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack3 := recoveredLocal13.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            recoveredStack2 := 'scaleCheckBox'.
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredStack3 := [:block2813114cArg1 | 
    | block2813114cValue0 block2813114cValue1 block2813114cValue2 block2813114cValue3 |
    block2813114cValue0 := block2813114cArg1.
    block2813114cValue1 := block2813114cValue0.
    (block2813114cValue1) labelString: ('Scale diagram to fit page').
    block2813114cValue2 := block2813114cValue0.
    (block2813114cValue2) height: (22).
    block2813114cValue3 := (block2813114cValue0) width: (100).
    block2813114cValue3
].
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            recoveredStack1 := (recoveredStack1) createToggleButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            recoveredLocal12 := recoveredStack1.
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            recoveredStack1 := recoveredLocal21.
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            recoveredStack2 := 'scaleCheckBox'.
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            recoveredStack3 := recoveredLocal12.
            recoveredPC := 380.
        ].
        recoveredStep = 380 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            recoveredStack2 := 'pagesLabel'.
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            recoveredStack3 := [:block28131170Arg1 | 
    | block28131170Value0 block28131170Value1 block28131170Value2 block28131170Value3 block28131170Value4 block28131170Value5 block28131170Value6 |
    block28131170Value0 := block28131170Arg1.
    block28131170Value1 := block28131170Value0.
    block28131170Value2 := XmALIGNMENTBEGINNING.
    (block28131170Value1) alignment: (block28131170Value2).
    block28131170Value3 := block28131170Value0.
    (block28131170Value3) sensitive: (false).
    block28131170Value4 := block28131170Value0.
    (block28131170Value4) labelString: ('Pages: ').
    block28131170Value5 := block28131170Value0.
    (block28131170Value5) height: (22).
    block28131170Value6 := (block28131170Value0) width: (50).
    block28131170Value6
].
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            recoveredPC := 422.
        ].
        recoveredStep = 422 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 427.
        ].
        recoveredStep = 427 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 429.
        ].
        recoveredStep = 429 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 432.
        ].
        recoveredStep = 432 ifTrue: [
            recoveredStack1 := recoveredLocal21.
            recoveredPC := 435.
        ].
        recoveredStep = 435 ifTrue: [
            recoveredStack2 := 'pagesLabel'.
            recoveredPC := 438.
        ].
        recoveredStep = 438 ifTrue: [
            recoveredStack3 := recoveredLocal11.
            recoveredPC := 441.
        ].
        recoveredStep = 441 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 443.
        ].
        recoveredStep = 443 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 446.
        ].
        recoveredStep = 446 ifTrue: [
            recoveredStack2 := 'pagesField'.
            recoveredPC := 450.
        ].
        recoveredStep = 450 ifTrue: [
            recoveredStack3 := [:block28131194Arg1 | 
    | block28131194Value0 block28131194Value1 block28131194Value2 block28131194Value3 block28131194Value4 block28131194Value5 |
    block28131194Value0 := block28131194Arg1.
    block28131194Value1 := block28131194Value0.
    block28131194Value2 := XmALIGNMENTBEGINNING.
    (block28131194Value1) alignment: (block28131194Value2).
    block28131194Value3 := block28131194Value0.
    (block28131194Value3) sensitive: (false).
    block28131194Value4 := block28131194Value0.
    (block28131194Value4) height: (22).
    block28131194Value5 := (block28131194Value0) value: ('').
    block28131194Value5
].
            recoveredPC := 454.
        ].
        recoveredStep = 454 ifTrue: [
            recoveredPC := 486.
        ].
        recoveredStep = 486 ifTrue: [
            recoveredStack1 := (recoveredStack1) createText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 491.
        ].
        recoveredStep = 491 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 493.
        ].
        recoveredStep = 493 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 496.
        ].
        recoveredStep = 496 ifTrue: [
            recoveredStack1 := recoveredLocal21.
            recoveredPC := 499.
        ].
        recoveredStep = 499 ifTrue: [
            recoveredStack2 := 'pagesField'.
            recoveredPC := 502.
        ].
        recoveredStep = 502 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 505.
        ].
        recoveredStep = 505 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 507.
        ].
        recoveredStep = 507 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 510.
        ].
        recoveredStep = 510 ifTrue: [
            recoveredStack2 := 'pagesDescription'.
            recoveredPC := 514.
        ].
        recoveredStep = 514 ifTrue: [
            recoveredStack3 := [:block281311b8Arg1 | 
    | block281311b8Value0 block281311b8Value1 block281311b8Value2 block281311b8Value3 block281311b8Value4 block281311b8Value5 block281311b8Value6 |
    block281311b8Value0 := block281311b8Arg1.
    block281311b8Value1 := block281311b8Value0.
    block281311b8Value2 := XmALIGNMENTBEGINNING.
    (block281311b8Value1) alignment: (block281311b8Value2).
    block281311b8Value3 := block281311b8Value0.
    (block281311b8Value3) sensitive: (false).
    block281311b8Value4 := block281311b8Value0.
    (block281311b8Value4) labelString: ('e.g. 1;3;5..7;12').
    block281311b8Value5 := block281311b8Value0.
    (block281311b8Value5) height: (22).
    block281311b8Value6 := (block281311b8Value0) width: (50).
    block281311b8Value6
].
            recoveredPC := 518.
        ].
        recoveredStep = 518 ifTrue: [
            recoveredPC := 552.
        ].
        recoveredStep = 552 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 557.
        ].
        recoveredStep = 557 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 559.
        ].
        recoveredStep = 559 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 562.
        ].
        recoveredStep = 562 ifTrue: [
            recoveredStack1 := recoveredLocal21.
            recoveredPC := 565.
        ].
        recoveredStep = 565 ifTrue: [
            recoveredStack2 := 'pagesDescription'.
            recoveredPC := 568.
        ].
        recoveredStep = 568 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 571.
        ].
        recoveredStep = 571 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 573.
        ].
        recoveredStep = 573 ifTrue: [
            recoveredStack1 := recoveredLocal18.
            recoveredPC := 576.
        ].
        recoveredStep = 576 ifTrue: [
            recoveredStack2 := 'printOptionFrame'.
            recoveredPC := 580.
        ].
        recoveredStep = 580 ifTrue: [
            recoveredStack3 := [:block281311dcArg1 | 
    | block281311dcValue0 block281311dcValue1 |
    block281311dcValue0 := block281311dcArg1.
    block281311dcValue1 := (block281311dcValue0) labelString: ('Options').
    block281311dcValue1
].
            recoveredPC := 584.
        ].
        recoveredStep = 584 ifTrue: [
            recoveredPC := 595.
        ].
        recoveredStep = 595 ifTrue: [
            recoveredStack1 := (recoveredStack1) createFrame: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 597.
        ].
        recoveredStep = 597 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 599.
        ].
        recoveredStep = 599 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 602.
        ].
        recoveredStep = 602 ifTrue: [
            recoveredStack1 := recoveredLocal21.
            recoveredPC := 605.
        ].
        recoveredStep = 605 ifTrue: [
            recoveredStack2 := 'printOptionFrame'.
            recoveredPC := 608.
        ].
        recoveredStep = 608 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 611.
        ].
        recoveredStep = 611 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 613.
        ].
        recoveredStep = 613 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 616.
        ].
        recoveredStep = 616 ifTrue: [
            recoveredStack2 := 'printOptionForm'.
            recoveredPC := 620.
        ].
        recoveredStep = 620 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 621.
        ].
        recoveredStep = 621 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 623.
        ].
        recoveredStep = 623 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 625.
        ].
        recoveredStep = 625 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 628.
        ].
        recoveredStep = 628 ifTrue: [
            recoveredStack1 := recoveredLocal21.
            recoveredPC := 631.
        ].
        recoveredStep = 631 ifTrue: [
            recoveredStack2 := 'printOptionForm'.
            recoveredPC := 634.
        ].
        recoveredStep = 634 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 637.
        ].
        recoveredStep = 637 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 639.
        ].
        recoveredStep = 639 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 642.
        ].
        recoveredStep = 642 ifTrue: [
            recoveredStack2 := 'emptyPagesCheckBox'.
            recoveredPC := 646.
        ].
        recoveredStep = 646 ifTrue: [
            recoveredStack3 := [:block28131200Arg1 | 
    | block28131200Value0 block28131200Value1 block28131200Value2 block28131200Value3 |
    block28131200Value0 := block28131200Arg1.
    block28131200Value1 := block28131200Value0.
    (block28131200Value1) labelString: ('Print empty pages').
    block28131200Value2 := block28131200Value0.
    (block28131200Value2) height: (22).
    block28131200Value3 := (block28131200Value0) width: (100).
    block28131200Value3
].
            recoveredPC := 650.
        ].
        recoveredStep = 650 ifTrue: [
            recoveredPC := 673.
        ].
        recoveredStep = 673 ifTrue: [
            recoveredStack1 := (recoveredStack1) createToggleButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 675.
        ].
        recoveredStep = 675 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 677.
        ].
        recoveredStep = 677 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 680.
        ].
        recoveredStep = 680 ifTrue: [
            recoveredStack1 := recoveredLocal21.
            recoveredPC := 683.
        ].
        recoveredStep = 683 ifTrue: [
            recoveredStack2 := 'emptyPagesCheckBox'.
            recoveredPC := 686.
        ].
        recoveredStep = 686 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 689.
        ].
        recoveredStep = 689 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 691.
        ].
        recoveredStep = 691 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 694.
        ].
        recoveredStep = 694 ifTrue: [
            recoveredStack2 := 'printAllCheckBox'.
            recoveredPC := 698.
        ].
        recoveredStep = 698 ifTrue: [
            recoveredStack3 := [:block28131224Arg1 | 
    | block28131224Value0 block28131224Value1 block28131224Value2 block28131224Value3 |
    block28131224Value0 := block28131224Arg1.
    block28131224Value1 := block28131224Value0.
    (block28131224Value1) labelString: ('Print all diagrams').
    block28131224Value2 := block28131224Value0.
    (block28131224Value2) height: (22).
    block28131224Value3 := (block28131224Value0) width: (100).
    block28131224Value3
].
            recoveredPC := 702.
        ].
        recoveredStep = 702 ifTrue: [
            recoveredPC := 725.
        ].
        recoveredStep = 725 ifTrue: [
            recoveredStack1 := (recoveredStack1) createToggleButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 727.
        ].
        recoveredStep = 727 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 729.
        ].
        recoveredStep = 729 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 732.
        ].
        recoveredStep = 732 ifTrue: [
            recoveredStack1 := recoveredLocal21.
            recoveredPC := 735.
        ].
        recoveredStep = 735 ifTrue: [
            recoveredStack2 := 'printAllCheckBox'.
            recoveredPC := 738.
        ].
        recoveredStep = 738 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 741.
        ].
        recoveredStep = 741 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 743.
        ].
        recoveredStep = 743 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 746.
        ].
        recoveredStep = 746 ifTrue: [
            recoveredStack2 := 'currentComponentRadioButton'.
            recoveredPC := 750.
        ].
        recoveredStep = 750 ifTrue: [
            recoveredStack3 := [:block28131248Arg1 | 
    | block28131248Value0 block28131248Value1 block28131248Value2 block28131248Value3 block28131248Value4 block28131248Value5 block28131248Value6 block28131248Value7 |
    block28131248Value0 := block28131248Arg1.
    block28131248Value1 := block28131248Value0.
    block28131248Value2 := XmONEOFMANY.
    (block28131248Value1) indicatorType: (block28131248Value2).
    block28131248Value3 := block28131248Value0.
    (block28131248Value3) set: (true).
    block28131248Value4 := block28131248Value0.
    (block28131248Value4) sensitive: (false).
    block28131248Value5 := block28131248Value0.
    (block28131248Value5) labelString: ('Current component').
    block28131248Value6 := block28131248Value0.
    (block28131248Value6) height: (22).
    block28131248Value7 := (block28131248Value0) width: (100).
    block28131248Value7
].
            recoveredPC := 754.
        ].
        recoveredStep = 754 ifTrue: [
            recoveredPC := 791.
        ].
        recoveredStep = 791 ifTrue: [
            recoveredStack1 := (recoveredStack1) createToggleButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 793.
        ].
        recoveredStep = 793 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 795.
        ].
        recoveredStep = 795 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 798.
        ].
        recoveredStep = 798 ifTrue: [
            recoveredStack1 := recoveredLocal21.
            recoveredPC := 801.
        ].
        recoveredStep = 801 ifTrue: [
            recoveredStack2 := 'currentComponentRadioButton'.
            recoveredPC := 804.
        ].
        recoveredStep = 804 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 807.
        ].
        recoveredStep = 807 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 809.
        ].
        recoveredStep = 809 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 812.
        ].
        recoveredStep = 812 ifTrue: [
            recoveredStack2 := 'allComponentsRadioButton'.
            recoveredPC := 816.
        ].
        recoveredStep = 816 ifTrue: [
            recoveredStack3 := [:block2813126cArg1 | 
    | block2813126cValue0 block2813126cValue1 block2813126cValue2 block2813126cValue3 block2813126cValue4 block2813126cValue5 block2813126cValue6 block2813126cValue7 |
    block2813126cValue0 := block2813126cArg1.
    block2813126cValue1 := block2813126cValue0.
    block2813126cValue2 := XmONEOFMANY.
    (block2813126cValue1) indicatorType: (block2813126cValue2).
    block2813126cValue3 := block2813126cValue0.
    (block2813126cValue3) set: (false).
    block2813126cValue4 := block2813126cValue0.
    (block2813126cValue4) sensitive: (false).
    block2813126cValue5 := block2813126cValue0.
    (block2813126cValue5) labelString: ('All components').
    block2813126cValue6 := block2813126cValue0.
    (block2813126cValue6) height: (22).
    block2813126cValue7 := (block2813126cValue0) width: (100).
    block2813126cValue7
].
            recoveredPC := 820.
        ].
        recoveredStep = 820 ifTrue: [
            recoveredPC := 857.
        ].
        recoveredStep = 857 ifTrue: [
            recoveredStack1 := (recoveredStack1) createToggleButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 859.
        ].
        recoveredStep = 859 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 861.
        ].
        recoveredStep = 861 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 864.
        ].
        recoveredStep = 864 ifTrue: [
            recoveredStack1 := recoveredLocal21.
            recoveredPC := 867.
        ].
        recoveredStep = 867 ifTrue: [
            recoveredStack2 := 'allComponentsRadioButton'.
            recoveredPC := 870.
        ].
        recoveredStep = 870 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 873.
        ].
        recoveredStep = 873 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 875.
        ].
        recoveredStep = 875 ifTrue: [
            recoveredStack1 := recoveredLocal18.
            recoveredPC := 878.
        ].
        recoveredStep = 878 ifTrue: [
            recoveredStack2 := 'cancelButton'.
            recoveredPC := 882.
        ].
        recoveredStep = 882 ifTrue: [
            recoveredStack3 := [:block28131290Arg1 | 
    | block28131290Value0 block28131290Value1 block28131290Value2 block28131290Value3 |
    block28131290Value0 := block28131290Arg1.
    block28131290Value1 := block28131290Value0.
    (block28131290Value1) labelString: ('&Cancel').
    block28131290Value2 := block28131290Value0.
    (block28131290Value2) height: (25).
    block28131290Value3 := (block28131290Value0) width: (80).
    block28131290Value3
].
            recoveredPC := 886.
        ].
        recoveredStep = 886 ifTrue: [
            recoveredPC := 909.
        ].
        recoveredStep = 909 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 913.
        ].
        recoveredStep = 913 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 915.
        ].
        recoveredStep = 915 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 918.
        ].
        recoveredStep = 918 ifTrue: [
            recoveredStack1 := recoveredLocal21.
            recoveredPC := 921.
        ].
        recoveredStep = 921 ifTrue: [
            recoveredStack2 := 'cancelButton'.
            recoveredPC := 924.
        ].
        recoveredStep = 924 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 927.
        ].
        recoveredStep = 927 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 929.
        ].
        recoveredStep = 929 ifTrue: [
            recoveredStack1 := recoveredLocal18.
            recoveredPC := 932.
        ].
        recoveredStep = 932 ifTrue: [
            recoveredStack2 := 'okButton'.
            recoveredPC := 936.
        ].
        recoveredStep = 936 ifTrue: [
            recoveredStack3 := [:block281312b4Arg1 | 
    | block281312b4Value0 block281312b4Value1 block281312b4Value2 block281312b4Value3 |
    block281312b4Value0 := block281312b4Arg1.
    block281312b4Value1 := block281312b4Value0.
    (block281312b4Value1) labelString: ('&OK').
    block281312b4Value2 := block281312b4Value0.
    (block281312b4Value2) height: (25).
    block281312b4Value3 := (block281312b4Value0) width: (80).
    block281312b4Value3
].
            recoveredPC := 940.
        ].
        recoveredStep = 940 ifTrue: [
            recoveredPC := 963.
        ].
        recoveredStep = 963 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 967.
        ].
        recoveredStep = 967 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 969.
        ].
        recoveredStep = 969 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 972.
        ].
        recoveredStep = 972 ifTrue: [
            recoveredStack1 := recoveredLocal21.
            recoveredPC := 975.
        ].
        recoveredStep = 975 ifTrue: [
            recoveredStack2 := 'okButton'.
            recoveredPC := 978.
        ].
        recoveredStep = 978 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 981.
        ].
        recoveredStep = 981 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 983.
        ].
        recoveredStep = 983 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 986.
        ].
        recoveredStep = 986 ifTrue: [
            recoveredStack2 := [:block281312d8Arg1 | 
    | block281312d8Value0 block281312d8Value1 block281312d8Value2 block281312d8Value3 block281312d8Value4 block281312d8Value5 block281312d8Value6 block281312d8Value7 block281312d8Value8 |
    block281312d8Value0 := block281312d8Arg1.
    block281312d8Value1 := block281312d8Value0.
    block281312d8Value2 := XmATTACHNONE.
    (block281312d8Value1) topAttachment: (block281312d8Value2).
    block281312d8Value3 := block281312d8Value0.
    block281312d8Value4 := XmATTACHFORM.
    (block281312d8Value3) bottomAttachment: (block281312d8Value4).
    block281312d8Value5 := block281312d8Value0.
    (block281312d8Value5) bottomOffset: (5).
    block281312d8Value6 := block281312d8Value0.
    block281312d8Value7 := XmATTACHFORM.
    (block281312d8Value6) rightAttachment: (block281312d8Value7).
    block281312d8Value8 := (block281312d8Value0) rightOffset: (5).
    block281312d8Value8
].
            recoveredPC := 990.
        ].
        recoveredStep = 990 ifTrue: [
            recoveredPC := 1034.
        ].
        recoveredStep = 1034 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1039.
        ].
        recoveredStep = 1039 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1042.
        ].
        recoveredStep = 1042 ifTrue: [
            recoveredStack2 := [:recoveredBlock1042Arg1 | 
    | recoveredBlock1042Value0 recoveredBlock1042Value1 recoveredBlock1042Value2 recoveredBlock1042Value3 recoveredBlock1042Value4 recoveredBlock1042Value5 recoveredBlock1042Value6 recoveredBlock1042Value7 recoveredBlock1042Value8 recoveredBlock1042Value9 recoveredBlock1042Value10 |
    recoveredBlock1042Value0 := recoveredBlock1042Arg1.
    recoveredBlock1042Value1 := recoveredBlock1042Value0.
    recoveredBlock1042Value2 := XmATTACHNONE.
    (recoveredBlock1042Value1) topAttachment: (recoveredBlock1042Value2).
    recoveredBlock1042Value3 := recoveredBlock1042Value0.
    recoveredBlock1042Value4 := XmATTACHFORM.
    (recoveredBlock1042Value3) bottomAttachment: (recoveredBlock1042Value4).
    recoveredBlock1042Value5 := recoveredBlock1042Value0.
    (recoveredBlock1042Value5) bottomOffset: (5).
    recoveredBlock1042Value6 := recoveredBlock1042Value0.
    recoveredBlock1042Value7 := XmATTACHWIDGET.
    (recoveredBlock1042Value6) rightAttachment: (recoveredBlock1042Value7).
    recoveredBlock1042Value8 := recoveredBlock1042Value0.
    recoveredBlock1042Value9 := recoveredLocal2.
    (recoveredBlock1042Value8) rightWidget: (recoveredBlock1042Value9).
    recoveredBlock1042Value10 := (recoveredBlock1042Value0) rightOffset: (5).
    recoveredBlock1042Value10
].
            recoveredPC := 1096.
        ].
        recoveredStep = 1096 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1101.
        ].
        recoveredStep = 1101 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 1104.
        ].
        recoveredStep = 1104 ifTrue: [
            recoveredStack2 := [:block281312fcArg1 | 
    | block281312fcValue0 block281312fcValue1 block281312fcValue2 block281312fcValue3 block281312fcValue4 block281312fcValue5 block281312fcValue6 block281312fcValue7 block281312fcValue8 block281312fcValue9 block281312fcValue10 block281312fcValue11 |
    block281312fcValue0 := block281312fcArg1.
    block281312fcValue1 := block281312fcValue0.
    block281312fcValue2 := XmATTACHFORM.
    (block281312fcValue1) topAttachment: (block281312fcValue2).
    block281312fcValue3 := block281312fcValue0.
    (block281312fcValue3) topOffset: (5).
    block281312fcValue4 := block281312fcValue0.
    block281312fcValue5 := XmATTACHNONE.
    (block281312fcValue4) bottomAttachment: (block281312fcValue5).
    block281312fcValue6 := block281312fcValue0.
    block281312fcValue7 := XmATTACHFORM.
    (block281312fcValue6) leftAttachment: (block281312fcValue7).
    block281312fcValue8 := block281312fcValue0.
    (block281312fcValue8) leftOffset: (5).
    block281312fcValue9 := block281312fcValue0.
    block281312fcValue10 := XmATTACHFORM.
    (block281312fcValue9) rightAttachment: (block281312fcValue10).
    block281312fcValue11 := block281312fcValue0.
    (block281312fcValue11) rightOffset: (5).
    block281312fcValue0
].
            recoveredPC := 1108.
        ].
        recoveredStep = 1108 ifTrue: [
            recoveredPC := 1166.
        ].
        recoveredStep = 1166 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1171.
        ].
        recoveredStep = 1171 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 1174.
        ].
        recoveredStep = 1174 ifTrue: [
            recoveredStack2 := [:recoveredBlock1174Arg1 | 
    | recoveredBlock1174Value0 recoveredBlock1174Value1 recoveredBlock1174Value2 recoveredBlock1174Value3 recoveredBlock1174Value4 recoveredBlock1174Value5 recoveredBlock1174Value6 recoveredBlock1174Value7 recoveredBlock1174Value8 recoveredBlock1174Value9 recoveredBlock1174Value10 recoveredBlock1174Value11 recoveredBlock1174Value12 recoveredBlock1174Value13 |
    recoveredBlock1174Value0 := recoveredBlock1174Arg1.
    recoveredBlock1174Value1 := recoveredBlock1174Value0.
    recoveredBlock1174Value2 := XmATTACHWIDGET.
    (recoveredBlock1174Value1) topAttachment: (recoveredBlock1174Value2).
    recoveredBlock1174Value3 := recoveredBlock1174Value0.
    recoveredBlock1174Value4 := recoveredLocal17.
    (recoveredBlock1174Value3) topWidget: (recoveredBlock1174Value4).
    recoveredBlock1174Value5 := recoveredBlock1174Value0.
    (recoveredBlock1174Value5) topOffset: (5).
    recoveredBlock1174Value6 := recoveredBlock1174Value0.
    recoveredBlock1174Value7 := XmATTACHNONE.
    (recoveredBlock1174Value6) bottomAttachment: (recoveredBlock1174Value7).
    recoveredBlock1174Value8 := recoveredBlock1174Value0.
    recoveredBlock1174Value9 := XmATTACHFORM.
    (recoveredBlock1174Value8) leftAttachment: (recoveredBlock1174Value9).
    recoveredBlock1174Value10 := recoveredBlock1174Value0.
    (recoveredBlock1174Value10) leftOffset: (5).
    recoveredBlock1174Value11 := recoveredBlock1174Value0.
    recoveredBlock1174Value12 := XmATTACHFORM.
    (recoveredBlock1174Value11) rightAttachment: (recoveredBlock1174Value12).
    recoveredBlock1174Value13 := recoveredBlock1174Value0.
    (recoveredBlock1174Value13) rightOffset: (5).
    recoveredBlock1174Value0
].
            recoveredPC := 1242.
        ].
        recoveredStep = 1242 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1247.
        ].
        recoveredStep = 1247 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 1250.
        ].
        recoveredStep = 1250 ifTrue: [
            recoveredStack2 := [:block28131320Arg1 | 
    | block28131320Value0 block28131320Value1 block28131320Value2 block28131320Value3 block28131320Value4 block28131320Value5 block28131320Value6 block28131320Value7 block28131320Value8 block28131320Value9 block28131320Value10 block28131320Value11 |
    block28131320Value0 := block28131320Arg1.
    block28131320Value1 := block28131320Value0.
    block28131320Value2 := XmATTACHFORM.
    (block28131320Value1) topAttachment: (block28131320Value2).
    block28131320Value3 := block28131320Value0.
    (block28131320Value3) topOffset: (5).
    block28131320Value4 := block28131320Value0.
    block28131320Value5 := XmATTACHNONE.
    (block28131320Value4) bottomAttachment: (block28131320Value5).
    block28131320Value6 := block28131320Value0.
    block28131320Value7 := XmATTACHFORM.
    (block28131320Value6) leftAttachment: (block28131320Value7).
    block28131320Value8 := block28131320Value0.
    (block28131320Value8) leftOffset: (5).
    block28131320Value9 := block28131320Value0.
    block28131320Value10 := XmATTACHFORM.
    (block28131320Value9) rightAttachment: (block28131320Value10).
    block28131320Value11 := block28131320Value0.
    (block28131320Value11) rightOffset: (5).
    block28131320Value0
].
            recoveredPC := 1254.
        ].
        recoveredStep = 1254 ifTrue: [
            recoveredPC := 1312.
        ].
        recoveredStep = 1312 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1317.
        ].
        recoveredStep = 1317 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 1320.
        ].
        recoveredStep = 1320 ifTrue: [
            recoveredStack2 := [:recoveredBlock1320Arg1 | 
    | recoveredBlock1320Value0 recoveredBlock1320Value1 recoveredBlock1320Value2 recoveredBlock1320Value3 recoveredBlock1320Value4 recoveredBlock1320Value5 recoveredBlock1320Value6 recoveredBlock1320Value7 recoveredBlock1320Value8 recoveredBlock1320Value9 recoveredBlock1320Value10 recoveredBlock1320Value11 recoveredBlock1320Value12 recoveredBlock1320Value13 |
    recoveredBlock1320Value0 := recoveredBlock1320Arg1.
    recoveredBlock1320Value1 := recoveredBlock1320Value0.
    recoveredBlock1320Value2 := XmATTACHWIDGET.
    (recoveredBlock1320Value1) topAttachment: (recoveredBlock1320Value2).
    recoveredBlock1320Value3 := recoveredBlock1320Value0.
    recoveredBlock1320Value4 := recoveredLocal15.
    (recoveredBlock1320Value3) topWidget: (recoveredBlock1320Value4).
    recoveredBlock1320Value5 := recoveredBlock1320Value0.
    (recoveredBlock1320Value5) topOffset: (0).
    recoveredBlock1320Value6 := recoveredBlock1320Value0.
    recoveredBlock1320Value7 := XmATTACHNONE.
    (recoveredBlock1320Value6) bottomAttachment: (recoveredBlock1320Value7).
    recoveredBlock1320Value8 := recoveredBlock1320Value0.
    recoveredBlock1320Value9 := XmATTACHFORM.
    (recoveredBlock1320Value8) leftAttachment: (recoveredBlock1320Value9).
    recoveredBlock1320Value10 := recoveredBlock1320Value0.
    (recoveredBlock1320Value10) leftOffset: (25).
    recoveredBlock1320Value11 := recoveredBlock1320Value0.
    recoveredBlock1320Value12 := XmATTACHFORM.
    (recoveredBlock1320Value11) rightAttachment: (recoveredBlock1320Value12).
    recoveredBlock1320Value13 := recoveredBlock1320Value0.
    (recoveredBlock1320Value13) rightOffset: (5).
    recoveredBlock1320Value0
].
            recoveredPC := 1388.
        ].
        recoveredStep = 1388 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1393.
        ].
        recoveredStep = 1393 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 1396.
        ].
        recoveredStep = 1396 ifTrue: [
            recoveredStack2 := [:recoveredBlock1396Arg1 | 
    | recoveredBlock1396Value0 recoveredBlock1396Value1 recoveredBlock1396Value2 recoveredBlock1396Value3 recoveredBlock1396Value4 recoveredBlock1396Value5 recoveredBlock1396Value6 recoveredBlock1396Value7 recoveredBlock1396Value8 recoveredBlock1396Value9 recoveredBlock1396Value10 recoveredBlock1396Value11 recoveredBlock1396Value12 recoveredBlock1396Value13 |
    recoveredBlock1396Value0 := recoveredBlock1396Arg1.
    recoveredBlock1396Value1 := recoveredBlock1396Value0.
    recoveredBlock1396Value2 := XmATTACHWIDGET.
    (recoveredBlock1396Value1) topAttachment: (recoveredBlock1396Value2).
    recoveredBlock1396Value3 := recoveredBlock1396Value0.
    recoveredBlock1396Value4 := recoveredLocal12.
    (recoveredBlock1396Value3) topWidget: (recoveredBlock1396Value4).
    recoveredBlock1396Value5 := recoveredBlock1396Value0.
    (recoveredBlock1396Value5) topOffset: (0).
    recoveredBlock1396Value6 := recoveredBlock1396Value0.
    recoveredBlock1396Value7 := XmATTACHNONE.
    (recoveredBlock1396Value6) bottomAttachment: (recoveredBlock1396Value7).
    recoveredBlock1396Value8 := recoveredBlock1396Value0.
    recoveredBlock1396Value9 := XmATTACHFORM.
    (recoveredBlock1396Value8) leftAttachment: (recoveredBlock1396Value9).
    recoveredBlock1396Value10 := recoveredBlock1396Value0.
    (recoveredBlock1396Value10) leftOffset: (5).
    recoveredBlock1396Value11 := recoveredBlock1396Value0.
    recoveredBlock1396Value12 := XmATTACHFORM.
    (recoveredBlock1396Value11) rightAttachment: (recoveredBlock1396Value12).
    recoveredBlock1396Value13 := recoveredBlock1396Value0.
    (recoveredBlock1396Value13) rightOffset: (5).
    recoveredBlock1396Value0
].
            recoveredPC := 1464.
        ].
        recoveredStep = 1464 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1469.
        ].
        recoveredStep = 1469 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 1472.
        ].
        recoveredStep = 1472 ifTrue: [
            recoveredStack2 := [:recoveredBlock1472Arg1 | 
    | recoveredBlock1472Value0 recoveredBlock1472Value1 recoveredBlock1472Value2 recoveredBlock1472Value3 recoveredBlock1472Value4 recoveredBlock1472Value5 recoveredBlock1472Value6 recoveredBlock1472Value7 recoveredBlock1472Value8 recoveredBlock1472Value9 recoveredBlock1472Value10 recoveredBlock1472Value11 recoveredBlock1472Value12 recoveredBlock1472Value13 |
    recoveredBlock1472Value0 := recoveredBlock1472Arg1.
    recoveredBlock1472Value1 := recoveredBlock1472Value0.
    recoveredBlock1472Value2 := XmATTACHWIDGET.
    (recoveredBlock1472Value1) topAttachment: (recoveredBlock1472Value2).
    recoveredBlock1472Value3 := recoveredBlock1472Value0.
    recoveredBlock1472Value4 := recoveredLocal14.
    (recoveredBlock1472Value3) topWidget: (recoveredBlock1472Value4).
    recoveredBlock1472Value5 := recoveredBlock1472Value0.
    (recoveredBlock1472Value5) topOffset: (0).
    recoveredBlock1472Value6 := recoveredBlock1472Value0.
    recoveredBlock1472Value7 := XmATTACHNONE.
    (recoveredBlock1472Value6) bottomAttachment: (recoveredBlock1472Value7).
    recoveredBlock1472Value8 := recoveredBlock1472Value0.
    recoveredBlock1472Value9 := XmATTACHFORM.
    (recoveredBlock1472Value8) leftAttachment: (recoveredBlock1472Value9).
    recoveredBlock1472Value10 := recoveredBlock1472Value0.
    (recoveredBlock1472Value10) leftOffset: (5).
    recoveredBlock1472Value11 := recoveredBlock1472Value0.
    recoveredBlock1472Value12 := XmATTACHFORM.
    (recoveredBlock1472Value11) rightAttachment: (recoveredBlock1472Value12).
    recoveredBlock1472Value13 := recoveredBlock1472Value0.
    (recoveredBlock1472Value13) rightOffset: (5).
    recoveredBlock1472Value0
].
            recoveredPC := 1540.
        ].
        recoveredStep = 1540 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1545.
        ].
        recoveredStep = 1545 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 1548.
        ].
        recoveredStep = 1548 ifTrue: [
            recoveredStack2 := [:recoveredBlock1548Arg1 | 
    | recoveredBlock1548Value0 recoveredBlock1548Value1 recoveredBlock1548Value2 recoveredBlock1548Value3 recoveredBlock1548Value4 recoveredBlock1548Value5 recoveredBlock1548Value6 recoveredBlock1548Value7 recoveredBlock1548Value8 recoveredBlock1548Value9 recoveredBlock1548Value10 recoveredBlock1548Value11 recoveredBlock1548Value12 |
    recoveredBlock1548Value0 := recoveredBlock1548Arg1.
    recoveredBlock1548Value1 := recoveredBlock1548Value0.
    recoveredBlock1548Value2 := XmATTACHWIDGET.
    (recoveredBlock1548Value1) topAttachment: (recoveredBlock1548Value2).
    recoveredBlock1548Value3 := recoveredBlock1548Value0.
    recoveredBlock1548Value4 := recoveredLocal13.
    (recoveredBlock1548Value3) topWidget: (recoveredBlock1548Value4).
    recoveredBlock1548Value5 := recoveredBlock1548Value0.
    (recoveredBlock1548Value5) topOffset: (0).
    recoveredBlock1548Value6 := recoveredBlock1548Value0.
    recoveredBlock1548Value7 := XmATTACHNONE.
    (recoveredBlock1548Value6) bottomAttachment: (recoveredBlock1548Value7).
    recoveredBlock1548Value8 := recoveredBlock1548Value0.
    recoveredBlock1548Value9 := XmATTACHFORM.
    (recoveredBlock1548Value8) leftAttachment: (recoveredBlock1548Value9).
    recoveredBlock1548Value10 := recoveredBlock1548Value0.
    (recoveredBlock1548Value10) leftOffset: (25).
    recoveredBlock1548Value11 := recoveredBlock1548Value0.
    recoveredBlock1548Value12 := XmATTACHNONE.
    (recoveredBlock1548Value11) rightAttachment: (recoveredBlock1548Value12).
    recoveredBlock1548Value0
].
            recoveredPC := 1610.
        ].
        recoveredStep = 1610 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1615.
        ].
        recoveredStep = 1615 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 1618.
        ].
        recoveredStep = 1618 ifTrue: [
            recoveredStack2 := [:recoveredBlock1618Arg1 | 
    | recoveredBlock1618Value0 recoveredBlock1618Value1 recoveredBlock1618Value2 recoveredBlock1618Value3 recoveredBlock1618Value4 recoveredBlock1618Value5 recoveredBlock1618Value6 recoveredBlock1618Value7 recoveredBlock1618Value8 recoveredBlock1618Value9 recoveredBlock1618Value10 recoveredBlock1618Value11 recoveredBlock1618Value12 recoveredBlock1618Value13 recoveredBlock1618Value14 recoveredBlock1618Value15 |
    recoveredBlock1618Value0 := recoveredBlock1618Arg1.
    recoveredBlock1618Value1 := recoveredBlock1618Value0.
    recoveredBlock1618Value2 := XmATTACHWIDGET.
    (recoveredBlock1618Value1) topAttachment: (recoveredBlock1618Value2).
    recoveredBlock1618Value3 := recoveredBlock1618Value0.
    recoveredBlock1618Value4 := recoveredLocal13.
    (recoveredBlock1618Value3) topWidget: (recoveredBlock1618Value4).
    recoveredBlock1618Value5 := recoveredBlock1618Value0.
    (recoveredBlock1618Value5) topOffset: (0).
    recoveredBlock1618Value6 := recoveredBlock1618Value0.
    recoveredBlock1618Value7 := XmATTACHNONE.
    (recoveredBlock1618Value6) bottomAttachment: (recoveredBlock1618Value7).
    recoveredBlock1618Value8 := recoveredBlock1618Value0.
    recoveredBlock1618Value9 := XmATTACHWIDGET.
    (recoveredBlock1618Value8) leftAttachment: (recoveredBlock1618Value9).
    recoveredBlock1618Value10 := recoveredBlock1618Value0.
    recoveredBlock1618Value11 := recoveredLocal11.
    (recoveredBlock1618Value10) leftWidget: (recoveredBlock1618Value11).
    recoveredBlock1618Value12 := recoveredBlock1618Value0.
    (recoveredBlock1618Value12) leftOffset: (5).
    recoveredBlock1618Value13 := recoveredBlock1618Value0.
    recoveredBlock1618Value14 := XmATTACHFORM.
    (recoveredBlock1618Value13) rightAttachment: (recoveredBlock1618Value14).
    recoveredBlock1618Value15 := recoveredBlock1618Value0.
    (recoveredBlock1618Value15) rightOffset: (5).
    recoveredBlock1618Value0
].
            recoveredPC := 1694.
        ].
        recoveredStep = 1694 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1699.
        ].
        recoveredStep = 1699 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 1702.
        ].
        recoveredStep = 1702 ifTrue: [
            recoveredStack2 := [:recoveredBlock1702Arg1 | 
    | recoveredBlock1702Value0 recoveredBlock1702Value1 recoveredBlock1702Value2 recoveredBlock1702Value3 recoveredBlock1702Value4 recoveredBlock1702Value5 recoveredBlock1702Value6 recoveredBlock1702Value7 recoveredBlock1702Value8 recoveredBlock1702Value9 recoveredBlock1702Value10 recoveredBlock1702Value11 recoveredBlock1702Value12 recoveredBlock1702Value13 recoveredBlock1702Value14 recoveredBlock1702Value15 |
    recoveredBlock1702Value0 := recoveredBlock1702Arg1.
    recoveredBlock1702Value1 := recoveredBlock1702Value0.
    recoveredBlock1702Value2 := XmATTACHWIDGET.
    (recoveredBlock1702Value1) topAttachment: (recoveredBlock1702Value2).
    recoveredBlock1702Value3 := recoveredBlock1702Value0.
    recoveredBlock1702Value4 := recoveredLocal10.
    (recoveredBlock1702Value3) topWidget: (recoveredBlock1702Value4).
    recoveredBlock1702Value5 := recoveredBlock1702Value0.
    (recoveredBlock1702Value5) topOffset: (0).
    recoveredBlock1702Value6 := recoveredBlock1702Value0.
    recoveredBlock1702Value7 := XmATTACHNONE.
    (recoveredBlock1702Value6) bottomAttachment: (recoveredBlock1702Value7).
    recoveredBlock1702Value8 := recoveredBlock1702Value0.
    recoveredBlock1702Value9 := XmATTACHWIDGET.
    (recoveredBlock1702Value8) leftAttachment: (recoveredBlock1702Value9).
    recoveredBlock1702Value10 := recoveredBlock1702Value0.
    recoveredBlock1702Value11 := recoveredLocal11.
    (recoveredBlock1702Value10) leftWidget: (recoveredBlock1702Value11).
    recoveredBlock1702Value12 := recoveredBlock1702Value0.
    (recoveredBlock1702Value12) leftOffset: (5).
    recoveredBlock1702Value13 := recoveredBlock1702Value0.
    recoveredBlock1702Value14 := XmATTACHFORM.
    (recoveredBlock1702Value13) rightAttachment: (recoveredBlock1702Value14).
    recoveredBlock1702Value15 := recoveredBlock1702Value0.
    (recoveredBlock1702Value15) rightOffset: (5).
    recoveredBlock1702Value0
].
            recoveredPC := 1778.
        ].
        recoveredStep = 1778 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1783.
        ].
        recoveredStep = 1783 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 1786.
        ].
        recoveredStep = 1786 ifTrue: [
            recoveredStack2 := [:block28131344Arg1 | 
    | block28131344Value0 block28131344Value1 block28131344Value2 block28131344Value3 block28131344Value4 block28131344Value5 block28131344Value6 block28131344Value7 block28131344Value8 block28131344Value9 block28131344Value10 block28131344Value11 |
    block28131344Value0 := block28131344Arg1.
    block28131344Value1 := block28131344Value0.
    block28131344Value2 := XmATTACHFORM.
    (block28131344Value1) topAttachment: (block28131344Value2).
    block28131344Value3 := block28131344Value0.
    (block28131344Value3) topOffset: (5).
    block28131344Value4 := block28131344Value0.
    block28131344Value5 := XmATTACHNONE.
    (block28131344Value4) bottomAttachment: (block28131344Value5).
    block28131344Value6 := block28131344Value0.
    block28131344Value7 := XmATTACHFORM.
    (block28131344Value6) leftAttachment: (block28131344Value7).
    block28131344Value8 := block28131344Value0.
    (block28131344Value8) leftOffset: (5).
    block28131344Value9 := block28131344Value0.
    block28131344Value10 := XmATTACHFORM.
    (block28131344Value9) rightAttachment: (block28131344Value10).
    block28131344Value11 := block28131344Value0.
    (block28131344Value11) rightOffset: (5).
    block28131344Value0
].
            recoveredPC := 1790.
        ].
        recoveredStep = 1790 ifTrue: [
            recoveredPC := 1848.
        ].
        recoveredStep = 1848 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1853.
        ].
        recoveredStep = 1853 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 1856.
        ].
        recoveredStep = 1856 ifTrue: [
            recoveredStack2 := [:recoveredBlock1856Arg1 | 
    | recoveredBlock1856Value0 recoveredBlock1856Value1 recoveredBlock1856Value2 recoveredBlock1856Value3 recoveredBlock1856Value4 recoveredBlock1856Value5 recoveredBlock1856Value6 recoveredBlock1856Value7 recoveredBlock1856Value8 recoveredBlock1856Value9 recoveredBlock1856Value10 recoveredBlock1856Value11 recoveredBlock1856Value12 recoveredBlock1856Value13 |
    recoveredBlock1856Value0 := recoveredBlock1856Arg1.
    recoveredBlock1856Value1 := recoveredBlock1856Value0.
    recoveredBlock1856Value2 := XmATTACHWIDGET.
    (recoveredBlock1856Value1) topAttachment: (recoveredBlock1856Value2).
    recoveredBlock1856Value3 := recoveredBlock1856Value0.
    recoveredBlock1856Value4 := recoveredLocal6.
    (recoveredBlock1856Value3) topWidget: (recoveredBlock1856Value4).
    recoveredBlock1856Value5 := recoveredBlock1856Value0.
    (recoveredBlock1856Value5) topOffset: (5).
    recoveredBlock1856Value6 := recoveredBlock1856Value0.
    recoveredBlock1856Value7 := XmATTACHNONE.
    (recoveredBlock1856Value6) bottomAttachment: (recoveredBlock1856Value7).
    recoveredBlock1856Value8 := recoveredBlock1856Value0.
    recoveredBlock1856Value9 := XmATTACHFORM.
    (recoveredBlock1856Value8) leftAttachment: (recoveredBlock1856Value9).
    recoveredBlock1856Value10 := recoveredBlock1856Value0.
    (recoveredBlock1856Value10) leftOffset: (5).
    recoveredBlock1856Value11 := recoveredBlock1856Value0.
    recoveredBlock1856Value12 := XmATTACHFORM.
    (recoveredBlock1856Value11) rightAttachment: (recoveredBlock1856Value12).
    recoveredBlock1856Value13 := recoveredBlock1856Value0.
    (recoveredBlock1856Value13) rightOffset: (5).
    recoveredBlock1856Value0
].
            recoveredPC := 1924.
        ].
        recoveredStep = 1924 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1929.
        ].
        recoveredStep = 1929 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 1932.
        ].
        recoveredStep = 1932 ifTrue: [
            recoveredStack2 := [:recoveredBlock1932Arg1 | 
    | recoveredBlock1932Value0 recoveredBlock1932Value1 recoveredBlock1932Value2 recoveredBlock1932Value3 recoveredBlock1932Value4 recoveredBlock1932Value5 recoveredBlock1932Value6 recoveredBlock1932Value7 recoveredBlock1932Value8 recoveredBlock1932Value9 recoveredBlock1932Value10 recoveredBlock1932Value11 recoveredBlock1932Value12 recoveredBlock1932Value13 |
    recoveredBlock1932Value0 := recoveredBlock1932Arg1.
    recoveredBlock1932Value1 := recoveredBlock1932Value0.
    recoveredBlock1932Value2 := XmATTACHWIDGET.
    (recoveredBlock1932Value1) topAttachment: (recoveredBlock1932Value2).
    recoveredBlock1932Value3 := recoveredBlock1932Value0.
    recoveredBlock1932Value4 := recoveredLocal5.
    (recoveredBlock1932Value3) topWidget: (recoveredBlock1932Value4).
    recoveredBlock1932Value5 := recoveredBlock1932Value0.
    (recoveredBlock1932Value5) topOffset: (0).
    recoveredBlock1932Value6 := recoveredBlock1932Value0.
    recoveredBlock1932Value7 := XmATTACHNONE.
    (recoveredBlock1932Value6) bottomAttachment: (recoveredBlock1932Value7).
    recoveredBlock1932Value8 := recoveredBlock1932Value0.
    recoveredBlock1932Value9 := XmATTACHFORM.
    (recoveredBlock1932Value8) leftAttachment: (recoveredBlock1932Value9).
    recoveredBlock1932Value10 := recoveredBlock1932Value0.
    (recoveredBlock1932Value10) leftOffset: (25).
    recoveredBlock1932Value11 := recoveredBlock1932Value0.
    recoveredBlock1932Value12 := XmATTACHFORM.
    (recoveredBlock1932Value11) rightAttachment: (recoveredBlock1932Value12).
    recoveredBlock1932Value13 := recoveredBlock1932Value0.
    (recoveredBlock1932Value13) rightOffset: (5).
    recoveredBlock1932Value0
].
            recoveredPC := 2000.
        ].
        recoveredStep = 2000 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 2005.
        ].
        recoveredStep = 2005 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 2008.
        ].
        recoveredStep = 2008 ifTrue: [
            recoveredStack2 := [:recoveredBlock2008Arg1 | 
    | recoveredBlock2008Value0 recoveredBlock2008Value1 recoveredBlock2008Value2 recoveredBlock2008Value3 recoveredBlock2008Value4 recoveredBlock2008Value5 recoveredBlock2008Value6 recoveredBlock2008Value7 recoveredBlock2008Value8 recoveredBlock2008Value9 recoveredBlock2008Value10 recoveredBlock2008Value11 recoveredBlock2008Value12 recoveredBlock2008Value13 |
    recoveredBlock2008Value0 := recoveredBlock2008Arg1.
    recoveredBlock2008Value1 := recoveredBlock2008Value0.
    recoveredBlock2008Value2 := XmATTACHWIDGET.
    (recoveredBlock2008Value1) topAttachment: (recoveredBlock2008Value2).
    recoveredBlock2008Value3 := recoveredBlock2008Value0.
    recoveredBlock2008Value4 := recoveredLocal4.
    (recoveredBlock2008Value3) topWidget: (recoveredBlock2008Value4).
    recoveredBlock2008Value5 := recoveredBlock2008Value0.
    (recoveredBlock2008Value5) topOffset: (0).
    recoveredBlock2008Value6 := recoveredBlock2008Value0.
    recoveredBlock2008Value7 := XmATTACHNONE.
    (recoveredBlock2008Value6) bottomAttachment: (recoveredBlock2008Value7).
    recoveredBlock2008Value8 := recoveredBlock2008Value0.
    recoveredBlock2008Value9 := XmATTACHFORM.
    (recoveredBlock2008Value8) leftAttachment: (recoveredBlock2008Value9).
    recoveredBlock2008Value10 := recoveredBlock2008Value0.
    (recoveredBlock2008Value10) leftOffset: (25).
    recoveredBlock2008Value11 := recoveredBlock2008Value0.
    recoveredBlock2008Value12 := XmATTACHFORM.
    (recoveredBlock2008Value11) rightAttachment: (recoveredBlock2008Value12).
    recoveredBlock2008Value13 := recoveredBlock2008Value0.
    (recoveredBlock2008Value13) rightOffset: (5).
    recoveredBlock2008Value0
].
            recoveredPC := 2076.
        ].
        recoveredStep = 2076 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 2081.
        ].
        recoveredStep = 2081 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 2084.
        ].
        recoveredStep = 2084 ifTrue: [
            recoveredStack2 := XmNresizeCallback.
            recoveredPC := 2088.
        ].
        recoveredStep = 2088 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2089.
        ].
        recoveredStep = 2089 ifTrue: [
            recoveredStack4 := 'shellResizeCallback:clientData:callData:'.
            recoveredPC := 2092.
        ].
        recoveredStep = 2092 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2093.
        ].
        recoveredStep = 2093 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2097.
        ].
        recoveredStep = 2097 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 2100.
        ].
        recoveredStep = 2100 ifTrue: [
            recoveredStack2 := XmNvalueChangedCallback.
            recoveredPC := 2104.
        ].
        recoveredStep = 2104 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2105.
        ].
        recoveredStep = 2105 ifTrue: [
            recoveredStack4 := 'allRadioButtonActivate:clientData:callData:'.
            recoveredPC := 2108.
        ].
        recoveredStep = 2108 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2109.
        ].
        recoveredStep = 2109 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2113.
        ].
        recoveredStep = 2113 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 2116.
        ].
        recoveredStep = 2116 ifTrue: [
            recoveredStack2 := XmNvalueChangedCallback.
            recoveredPC := 2120.
        ].
        recoveredStep = 2120 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2121.
        ].
        recoveredStep = 2121 ifTrue: [
            recoveredStack4 := 'visibleRadioButtonActivate:clientData:callData:'.
            recoveredPC := 2124.
        ].
        recoveredStep = 2124 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2125.
        ].
        recoveredStep = 2125 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2129.
        ].
        recoveredStep = 2129 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 2132.
        ].
        recoveredStep = 2132 ifTrue: [
            recoveredStack2 := XmNvalueChangedCallback.
            recoveredPC := 2136.
        ].
        recoveredStep = 2136 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2137.
        ].
        recoveredStep = 2137 ifTrue: [
            recoveredStack4 := 'userRadioButtonActivate:clientData:callData:'.
            recoveredPC := 2140.
        ].
        recoveredStep = 2140 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2141.
        ].
        recoveredStep = 2141 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2145.
        ].
        recoveredStep = 2145 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 2148.
        ].
        recoveredStep = 2148 ifTrue: [
            recoveredStack2 := XmNvalueChangedCallback.
            recoveredPC := 2152.
        ].
        recoveredStep = 2152 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2153.
        ].
        recoveredStep = 2153 ifTrue: [
            recoveredStack4 := 'printAllCheckBoxActivate:clientData:callData:'.
            recoveredPC := 2156.
        ].
        recoveredStep = 2156 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2157.
        ].
        recoveredStep = 2157 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2161.
        ].
        recoveredStep = 2161 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 2164.
        ].
        recoveredStep = 2164 ifTrue: [
            recoveredStack2 := XmNvalueChangedCallback.
            recoveredPC := 2168.
        ].
        recoveredStep = 2168 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2169.
        ].
        recoveredStep = 2169 ifTrue: [
            recoveredStack4 := 'currentComponentRadioButtonActivate:clientData:callData:'.
            recoveredPC := 2172.
        ].
        recoveredStep = 2172 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2173.
        ].
        recoveredStep = 2173 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2177.
        ].
        recoveredStep = 2177 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 2180.
        ].
        recoveredStep = 2180 ifTrue: [
            recoveredStack2 := XmNvalueChangedCallback.
            recoveredPC := 2184.
        ].
        recoveredStep = 2184 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2185.
        ].
        recoveredStep = 2185 ifTrue: [
            recoveredStack4 := 'allComponentsRadioButtonActivate:clientData:callData:'.
            recoveredPC := 2188.
        ].
        recoveredStep = 2188 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2189.
        ].
        recoveredStep = 2189 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2193.
        ].
        recoveredStep = 2193 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 2196.
        ].
        recoveredStep = 2196 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 2200.
        ].
        recoveredStep = 2200 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2201.
        ].
        recoveredStep = 2201 ifTrue: [
            recoveredStack4 := 'cancelActivate:clientData:callData:'.
            recoveredPC := 2204.
        ].
        recoveredStep = 2204 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2205.
        ].
        recoveredStep = 2205 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2209.
        ].
        recoveredStep = 2209 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2212.
        ].
        recoveredStep = 2212 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 2216.
        ].
        recoveredStep = 2216 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2217.
        ].
        recoveredStep = 2217 ifTrue: [
            recoveredStack4 := 'okActivate:clientData:callData:'.
            recoveredPC := 2220.
        ].
        recoveredStep = 2220 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2221.
        ].
        recoveredStep = 2221 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2225.
        ].
        recoveredStep = 2225 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 2228.
        ].
        recoveredStep = 2228 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2233.
        ].
        recoveredStep = 2233 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 2236.
        ].
        recoveredStep = 2236 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2241.
        ].
        recoveredStep = 2241 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 2244.
        ].
        recoveredStep = 2244 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2249.
        ].
        recoveredStep = 2249 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 2252.
        ].
        recoveredStep = 2252 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2257.
        ].
        recoveredStep = 2257 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 2260.
        ].
        recoveredStep = 2260 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2265.
        ].
        recoveredStep = 2265 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 2268.
        ].
        recoveredStep = 2268 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2273.
        ].
        recoveredStep = 2273 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 2276.
        ].
        recoveredStep = 2276 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2281.
        ].
        recoveredStep = 2281 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 2284.
        ].
        recoveredStep = 2284 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2289.
        ].
        recoveredStep = 2289 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 2292.
        ].
        recoveredStep = 2292 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2297.
        ].
        recoveredStep = 2297 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2300.
        ].
        recoveredStep = 2300 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2305.
        ].
        recoveredStep = 2305 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 2308.
        ].
        recoveredStep = 2308 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2313.
        ].
        recoveredStep = 2313 ifTrue: [
            recoveredStack1 := recoveredLocal18.
            recoveredPC := 2316.
        ].
        recoveredStep = 2316 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 2319.
        ].
        recoveredStep = 2319 ifTrue: [
            (recoveredStack1) defaultButton: (recoveredStack2).
            recoveredPC := 2323.
        ].
        recoveredStep = 2323 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 2326.
        ].
        recoveredStep = 2326 ifTrue: [
            recoveredStack2 := recoveredLocal21.
            recoveredPC := 2329.
        ].
        recoveredStep = 2329 ifTrue: [
            recoveredStack3 := recoveredLocal19.
            recoveredPC := 2332.
        ].
        recoveredStep = 2332 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 2337.
        ].
        recoveredStep = 2337 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

