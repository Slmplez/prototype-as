"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20070d40; bytecode file offset 0x96d6a4"
!EtasEditableXMLFileOption methodsFor: 'recovered'!
action
    | recoveredValue0 |
    recoveredValue0 := action.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200bab78; bytecode file offset 0x9b7430"
!EtasEditableXMLFileOption methodsFor: 'recovered'!
action: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    action := recoveredValue0.
    (self) needsUpdate: (true).
    ^self
! !

"ASDBase.ic method 0x2010a32c; bytecode file offset 0xa06be8"
!EtasEditableXMLFileOption methodsFor: 'recovered'!
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
            recoveredStack1 := 5.
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

"ASDBase.ic method 0x20169d48; bytecode file offset 0xa66608"
!EtasEditableXMLFileOption methodsFor: 'recovered'!
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

"ASDBase.ic method 0x20172b20; bytecode file offset 0xa6f3e8"
!EtasEditableXMLFileOption methodsFor: 'recovered'!
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
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) sensitive.
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
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20199e50; bytecode file offset 0xa96718"
!EtasEditableXMLFileOption methodsFor: 'recovered'!
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

"ASDBase.ic method 0x2061ca98; bytecode file offset 0xf19438"
!EtasEditableXMLFileOption methodsFor: 'recovered'!
createEditWidgetInForm: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
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
            recoveredStack2 := 'button'.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack3 := [:recoveredBlock90Arg1 | 
    | recoveredBlock90Value0 recoveredBlock90Value1 recoveredBlock90Value2 recoveredBlock90Value3 recoveredBlock90Value4 recoveredBlock90Value5 recoveredBlock90Value6 recoveredBlock90Value7 recoveredBlock90Value8 recoveredBlock90Value9 recoveredBlock90Value10 |
    recoveredBlock90Value0 := recoveredBlock90Arg1.
    recoveredBlock90Value1 := recoveredBlock90Value0.
    (recoveredBlock90Value1) height: (20).
    recoveredBlock90Value2 := recoveredBlock90Value0.
    (recoveredBlock90Value2) width: (22).
    recoveredBlock90Value3 := recoveredBlock90Value0.
    recoveredBlock90Value4 := XmICON.
    (recoveredBlock90Value3) labelType: (recoveredBlock90Value4).
    recoveredBlock90Value5 := recoveredBlock90Value0.
    recoveredBlock90Value6 := (self) resourceManager.
    recoveredBlock90Value7 := (recoveredBlock90Value6) returnIconWithName: ('GeneralFile').
    (recoveredBlock90Value5) labelIcon: (recoveredBlock90Value7).
    recoveredBlock90Value8 := recoveredBlock90Value0.
    (recoveredBlock90Value8) recomputeSize: (false).
    recoveredBlock90Value9 := (self) sensitive.
    recoveredBlock90Value10 := (recoveredBlock90Value0) sensitive: (recoveredBlock90Value9).
    recoveredBlock90Value10
].
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack2 := 'editField'.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack3 := [:recoveredBlock144Arg1 | 
    | recoveredBlock144Value0 recoveredBlock144Value1 recoveredBlock144Value2 recoveredBlock144Value3 recoveredBlock144Value4 recoveredBlock144Value5 recoveredBlock144Value6 |
    recoveredBlock144Value0 := recoveredBlock144Arg1.
    recoveredBlock144Value1 := recoveredBlock144Value0.
    recoveredBlock144Value2 := XmALIGNMENTBEGINNING.
    (recoveredBlock144Value1) alignment: (recoveredBlock144Value2).
    recoveredBlock144Value3 := recoveredBlock144Value0.
    recoveredBlock144Value4 := (self) sensitive.
    (recoveredBlock144Value3) sensitive: (recoveredBlock144Value4).
    recoveredBlock144Value5 := (self) value.
    recoveredBlock144Value6 := (recoveredBlock144Value0) value: (recoveredBlock144Value5).
    recoveredBlock144Value6
].
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := (recoveredStack1) createText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack2 := 'editButton'.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack3 := [:recoveredBlock180Arg1 | 
    | recoveredBlock180Value0 recoveredBlock180Value1 recoveredBlock180Value2 recoveredBlock180Value3 recoveredBlock180Value4 recoveredBlock180Value5 |
    recoveredBlock180Value0 := recoveredBlock180Arg1.
    recoveredBlock180Value1 := recoveredBlock180Value0.
    (recoveredBlock180Value1) labelString: ('Edit...').
    recoveredBlock180Value2 := recoveredBlock180Value0.
    (recoveredBlock180Value2) height: (20).
    recoveredBlock180Value3 := recoveredBlock180Value0.
    (recoveredBlock180Value3) width: (40).
    recoveredBlock180Value4 := recoveredBlock180Value0.
    recoveredBlock180Value5 := (self) sensitive.
    (recoveredBlock180Value4) sensitive: (recoveredBlock180Value5).
    recoveredBlock180Value0
].
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack2 := [:block2811e9fcArg1 | 
    | block2811e9fcValue0 block2811e9fcValue1 block2811e9fcValue2 block2811e9fcValue3 block2811e9fcValue4 block2811e9fcValue5 block2811e9fcValue6 block2811e9fcValue7 block2811e9fcValue8 |
    block2811e9fcValue0 := block2811e9fcArg1.
    block2811e9fcValue1 := block2811e9fcValue0.
    block2811e9fcValue2 := XmATTACHFORM.
    (block2811e9fcValue1) topAttachment: (block2811e9fcValue2).
    block2811e9fcValue3 := block2811e9fcValue0.
    block2811e9fcValue4 := XmATTACHFORM.
    (block2811e9fcValue3) leftAttachment: (block2811e9fcValue4).
    block2811e9fcValue5 := block2811e9fcValue0.
    block2811e9fcValue6 := XmATTACHNONE.
    (block2811e9fcValue5) rightAttachment: (block2811e9fcValue6).
    block2811e9fcValue7 := XmATTACHFORM.
    block2811e9fcValue8 := (block2811e9fcValue0) bottomAttachment: (block2811e9fcValue7).
    block2811e9fcValue8
].
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack2 := [:recoveredBlock250Arg1 | 
    | recoveredBlock250Value0 recoveredBlock250Value1 recoveredBlock250Value2 recoveredBlock250Value3 recoveredBlock250Value4 recoveredBlock250Value5 recoveredBlock250Value6 recoveredBlock250Value7 recoveredBlock250Value8 recoveredBlock250Value9 recoveredBlock250Value10 recoveredBlock250Value11 recoveredBlock250Value12 recoveredBlock250Value13 |
    recoveredBlock250Value0 := recoveredBlock250Arg1.
    recoveredBlock250Value1 := recoveredBlock250Value0.
    recoveredBlock250Value2 := XmATTACHFORM.
    (recoveredBlock250Value1) topAttachment: (recoveredBlock250Value2).
    recoveredBlock250Value3 := recoveredBlock250Value0.
    recoveredBlock250Value4 := XmATTACHFORM.
    (recoveredBlock250Value3) bottomAttachment: (recoveredBlock250Value4).
    recoveredBlock250Value5 := recoveredBlock250Value0.
    recoveredBlock250Value6 := XmATTACHWIDGET.
    (recoveredBlock250Value5) leftAttachment: (recoveredBlock250Value6).
    recoveredBlock250Value7 := recoveredBlock250Value0.
    (recoveredBlock250Value7) leftOffset: (5).
    recoveredBlock250Value8 := recoveredBlock250Value0.
    recoveredBlock250Value9 := recoveredLocal2.
    (recoveredBlock250Value8) leftWidget: (recoveredBlock250Value9).
    recoveredBlock250Value10 := recoveredBlock250Value0.
    recoveredBlock250Value11 := XmATTACHPOSITION.
    (recoveredBlock250Value10) rightAttachment: (recoveredBlock250Value11).
    recoveredBlock250Value12 := recoveredBlock250Value0.
    recoveredBlock250Value13 := (self) labelOffset.
    (recoveredBlock250Value12) rightPosition: (recoveredBlock250Value13).
    recoveredBlock250Value0
].
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack2 := [:recoveredBlock300Arg1 | 
    | recoveredBlock300Value0 recoveredBlock300Value1 recoveredBlock300Value2 recoveredBlock300Value3 recoveredBlock300Value4 recoveredBlock300Value5 recoveredBlock300Value6 recoveredBlock300Value7 recoveredBlock300Value8 recoveredBlock300Value9 recoveredBlock300Value10 recoveredBlock300Value11 recoveredBlock300Value12 recoveredBlock300Value13 |
    recoveredBlock300Value0 := recoveredBlock300Arg1.
    recoveredBlock300Value1 := recoveredBlock300Value0.
    recoveredBlock300Value2 := XmATTACHFORM.
    (recoveredBlock300Value1) topAttachment: (recoveredBlock300Value2).
    recoveredBlock300Value3 := recoveredBlock300Value0.
    recoveredBlock300Value4 := XmATTACHFORM.
    (recoveredBlock300Value3) bottomAttachment: (recoveredBlock300Value4).
    recoveredBlock300Value5 := recoveredBlock300Value0.
    recoveredBlock300Value6 := XmATTACHWIDGET.
    (recoveredBlock300Value5) leftAttachment: (recoveredBlock300Value6).
    recoveredBlock300Value7 := recoveredBlock300Value0.
    recoveredBlock300Value8 := recoveredLocal4.
    (recoveredBlock300Value7) leftWidget: (recoveredBlock300Value8).
    recoveredBlock300Value9 := recoveredBlock300Value0.
    recoveredBlock300Value10 := XmATTACHWIDGET.
    (recoveredBlock300Value9) rightAttachment: (recoveredBlock300Value10).
    recoveredBlock300Value11 := recoveredBlock300Value0.
    recoveredBlock300Value12 := recoveredLocal3.
    (recoveredBlock300Value11) rightWidget: (recoveredBlock300Value12).
    recoveredBlock300Value13 := recoveredBlock300Value0.
    (recoveredBlock300Value13) rightOffset: (10).
    recoveredBlock300Value0
].
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            recoveredStack2 := [:recoveredBlock350Arg1 | 
    | recoveredBlock350Value0 recoveredBlock350Value1 recoveredBlock350Value2 recoveredBlock350Value3 recoveredBlock350Value4 recoveredBlock350Value5 recoveredBlock350Value6 recoveredBlock350Value7 recoveredBlock350Value8 recoveredBlock350Value9 recoveredBlock350Value10 recoveredBlock350Value11 |
    recoveredBlock350Value0 := recoveredBlock350Arg1.
    recoveredBlock350Value1 := recoveredBlock350Value0.
    recoveredBlock350Value2 := XmATTACHFORM.
    (recoveredBlock350Value1) topAttachment: (recoveredBlock350Value2).
    recoveredBlock350Value3 := recoveredBlock350Value0.
    recoveredBlock350Value4 := XmATTACHFORM.
    (recoveredBlock350Value3) bottomAttachment: (recoveredBlock350Value4).
    recoveredBlock350Value5 := recoveredBlock350Value0.
    recoveredBlock350Value6 := XmATTACHNONE.
    (recoveredBlock350Value5) leftAttachment: (recoveredBlock350Value6).
    recoveredBlock350Value7 := recoveredBlock350Value0.
    recoveredBlock350Value8 := XmATTACHWIDGET.
    (recoveredBlock350Value7) rightAttachment: (recoveredBlock350Value8).
    recoveredBlock350Value9 := recoveredBlock350Value0.
    recoveredBlock350Value10 := recoveredLocal1.
    (recoveredBlock350Value9) rightWidget: (recoveredBlock350Value10).
    recoveredBlock350Value11 := (recoveredBlock350Value0) rightOffset: (5).
    recoveredBlock350Value11
].
            recoveredPC := 388.
        ].
        recoveredStep = 388 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 390.
        ].
        recoveredStep = 390 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            recoveredStack2 := [:block2811ea20Arg1 | 
    | block2811ea20Value0 block2811ea20Value1 block2811ea20Value2 block2811ea20Value3 block2811ea20Value4 block2811ea20Value5 block2811ea20Value6 block2811ea20Value7 block2811ea20Value8 |
    block2811ea20Value0 := block2811ea20Arg1.
    block2811ea20Value1 := block2811ea20Value0.
    block2811ea20Value2 := XmATTACHFORM.
    (block2811ea20Value1) topAttachment: (block2811ea20Value2).
    block2811ea20Value3 := block2811ea20Value0.
    block2811ea20Value4 := XmATTACHFORM.
    (block2811ea20Value3) bottomAttachment: (block2811ea20Value4).
    block2811ea20Value5 := block2811ea20Value0.
    block2811ea20Value6 := XmATTACHNONE.
    (block2811ea20Value5) leftAttachment: (block2811ea20Value6).
    block2811ea20Value7 := XmATTACHFORM.
    block2811ea20Value8 := (block2811ea20Value0) rightAttachment: (block2811ea20Value7).
    block2811ea20Value8
].
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            recoveredPC := 419.
        ].
        recoveredStep = 419 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 421.
        ].
        recoveredStep = 421 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 424.
        ].
        recoveredStep = 424 ifTrue: [
            recoveredStack2 := XmNvalueChangedCallback.
            recoveredPC := 426.
        ].
        recoveredStep = 426 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 427.
        ].
        recoveredStep = 427 ifTrue: [
            recoveredStack4 := 'valueChanged:clientData:callData:'.
            recoveredPC := 429.
        ].
        recoveredStep = 429 ifTrue: [
            recoveredStack5 := recoveredLocal5.
            recoveredPC := 432.
        ].
        recoveredStep = 432 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 435.
        ].
        recoveredStep = 435 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 438.
        ].
        recoveredStep = 438 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 440.
        ].
        recoveredStep = 440 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 441.
        ].
        recoveredStep = 441 ifTrue: [
            recoveredStack4 := 'buttonActivate:clientData:callData:'.
            recoveredPC := 443.
        ].
        recoveredStep = 443 ifTrue: [
            recoveredStack5 := recoveredLocal5.
            recoveredPC := 446.
        ].
        recoveredStep = 446 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 449.
        ].
        recoveredStep = 449 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 452.
        ].
        recoveredStep = 452 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 454.
        ].
        recoveredStep = 454 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 455.
        ].
        recoveredStep = 455 ifTrue: [
            recoveredStack4 := 'editValue:clientData:callData:'.
            recoveredPC := 457.
        ].
        recoveredStep = 457 ifTrue: [
            recoveredStack5 := recoveredLocal5.
            recoveredPC := 460.
        ].
        recoveredStep = 460 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 463.
        ].
        recoveredStep = 463 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 466.
        ].
        recoveredStep = 466 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 468.
        ].
        recoveredStep = 468 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 471.
        ].
        recoveredStep = 471 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 473.
        ].
        recoveredStep = 473 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 476.
        ].
        recoveredStep = 476 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 478.
        ].
        recoveredStep = 478 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 481.
        ].
        recoveredStep = 481 ifTrue: [
            (recoveredStack0) createFocusEvent: (recoveredStack1).
            recoveredPC := 483.
        ].
        recoveredStep = 483 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 484.
        ].
        recoveredStep = 484 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 487.
        ].
        recoveredStep = 487 ifTrue: [
            (recoveredStack0) createFocusEvent: (recoveredStack1).
            recoveredPC := 489.
        ].
        recoveredStep = 489 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 490.
        ].
        recoveredStep = 490 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 493.
        ].
        recoveredStep = 493 ifTrue: [
            (recoveredStack0) createFocusEvent: (recoveredStack1).
            recoveredPC := 495.
        ].
        recoveredStep = 495 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 496.
        ].
        recoveredStep = 496 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 498.
        ].
        recoveredStep = 498 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 501.
        ].
        recoveredStep = 501 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 504.
        ].
        recoveredStep = 504 ifTrue: [
            recoveredStack4 := recoveredLocal5.
            recoveredPC := 507.
        ].
        recoveredStep = 507 ifTrue: [
            recoveredStack5 := recoveredLocal3.
            recoveredPC := 510.
        ].
        recoveredStep = 510 ifTrue: [
            recoveredStack6 := recoveredLocal1.
            recoveredPC := 513.
        ].
        recoveredStep = 513 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5) with: (recoveredStack6).
            recoveredPC := 517.
        ].
        recoveredStep = 517 ifTrue: [
            (recoveredStack0) widget: (recoveredStack1).
            recoveredPC := 521.
        ].
        recoveredStep = 521 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 524.
        ].
        recoveredStep = 524 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

