"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200598f8; bytecode file offset 0x956284"
!EtasFixedEnumerationOption methodsFor: 'recovered'!
checkSensitivity: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) sensitiveCollection.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) includes: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2007a1ac; bytecode file offset 0x97c330"
!EtasFixedEnumerationOption methodsFor: 'recovered'!
editable
    ^false
! !

"ASDBase.ic method 0x20106b60; bytecode file offset 0xa03430"
!EtasFixedEnumerationOption methodsFor: 'recovered'!
orientation
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := orientation.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'VERTICAL'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := orientation.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2010a27c; bytecode file offset 0xa06b68"
!EtasFixedEnumerationOption methodsFor: 'recovered'!
widgetOptionRadioGroup
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

"ASDBase.ic method 0x20141018; bytecode file offset 0xa3d8d4"
!EtasFixedEnumerationOption methodsFor: 'recovered'!
sensitiveCollection
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := sensitiveCollection.
    recoveredValue1 := [
    | recoveredBlock6Value0 |
    recoveredBlock6Value0 := (self) stringCollection.
    ^recoveredBlock6Value0
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := sensitiveCollection.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20148438; bytecode file offset 0xa44cfc"
!EtasFixedEnumerationOption methodsFor: 'recovered'!
radioCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) stringCollection.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201d7a60; bytecode file offset 0xad432c"
!EtasFixedEnumerationOption methodsFor: 'recovered'!
updateOptionValue
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetOptionRadioGroup.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) buttonSet.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) valueCollection.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexOf: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetOptionRadioGroup.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) valueCollection.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexOf: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) buttonSet: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201d9298; bytecode file offset 0xad5b58"
!EtasFixedEnumerationOption methodsFor: 'recovered'!
orientation: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := 'VERTICAL'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 'HORIZONTAL'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            orientation := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) needsUpdate: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205e6ed8; bytecode file offset 0xee387c"
!EtasFixedEnumerationOption methodsFor: 'recovered'!
createEditWidgetInForm: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
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
            recoveredStack2 := 'optionFrame'.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := [:recoveredBlock50Arg1 | 
    | recoveredBlock50Value0 recoveredBlock50Value1 recoveredBlock50Value2 recoveredBlock50Value3 recoveredBlock50Value4 |
    recoveredBlock50Value0 := recoveredBlock50Arg1.
    recoveredBlock50Value1 := recoveredBlock50Value0.
    recoveredBlock50Value2 := (self) label.
    (recoveredBlock50Value1) labelString: (recoveredBlock50Value2).
    recoveredBlock50Value3 := recoveredBlock50Value0.
    recoveredBlock50Value4 := (self) sensitive.
    (recoveredBlock50Value3) sensitive: (recoveredBlock50Value4).
    recoveredBlock50Value0
].
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) createFrame: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := 'optionForm'.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := 'radioGroup'.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack3 := [:recoveredBlock95Arg1 | 
    | recoveredBlock95Stack0 recoveredBlock95Stack1 recoveredBlock95Stack2 recoveredBlock95Stack3 recoveredBlock95Stack4 recoveredBlock95Stack5 recoveredBlock95PC recoveredBlock95Step recoveredBlock95Done recoveredBlock95Result |
    recoveredBlock95Stack0 := self.
    recoveredBlock95PC := 102.
    recoveredBlock95Done := false.
    [recoveredBlock95Done not] whileTrue: [
        recoveredBlock95Step := recoveredBlock95PC.
        recoveredBlock95Step = 102 ifTrue: [
            recoveredBlock95Stack1 := recoveredBlock95Arg1.
            recoveredBlock95PC := 103.
        ].
        recoveredBlock95Step = 103 ifTrue: [
            recoveredBlock95Stack2 := recoveredBlock95Stack1.
            recoveredBlock95PC := 104.
        ].
        recoveredBlock95Step = 104 ifTrue: [
            recoveredBlock95Stack3 := true.
            recoveredBlock95PC := 105.
        ].
        recoveredBlock95Step = 105 ifTrue: [
            (recoveredBlock95Stack2) radioBehavior: (recoveredBlock95Stack3).
            recoveredBlock95Stack2 := recoveredBlock95Stack1.
            recoveredBlock95PC := 108.
        ].
        recoveredBlock95Step = 108 ifTrue: [
            recoveredBlock95Stack3 := self.
            recoveredBlock95PC := 109.
        ].
        recoveredBlock95Step = 109 ifTrue: [
            recoveredBlock95Stack3 := (recoveredBlock95Stack3) stringCollection.
            recoveredBlock95PC := 111.
        ].
        recoveredBlock95Step = 111 ifTrue: [
            recoveredBlock95Stack3 := (recoveredBlock95Stack3) size.
            recoveredBlock95PC := 113.
        ].
        recoveredBlock95Step = 113 ifTrue: [
            recoveredBlock95Stack4 := 20.
            recoveredBlock95PC := 115.
        ].
        recoveredBlock95Step = 115 ifTrue: [
            recoveredBlock95Stack3 := (recoveredBlock95Stack3) * (recoveredBlock95Stack4).
            recoveredBlock95PC := 116.
        ].
        recoveredBlock95Step = 116 ifTrue: [
            (recoveredBlock95Stack2) height: (recoveredBlock95Stack3).
            recoveredBlock95Stack2 := recoveredBlock95Stack1.
            recoveredBlock95PC := 119.
        ].
        recoveredBlock95Step = 119 ifTrue: [
            recoveredBlock95Stack3 := XmPACKCOLUMN.
            recoveredBlock95PC := 121.
        ].
        recoveredBlock95Step = 121 ifTrue: [
            (recoveredBlock95Stack2) packing: (recoveredBlock95Stack3).
            recoveredBlock95Stack2 := recoveredBlock95Stack1.
            recoveredBlock95PC := 124.
        ].
        recoveredBlock95Step = 124 ifTrue: [
            recoveredBlock95Stack3 := self.
            recoveredBlock95PC := 125.
        ].
        recoveredBlock95Step = 125 ifTrue: [
            recoveredBlock95Stack3 := (recoveredBlock95Stack3) orientation.
            recoveredBlock95PC := 127.
        ].
        recoveredBlock95Step = 127 ifTrue: [
            recoveredBlock95Stack4 := 'VERTICAL'.
            recoveredBlock95PC := 129.
        ].
        recoveredBlock95Step = 129 ifTrue: [
            recoveredBlock95Stack3 := (recoveredBlock95Stack3) = (recoveredBlock95Stack4).
            recoveredBlock95PC := 130.
        ].
        recoveredBlock95Step = 130 ifTrue: [
            (recoveredBlock95Stack3) ifTrue: [recoveredBlock95PC := 134] ifFalse: [recoveredBlock95PC := 140].
        ].
        recoveredBlock95Step = 134 ifTrue: [
            recoveredBlock95Stack3 := XmVERTICAL.
            recoveredBlock95PC := 136.
        ].
        recoveredBlock95Step = 136 ifTrue: [
            recoveredBlock95PC := 142.
        ].
        recoveredBlock95Step = 140 ifTrue: [
            recoveredBlock95Stack3 := XmHORIZONTAL.
            recoveredBlock95PC := 142.
        ].
        recoveredBlock95Step = 142 ifTrue: [
            (recoveredBlock95Stack2) orientation: (recoveredBlock95Stack3).
            recoveredBlock95Stack2 := recoveredBlock95Stack1.
            recoveredBlock95PC := 145.
        ].
        recoveredBlock95Step = 145 ifTrue: [
            recoveredBlock95Stack3 := self.
            recoveredBlock95PC := 146.
        ].
        recoveredBlock95Step = 146 ifTrue: [
            recoveredBlock95Stack3 := (recoveredBlock95Stack3) stringCollection.
            recoveredBlock95PC := 148.
        ].
        recoveredBlock95Step = 148 ifTrue: [
            (recoveredBlock95Stack2) buttons: (recoveredBlock95Stack3).
            recoveredBlock95Stack2 := recoveredBlock95Stack1.
            recoveredBlock95PC := 151.
        ].
        recoveredBlock95Step = 151 ifTrue: [
            recoveredBlock95Stack3 := self.
            recoveredBlock95PC := 152.
        ].
        recoveredBlock95Step = 152 ifTrue: [
            recoveredBlock95Stack3 := (recoveredBlock95Stack3) valueCollection.
            recoveredBlock95PC := 154.
        ].
        recoveredBlock95Step = 154 ifTrue: [
            recoveredBlock95Stack4 := self.
            recoveredBlock95PC := 155.
        ].
        recoveredBlock95Step = 155 ifTrue: [
            recoveredBlock95Stack4 := (recoveredBlock95Stack4) value.
            recoveredBlock95PC := 157.
        ].
        recoveredBlock95Step = 157 ifTrue: [
            recoveredBlock95Stack3 := (recoveredBlock95Stack3) indexOf: (recoveredBlock95Stack4).
            recoveredBlock95PC := 159.
        ].
        recoveredBlock95Step = 159 ifTrue: [
            recoveredBlock95Stack3 := (recoveredBlock95Stack3) + (-1).
            recoveredBlock95PC := 160.
        ].
        recoveredBlock95Step = 160 ifTrue: [
            (recoveredBlock95Stack2) buttonSet: (recoveredBlock95Stack3).
            recoveredBlock95Stack2 := recoveredBlock95Stack1.
            recoveredBlock95PC := 163.
        ].
        recoveredBlock95Step = 163 ifTrue: [
            recoveredBlock95Stack3 := self.
            recoveredBlock95PC := 164.
        ].
        recoveredBlock95Step = 164 ifTrue: [
            recoveredBlock95Stack3 := (recoveredBlock95Stack3) stringCollection.
            recoveredBlock95PC := 166.
        ].
        recoveredBlock95Step = 166 ifTrue: [
            recoveredBlock95Stack3 := (recoveredBlock95Stack3) size.
            recoveredBlock95PC := 168.
        ].
        recoveredBlock95Step = 168 ifTrue: [
            (recoveredBlock95Stack2) numColumns: (recoveredBlock95Stack3).
            recoveredBlock95Stack2 := recoveredBlock95Stack1.
            recoveredBlock95PC := 171.
        ].
        recoveredBlock95Step = 171 ifTrue: [
            recoveredBlock95Stack3 := self.
            recoveredBlock95PC := 172.
        ].
        recoveredBlock95Step = 172 ifTrue: [
            recoveredBlock95Stack3 := (recoveredBlock95Stack3) sensitive.
            recoveredBlock95PC := 174.
        ].
        recoveredBlock95Step = 174 ifTrue: [
            (recoveredBlock95Stack2) sensitive: (recoveredBlock95Stack3).
            recoveredBlock95PC := 176.
        ].
        recoveredBlock95Step = 176 ifTrue: [
            recoveredBlock95Stack2 := 7.
            recoveredBlock95PC := 178.
        ].
        recoveredBlock95Step = 178 ifTrue: [
            recoveredBlock95Stack1 := (recoveredBlock95Stack1) spacing: (recoveredBlock95Stack2).
            recoveredBlock95PC := 180.
        ].
        recoveredBlock95Step = 180 ifTrue: [
            recoveredBlock95Result := recoveredBlock95Stack1.
            recoveredBlock95Done := true.
        ].
    ].
    recoveredBlock95Result
].
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack1 := (recoveredStack1) createSimpleRadioBox: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack0 := (recoveredStack0) orientation.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack1 := 'VERTICAL'.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 196] ifFalse: [recoveredPC := 206].
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack1 := 50.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            (recoveredStack0) height: (recoveredStack1).
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredPC := 222.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack1 := 30.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack2 := (recoveredStack2) stringCollection.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack3 := 25.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            (recoveredStack0) height: (recoveredStack1).
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack1 := [:block2811ac1cArg1 | 
    | block2811ac1cValue0 block2811ac1cValue1 block2811ac1cValue2 block2811ac1cValue3 block2811ac1cValue4 block2811ac1cValue5 block2811ac1cValue6 block2811ac1cValue7 block2811ac1cValue8 |
    block2811ac1cValue0 := block2811ac1cArg1.
    block2811ac1cValue1 := block2811ac1cValue0.
    block2811ac1cValue2 := XmATTACHFORM.
    (block2811ac1cValue1) topAttachment: (block2811ac1cValue2).
    block2811ac1cValue3 := block2811ac1cValue0.
    block2811ac1cValue4 := XmATTACHFORM.
    (block2811ac1cValue3) leftAttachment: (block2811ac1cValue4).
    block2811ac1cValue5 := block2811ac1cValue0.
    block2811ac1cValue6 := XmATTACHNONE.
    (block2811ac1cValue5) rightAttachment: (block2811ac1cValue6).
    block2811ac1cValue7 := XmATTACHNONE.
    block2811ac1cValue8 := (block2811ac1cValue0) bottomAttachment: (block2811ac1cValue7).
    block2811ac1cValue8
].
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack1 := [:recoveredBlock256Arg1 | 
    | recoveredBlock256Value0 recoveredBlock256Value1 recoveredBlock256Value2 recoveredBlock256Value3 recoveredBlock256Value4 recoveredBlock256Value5 recoveredBlock256Value6 recoveredBlock256Value7 recoveredBlock256Value8 recoveredBlock256Value9 recoveredBlock256Value10 recoveredBlock256Value11 |
    recoveredBlock256Value0 := recoveredBlock256Arg1.
    recoveredBlock256Value1 := recoveredBlock256Value0.
    recoveredBlock256Value2 := XmATTACHFORM.
    (recoveredBlock256Value1) topAttachment: (recoveredBlock256Value2).
    recoveredBlock256Value3 := recoveredBlock256Value0.
    recoveredBlock256Value4 := XmATTACHFORM.
    (recoveredBlock256Value3) bottomAttachment: (recoveredBlock256Value4).
    recoveredBlock256Value5 := recoveredBlock256Value0.
    recoveredBlock256Value6 := XmATTACHWIDGET.
    (recoveredBlock256Value5) leftAttachment: (recoveredBlock256Value6).
    recoveredBlock256Value7 := recoveredBlock256Value0.
    (recoveredBlock256Value7) leftOffset: (5).
    recoveredBlock256Value8 := recoveredBlock256Value0.
    recoveredBlock256Value9 := recoveredLocal2.
    (recoveredBlock256Value8) leftWidget: (recoveredBlock256Value9).
    recoveredBlock256Value10 := recoveredBlock256Value0.
    recoveredBlock256Value11 := XmATTACHFORM.
    (recoveredBlock256Value10) rightAttachment: (recoveredBlock256Value11).
    recoveredBlock256Value0
].
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack1 := [:block2811ac40Arg1 | 
    | block2811ac40Value0 block2811ac40Value1 block2811ac40Value2 block2811ac40Value3 block2811ac40Value4 block2811ac40Value5 block2811ac40Value6 block2811ac40Value7 block2811ac40Value8 |
    block2811ac40Value0 := block2811ac40Arg1.
    block2811ac40Value1 := block2811ac40Value0.
    block2811ac40Value2 := XmATTACHFORM.
    (block2811ac40Value1) topAttachment: (block2811ac40Value2).
    block2811ac40Value3 := block2811ac40Value0.
    block2811ac40Value4 := XmATTACHFORM.
    (block2811ac40Value3) bottomAttachment: (block2811ac40Value4).
    block2811ac40Value5 := block2811ac40Value0.
    block2811ac40Value6 := XmATTACHFORM.
    (block2811ac40Value5) leftAttachment: (block2811ac40Value6).
    block2811ac40Value7 := XmATTACHFORM.
    block2811ac40Value8 := (block2811ac40Value0) rightAttachment: (block2811ac40Value7).
    block2811ac40Value8
].
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            recoveredStack1 := XmNsimpleCallback.
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack3 := 'radioCallback:clientData:callData:'.
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            recoveredStack1 := XmNlosingFocusCallback.
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            recoveredStack3 := 'loosingFocus:clientData:callData:'.
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            (recoveredStack0) createFocusEvent: (recoveredStack1).
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 368.
        ].
        recoveredStep = 368 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 371.
        ].
        recoveredStep = 371 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 374.
        ].
        recoveredStep = 374 ifTrue: [
            recoveredStack4 := recoveredLocal5.
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 381.
        ].
        recoveredStep = 381 ifTrue: [
            (recoveredStack0) widget: (recoveredStack1).
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 388.
        ].
        recoveredStep = 388 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

