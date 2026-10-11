"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000120; bytecode file offset 0x8ffcfc"
!EtasButtonOption methodsFor: 'recovered'!
updateValue
    ^self
! !

"ASDBase.ic method 0x20004430; bytecode file offset 0x90206c"
!EtasButtonOption methodsFor: 'recovered'!
value: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x200613d4; bytecode file offset 0x95e838"
!EtasButtonOption methodsFor: 'recovered'!
optionIcon
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) resourceManager.
    recoveredValue1 := (recoveredValue0) returnIconWithName: ('GeneralTransparent').
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006fe8c; bytecode file offset 0x96c850"
!EtasButtonOption methodsFor: 'recovered'!
action
    | recoveredValue0 |
    recoveredValue0 := action.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20073840; bytecode file offset 0x970b34"
!EtasButtonOption methodsFor: 'recovered'!
defaultValue
    ^nil
! !

"ASDBase.ic method 0x20074050; bytecode file offset 0x970b34"
!EtasButtonOption methodsFor: 'recovered'!
value
    ^nil
! !

"ASDBase.ic method 0x200c64e4; bytecode file offset 0x9c2dd0"
!EtasButtonOption methodsFor: 'recovered'!
action: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    action := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c6588; bytecode file offset 0x9c3164"
!EtasButtonOption methodsFor: 'recovered'!
hyperlink: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    hyperlink := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20106a10; bytecode file offset 0xa032e4"
!EtasButtonOption methodsFor: 'recovered'!
hyperlink
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := hyperlink.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            hyperlink := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := hyperlink.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2010a19c; bytecode file offset 0xa06ab8"
!EtasButtonOption methodsFor: 'recovered'!
widgetOptionLabel
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widget.
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
            recoveredStack0 := (recoveredStack0) widget.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2010a24c; bytecode file offset 0xa06b68"
!EtasButtonOption methodsFor: 'recovered'!
widgetOptionButton
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widget.
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
            recoveredStack0 := (recoveredStack0) widget.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 3.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20133628; bytecode file offset 0xa2fefc"
!EtasButtonOption methodsFor: 'recovered'!
createEditWidgetInForm: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) hyperlink.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) createHyperlinkWidgetInForm: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) createButtonWidgetInForm: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20169cdc; bytecode file offset 0xa6659c"
!EtasButtonOption methodsFor: 'recovered'!
buttonActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) sensitive.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) action.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) action.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2038fdf8; bytecode file offset 0xc8c6e0"
!EtasButtonOption methodsFor: 'recovered'!
mouseMoved: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
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
            recoveredStack1 := (recoveredStack1) state.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := Button1Mask.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) anyMask: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) state.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := Button2Mask.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) anyMask: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) state.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := Button3Mask.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) anyMask: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) state.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := Button4Mask.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) anyMask: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) state.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := Button5Mask.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) anyMask: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) sensitive.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) window.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) resourceManager.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := XCHand2.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) fontCursorAt: (recoveredStack2).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) setCursor: (recoveredStack1).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203ba584; bytecode file offset 0xcb6e78"
!EtasButtonOption methodsFor: 'recovered'!
updateOptionWidget
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := super updateOptionWidget.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
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
            recoveredStack0 := (recoveredStack0) hyperlink.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) sensitive.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetOptionLabel.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := CgRGBColor.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) blue.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) foregroundColor: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetOptionLabel.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) redrawWidget.
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
            recoveredStack0 := (recoveredStack0) widgetOptionLabel.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := CgRGBColor.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := OS.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack3 := ColorGraytext.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := (recoveredStack2) getSysColor: (recoveredStack3).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) fromOSRGB: (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) foregroundColor: (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetOptionLabel.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) redrawWidget.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredPC := 75.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetOptionButton.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) sensitive.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack0) needsUpdate: (recoveredStack1).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20542758; bytecode file offset 0xe3f0a8"
