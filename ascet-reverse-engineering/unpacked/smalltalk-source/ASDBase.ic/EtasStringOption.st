"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000b42c; bytecode file offset 0x908be4"
!EtasStringOption methodsFor: 'recovered'!
isSizeableStringOption
    | recoveredValue0 |
    recoveredValue0 := (self) multiLine.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20025124; bytecode file offset 0x92209c"
!EtasStringOption methodsFor: 'recovered'!
defaultValue
    ^''
! !

"ASDBase.ic method 0x200baad0; bytecode file offset 0x9b7394"
!EtasStringOption methodsFor: 'recovered'!
multiLine: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    multiLine := recoveredValue0.
    (self) needsUpdate: (true).
    ^self
! !

"ASDBase.ic method 0x201069b8; bytecode file offset 0xa03274"
!EtasStringOption methodsFor: 'recovered'!
multiLine
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := multiLine.
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
            multiLine := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := multiLine.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2010a14c; bytecode file offset 0xa06ab8"
!EtasStringOption methodsFor: 'recovered'!
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

"ASDBase.ic method 0x2010a26c; bytecode file offset 0xa06b68"
!EtasStringOption methodsFor: 'recovered'!
widgetOptionTextField
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

"ASDBase.ic method 0x202358ac; bytecode file offset 0xb321b8"
!EtasStringOption methodsFor: 'recovered'!
valueChanged: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) widget.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 25] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetOptionLabel.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) label.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := ' * '.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            super valueChanged: (recoveredStack1) clientData: (recoveredStack2) callData: (recoveredStack3).
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

"ASDBase.ic method 0x2026aecc; bytecode file offset 0xb677cc"
!EtasStringOption methodsFor: 'recovered'!
updateValue
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetOptionTextField.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetOptionTextField.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDestroyed.
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
            recoveredStack0 := (recoveredStack0) needsUpdate.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetOptionTextField.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetOptionTextField.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2031baf0; bytecode file offset 0xc18404"
