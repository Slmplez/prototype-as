"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200700d8; bytecode file offset 0x96cb7c"
!EtasEditableStringOption methodsFor: 'recovered'!
action
    | recoveredValue0 |
    recoveredValue0 := action.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200bab0c; bytecode file offset 0x9b73c4"
!EtasEditableStringOption methodsFor: 'recovered'!
action: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    action := recoveredValue0.
    (self) needsUpdate: (true).
    ^self
! !

"ASDBase.ic method 0x2010a2fc; bytecode file offset 0xa06bc8"
!EtasEditableStringOption methodsFor: 'recovered'!
widgetOptionEditButton
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
            recoveredStack1 := 4.
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

"ASDBase.ic method 0x20162294; bytecode file offset 0xa5eb58"
!EtasEditableStringOption methodsFor: 'recovered'!
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
            recoveredStack0 := (recoveredStack0) widgetOptionEditButton.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
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

"ASDBase.ic method 0x20169d34; bytecode file offset 0xa66608"
!EtasEditableStringOption methodsFor: 'recovered'!
editValue: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) action.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 8].
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
            recoveredStack1 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) valueChanged.
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

"ASDBase.ic method 0x20199e34; bytecode file offset 0xa96718"
!EtasEditableStringOption methodsFor: 'recovered'!
invalid
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := super invalid.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) default.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) not.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205e9ba8; bytecode file offset 0xee6534"
!EtasEditableStringOption methodsFor: 'recovered'!
createEditWidgetInForm: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredLocal2 := recoveredStack1.
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
            recoveredLocal4 := recoveredStack1.
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
    | recoveredBlock90Value0 recoveredBlock90Value1 recoveredBlock90Value2 recoveredBlock90Value3 recoveredBlock90Value4 recoveredBlock90Value5 recoveredBlock90Value6 |
    recoveredBlock90Value0 := recoveredBlock90Arg1.
    recoveredBlock90Value1 := recoveredBlock90Value0.
    recoveredBlock90Value2 := XmALIGNMENTBEGINNING.
    (recoveredBlock90Value1) alignment: (recoveredBlock90Value2).
    recoveredBlock90Value3 := recoveredBlock90Value0.
    recoveredBlock90Value4 := (self) sensitive.
    (recoveredBlock90Value3) sensitive: (recoveredBlock90Value4).
    recoveredBlock90Value5 := (self) value.
    recoveredBlock90Value6 := (recoveredBlock90Value0) value: (recoveredBlock90Value5).
    recoveredBlock90Value6
].
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := (recoveredStack1) createText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack2 := 'editButton'.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack3 := [:block2811b030Arg1 | 
    | block2811b030Value0 block2811b030Value1 block2811b030Value2 block2811b030Value3 block2811b030Value4 |
    block2811b030Value0 := block2811b030Arg1.
    block2811b030Value1 := block2811b030Value0.
    (block2811b030Value1) labelString: ('Edit...').
    block2811b030Value2 := block2811b030Value0.
    (block2811b030Value2) height: (20).
    block2811b030Value3 := block2811b030Value0.
    (block2811b030Value3) width: (40).
    block2811b030Value4 := block2811b030Value0.
    (block2811b030Value4) sensitive: (true).
    block2811b030Value0
].
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack2 := [:block2811b054Arg1 | 
    | block2811b054Value0 block2811b054Value1 block2811b054Value2 block2811b054Value3 block2811b054Value4 block2811b054Value5 block2811b054Value6 block2811b054Value7 block2811b054Value8 |
    block2811b054Value0 := block2811b054Arg1.
    block2811b054Value1 := block2811b054Value0.
    block2811b054Value2 := XmATTACHFORM.
    (block2811b054Value1) topAttachment: (block2811b054Value2).
    block2811b054Value3 := block2811b054Value0.
    block2811b054Value4 := XmATTACHFORM.
    (block2811b054Value3) leftAttachment: (block2811b054Value4).
    block2811b054Value5 := block2811b054Value0.
    block2811b054Value6 := XmATTACHNONE.
    (block2811b054Value5) rightAttachment: (block2811b054Value6).
    block2811b054Value7 := XmATTACHFORM.
    block2811b054Value8 := (block2811b054Value0) bottomAttachment: (block2811b054Value7).
    block2811b054Value8
].
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack2 := [:recoveredBlock194Arg1 | 
    | recoveredBlock194Value0 recoveredBlock194Value1 recoveredBlock194Value2 recoveredBlock194Value3 recoveredBlock194Value4 recoveredBlock194Value5 recoveredBlock194Value6 recoveredBlock194Value7 recoveredBlock194Value8 recoveredBlock194Value9 recoveredBlock194Value10 recoveredBlock194Value11 recoveredBlock194Value12 recoveredBlock194Value13 |
    recoveredBlock194Value0 := recoveredBlock194Arg1.
    recoveredBlock194Value1 := recoveredBlock194Value0.
    recoveredBlock194Value2 := XmATTACHFORM.
    (recoveredBlock194Value1) topAttachment: (recoveredBlock194Value2).
    recoveredBlock194Value3 := recoveredBlock194Value0.
    recoveredBlock194Value4 := XmATTACHFORM.
    (recoveredBlock194Value3) bottomAttachment: (recoveredBlock194Value4).
    recoveredBlock194Value5 := recoveredBlock194Value0.
    recoveredBlock194Value6 := XmATTACHWIDGET.
    (recoveredBlock194Value5) leftAttachment: (recoveredBlock194Value6).
    recoveredBlock194Value7 := recoveredBlock194Value0.
    (recoveredBlock194Value7) leftOffset: (5).
    recoveredBlock194Value8 := recoveredBlock194Value0.
    recoveredBlock194Value9 := recoveredLocal2.
    (recoveredBlock194Value8) leftWidget: (recoveredBlock194Value9).
    recoveredBlock194Value10 := recoveredBlock194Value0.
    recoveredBlock194Value11 := XmATTACHPOSITION.
    (recoveredBlock194Value10) rightAttachment: (recoveredBlock194Value11).
    recoveredBlock194Value12 := recoveredBlock194Value0.
    recoveredBlock194Value13 := (self) labelOffset.
    (recoveredBlock194Value12) rightPosition: (recoveredBlock194Value13).
    recoveredBlock194Value0
].
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack2 := [:recoveredBlock244Arg1 | 
    | recoveredBlock244Value0 recoveredBlock244Value1 recoveredBlock244Value2 recoveredBlock244Value3 recoveredBlock244Value4 recoveredBlock244Value5 recoveredBlock244Value6 recoveredBlock244Value7 recoveredBlock244Value8 recoveredBlock244Value9 recoveredBlock244Value10 recoveredBlock244Value11 recoveredBlock244Value12 recoveredBlock244Value13 |
    recoveredBlock244Value0 := recoveredBlock244Arg1.
    recoveredBlock244Value1 := recoveredBlock244Value0.
    recoveredBlock244Value2 := XmATTACHFORM.
    (recoveredBlock244Value1) topAttachment: (recoveredBlock244Value2).
    recoveredBlock244Value3 := recoveredBlock244Value0.
    recoveredBlock244Value4 := XmATTACHFORM.
    (recoveredBlock244Value3) bottomAttachment: (recoveredBlock244Value4).
    recoveredBlock244Value5 := recoveredBlock244Value0.
    recoveredBlock244Value6 := XmATTACHWIDGET.
    (recoveredBlock244Value5) leftAttachment: (recoveredBlock244Value6).
    recoveredBlock244Value7 := recoveredBlock244Value0.
    recoveredBlock244Value8 := recoveredLocal4.
    (recoveredBlock244Value7) leftWidget: (recoveredBlock244Value8).
    recoveredBlock244Value9 := recoveredBlock244Value0.
    recoveredBlock244Value10 := XmATTACHWIDGET.
    (recoveredBlock244Value9) rightAttachment: (recoveredBlock244Value10).
    recoveredBlock244Value11 := recoveredBlock244Value0.
    recoveredBlock244Value12 := recoveredLocal1.
    (recoveredBlock244Value11) rightWidget: (recoveredBlock244Value12).
    recoveredBlock244Value13 := recoveredBlock244Value0.
    (recoveredBlock244Value13) rightOffset: (10).
    recoveredBlock244Value0
].
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack2 := [:block2811b078Arg1 | 
    | block2811b078Value0 block2811b078Value1 block2811b078Value2 block2811b078Value3 block2811b078Value4 block2811b078Value5 block2811b078Value6 block2811b078Value7 block2811b078Value8 |
    block2811b078Value0 := block2811b078Arg1.
    block2811b078Value1 := block2811b078Value0.
    block2811b078Value2 := XmATTACHFORM.
    (block2811b078Value1) topAttachment: (block2811b078Value2).
    block2811b078Value3 := block2811b078Value0.
    block2811b078Value4 := XmATTACHFORM.
    (block2811b078Value3) bottomAttachment: (block2811b078Value4).
    block2811b078Value5 := block2811b078Value0.
    block2811b078Value6 := XmATTACHNONE.
    (block2811b078Value5) leftAttachment: (block2811b078Value6).
    block2811b078Value7 := XmATTACHFORM.
    block2811b078Value8 := (block2811b078Value0) rightAttachment: (block2811b078Value7).
    block2811b078Value8
].
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            recoveredStack2 := XmNvalueChangedCallback.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            recoveredStack4 := 'valueChanged:clientData:callData:'.
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            recoveredStack5 := recoveredLocal5.
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredStack4 := 'editValue:clientData:callData:'.
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            recoveredStack5 := recoveredLocal5.
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            (recoveredStack0) createFocusEvent: (recoveredStack1).
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            (recoveredStack0) createFocusEvent: (recoveredStack1).
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 378.
        ].
        recoveredStep = 378 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 381.
        ].
        recoveredStep = 381 ifTrue: [
            recoveredStack4 := recoveredLocal5.
            recoveredPC := 384.
        ].
        recoveredStep = 384 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5).
            recoveredPC := 390.
        ].
        recoveredStep = 390 ifTrue: [
            (recoveredStack0) widget: (recoveredStack1).
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