!EtasButtonOption methodsFor: 'recovered'!
createHyperlinkWidgetInForm: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 'optionIcon'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := [:recoveredBlock9Arg1 | 
    | recoveredBlock9Local1 recoveredBlock9Value0 recoveredBlock9Value1 recoveredBlock9Value2 recoveredBlock9Value3 recoveredBlock9Value4 recoveredBlock9Value5 recoveredBlock9Value6 recoveredBlock9Value7 |
    recoveredBlock9Value0 := recoveredBlock9Arg1.
    recoveredBlock9Value1 := recoveredBlock9Value0.
    recoveredBlock9Value2 := XmICON.
    (recoveredBlock9Value1) labelType: (recoveredBlock9Value2).
    recoveredBlock9Value3 := recoveredBlock9Value0.
    recoveredBlock9Value4 := XmALIGNMENTBEGINNING.
    (recoveredBlock9Value3) alignment: (recoveredBlock9Value4).
    recoveredBlock9Value5 := recoveredBlock9Value0.
    (recoveredBlock9Value5) width: (20).
    recoveredBlock9Value6 := (self) optionIcon.
    recoveredBlock9Value7 := (recoveredBlock9Value0) labelIcon: (recoveredBlock9Value6).
    recoveredBlock9Value7
].
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := 'optionLabel'.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := [:recoveredBlock50Arg1 | 
    | recoveredBlock50Value0 recoveredBlock50Value1 recoveredBlock50Value2 recoveredBlock50Value3 recoveredBlock50Value4 recoveredBlock50Value5 recoveredBlock50Value6 recoveredBlock50Value7 recoveredBlock50Value8 recoveredBlock50Value9 recoveredBlock50Value10 |
    recoveredBlock50Value0 := recoveredBlock50Arg1.
    recoveredBlock50Value1 := recoveredBlock50Value0.
    recoveredBlock50Value2 := XmALIGNMENTBEGINNING.
    (recoveredBlock50Value1) alignment: (recoveredBlock50Value2).
    recoveredBlock50Value3 := recoveredBlock50Value0.
    recoveredBlock50Value4 := CgRGBColor.
    recoveredBlock50Value5 := (recoveredBlock50Value4) blue.
    (recoveredBlock50Value3) foregroundColor: (recoveredBlock50Value5).
    recoveredBlock50Value6 := recoveredBlock50Value0.
    recoveredBlock50Value7 := (self) label.
    recoveredBlock50Value8 := (recoveredBlock50Value7) , ('   ').
    (recoveredBlock50Value6) labelString: (recoveredBlock50Value8).
    recoveredBlock50Value9 := (self) labelWidth.
    recoveredBlock50Value10 := (recoveredBlock50Value0) width: (recoveredBlock50Value9).
    recoveredBlock50Value10
].
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := [:block2810e4d8Arg1 | 
    | block2810e4d8Value0 block2810e4d8Value1 block2810e4d8Value2 block2810e4d8Value3 block2810e4d8Value4 block2810e4d8Value5 block2810e4d8Value6 block2810e4d8Value7 block2810e4d8Value8 |
    block2810e4d8Value0 := block2810e4d8Arg1.
    block2810e4d8Value1 := block2810e4d8Value0.
    block2810e4d8Value2 := XmATTACHFORM.
    (block2810e4d8Value1) topAttachment: (block2810e4d8Value2).
    block2810e4d8Value3 := block2810e4d8Value0.
    block2810e4d8Value4 := XmATTACHFORM.
    (block2810e4d8Value3) leftAttachment: (block2810e4d8Value4).
    block2810e4d8Value5 := block2810e4d8Value0.
    block2810e4d8Value6 := XmATTACHNONE.
    (block2810e4d8Value5) rightAttachment: (block2810e4d8Value6).
    block2810e4d8Value7 := XmATTACHFORM.
    block2810e4d8Value8 := (block2810e4d8Value0) bottomAttachment: (block2810e4d8Value7).
    block2810e4d8Value8
].
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := [:recoveredBlock126Arg1 | 
    | recoveredBlock126Value0 recoveredBlock126Value1 recoveredBlock126Value2 recoveredBlock126Value3 recoveredBlock126Value4 recoveredBlock126Value5 recoveredBlock126Value6 recoveredBlock126Value7 recoveredBlock126Value8 recoveredBlock126Value9 recoveredBlock126Value10 recoveredBlock126Value11 recoveredBlock126Value12 |
    recoveredBlock126Value0 := recoveredBlock126Arg1.
    recoveredBlock126Value1 := recoveredBlock126Value0.
    recoveredBlock126Value2 := XmATTACHFORM.
    (recoveredBlock126Value1) topAttachment: (recoveredBlock126Value2).
    recoveredBlock126Value3 := recoveredBlock126Value0.
    recoveredBlock126Value4 := XmATTACHFORM.
    (recoveredBlock126Value3) bottomAttachment: (recoveredBlock126Value4).
    recoveredBlock126Value5 := recoveredBlock126Value0.
    recoveredBlock126Value6 := XmATTACHWIDGET.
    (recoveredBlock126Value5) leftAttachment: (recoveredBlock126Value6).
    recoveredBlock126Value7 := recoveredBlock126Value0.
    (recoveredBlock126Value7) leftOffset: (5).
    recoveredBlock126Value8 := recoveredBlock126Value0.
    recoveredBlock126Value9 := recoveredLocal1.
    (recoveredBlock126Value8) leftWidget: (recoveredBlock126Value9).
    recoveredBlock126Value10 := recoveredBlock126Value0.
    recoveredBlock126Value11 := XmATTACHFORM.
    (recoveredBlock126Value10) rightAttachment: (recoveredBlock126Value11).
    recoveredBlock126Value12 := recoveredBlock126Value0.
    (recoveredBlock126Value12) rightOffset: (5).
    recoveredBlock126Value0
].
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack3 := PointerMotionMask.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack5 := 'mouseMoved:clientData:callData:'.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack6 := nil.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            (recoveredStack2) addEventHandler: (recoveredStack3) receiver: (recoveredStack4) selector: (recoveredStack5) clientData: (recoveredStack6).
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack2 := ButtonPressMask.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack4 := 'buttonActivate:clientData:callData:'.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack5 := recoveredLocal3.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            (recoveredStack1) addEventHandler: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            (recoveredStack0) widget: (recoveredStack1).
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205a3b7c; bytecode file offset 0xea04e4"
!EtasButtonOption methodsFor: 'recovered'!
createButtonWidgetInForm: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 'optionIcon'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := [:recoveredBlock9Arg1 | 
    | recoveredBlock9Local1 recoveredBlock9Value0 recoveredBlock9Value1 recoveredBlock9Value2 recoveredBlock9Value3 recoveredBlock9Value4 recoveredBlock9Value5 recoveredBlock9Value6 recoveredBlock9Value7 |
    recoveredBlock9Value0 := recoveredBlock9Arg1.
    recoveredBlock9Value1 := recoveredBlock9Value0.
    recoveredBlock9Value2 := XmICON.
    (recoveredBlock9Value1) labelType: (recoveredBlock9Value2).
    recoveredBlock9Value3 := recoveredBlock9Value0.
    recoveredBlock9Value4 := XmALIGNMENTBEGINNING.
    (recoveredBlock9Value3) alignment: (recoveredBlock9Value4).
    recoveredBlock9Value5 := recoveredBlock9Value0.
    (recoveredBlock9Value5) width: (20).
    recoveredBlock9Value6 := (self) optionIcon.
    recoveredBlock9Value7 := (recoveredBlock9Value0) labelIcon: (recoveredBlock9Value6).
    recoveredBlock9Value7
].
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := 'optionLabel'.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := [:recoveredBlock50Arg1 | 
    | recoveredBlock50Value0 recoveredBlock50Value1 recoveredBlock50Value2 recoveredBlock50Value3 recoveredBlock50Value4 recoveredBlock50Value5 recoveredBlock50Value6 recoveredBlock50Value7 |
    recoveredBlock50Value0 := recoveredBlock50Arg1.
    recoveredBlock50Value1 := recoveredBlock50Value0.
    recoveredBlock50Value2 := XmALIGNMENTBEGINNING.
    (recoveredBlock50Value1) alignment: (recoveredBlock50Value2).
    recoveredBlock50Value3 := recoveredBlock50Value0.
    recoveredBlock50Value4 := (self) label.
    recoveredBlock50Value5 := (recoveredBlock50Value4) , ('   ').
    (recoveredBlock50Value3) labelString: (recoveredBlock50Value5).
    recoveredBlock50Value6 := (self) labelWidth.
    recoveredBlock50Value7 := (recoveredBlock50Value0) width: (recoveredBlock50Value6).
    recoveredBlock50Value7
].
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := 'button'.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack3 := [:recoveredBlock90Arg1 | 
    | recoveredBlock90Value0 recoveredBlock90Value1 recoveredBlock90Value2 recoveredBlock90Value3 recoveredBlock90Value4 recoveredBlock90Value5 recoveredBlock90Value6 |
    recoveredBlock90Value0 := recoveredBlock90Arg1.
    recoveredBlock90Value1 := recoveredBlock90Value0.
    (recoveredBlock90Value1) height: (20).
    recoveredBlock90Value2 := recoveredBlock90Value0.
    (recoveredBlock90Value2) width: (22).
    recoveredBlock90Value3 := recoveredBlock90Value0.
    (recoveredBlock90Value3) labelString: ('...').
    recoveredBlock90Value4 := recoveredBlock90Value0.
    (recoveredBlock90Value4) recomputeSize: (false).
    recoveredBlock90Value5 := (self) sensitive.
    recoveredBlock90Value6 := (recoveredBlock90Value0) sensitive: (recoveredBlock90Value5).
    recoveredBlock90Value6
].
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack2 := [:block281159b4Arg1 | 
    | block281159b4Value0 block281159b4Value1 block281159b4Value2 block281159b4Value3 block281159b4Value4 block281159b4Value5 block281159b4Value6 block281159b4Value7 block281159b4Value8 |
    block281159b4Value0 := block281159b4Arg1.
    block281159b4Value1 := block281159b4Value0.
    block281159b4Value2 := XmATTACHFORM.
    (block281159b4Value1) topAttachment: (block281159b4Value2).
    block281159b4Value3 := block281159b4Value0.
    block281159b4Value4 := XmATTACHFORM.
    (block281159b4Value3) leftAttachment: (block281159b4Value4).
    block281159b4Value5 := block281159b4Value0.
    block281159b4Value6 := XmATTACHNONE.
    (block281159b4Value5) rightAttachment: (block281159b4Value6).
    block281159b4Value7 := XmATTACHFORM.
    block281159b4Value8 := (block281159b4Value0) bottomAttachment: (block281159b4Value7).
    block281159b4Value8
].
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack2 := [:recoveredBlock164Arg1 | 
    | recoveredBlock164Value0 recoveredBlock164Value1 recoveredBlock164Value2 recoveredBlock164Value3 recoveredBlock164Value4 recoveredBlock164Value5 recoveredBlock164Value6 recoveredBlock164Value7 recoveredBlock164Value8 recoveredBlock164Value9 recoveredBlock164Value10 recoveredBlock164Value11 recoveredBlock164Value12 recoveredBlock164Value13 |
    recoveredBlock164Value0 := recoveredBlock164Arg1.
    recoveredBlock164Value1 := recoveredBlock164Value0.
    recoveredBlock164Value2 := XmATTACHFORM.
    (recoveredBlock164Value1) topAttachment: (recoveredBlock164Value2).
    recoveredBlock164Value3 := recoveredBlock164Value0.
    recoveredBlock164Value4 := XmATTACHFORM.
    (recoveredBlock164Value3) bottomAttachment: (recoveredBlock164Value4).
    recoveredBlock164Value5 := recoveredBlock164Value0.
    recoveredBlock164Value6 := XmATTACHWIDGET.
    (recoveredBlock164Value5) leftAttachment: (recoveredBlock164Value6).
    recoveredBlock164Value7 := recoveredBlock164Value0.
    (recoveredBlock164Value7) leftOffset: (5).
    recoveredBlock164Value8 := recoveredBlock164Value0.
    recoveredBlock164Value9 := recoveredLocal1.
    (recoveredBlock164Value8) leftWidget: (recoveredBlock164Value9).
    recoveredBlock164Value10 := recoveredBlock164Value0.
    recoveredBlock164Value11 := XmATTACHPOSITION.
    (recoveredBlock164Value10) rightAttachment: (recoveredBlock164Value11).
    recoveredBlock164Value12 := recoveredBlock164Value0.
    recoveredBlock164Value13 := (self) labelOffset.
    (recoveredBlock164Value12) rightPosition: (recoveredBlock164Value13).
    recoveredBlock164Value0
].
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack2 := [:recoveredBlock214Arg1 | 
    | recoveredBlock214Value0 recoveredBlock214Value1 recoveredBlock214Value2 recoveredBlock214Value3 recoveredBlock214Value4 recoveredBlock214Value5 recoveredBlock214Value6 recoveredBlock214Value7 recoveredBlock214Value8 recoveredBlock214Value9 recoveredBlock214Value10 |
    recoveredBlock214Value0 := recoveredBlock214Arg1.
    recoveredBlock214Value1 := recoveredBlock214Value0.
    recoveredBlock214Value2 := XmATTACHFORM.
    (recoveredBlock214Value1) topAttachment: (recoveredBlock214Value2).
    recoveredBlock214Value3 := recoveredBlock214Value0.
    recoveredBlock214Value4 := XmATTACHFORM.
    (recoveredBlock214Value3) bottomAttachment: (recoveredBlock214Value4).
    recoveredBlock214Value5 := recoveredBlock214Value0.
    recoveredBlock214Value6 := XmATTACHWIDGET.
    (recoveredBlock214Value5) leftAttachment: (recoveredBlock214Value6).
    recoveredBlock214Value7 := recoveredBlock214Value0.
    recoveredBlock214Value8 := recoveredLocal3.
    (recoveredBlock214Value7) leftWidget: (recoveredBlock214Value8).
    recoveredBlock214Value9 := recoveredBlock214Value0.
    recoveredBlock214Value10 := XmATTACHNONE.
    (recoveredBlock214Value9) rightAttachment: (recoveredBlock214Value10).
    recoveredBlock214Value0
].
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack4 := 'buttonActivate:clientData:callData:'.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack5 := recoveredLocal4.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            (recoveredStack0) createFocusEvent: (recoveredStack1).
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            (recoveredStack0) widget: (recoveredStack1).
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