!EtasStringOption methodsFor: 'recovered'!
updateOptionWidget
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
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
            recoveredStack0 := (recoveredStack0) modified.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 39].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetOptionTextField.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 39].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetOptionTextField.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) updateOptionWidgetLabel.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) updateOptionWidgetLabelFont.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetOptionTextField.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) sensitive.
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
            recoveredStack1 := false.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) needsUpdate: (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205bd434; bytecode file offset 0xeb9db4"
!EtasStringOption methodsFor: 'recovered'!
createEditWidgetInForm: recoveredArg1
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
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := 'editField'.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack3 := [:recoveredBlock90Arg1 | 
    | recoveredBlock90Stack0 recoveredBlock90Stack1 recoveredBlock90Stack2 recoveredBlock90Stack3 recoveredBlock90Stack4 recoveredBlock90PC recoveredBlock90Step recoveredBlock90Done recoveredBlock90Result |
    recoveredBlock90Stack0 := self.
    recoveredBlock90PC := 96.
    recoveredBlock90Done := false.
    [recoveredBlock90Done not] whileTrue: [
        recoveredBlock90Step := recoveredBlock90PC.
        recoveredBlock90Step = 96 ifTrue: [
            recoveredBlock90Stack1 := recoveredBlock90Arg1.
            recoveredBlock90PC := 97.
        ].
        recoveredBlock90Step = 97 ifTrue: [
            recoveredBlock90Stack2 := recoveredBlock90Stack1.
            recoveredBlock90PC := 98.
        ].
        recoveredBlock90Step = 98 ifTrue: [
            recoveredBlock90Stack3 := XmALIGNMENTBEGINNING.
            recoveredBlock90PC := 100.
        ].
        recoveredBlock90Step = 100 ifTrue: [
            (recoveredBlock90Stack2) alignment: (recoveredBlock90Stack3).
            recoveredBlock90PC := 102.
        ].
        recoveredBlock90Step = 102 ifTrue: [
            recoveredBlock90Stack2 := self.
            recoveredBlock90PC := 103.
        ].
        recoveredBlock90Step = 103 ifTrue: [
            recoveredBlock90Stack2 := (recoveredBlock90Stack2) sensitive.
            recoveredBlock90PC := 105.
        ].
        recoveredBlock90Step = 105 ifTrue: [
            (recoveredBlock90Stack1) sensitive: (recoveredBlock90Stack2).
            recoveredBlock90PC := 107.
        ].
        recoveredBlock90Step = 107 ifTrue: [
            recoveredBlock90Stack0 := (recoveredBlock90Stack0) multiLine.
            recoveredBlock90PC := 109.
        ].
        recoveredBlock90Step = 109 ifTrue: [
            (recoveredBlock90Stack0) ifTrue: [recoveredBlock90PC := 112] ifFalse: [recoveredBlock90PC := 135].
        ].
        recoveredBlock90Step = 112 ifTrue: [
            recoveredBlock90Stack0 := recoveredBlock90Arg1.
            recoveredBlock90PC := 113.
        ].
        recoveredBlock90Step = 113 ifTrue: [
            recoveredBlock90Stack1 := recoveredBlock90Stack0.
            recoveredBlock90PC := 114.
        ].
        recoveredBlock90Step = 114 ifTrue: [
            recoveredBlock90Stack2 := true.
            recoveredBlock90PC := 115.
        ].
        recoveredBlock90Step = 115 ifTrue: [
            (recoveredBlock90Stack1) wordWrap: (recoveredBlock90Stack2).
            recoveredBlock90Stack1 := recoveredBlock90Stack0.
            recoveredBlock90PC := 118.
        ].
        recoveredBlock90Step = 118 ifTrue: [
            recoveredBlock90Stack2 := XmMULTILINEEDIT.
            recoveredBlock90PC := 120.
        ].
        recoveredBlock90Step = 120 ifTrue: [
            (recoveredBlock90Stack1) editMode: (recoveredBlock90Stack2).
            recoveredBlock90Stack1 := recoveredBlock90Stack0.
            recoveredBlock90PC := 123.
        ].
        recoveredBlock90Step = 123 ifTrue: [
            recoveredBlock90Stack2 := 5.
            recoveredBlock90PC := 125.
        ].
        recoveredBlock90Step = 125 ifTrue: [
            (recoveredBlock90Stack1) rows: (recoveredBlock90Stack2).
            recoveredBlock90Stack1 := recoveredBlock90Stack0.
            recoveredBlock90PC := 128.
        ].
        recoveredBlock90Step = 128 ifTrue: [
            recoveredBlock90Stack2 := 100.
            recoveredBlock90PC := 132.
        ].
        recoveredBlock90Step = 132 ifTrue: [
            (recoveredBlock90Stack1) height: (recoveredBlock90Stack2).
            recoveredBlock90PC := 134.
        ].
        recoveredBlock90Step = 134 ifTrue: [
            recoveredBlock90PC := 135.
        ].
        recoveredBlock90Step = 135 ifTrue: [
            recoveredBlock90Stack0 := recoveredBlock90Arg1.
            recoveredBlock90PC := 136.
        ].
        recoveredBlock90Step = 136 ifTrue: [
            recoveredBlock90Stack1 := self.
            recoveredBlock90PC := 137.
        ].
        recoveredBlock90Step = 137 ifTrue: [
            recoveredBlock90Stack1 := (recoveredBlock90Stack1) value.
            recoveredBlock90PC := 139.
        ].
        recoveredBlock90Step = 139 ifTrue: [
            recoveredBlock90Stack0 := (recoveredBlock90Stack0) value: (recoveredBlock90Stack1).
            recoveredBlock90PC := 141.
        ].
        recoveredBlock90Step = 141 ifTrue: [
            recoveredBlock90Result := recoveredBlock90Stack0.
            recoveredBlock90Done := true.
        ].
    ].
    recoveredBlock90Result
].
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := (recoveredStack1) createScrolledText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack2 := [:block28117910Arg1 | 
    | block28117910Value0 block28117910Value1 block28117910Value2 block28117910Value3 block28117910Value4 block28117910Value5 block28117910Value6 block28117910Value7 block28117910Value8 |
    block28117910Value0 := block28117910Arg1.
    block28117910Value1 := block28117910Value0.
    block28117910Value2 := XmATTACHFORM.
    (block28117910Value1) topAttachment: (block28117910Value2).
    block28117910Value3 := block28117910Value0.
    block28117910Value4 := XmATTACHFORM.
    (block28117910Value3) leftAttachment: (block28117910Value4).
    block28117910Value5 := block28117910Value0.
    block28117910Value6 := XmATTACHNONE.
    (block28117910Value5) rightAttachment: (block28117910Value6).
    block28117910Value7 := XmATTACHFORM.
    block28117910Value8 := (block28117910Value0) bottomAttachment: (block28117910Value7).
    block28117910Value8
].
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack2 := [:recoveredBlock192Arg1 | 
    | recoveredBlock192Value0 recoveredBlock192Value1 recoveredBlock192Value2 recoveredBlock192Value3 recoveredBlock192Value4 recoveredBlock192Value5 recoveredBlock192Value6 recoveredBlock192Value7 recoveredBlock192Value8 recoveredBlock192Value9 recoveredBlock192Value10 recoveredBlock192Value11 recoveredBlock192Value12 recoveredBlock192Value13 |
    recoveredBlock192Value0 := recoveredBlock192Arg1.
    recoveredBlock192Value1 := recoveredBlock192Value0.
    recoveredBlock192Value2 := XmATTACHFORM.
    (recoveredBlock192Value1) topAttachment: (recoveredBlock192Value2).
    recoveredBlock192Value3 := recoveredBlock192Value0.
    recoveredBlock192Value4 := XmATTACHFORM.
    (recoveredBlock192Value3) bottomAttachment: (recoveredBlock192Value4).
    recoveredBlock192Value5 := recoveredBlock192Value0.
    recoveredBlock192Value6 := XmATTACHWIDGET.
    (recoveredBlock192Value5) leftAttachment: (recoveredBlock192Value6).
    recoveredBlock192Value7 := recoveredBlock192Value0.
    (recoveredBlock192Value7) leftOffset: (5).
    recoveredBlock192Value8 := recoveredBlock192Value0.
    recoveredBlock192Value9 := recoveredLocal1.
    (recoveredBlock192Value8) leftWidget: (recoveredBlock192Value9).
    recoveredBlock192Value10 := recoveredBlock192Value0.
    recoveredBlock192Value11 := XmATTACHPOSITION.
    (recoveredBlock192Value10) rightAttachment: (recoveredBlock192Value11).
    recoveredBlock192Value12 := recoveredBlock192Value0.
    recoveredBlock192Value13 := (self) labelOffset.
    (recoveredBlock192Value12) rightPosition: (recoveredBlock192Value13).
    recoveredBlock192Value0
].
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack2 := [:recoveredBlock242Arg1 | 
    | recoveredBlock242Value0 recoveredBlock242Value1 recoveredBlock242Value2 recoveredBlock242Value3 recoveredBlock242Value4 recoveredBlock242Value5 recoveredBlock242Value6 recoveredBlock242Value7 recoveredBlock242Value8 recoveredBlock242Value9 recoveredBlock242Value10 |
    recoveredBlock242Value0 := recoveredBlock242Arg1.
    recoveredBlock242Value1 := recoveredBlock242Value0.
    recoveredBlock242Value2 := XmATTACHFORM.
    (recoveredBlock242Value1) topAttachment: (recoveredBlock242Value2).
    recoveredBlock242Value3 := recoveredBlock242Value0.
    recoveredBlock242Value4 := XmATTACHFORM.
    (recoveredBlock242Value3) bottomAttachment: (recoveredBlock242Value4).
    recoveredBlock242Value5 := recoveredBlock242Value0.
    recoveredBlock242Value6 := XmATTACHWIDGET.
    (recoveredBlock242Value5) leftAttachment: (recoveredBlock242Value6).
    recoveredBlock242Value7 := recoveredBlock242Value0.
    recoveredBlock242Value8 := recoveredLocal2.
    (recoveredBlock242Value7) leftWidget: (recoveredBlock242Value8).
    recoveredBlock242Value9 := recoveredBlock242Value0.
    recoveredBlock242Value10 := XmATTACHFORM.
    (recoveredBlock242Value9) rightAttachment: (recoveredBlock242Value10).
    recoveredBlock242Value0
].
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack2 := XmNvalueChangedCallback.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack4 := 'valueChanged:clientData:callData:'.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack5 := recoveredLocal4.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            (recoveredStack0) createFocusEvent: (recoveredStack1).
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            (recoveredStack0) widget: (recoveredStack1).
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

